.include "macros.inc"

.section .text, "ax"

.global GetAnimationDuration__22CFBStreamedCompressionCFv
GetAnimationDuration__22CFBStreamedCompressionCFv:
/* 802FB924 002F8884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FB928 002F8888  7C 08 02 A6 */	mflr r0
/* 802FB92C 002F888C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FB930 002F8890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FB934 002F8894  7C 7F 1B 78 */	mr r31, r3
/* 802FB938 002F8898  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802FB93C 002F889C  C0 24 00 04 */	lfs f1, 4(r4)
/* 802FB940 002F88A0  48 04 D4 AD */	bl __ct__13CCharAnimTimeFf
/* 802FB944 002F88A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FB948 002F88A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FB94C 002F88AC  7C 08 03 A6 */	mtlr r0
/* 802FB950 002F88B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802FB954 002F88B4  4E 80 00 20 */	blr

.global __dt__22CFBStreamedCompressionFv
__dt__22CFBStreamedCompressionFv:
/* 802FB958 002F88B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FB95C 002F88BC  7C 08 02 A6 */	mflr r0
/* 802FB960 002F88C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FB964 002F88C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FB968 002F88C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FB96C 002F88CC  7C 9E 23 78 */	mr r30, r4
/* 802FB970 002F88D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FB974 002F88D4  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FB978 002F88D8  41 82 00 50 */	beq lbl_802FB9C8
/* 802FB97C 002F88DC  34 1D 00 0C */	addic. r0, r29, 0xc
/* 802FB980 002F88E0  41 82 00 0C */	beq lbl_802FB98C
/* 802FB984 002F88E4  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802FB988 002F88E8  48 01 9F A9 */	bl Free__7CMemoryFPCv
lbl_802FB98C:
/* 802FB98C 002F88EC  34 1D 00 08 */	addic. r0, r29, 8
/* 802FB990 002F88F0  41 82 00 28 */	beq lbl_802FB9B8
/* 802FB994 002F88F4  83 FD 00 08 */	lwz r31, 8(r29)
/* 802FB998 002F88F8  28 1F 00 00 */	cmplwi r31, 0
/* 802FB99C 002F88FC  41 82 00 1C */	beq lbl_802FB9B8
/* 802FB9A0 002F8900  41 82 00 10 */	beq lbl_802FB9B0
/* 802FB9A4 002F8904  7F E3 FB 78 */	mr r3, r31
/* 802FB9A8 002F8908  38 80 00 00 */	li r4, 0
/* 802FB9AC 002F890C  48 04 54 95 */	bl __dt__6CTokenFv
lbl_802FB9B0:
/* 802FB9B0 002F8910  7F E3 FB 78 */	mr r3, r31
/* 802FB9B4 002F8914  48 01 9F 7D */	bl Free__7CMemoryFPCv
lbl_802FB9B8:
/* 802FB9B8 002F8918  7F C0 07 35 */	extsh. r0, r30
/* 802FB9BC 002F891C  40 81 00 0C */	ble lbl_802FB9C8
/* 802FB9C0 002F8920  7F A3 EB 78 */	mr r3, r29
/* 802FB9C4 002F8924  48 01 9F 6D */	bl Free__7CMemoryFPCv
lbl_802FB9C8:
/* 802FB9C8 002F8928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FB9CC 002F892C  7F A3 EB 78 */	mr r3, r29
/* 802FB9D0 002F8930  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FB9D4 002F8934  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FB9D8 002F8938  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FB9DC 002F893C  7C 08 03 A6 */	mtlr r0
/* 802FB9E0 002F8940  38 21 00 20 */	addi r1, r1, 0x20
/* 802FB9E4 002F8944  4E 80 00 20 */	blr

.global __ct__22CFBStreamedCompressionFR12CInputStreamR12IObjectStore
__ct__22CFBStreamedCompressionFR12CInputStreamR12IObjectStore:
/* 802FB9E8 002F8948  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 802FB9EC 002F894C  7C 08 02 A6 */	mflr r0
/* 802FB9F0 002F8950  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802FB9F4 002F8954  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 802FB9F8 002F8958  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 802FB9FC 002F895C  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 802FBA00 002F8960  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 802FBA04 002F8964  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 802FBA08 002F8968  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 802FBA0C 002F896C  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 802FBA10 002F8970  F3 81 00 B8 */	psq_st f28, 184(r1), 0, qr0
/* 802FBA14 002F8974  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 802FBA18 002F8978  F3 61 00 A8 */	psq_st f27, 168(r1), 0, qr0
/* 802FBA1C 002F897C  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 802FBA20 002F8980  F3 41 00 98 */	psq_st f26, 152(r1), 0, qr0
/* 802FBA24 002F8984  BF 61 00 7C */	stmw r27, 0x7c(r1)
/* 802FBA28 002F8988  7C 9D 23 78 */	mr r29, r4
/* 802FBA2C 002F898C  7C 7E 1B 78 */	mr r30, r3
/* 802FBA30 002F8990  7C BC 2B 78 */	mr r28, r5
/* 802FBA34 002F8994  7F A3 EB 78 */	mr r3, r29
/* 802FBA38 002F8998  48 04 32 4D */	bl ReadLong__12CInputStreamFv
/* 802FBA3C 002F899C  90 7E 00 00 */	stw r3, 0(r30)
/* 802FBA40 002F89A0  7F A3 EB 78 */	mr r3, r29
/* 802FBA44 002F89A4  48 04 32 41 */	bl ReadLong__12CInputStreamFv
/* 802FBA48 002F89A8  90 7E 00 04 */	stw r3, 4(r30)
/* 802FBA4C 002F89AC  38 00 00 00 */	li r0, 0
/* 802FBA50 002F89B0  7F A5 EB 78 */	mr r5, r29
/* 802FBA54 002F89B4  38 61 00 24 */	addi r3, r1, 0x24
/* 802FBA58 002F89B8  90 1E 00 08 */	stw r0, 8(r30)
/* 802FBA5C 002F89BC  80 1E 00 00 */	lwz r0, 0(r30)
/* 802FBA60 002F89C0  54 04 F0 BE */	srwi r4, r0, 2
/* 802FBA64 002F89C4  38 84 00 01 */	addi r4, r4, 1
/* 802FBA68 002F89C8  48 00 03 49 */	bl GetRotationsAndOffsets__22CFBStreamedCompressionFUiR12CInputStream
/* 802FBA6C 002F89CC  38 00 00 00 */	li r0, 0
/* 802FBA70 002F89D0  80 61 00 28 */	lwz r3, 0x28(r1)
/* 802FBA74 002F89D4  98 01 00 24 */	stb r0, 0x24(r1)
/* 802FBA78 002F89D8  90 7E 00 0C */	stw r3, 0xc(r30)
/* 802FBA7C 002F89DC  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802FBA80 002F89E0  28 00 00 00 */	cmplwi r0, 0
/* 802FBA84 002F89E4  41 82 00 0C */	beq lbl_802FBA90
/* 802FBA88 002F89E8  80 61 00 28 */	lwz r3, 0x28(r1)
/* 802FBA8C 002F89EC  48 01 9E A5 */	bl Free__7CMemoryFPCv
lbl_802FBA90:
/* 802FBA90 002F89F0  C0 02 C6 F8 */	lfs f0, lbl_805AE418@sda21(r2)
/* 802FBA94 002F89F4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 802FBA98 002F89F8  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802FBA9C 002F89FC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 802FBAA0 002F8A00  80 1E 00 04 */	lwz r0, 4(r30)
/* 802FBAA4 002F8A04  28 00 00 00 */	cmplwi r0, 0
/* 802FBAA8 002F8A08  41 82 00 B0 */	beq lbl_802FBB58
/* 802FBAAC 002F8A0C  3C 60 80 3D */	lis r3, lbl_803D6E38@ha
/* 802FBAB0 002F8A10  3B 60 00 00 */	li r27, 0
/* 802FBAB4 002F8A14  38 83 6E 38 */	addi r4, r3, lbl_803D6E38@l
/* 802FBAB8 002F8A18  38 A0 00 00 */	li r5, 0
/* 802FBABC 002F8A1C  38 60 00 0C */	li r3, 0xc
/* 802FBAC0 002F8A20  48 01 9D AD */	bl __nw__FUlPCcPCc
/* 802FBAC4 002F8A24  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FBAC8 002F8A28  41 82 00 54 */	beq lbl_802FBB1C
/* 802FBACC 002F8A2C  80 DE 00 04 */	lwz r6, 4(r30)
/* 802FBAD0 002F8A30  3C 60 45 56 */	lis r3, 0x45564E54@ha
/* 802FBAD4 002F8A34  38 03 4E 54 */	addi r0, r3, 0x45564E54@l
/* 802FBAD8 002F8A38  7F 84 E3 78 */	mr r4, r28
/* 802FBADC 002F8A3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802FBAE0 002F8A40  38 61 00 14 */	addi r3, r1, 0x14
/* 802FBAE4 002F8A44  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802FBAE8 002F8A48  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802FBAEC 002F8A4C  81 9C 00 00 */	lwz r12, 0(r28)
/* 802FBAF0 002F8A50  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802FBAF4 002F8A54  7D 89 03 A6 */	mtctr r12
/* 802FBAF8 002F8A58  4E 80 04 21 */	bctrl
/* 802FBAFC 002F8A5C  7F E3 FB 78 */	mr r3, r31
/* 802FBB00 002F8A60  38 81 00 14 */	addi r4, r1, 0x14
/* 802FBB04 002F8A64  3B 60 00 01 */	li r27, 1
/* 802FBB08 002F8A68  48 04 53 A1 */	bl __ct__6CTokenFRC6CToken
/* 802FBB0C 002F8A6C  7F E3 FB 78 */	mr r3, r31
/* 802FBB10 002F8A70  48 04 52 FD */	bl GetObj__6CTokenFv
/* 802FBB14 002F8A74  80 03 00 04 */	lwz r0, 4(r3)
/* 802FBB18 002F8A78  90 1F 00 08 */	stw r0, 8(r31)
lbl_802FBB1C:
/* 802FBB1C 002F8A7C  83 BE 00 08 */	lwz r29, 8(r30)
/* 802FBB20 002F8A80  28 1D 00 00 */	cmplwi r29, 0
/* 802FBB24 002F8A84  41 82 00 1C */	beq lbl_802FBB40
/* 802FBB28 002F8A88  41 82 00 10 */	beq lbl_802FBB38
/* 802FBB2C 002F8A8C  7F A3 EB 78 */	mr r3, r29
/* 802FBB30 002F8A90  38 80 00 00 */	li r4, 0
/* 802FBB34 002F8A94  48 04 53 0D */	bl __dt__6CTokenFv
lbl_802FBB38:
/* 802FBB38 002F8A98  7F A3 EB 78 */	mr r3, r29
/* 802FBB3C 002F8A9C  48 01 9D F5 */	bl Free__7CMemoryFPCv
lbl_802FBB40:
/* 802FBB40 002F8AA0  7F 60 07 75 */	extsb. r0, r27
/* 802FBB44 002F8AA4  93 FE 00 08 */	stw r31, 8(r30)
/* 802FBB48 002F8AA8  41 82 00 10 */	beq lbl_802FBB58
/* 802FBB4C 002F8AAC  38 61 00 14 */	addi r3, r1, 0x14
/* 802FBB50 002F8AB0  38 80 FF FF */	li r4, -1
/* 802FBB54 002F8AB4  48 04 52 ED */	bl __dt__6CTokenFv
lbl_802FBB58:
/* 802FBB58 002F8AB8  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 802FBB5C 002F8ABC  80 67 00 24 */	lwz r3, 0x24(r7)
/* 802FBB60 002F8AC0  38 87 00 24 */	addi r4, r7, 0x24
/* 802FBB64 002F8AC4  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 802FBB68 002F8AC8  54 63 D9 7E */	srwi r3, r3, 5
/* 802FBB6C 002F8ACC  38 03 00 01 */	addi r0, r3, 1
/* 802FBB70 002F8AD0  40 82 00 08 */	bne lbl_802FBB78
/* 802FBB74 002F8AD4  7C 60 1B 78 */	mr r0, r3
lbl_802FBB78:
/* 802FBB78 002F8AD8  54 00 10 3A */	slwi r0, r0, 2
/* 802FBB7C 002F8ADC  7C C4 02 14 */	add r6, r4, r0
/* 802FBB80 002F8AE0  80 06 00 04 */	lwz r0, 4(r6)
/* 802FBB84 002F8AE4  39 06 00 08 */	addi r8, r6, 8
/* 802FBB88 002F8AE8  7D 05 43 78 */	mr r5, r8
/* 802FBB8C 002F8AEC  7C 09 03 A6 */	mtctr r0
/* 802FBB90 002F8AF0  2C 00 00 00 */	cmpwi r0, 0
/* 802FBB94 002F8AF4  40 81 00 38 */	ble lbl_802FBBCC
lbl_802FBB98:
/* 802FBB98 002F8AF8  A0 05 00 04 */	lhz r0, 4(r5)
/* 802FBB9C 002F8AFC  28 00 00 00 */	cmplwi r0, 0
/* 802FBBA0 002F8B00  40 82 00 0C */	bne lbl_802FBBAC
/* 802FBBA4 002F8B04  38 65 00 06 */	addi r3, r5, 6
/* 802FBBA8 002F8B08  48 00 00 08 */	b lbl_802FBBB0
lbl_802FBBAC:
/* 802FBBAC 002F8B0C  38 65 00 0F */	addi r3, r5, 0xf
lbl_802FBBB0:
/* 802FBBB0 002F8B10  A0 03 00 00 */	lhz r0, 0(r3)
/* 802FBBB4 002F8B14  28 00 00 00 */	cmplwi r0, 0
/* 802FBBB8 002F8B18  40 82 00 0C */	bne lbl_802FBBC4
/* 802FBBBC 002F8B1C  38 A3 00 02 */	addi r5, r3, 2
/* 802FBBC0 002F8B20  48 00 00 08 */	b lbl_802FBBC8
lbl_802FBBC4:
/* 802FBBC4 002F8B24  38 A3 00 0B */	addi r5, r3, 0xb
lbl_802FBBC8:
/* 802FBBC8 002F8B28  42 00 FF D0 */	bdnz lbl_802FBB98
lbl_802FBBCC:
/* 802FBBCC 002F8B2C  80 67 00 24 */	lwz r3, 0x24(r7)
/* 802FBBD0 002F8B30  38 87 00 24 */	addi r4, r7, 0x24
/* 802FBBD4 002F8B34  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 802FBBD8 002F8B38  54 63 D9 7E */	srwi r3, r3, 5
/* 802FBBDC 002F8B3C  38 03 00 01 */	addi r0, r3, 1
/* 802FBBE0 002F8B40  40 82 00 08 */	bne lbl_802FBBE8
/* 802FBBE4 002F8B44  7C 60 1B 78 */	mr r0, r3
lbl_802FBBE8:
/* 802FBBE8 002F8B48  54 00 10 3A */	slwi r0, r0, 2
/* 802FBBEC 002F8B4C  38 A5 FF FC */	addi r5, r5, -4
/* 802FBBF0 002F8B50  7C 64 02 14 */	add r3, r4, r0
/* 802FBBF4 002F8B54  38 81 00 08 */	addi r4, r1, 8
/* 802FBBF8 002F8B58  A3 E3 00 0C */	lhz r31, 0xc(r3)
/* 802FBBFC 002F8B5C  38 65 00 04 */	addi r3, r5, 4
/* 802FBC00 002F8B60  38 00 00 00 */	li r0, 0
/* 802FBC04 002F8B64  3B A0 00 00 */	li r29, 0
/* 802FBC08 002F8B68  90 A1 00 08 */	stw r5, 8(r1)
/* 802FBC0C 002F8B6C  90 81 00 38 */	stw r4, 0x38(r1)
/* 802FBC10 002F8B70  90 61 00 08 */	stw r3, 8(r1)
/* 802FBC14 002F8B74  80 63 00 00 */	lwz r3, 0(r3)
/* 802FBC18 002F8B78  90 61 00 3C */	stw r3, 0x3c(r1)
/* 802FBC1C 002F8B7C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802FBC20 002F8B80  80 06 00 04 */	lwz r0, 4(r6)
/* 802FBC24 002F8B84  7C 09 03 A6 */	mtctr r0
/* 802FBC28 002F8B88  2C 00 00 00 */	cmpwi r0, 0
/* 802FBC2C 002F8B8C  41 82 00 4C */	beq lbl_802FBC78
lbl_802FBC30:
/* 802FBC30 002F8B90  80 08 00 00 */	lwz r0, 0(r8)
/* 802FBC34 002F8B94  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802FBC38 002F8B98  28 00 00 03 */	cmplwi r0, 3
/* 802FBC3C 002F8B9C  41 82 00 3C */	beq lbl_802FBC78
/* 802FBC40 002F8BA0  A0 08 00 04 */	lhz r0, 4(r8)
/* 802FBC44 002F8BA4  3B BD 00 01 */	addi r29, r29, 1
/* 802FBC48 002F8BA8  28 00 00 00 */	cmplwi r0, 0
/* 802FBC4C 002F8BAC  40 82 00 0C */	bne lbl_802FBC58
/* 802FBC50 002F8BB0  38 68 00 06 */	addi r3, r8, 6
/* 802FBC54 002F8BB4  48 00 00 08 */	b lbl_802FBC5C
lbl_802FBC58:
/* 802FBC58 002F8BB8  38 68 00 0F */	addi r3, r8, 0xf
lbl_802FBC5C:
/* 802FBC5C 002F8BBC  A0 03 00 00 */	lhz r0, 0(r3)
/* 802FBC60 002F8BC0  28 00 00 00 */	cmplwi r0, 0
/* 802FBC64 002F8BC4  40 82 00 0C */	bne lbl_802FBC70
/* 802FBC68 002F8BC8  39 03 00 02 */	addi r8, r3, 2
/* 802FBC6C 002F8BCC  48 00 00 08 */	b lbl_802FBC74
lbl_802FBC70:
/* 802FBC70 002F8BD0  39 03 00 0B */	addi r8, r3, 0xb
lbl_802FBC74:
/* 802FBC74 002F8BD4  42 00 FF BC */	bdnz lbl_802FBC30
lbl_802FBC78:
/* 802FBC78 002F8BD8  7F C4 F3 78 */	mr r4, r30
/* 802FBC7C 002F8BDC  38 61 00 44 */	addi r3, r1, 0x44
/* 802FBC80 002F8BE0  4B FF FA C5 */	bl __ct__27CFBStreamedAnimReaderTotalsFRC22CFBStreamedCompression
/* 802FBC84 002F8BE4  38 61 00 44 */	addi r3, r1, 0x44
/* 802FBC88 002F8BE8  4B FF F6 01 */	bl CalculateDown__27CFBStreamedAnimReaderTotalsFv
/* 802FBC8C 002F8BEC  57 A3 18 38 */	slwi r3, r29, 3
/* 802FBC90 002F8BF0  C3 42 C6 F8 */	lfs f26, lbl_805AE418@sda21(r2)
/* 802FBC94 002F8BF4  38 03 00 04 */	addi r0, r3, 4
/* 802FBC98 002F8BF8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 802FBC9C 002F8BFC  54 1D 10 3A */	slwi r29, r0, 2
/* 802FBCA0 002F8C00  FF C0 D0 90 */	fmr f30, f26
/* 802FBCA4 002F8C04  7C 63 EA 14 */	add r3, r3, r29
/* 802FBCA8 002F8C08  C3 E2 C6 FC */	lfs f31, lbl_805AE41C@sda21(r2)
/* 802FBCAC 002F8C0C  C3 A3 00 00 */	lfs f29, 0(r3)
/* 802FBCB0 002F8C10  3B 80 00 00 */	li r28, 0
/* 802FBCB4 002F8C14  C3 83 00 04 */	lfs f28, 4(r3)
/* 802FBCB8 002F8C18  C3 63 00 08 */	lfs f27, 8(r3)
/* 802FBCBC 002F8C1C  48 00 00 80 */	b lbl_802FBD3C
lbl_802FBCC0:
/* 802FBCC0 002F8C20  38 61 00 44 */	addi r3, r1, 0x44
/* 802FBCC4 002F8C24  7F C5 F3 78 */	mr r5, r30
/* 802FBCC8 002F8C28  7C 66 1B 78 */	mr r6, r3
/* 802FBCCC 002F8C2C  38 81 00 38 */	addi r4, r1, 0x38
/* 802FBCD0 002F8C30  4B FF EA 91 */	bl "IncrementInto__27CFBStreamedAnimReaderTotalsFR47CBitLevelLoader<28CMemoryInputToBitLevelLoader>RC22CFBStreamedCompressionR27CFBStreamedAnimReaderTotals"
/* 802FBCD4 002F8C34  38 61 00 44 */	addi r3, r1, 0x44
/* 802FBCD8 002F8C38  4B FF F5 B1 */	bl CalculateDown__27CFBStreamedAnimReaderTotalsFv
/* 802FBCDC 002F8C3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802FBCE0 002F8C40  38 61 00 2C */	addi r3, r1, 0x2c
/* 802FBCE4 002F8C44  7C 80 EA 14 */	add r4, r0, r29
/* 802FBCE8 002F8C48  C0 64 00 00 */	lfs f3, 0(r4)
/* 802FBCEC 002F8C4C  C0 84 00 04 */	lfs f4, 4(r4)
/* 802FBCF0 002F8C50  C0 A4 00 08 */	lfs f5, 8(r4)
/* 802FBCF4 002F8C54  EC 43 E8 28 */	fsubs f2, f3, f29
/* 802FBCF8 002F8C58  EC 24 E0 28 */	fsubs f1, f4, f28
/* 802FBCFC 002F8C5C  EC 05 D8 28 */	fsubs f0, f5, f27
/* 802FBD00 002F8C60  FF A0 18 90 */	fmr f29, f3
/* 802FBD04 002F8C64  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 802FBD08 002F8C68  FF 80 20 90 */	fmr f28, f4
/* 802FBD0C 002F8C6C  FF 60 28 90 */	fmr f27, f5
/* 802FBD10 002F8C70  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802FBD14 002F8C74  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802FBD18 002F8C78  48 01 8B A1 */	bl Magnitude__9CVector3fCFv
/* 802FBD1C 002F8C7C  EC 01 F0 28 */	fsubs f0, f1, f30
/* 802FBD20 002F8C80  FC 00 02 10 */	fabs f0, f0
/* 802FBD24 002F8C84  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802FBD28 002F8C88  7C 00 00 26 */	mfcr r0
/* 802FBD2C 002F8C8C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802FBD30 002F8C90  40 82 00 08 */	bne lbl_802FBD38
/* 802FBD34 002F8C94  EF 5A 08 2A */	fadds f26, f26, f1
lbl_802FBD38:
/* 802FBD38 002F8C98  3B 9C 00 01 */	addi r28, r28, 1
lbl_802FBD3C:
/* 802FBD3C 002F8C9C  7C 1C F8 40 */	cmplw r28, r31
/* 802FBD40 002F8CA0  41 80 FF 80 */	blt lbl_802FBCC0
/* 802FBD44 002F8CA4  7F C4 F3 78 */	mr r4, r30
/* 802FBD48 002F8CA8  38 61 00 0C */	addi r3, r1, 0xc
/* 802FBD4C 002F8CAC  4B FF FB D9 */	bl GetAnimationDuration__22CFBStreamedCompressionCFv
/* 802FBD50 002F8CB0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802FBD54 002F8CB4  38 61 00 44 */	addi r3, r1, 0x44
/* 802FBD58 002F8CB8  38 80 FF FF */	li r4, -1
/* 802FBD5C 002F8CBC  EC 1A 00 24 */	fdivs f0, f26, f0
/* 802FBD60 002F8CC0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 802FBD64 002F8CC4  4B FF F8 A9 */	bl sub_802fb60c
/* 802FBD68 002F8CC8  7F C3 F3 78 */	mr r3, r30
/* 802FBD6C 002F8CCC  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 802FBD70 002F8CD0  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 802FBD74 002F8CD4  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 802FBD78 002F8CD8  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 802FBD7C 002F8CDC  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 802FBD80 002F8CE0  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 802FBD84 002F8CE4  E3 81 00 B8 */	psq_l f28, 184(r1), 0, qr0
/* 802FBD88 002F8CE8  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 802FBD8C 002F8CEC  E3 61 00 A8 */	psq_l f27, 168(r1), 0, qr0
/* 802FBD90 002F8CF0  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 802FBD94 002F8CF4  E3 41 00 98 */	psq_l f26, 152(r1), 0, qr0
/* 802FBD98 002F8CF8  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 802FBD9C 002F8CFC  BB 61 00 7C */	lmw r27, 0x7c(r1)
/* 802FBDA0 002F8D00  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 802FBDA4 002F8D04  7C 08 03 A6 */	mtlr r0
/* 802FBDA8 002F8D08  38 21 00 F0 */	addi r1, r1, 0xf0
/* 802FBDAC 002F8D0C  4E 80 00 20 */	blr

.global GetRotationsAndOffsets__22CFBStreamedCompressionFUiR12CInputStream
GetRotationsAndOffsets__22CFBStreamedCompressionFUiR12CInputStream:
/* 802FBDB0 002F8D10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802FBDB4 002F8D14  7C 08 02 A6 */	mflr r0
/* 802FBDB8 002F8D18  3C C0 80 3D */	lis r6, lbl_803D6E38@ha
/* 802FBDBC 002F8D1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FBDC0 002F8D20  38 06 6E 38 */	addi r0, r6, lbl_803D6E38@l
/* 802FBDC4 002F8D24  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802FBDC8 002F8D28  7C 7E 1B 78 */	mr r30, r3
/* 802FBDCC 002F8D2C  7C BF 2B 78 */	mr r31, r5
/* 802FBDD0 002F8D30  54 83 10 3A */	slwi r3, r4, 2
/* 802FBDD4 002F8D34  38 A0 00 00 */	li r5, 0
/* 802FBDD8 002F8D38  7C 04 03 78 */	mr r4, r0
/* 802FBDDC 002F8D3C  48 01 9A 3D */	bl __nwa__FUlPCcPCc
/* 802FBDE0 002F8D40  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FBDE4 002F8D44  7C 1D 00 D0 */	neg r0, r29
/* 802FBDE8 002F8D48  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802FBDEC 002F8D4C  7C 00 EB 78 */	or r0, r0, r29
/* 802FBDF0 002F8D50  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FBDF4 002F8D54  98 01 00 08 */	stb r0, 8(r1)
/* 802FBDF8 002F8D58  41 82 00 0C */	beq lbl_802FBE04
/* 802FBDFC 002F8D5C  7F E4 FB 78 */	mr r4, r31
/* 802FBE00 002F8D60  48 00 04 B5 */	bl __ct__26CStandardMultiFormatHeaderFR12CInputStream
lbl_802FBE04:
/* 802FBE04 002F8D64  37 5D 00 24 */	addic. r26, r29, 0x24
/* 802FBE08 002F8D68  41 82 00 50 */	beq lbl_802FBE58
/* 802FBE0C 002F8D6C  7F E3 FB 78 */	mr r3, r31
/* 802FBE10 002F8D70  48 04 2E 75 */	bl ReadLong__12CInputStreamFv
/* 802FBE14 002F8D74  90 7A 00 00 */	stw r3, 0(r26)
/* 802FBE18 002F8D78  80 7A 00 00 */	lwz r3, 0(r26)
/* 802FBE1C 002F8D7C  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 802FBE20 002F8D80  54 63 D9 7E */	srwi r3, r3, 5
/* 802FBE24 002F8D84  3B A3 00 01 */	addi r29, r3, 1
/* 802FBE28 002F8D88  40 82 00 08 */	bne lbl_802FBE30
/* 802FBE2C 002F8D8C  7C 7D 1B 78 */	mr r29, r3
lbl_802FBE30:
/* 802FBE30 002F8D90  3B 7A 00 04 */	addi r27, r26, 4
/* 802FBE34 002F8D94  3B 80 00 00 */	li r28, 0
/* 802FBE38 002F8D98  48 00 00 18 */	b lbl_802FBE50
lbl_802FBE3C:
/* 802FBE3C 002F8D9C  7F E3 FB 78 */	mr r3, r31
/* 802FBE40 002F8DA0  48 04 2E 45 */	bl ReadLong__12CInputStreamFv
/* 802FBE44 002F8DA4  90 7B 00 00 */	stw r3, 0(r27)
/* 802FBE48 002F8DA8  3B 7B 00 04 */	addi r27, r27, 4
/* 802FBE4C 002F8DAC  3B 9C 00 01 */	addi r28, r28, 1
lbl_802FBE50:
/* 802FBE50 002F8DB0  7C 1C E8 40 */	cmplw r28, r29
/* 802FBE54 002F8DB4  41 80 FF E8 */	blt lbl_802FBE3C
lbl_802FBE58:
/* 802FBE58 002F8DB8  80 7A 00 00 */	lwz r3, 0(r26)
/* 802FBE5C 002F8DBC  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 802FBE60 002F8DC0  54 63 D9 7E */	srwi r3, r3, 5
/* 802FBE64 002F8DC4  3B A3 00 01 */	addi r29, r3, 1
/* 802FBE68 002F8DC8  40 82 00 08 */	bne lbl_802FBE70
/* 802FBE6C 002F8DCC  7C 7D 1B 78 */	mr r29, r3
lbl_802FBE70:
/* 802FBE70 002F8DD0  7F E3 FB 78 */	mr r3, r31
/* 802FBE74 002F8DD4  48 04 2E 11 */	bl ReadLong__12CInputStreamFv
/* 802FBE78 002F8DD8  57 A0 10 3A */	slwi r0, r29, 2
/* 802FBE7C 002F8DDC  7F 5A 02 14 */	add r26, r26, r0
/* 802FBE80 002F8DE0  37 5A 00 04 */	addic. r26, r26, 4
/* 802FBE84 002F8DE4  41 82 00 10 */	beq lbl_802FBE94
/* 802FBE88 002F8DE8  7F 43 D3 78 */	mr r3, r26
/* 802FBE8C 002F8DEC  7F E4 FB 78 */	mr r4, r31
/* 802FBE90 002F8DF0  48 00 02 41 */	bl sub_802fc0d0
lbl_802FBE94:
/* 802FBE94 002F8DF4  80 1A 00 00 */	lwz r0, 0(r26)
/* 802FBE98 002F8DF8  3B 7A 00 04 */	addi r27, r26, 4
/* 802FBE9C 002F8DFC  7F 63 DB 78 */	mr r3, r27
/* 802FBEA0 002F8E00  7C 09 03 A6 */	mtctr r0
/* 802FBEA4 002F8E04  2C 00 00 00 */	cmpwi r0, 0
/* 802FBEA8 002F8E08  40 81 00 38 */	ble lbl_802FBEE0
lbl_802FBEAC:
/* 802FBEAC 002F8E0C  A0 03 00 04 */	lhz r0, 4(r3)
/* 802FBEB0 002F8E10  28 00 00 00 */	cmplwi r0, 0
/* 802FBEB4 002F8E14  40 82 00 0C */	bne lbl_802FBEC0
/* 802FBEB8 002F8E18  38 63 00 06 */	addi r3, r3, 6
/* 802FBEBC 002F8E1C  48 00 00 08 */	b lbl_802FBEC4
lbl_802FBEC0:
/* 802FBEC0 002F8E20  38 63 00 0F */	addi r3, r3, 0xf
lbl_802FBEC4:
/* 802FBEC4 002F8E24  A0 03 00 00 */	lhz r0, 0(r3)
/* 802FBEC8 002F8E28  28 00 00 00 */	cmplwi r0, 0
/* 802FBECC 002F8E2C  40 82 00 0C */	bne lbl_802FBED8
/* 802FBED0 002F8E30  38 63 00 02 */	addi r3, r3, 2
/* 802FBED4 002F8E34  48 00 00 08 */	b lbl_802FBEDC
lbl_802FBED8:
/* 802FBED8 002F8E38  38 63 00 0B */	addi r3, r3, 0xb
lbl_802FBEDC:
/* 802FBEDC 002F8E3C  42 00 FF D0 */	bdnz lbl_802FBEAC
lbl_802FBEE0:
/* 802FBEE0 002F8E40  7C 7C 1B 78 */	mr r28, r3
/* 802FBEE4 002F8E44  7F 43 D3 78 */	mr r3, r26
/* 802FBEE8 002F8E48  48 00 00 91 */	bl sub_802fbf78
/* 802FBEEC 002F8E4C  A0 9B 00 04 */	lhz r4, 4(r27)
/* 802FBEF0 002F8E50  3C 00 43 30 */	lis r0, 0x4330
/* 802FBEF4 002F8E54  90 01 00 10 */	stw r0, 0x10(r1)
/* 802FBEF8 002F8E58  7C 63 21 D6 */	mullw r3, r3, r4
/* 802FBEFC 002F8E5C  C8 42 C7 08 */	lfd f2, lbl_805AE428@sda21(r2)
/* 802FBF00 002F8E60  C0 02 C7 00 */	lfs f0, lbl_805AE420@sda21(r2)
/* 802FBF04 002F8E64  38 03 00 1F */	addi r0, r3, 0x1f
/* 802FBF08 002F8E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FBF0C 002F8E6C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802FBF10 002F8E70  EC 21 10 28 */	fsubs f1, f1, f2
/* 802FBF14 002F8E74  EC 21 00 32 */	fmuls f1, f1, f0
/* 802FBF18 002F8E78  48 08 DA 3D */	bl __cvt_fp2unsigned
/* 802FBF1C 002F8E7C  7C 7D 1B 78 */	mr r29, r3
/* 802FBF20 002F8E80  3B 40 00 00 */	li r26, 0
/* 802FBF24 002F8E84  48 00 00 18 */	b lbl_802FBF3C
lbl_802FBF28:
/* 802FBF28 002F8E88  7F E3 FB 78 */	mr r3, r31
/* 802FBF2C 002F8E8C  48 04 2D 59 */	bl ReadLong__12CInputStreamFv
/* 802FBF30 002F8E90  90 7C 00 00 */	stw r3, 0(r28)
/* 802FBF34 002F8E94  3B 9C 00 04 */	addi r28, r28, 4
/* 802FBF38 002F8E98  3B 5A 00 01 */	addi r26, r26, 1
lbl_802FBF3C:
/* 802FBF3C 002F8E9C  7C 1A E8 40 */	cmplw r26, r29
/* 802FBF40 002F8EA0  41 80 FF E8 */	blt lbl_802FBF28
/* 802FBF44 002F8EA4  88 81 00 08 */	lbz r4, 8(r1)
/* 802FBF48 002F8EA8  38 00 00 00 */	li r0, 0
/* 802FBF4C 002F8EAC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802FBF50 002F8EB0  98 9E 00 00 */	stb r4, 0(r30)
/* 802FBF54 002F8EB4  90 7E 00 04 */	stw r3, 4(r30)
/* 802FBF58 002F8EB8  98 01 00 08 */	stb r0, 8(r1)
/* 802FBF5C 002F8EBC  48 00 00 08 */	b lbl_802FBF64
/* 802FBF60 002F8EC0  48 01 99 D1 */	bl Free__7CMemoryFPCv
lbl_802FBF64:
/* 802FBF64 002F8EC4  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802FBF68 002F8EC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802FBF6C 002F8ECC  7C 08 03 A6 */	mtlr r0
/* 802FBF70 002F8ED0  38 21 00 30 */	addi r1, r1, 0x30
/* 802FBF74 002F8ED4  4E 80 00 20 */	blr

.global sub_802fbf78
sub_802fbf78:
/* 802FBF78 002F8ED8  80 03 00 00 */	lwz r0, 0(r3)
/* 802FBF7C 002F8EDC  39 03 00 04 */	addi r8, r3, 4
/* 802FBF80 002F8EE0  38 60 00 00 */	li r3, 0
/* 802FBF84 002F8EE4  7C 09 03 A6 */	mtctr r0
/* 802FBF88 002F8EE8  2C 00 00 00 */	cmpwi r0, 0
/* 802FBF8C 002F8EEC  4D 82 00 20 */	beqlr
lbl_802FBF90:
/* 802FBF90 002F8EF0  A0 08 00 04 */	lhz r0, 4(r8)
/* 802FBF94 002F8EF4  28 00 00 00 */	cmplwi r0, 0
/* 802FBF98 002F8EF8  40 82 00 0C */	bne lbl_802FBFA4
/* 802FBF9C 002F8EFC  38 88 00 06 */	addi r4, r8, 6
/* 802FBFA0 002F8F00  48 00 00 08 */	b lbl_802FBFA8
lbl_802FBFA4:
/* 802FBFA4 002F8F04  38 88 00 0F */	addi r4, r8, 0xf
lbl_802FBFA8:
/* 802FBFA8 002F8F08  A0 08 00 04 */	lhz r0, 4(r8)
/* 802FBFAC 002F8F0C  28 00 00 00 */	cmplwi r0, 0
/* 802FBFB0 002F8F10  40 82 00 0C */	bne lbl_802FBFBC
/* 802FBFB4 002F8F14  38 C0 00 00 */	li r6, 0
/* 802FBFB8 002F8F18  48 00 00 5C */	b lbl_802FC014
lbl_802FBFBC:
/* 802FBFBC 002F8F1C  38 00 00 00 */	li r0, 0
/* 802FBFC0 002F8F20  38 A8 00 06 */	addi r5, r8, 6
/* 802FBFC4 002F8F24  28 00 00 00 */	cmplwi r0, 0
/* 802FBFC8 002F8F28  40 82 00 0C */	bne lbl_802FBFD4
/* 802FBFCC 002F8F2C  38 C0 00 01 */	li r6, 1
/* 802FBFD0 002F8F30  48 00 00 14 */	b lbl_802FBFE4
lbl_802FBFD4:
/* 802FBFD4 002F8F34  88 C5 00 02 */	lbz r6, 2(r5)
/* 802FBFD8 002F8F38  38 A5 00 03 */	addi r5, r5, 3
/* 802FBFDC 002F8F3C  48 00 00 08 */	b lbl_802FBFE4
/* 802FBFE0 002F8F40  48 00 00 18 */	b lbl_802FBFF8
lbl_802FBFE4:
/* 802FBFE4 002F8F44  88 05 00 02 */	lbz r0, 2(r5)
/* 802FBFE8 002F8F48  38 A5 00 03 */	addi r5, r5, 3
/* 802FBFEC 002F8F4C  7C C6 02 14 */	add r6, r6, r0
/* 802FBFF0 002F8F50  48 00 00 08 */	b lbl_802FBFF8
/* 802FBFF4 002F8F54  48 00 00 18 */	b lbl_802FC00C
lbl_802FBFF8:
/* 802FBFF8 002F8F58  88 05 00 02 */	lbz r0, 2(r5)
/* 802FBFFC 002F8F5C  38 A5 00 03 */	addi r5, r5, 3
/* 802FC000 002F8F60  7C C6 02 14 */	add r6, r6, r0
/* 802FC004 002F8F64  48 00 00 08 */	b lbl_802FC00C
/* 802FC008 002F8F68  48 00 00 0C */	b lbl_802FC014
lbl_802FC00C:
/* 802FC00C 002F8F6C  88 05 00 02 */	lbz r0, 2(r5)
/* 802FC010 002F8F70  7C C6 02 14 */	add r6, r6, r0
lbl_802FC014:
/* 802FC014 002F8F74  A0 04 00 00 */	lhz r0, 0(r4)
/* 802FC018 002F8F78  28 00 00 00 */	cmplwi r0, 0
/* 802FC01C 002F8F7C  40 82 00 0C */	bne lbl_802FC028
/* 802FC020 002F8F80  38 E0 00 00 */	li r7, 0
/* 802FC024 002F8F84  48 00 00 6C */	b lbl_802FC090
lbl_802FC028:
/* 802FC028 002F8F88  38 A0 00 00 */	li r5, 0
/* 802FC02C 002F8F8C  38 84 00 02 */	addi r4, r4, 2
/* 802FC030 002F8F90  3C 05 FF FF */	addis r0, r5, 0xffff
/* 802FC034 002F8F94  28 00 86 A0 */	cmplwi r0, 0x86a0
/* 802FC038 002F8F98  40 82 00 0C */	bne lbl_802FC044
/* 802FC03C 002F8F9C  38 E0 00 01 */	li r7, 1
/* 802FC040 002F8FA0  48 00 00 0C */	b lbl_802FC04C
lbl_802FC044:
/* 802FC044 002F8FA4  88 E4 00 02 */	lbz r7, 2(r4)
/* 802FC048 002F8FA8  38 84 00 03 */	addi r4, r4, 3
lbl_802FC04C:
/* 802FC04C 002F8FAC  38 A0 00 01 */	li r5, 1
/* 802FC050 002F8FB0  3C 05 FF FF */	addis r0, r5, 0xffff
/* 802FC054 002F8FB4  28 00 86 A0 */	cmplwi r0, 0x86a0
/* 802FC058 002F8FB8  40 82 00 0C */	bne lbl_802FC064
/* 802FC05C 002F8FBC  38 E7 00 01 */	addi r7, r7, 1
/* 802FC060 002F8FC0  48 00 00 10 */	b lbl_802FC070
lbl_802FC064:
/* 802FC064 002F8FC4  88 04 00 02 */	lbz r0, 2(r4)
/* 802FC068 002F8FC8  38 84 00 03 */	addi r4, r4, 3
/* 802FC06C 002F8FCC  7C E7 02 14 */	add r7, r7, r0
lbl_802FC070:
/* 802FC070 002F8FD0  38 A0 00 02 */	li r5, 2
/* 802FC074 002F8FD4  3C 05 FF FF */	addis r0, r5, 0xffff
/* 802FC078 002F8FD8  28 00 86 A0 */	cmplwi r0, 0x86a0
/* 802FC07C 002F8FDC  40 82 00 0C */	bne lbl_802FC088
/* 802FC080 002F8FE0  38 E7 00 01 */	addi r7, r7, 1
/* 802FC084 002F8FE4  48 00 00 0C */	b lbl_802FC090
lbl_802FC088:
/* 802FC088 002F8FE8  88 04 00 02 */	lbz r0, 2(r4)
/* 802FC08C 002F8FEC  7C E7 02 14 */	add r7, r7, r0
lbl_802FC090:
/* 802FC090 002F8FF0  A0 08 00 04 */	lhz r0, 4(r8)
/* 802FC094 002F8FF4  7C 67 1A 14 */	add r3, r7, r3
/* 802FC098 002F8FF8  7C 66 1A 14 */	add r3, r6, r3
/* 802FC09C 002F8FFC  28 00 00 00 */	cmplwi r0, 0
/* 802FC0A0 002F9000  40 82 00 0C */	bne lbl_802FC0AC
/* 802FC0A4 002F9004  38 88 00 06 */	addi r4, r8, 6
/* 802FC0A8 002F9008  48 00 00 08 */	b lbl_802FC0B0
lbl_802FC0AC:
/* 802FC0AC 002F900C  38 88 00 0F */	addi r4, r8, 0xf
lbl_802FC0B0:
/* 802FC0B0 002F9010  A0 04 00 00 */	lhz r0, 0(r4)
/* 802FC0B4 002F9014  28 00 00 00 */	cmplwi r0, 0
/* 802FC0B8 002F9018  40 82 00 0C */	bne lbl_802FC0C4
/* 802FC0BC 002F901C  39 04 00 02 */	addi r8, r4, 2
/* 802FC0C0 002F9020  48 00 00 08 */	b lbl_802FC0C8
lbl_802FC0C4:
/* 802FC0C4 002F9024  39 04 00 0B */	addi r8, r4, 0xb
lbl_802FC0C8:
/* 802FC0C8 002F9028  42 00 FE C8 */	bdnz lbl_802FBF90
/* 802FC0CC 002F902C  4E 80 00 20 */	blr

.global sub_802fc0d0
sub_802fc0d0:
/* 802FC0D0 002F9030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FC0D4 002F9034  7C 08 02 A6 */	mflr r0
/* 802FC0D8 002F9038  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FC0DC 002F903C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FC0E0 002F9040  7C 7F 1B 78 */	mr r31, r3
/* 802FC0E4 002F9044  48 00 00 1D */	bl sub_802fc100
/* 802FC0E8 002F9048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FC0EC 002F904C  7F E3 FB 78 */	mr r3, r31
/* 802FC0F0 002F9050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FC0F4 002F9054  7C 08 03 A6 */	mtlr r0
/* 802FC0F8 002F9058  38 21 00 10 */	addi r1, r1, 0x10
/* 802FC0FC 002F905C  4E 80 00 20 */	blr

.global sub_802fc100
sub_802fc100:
/* 802FC100 002F9060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FC104 002F9064  7C 08 02 A6 */	mflr r0
/* 802FC108 002F9068  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FC10C 002F906C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802FC110 002F9070  7C 9C 23 78 */	mr r28, r4
/* 802FC114 002F9074  7C 7B 1B 78 */	mr r27, r3
/* 802FC118 002F9078  7F 83 E3 78 */	mr r3, r28
/* 802FC11C 002F907C  48 04 2B 69 */	bl ReadLong__12CInputStreamFv
/* 802FC120 002F9080  90 7B 00 00 */	stw r3, 0(r27)
/* 802FC124 002F9084  3B DB 00 04 */	addi r30, r27, 4
/* 802FC128 002F9088  3B A0 00 00 */	li r29, 0
/* 802FC12C 002F908C  83 FB 00 00 */	lwz r31, 0(r27)
/* 802FC130 002F9090  48 00 00 4C */	b lbl_802FC17C
lbl_802FC134:
/* 802FC134 002F9094  28 1E 00 00 */	cmplwi r30, 0
/* 802FC138 002F9098  41 82 00 10 */	beq lbl_802FC148
/* 802FC13C 002F909C  7F C3 F3 78 */	mr r3, r30
/* 802FC140 002F90A0  7F 84 E3 78 */	mr r4, r28
/* 802FC144 002F90A4  48 00 00 59 */	bl sub_802fc19c
lbl_802FC148:
/* 802FC148 002F90A8  A0 1E 00 04 */	lhz r0, 4(r30)
/* 802FC14C 002F90AC  28 00 00 00 */	cmplwi r0, 0
/* 802FC150 002F90B0  40 82 00 0C */	bne lbl_802FC15C
/* 802FC154 002F90B4  38 7E 00 06 */	addi r3, r30, 6
/* 802FC158 002F90B8  48 00 00 08 */	b lbl_802FC160
lbl_802FC15C:
/* 802FC15C 002F90BC  38 7E 00 0F */	addi r3, r30, 0xf
lbl_802FC160:
/* 802FC160 002F90C0  A0 03 00 00 */	lhz r0, 0(r3)
/* 802FC164 002F90C4  28 00 00 00 */	cmplwi r0, 0
/* 802FC168 002F90C8  40 82 00 0C */	bne lbl_802FC174
/* 802FC16C 002F90CC  3B C3 00 02 */	addi r30, r3, 2
/* 802FC170 002F90D0  48 00 00 08 */	b lbl_802FC178
lbl_802FC174:
/* 802FC174 002F90D4  3B C3 00 0B */	addi r30, r3, 0xb
lbl_802FC178:
/* 802FC178 002F90D8  3B BD 00 01 */	addi r29, r29, 1
lbl_802FC17C:
/* 802FC17C 002F90DC  7C 1D F8 00 */	cmpw r29, r31
/* 802FC180 002F90E0  41 80 FF B4 */	blt lbl_802FC134
/* 802FC184 002F90E4  7F 63 DB 78 */	mr r3, r27
/* 802FC188 002F90E8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802FC18C 002F90EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FC190 002F90F0  7C 08 03 A6 */	mtlr r0
/* 802FC194 002F90F4  38 21 00 20 */	addi r1, r1, 0x20
/* 802FC198 002F90F8  4E 80 00 20 */	blr

.global sub_802fc19c
sub_802fc19c:
/* 802FC19C 002F90FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FC1A0 002F9100  7C 08 02 A6 */	mflr r0
/* 802FC1A4 002F9104  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FC1A8 002F9108  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FC1AC 002F910C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FC1B0 002F9110  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802FC1B4 002F9114  7C 9D 23 78 */	mr r29, r4
/* 802FC1B8 002F9118  93 81 00 10 */	stw r28, 0x10(r1)
/* 802FC1BC 002F911C  7C 7C 1B 78 */	mr r28, r3
/* 802FC1C0 002F9120  7F A3 EB 78 */	mr r3, r29
/* 802FC1C4 002F9124  48 04 2A C1 */	bl ReadLong__12CInputStreamFv
/* 802FC1C8 002F9128  37 FC 00 04 */	addic. r31, r28, 4
/* 802FC1CC 002F912C  90 7C 00 00 */	stw r3, 0(r28)
/* 802FC1D0 002F9130  41 82 00 50 */	beq lbl_802FC220
/* 802FC1D4 002F9134  7F A3 EB 78 */	mr r3, r29
/* 802FC1D8 002F9138  48 04 2A D9 */	bl ReadShort__12CInputStreamFv
/* 802FC1DC 002F913C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 802FC1E0 002F9140  B0 7F 00 00 */	sth r3, 0(r31)
/* 802FC1E4 002F9144  3B DF 00 02 */	addi r30, r31, 2
/* 802FC1E8 002F9148  41 82 00 38 */	beq lbl_802FC220
/* 802FC1EC 002F914C  3B E0 00 00 */	li r31, 0
lbl_802FC1F0:
/* 802FC1F0 002F9150  28 1F 00 00 */	cmplwi r31, 0
/* 802FC1F4 002F9154  41 82 00 20 */	beq lbl_802FC214
/* 802FC1F8 002F9158  7F A3 EB 78 */	mr r3, r29
/* 802FC1FC 002F915C  48 04 2A B5 */	bl ReadShort__12CInputStreamFv
/* 802FC200 002F9160  B0 7E 00 00 */	sth r3, 0(r30)
/* 802FC204 002F9164  7F A3 EB 78 */	mr r3, r29
/* 802FC208 002F9168  48 04 2B 05 */	bl ReadChar__12CInputStreamFv
/* 802FC20C 002F916C  98 7E 00 02 */	stb r3, 2(r30)
/* 802FC210 002F9170  3B DE 00 03 */	addi r30, r30, 3
lbl_802FC214:
/* 802FC214 002F9174  3B FF 00 01 */	addi r31, r31, 1
/* 802FC218 002F9178  28 1F 00 04 */	cmplwi r31, 4
/* 802FC21C 002F917C  41 80 FF D4 */	blt lbl_802FC1F0
lbl_802FC220:
/* 802FC220 002F9180  A0 1C 00 04 */	lhz r0, 4(r28)
/* 802FC224 002F9184  28 00 00 00 */	cmplwi r0, 0
/* 802FC228 002F9188  40 82 00 0C */	bne lbl_802FC234
/* 802FC22C 002F918C  3B DC 00 06 */	addi r30, r28, 6
/* 802FC230 002F9190  48 00 00 08 */	b lbl_802FC238
lbl_802FC234:
/* 802FC234 002F9194  3B DC 00 0F */	addi r30, r28, 0xf
lbl_802FC238:
/* 802FC238 002F9198  28 1E 00 00 */	cmplwi r30, 0
/* 802FC23C 002F919C  41 82 00 54 */	beq lbl_802FC290
/* 802FC240 002F91A0  7F A3 EB 78 */	mr r3, r29
/* 802FC244 002F91A4  48 04 2A 6D */	bl ReadShort__12CInputStreamFv
/* 802FC248 002F91A8  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 802FC24C 002F91AC  B0 7E 00 00 */	sth r3, 0(r30)
/* 802FC250 002F91B0  3B FE 00 02 */	addi r31, r30, 2
/* 802FC254 002F91B4  41 82 00 3C */	beq lbl_802FC290
/* 802FC258 002F91B8  3B C0 00 00 */	li r30, 0
lbl_802FC25C:
/* 802FC25C 002F91BC  3C 1E FF FF */	addis r0, r30, 0xffff
/* 802FC260 002F91C0  28 00 86 A0 */	cmplwi r0, 0x86a0
/* 802FC264 002F91C4  41 82 00 20 */	beq lbl_802FC284
/* 802FC268 002F91C8  7F A3 EB 78 */	mr r3, r29
/* 802FC26C 002F91CC  48 04 2A 45 */	bl ReadShort__12CInputStreamFv
/* 802FC270 002F91D0  B0 7F 00 00 */	sth r3, 0(r31)
/* 802FC274 002F91D4  7F A3 EB 78 */	mr r3, r29
/* 802FC278 002F91D8  48 04 2A 95 */	bl ReadChar__12CInputStreamFv
/* 802FC27C 002F91DC  98 7F 00 02 */	stb r3, 2(r31)
/* 802FC280 002F91E0  3B FF 00 03 */	addi r31, r31, 3
lbl_802FC284:
/* 802FC284 002F91E4  3B DE 00 01 */	addi r30, r30, 1
/* 802FC288 002F91E8  28 1E 00 03 */	cmplwi r30, 3
/* 802FC28C 002F91EC  41 80 FF D0 */	blt lbl_802FC25C
lbl_802FC290:
/* 802FC290 002F91F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FC294 002F91F4  7F 83 E3 78 */	mr r3, r28
/* 802FC298 002F91F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FC29C 002F91FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FC2A0 002F9200  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802FC2A4 002F9204  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802FC2A8 002F9208  7C 08 03 A6 */	mtlr r0
/* 802FC2AC 002F920C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FC2B0 002F9210  4E 80 00 20 */	blr

.global __ct__26CStandardMultiFormatHeaderFR12CInputStream
__ct__26CStandardMultiFormatHeaderFR12CInputStream:
/* 802FC2B4 002F9214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FC2B8 002F9218  7C 08 02 A6 */	mflr r0
/* 802FC2BC 002F921C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FC2C0 002F9220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FC2C4 002F9224  7C 9F 23 78 */	mr r31, r4
/* 802FC2C8 002F9228  93 C1 00 08 */	stw r30, 8(r1)
/* 802FC2CC 002F922C  7C 7E 1B 78 */	mr r30, r3
/* 802FC2D0 002F9230  7F E3 FB 78 */	mr r3, r31
/* 802FC2D4 002F9234  48 04 29 B1 */	bl ReadLong__12CInputStreamFv
/* 802FC2D8 002F9238  90 7E 00 00 */	stw r3, 0(r30)
/* 802FC2DC 002F923C  7F E3 FB 78 */	mr r3, r31
/* 802FC2E0 002F9240  48 04 29 49 */	bl ReadFloat__12CInputStreamFv
/* 802FC2E4 002F9244  D0 3E 00 04 */	stfs f1, 4(r30)
/* 802FC2E8 002F9248  7F E3 FB 78 */	mr r3, r31
/* 802FC2EC 002F924C  48 04 29 3D */	bl ReadFloat__12CInputStreamFv
/* 802FC2F0 002F9250  D0 3E 00 08 */	stfs f1, 8(r30)
/* 802FC2F4 002F9254  7F E3 FB 78 */	mr r3, r31
/* 802FC2F8 002F9258  48 04 29 8D */	bl ReadLong__12CInputStreamFv
/* 802FC2FC 002F925C  90 7E 00 0C */	stw r3, 0xc(r30)
/* 802FC300 002F9260  7F E3 FB 78 */	mr r3, r31
/* 802FC304 002F9264  48 04 29 81 */	bl ReadLong__12CInputStreamFv
/* 802FC308 002F9268  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802FC30C 002F926C  7F E3 FB 78 */	mr r3, r31
/* 802FC310 002F9270  48 04 29 75 */	bl ReadLong__12CInputStreamFv
/* 802FC314 002F9274  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802FC318 002F9278  7F E3 FB 78 */	mr r3, r31
/* 802FC31C 002F927C  48 04 29 0D */	bl ReadFloat__12CInputStreamFv
/* 802FC320 002F9280  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 802FC324 002F9284  7F E3 FB 78 */	mr r3, r31
/* 802FC328 002F9288  48 04 29 5D */	bl ReadLong__12CInputStreamFv
/* 802FC32C 002F928C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802FC330 002F9290  7F E3 FB 78 */	mr r3, r31
/* 802FC334 002F9294  48 04 29 51 */	bl ReadLong__12CInputStreamFv
/* 802FC338 002F9298  90 7E 00 20 */	stw r3, 0x20(r30)
/* 802FC33C 002F929C  7F C3 F3 78 */	mr r3, r30
/* 802FC340 002F92A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FC344 002F92A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FC348 002F92A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FC34C 002F92AC  7C 08 03 A6 */	mtlr r0
/* 802FC350 002F92B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802FC354 002F92B4  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE418
lbl_805AE418:
	# ROM: 0x3FACB8
	.4byte 0

.global lbl_805AE41C
lbl_805AE41C:
	# ROM: 0x3FACBC
	.4byte 0x3727C5AC

.global lbl_805AE420
lbl_805AE420:
	# ROM: 0x3FACC0
	.4byte 0x3D000000
	.4byte 0

.global lbl_805AE428
lbl_805AE428:
	# ROM: 0x3FACC8
	.4byte 0x43300000
	.4byte 0


.section .rodata
.global lbl_803D6E38
lbl_803D6E38:
	# ROM: 0x3D3E38
	.asciz "??(??)"
	.balign 4


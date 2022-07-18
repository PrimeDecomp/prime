.include "macros.inc"

.section .data

.global lbl_803E7048
lbl_803E7048:
	# ROM: 0x3E4048
	.4byte 0
	.4byte 0
	.4byte __dt__11CScriptMidiFv
	.4byte Accept__11CScriptMidiFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__11CScriptMidiF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .text, "ax"

.global StopInternal__11CScriptMidiFf
StopInternal__11CScriptMidiFf:
/* 8020B93C 0020889C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020B940 002088A0  7C 08 02 A6 */	mflr r0
/* 8020B944 002088A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020B948 002088A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020B94C 002088AC  7C 7F 1B 78 */	mr r31, r3
/* 8020B950 002088B0  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8020B954 002088B4  28 00 00 00 */	cmplwi r0, 0
/* 8020B958 002088B8  41 82 00 1C */	beq lbl_8020B974
/* 8020B95C 002088BC  C0 02 B1 A8 */	lfs f0, lbl_805ACEC8@sda21(r2)
/* 8020B960 002088C0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8020B964 002088C4  F0 21 B0 08 */	psq_st f1, 8(r1), 1, qr3
/* 8020B968 002088C8  38 7F 00 3C */	addi r3, r31, 0x3c
/* 8020B96C 002088CC  A0 81 00 08 */	lhz r4, 8(r1)
/* 8020B970 002088D0  48 14 D7 2D */	bl Stop__12CMidiManagerFRC10CSfxHandleUs
lbl_8020B974:
/* 8020B974 002088D4  38 00 00 00 */	li r0, 0
/* 8020B978 002088D8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8020B97C 002088DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020B980 002088E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020B984 002088E4  7C 08 03 A6 */	mtlr r0
/* 8020B988 002088E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8020B98C 002088EC  4E 80 00 20 */	blr

.global Stop__11CScriptMidiFR13CStateManagerf
Stop__11CScriptMidiFR13CStateManagerf:
/* 8020B990 002088F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8020B994 002088F4  7C 08 02 A6 */	mflr r0
/* 8020B998 002088F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8020B99C 002088FC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8020B9A0 00208900  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8020B9A4 00208904  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8020B9A8 00208908  80 C3 00 04 */	lwz r6, 4(r3)
/* 8020B9AC 0020890C  7C 7F 1B 78 */	mr r31, r3
/* 8020B9B0 00208910  80 E4 08 50 */	lwz r7, 0x850(r4)
/* 8020B9B4 00208914  FF E0 08 90 */	fmr f31, f1
/* 8020B9B8 00208918  54 C4 18 38 */	slwi r4, r6, 3
/* 8020B9BC 0020891C  90 C1 00 08 */	stw r6, 8(r1)
/* 8020B9C0 00208920  38 04 00 04 */	addi r0, r4, 4
/* 8020B9C4 00208924  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 8020B9C8 00208928  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8020B9CC 0020892C  7C A5 00 2E */	lwzx r5, r5, r0
/* 8020B9D0 00208930  38 61 00 10 */	addi r3, r1, 0x10
/* 8020B9D4 00208934  80 87 00 08 */	lwz r4, 8(r7)
/* 8020B9D8 00208938  38 DF 00 10 */	addi r6, r31, 0x10
/* 8020B9DC 0020893C  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 8020B9E0 00208940  48 01 11 AD */	bl "GetIdentifierForMidiEvent__19CInGameTweakManagerFUiUiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020B9E4 00208944  38 61 00 20 */	addi r3, r1, 0x20
/* 8020B9E8 00208948  38 81 00 10 */	addi r4, r1, 0x10
/* 8020B9EC 0020894C  48 13 27 75 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020B9F0 00208950  38 61 00 10 */	addi r3, r1, 0x10
/* 8020B9F4 00208954  48 13 20 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020B9F8 00208958  80 6D A0 88 */	lwz r3, gpTweakManager@sda21(r13)
/* 8020B9FC 0020895C  38 81 00 20 */	addi r4, r1, 0x20
/* 8020BA00 00208960  48 01 15 F1 */	bl "HasTweakValue__19CInGameTweakManagerCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BA04 00208964  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020BA08 00208968  41 82 00 14 */	beq lbl_8020BA1C
/* 8020BA0C 0020896C  80 6D A0 88 */	lwz r3, gpTweakManager@sda21(r13)
/* 8020BA10 00208970  38 81 00 20 */	addi r4, r1, 0x20
/* 8020BA14 00208974  48 01 12 91 */	bl "GetTweakValue__19CInGameTweakManagerCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BA18 00208978  C3 E3 00 28 */	lfs f31, 0x28(r3)
lbl_8020BA1C:
/* 8020BA1C 0020897C  FC 20 F8 90 */	fmr f1, f31
/* 8020BA20 00208980  7F E3 FB 78 */	mr r3, r31
/* 8020BA24 00208984  4B FF FF 19 */	bl StopInternal__11CScriptMidiFf
/* 8020BA28 00208988  38 61 00 20 */	addi r3, r1, 0x20
/* 8020BA2C 0020898C  48 13 20 B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020BA30 00208990  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8020BA34 00208994  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8020BA38 00208998  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8020BA3C 0020899C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8020BA40 002089A0  7C 08 03 A6 */	mtlr r0
/* 8020BA44 002089A4  38 21 00 50 */	addi r1, r1, 0x50
/* 8020BA48 002089A8  4E 80 00 20 */	blr

.global Play__11CScriptMidiFR13CStateManagerf
Play__11CScriptMidiFR13CStateManagerf:
/* 8020BA4C 002089AC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8020BA50 002089B0  7C 08 02 A6 */	mflr r0
/* 8020BA54 002089B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 8020BA58 002089B8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8020BA5C 002089BC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8020BA60 002089C0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8020BA64 002089C4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 8020BA68 002089C8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8020BA6C 002089CC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8020BA70 002089D0  80 C3 00 04 */	lwz r6, 4(r3)
/* 8020BA74 002089D4  7C 7E 1B 78 */	mr r30, r3
/* 8020BA78 002089D8  80 E4 08 50 */	lwz r7, 0x850(r4)
/* 8020BA7C 002089DC  FF C0 08 90 */	fmr f30, f1
/* 8020BA80 002089E0  54 C4 18 38 */	slwi r4, r6, 3
/* 8020BA84 002089E4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8020BA88 002089E8  38 04 00 04 */	addi r0, r4, 4
/* 8020BA8C 002089EC  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 8020BA90 002089F0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8020BA94 002089F4  7C A5 00 2E */	lwzx r5, r5, r0
/* 8020BA98 002089F8  38 61 00 30 */	addi r3, r1, 0x30
/* 8020BA9C 002089FC  80 87 00 08 */	lwz r4, 8(r7)
/* 8020BAA0 00208A00  38 DE 00 10 */	addi r6, r30, 0x10
/* 8020BAA4 00208A04  80 A5 00 84 */	lwz r5, 0x84(r5)
/* 8020BAA8 00208A08  48 01 10 E5 */	bl "GetIdentifierForMidiEvent__19CInGameTweakManagerFUiUiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BAAC 00208A0C  38 61 00 40 */	addi r3, r1, 0x40
/* 8020BAB0 00208A10  38 81 00 30 */	addi r4, r1, 0x30
/* 8020BAB4 00208A14  48 13 26 AD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BAB8 00208A18  38 61 00 30 */	addi r3, r1, 0x30
/* 8020BABC 00208A1C  48 13 20 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020BAC0 00208A20  AB FE 00 48 */	lha r31, 0x48(r30)
/* 8020BAC4 00208A24  38 81 00 40 */	addi r4, r1, 0x40
/* 8020BAC8 00208A28  80 6D A0 88 */	lwz r3, gpTweakManager@sda21(r13)
/* 8020BACC 00208A2C  48 01 15 25 */	bl "HasTweakValue__19CInGameTweakManagerCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BAD0 00208A30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020BAD4 00208A34  41 82 00 90 */	beq lbl_8020BB64
/* 8020BAD8 00208A38  80 6D A0 88 */	lwz r3, gpTweakManager@sda21(r13)
/* 8020BADC 00208A3C  38 81 00 40 */	addi r4, r1, 0x40
/* 8020BAE0 00208A40  48 01 11 C5 */	bl "GetTweakValue__19CInGameTweakManagerCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BAE4 00208A44  7C 7F 1B 78 */	mr r31, r3
/* 8020BAE8 00208A48  3C 60 43 53 */	lis r3, 0x43534E47@ha
/* 8020BAEC 00208A4C  C3 DF 00 24 */	lfs f30, 0x24(r31)
/* 8020BAF0 00208A50  38 03 4E 47 */	addi r0, r3, 0x43534E47@l
/* 8020BAF4 00208A54  80 DF 00 40 */	lwz r6, 0x40(r31)
/* 8020BAF8 00208A58  38 61 00 20 */	addi r3, r1, 0x20
/* 8020BAFC 00208A5C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8020BB00 00208A60  38 A1 00 28 */	addi r5, r1, 0x28
/* 8020BB04 00208A64  90 01 00 28 */	stw r0, 0x28(r1)
/* 8020BB08 00208A68  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8020BB0C 00208A6C  81 84 00 00 */	lwz r12, 0(r4)
/* 8020BB10 00208A70  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8020BB14 00208A74  7D 89 03 A6 */	mtctr r12
/* 8020BB18 00208A78  4E 80 04 21 */	bctrl
/* 8020BB1C 00208A7C  38 61 00 18 */	addi r3, r1, 0x18
/* 8020BB20 00208A80  38 81 00 20 */	addi r4, r1, 0x20
/* 8020BB24 00208A84  48 13 53 85 */	bl __ct__6CTokenFRC6CToken
/* 8020BB28 00208A88  38 7E 00 34 */	addi r3, r30, 0x34
/* 8020BB2C 00208A8C  38 81 00 18 */	addi r4, r1, 0x18
/* 8020BB30 00208A90  48 13 51 95 */	bl __as__6CTokenFRC6CToken
/* 8020BB34 00208A94  38 61 00 18 */	addi r3, r1, 0x18
/* 8020BB38 00208A98  38 80 00 00 */	li r4, 0
/* 8020BB3C 00208A9C  48 13 53 05 */	bl __dt__6CTokenFv
/* 8020BB40 00208AA0  38 61 00 20 */	addi r3, r1, 0x20
/* 8020BB44 00208AA4  38 80 FF FF */	li r4, -1
/* 8020BB48 00208AA8  48 13 52 F9 */	bl __dt__6CTokenFv
/* 8020BB4C 00208AAC  C0 22 B1 AC */	lfs f1, lbl_805ACECC@sda21(r2)
/* 8020BB50 00208AB0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8020BB54 00208AB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8020BB58 00208AB8  FC 00 00 1E */	fctiwz f0, f0
/* 8020BB5C 00208ABC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 8020BB60 00208AC0  83 E1 00 54 */	lwz r31, 0x54(r1)
lbl_8020BB64:
/* 8020BB64 00208AC4  38 7E 00 34 */	addi r3, r30, 0x34
/* 8020BB68 00208AC8  48 13 52 A5 */	bl GetObj__6CTokenFv
/* 8020BB6C 00208ACC  C0 02 B1 A8 */	lfs f0, lbl_805ACEC8@sda21(r2)
/* 8020BB70 00208AD0  80 83 00 04 */	lwz r4, 4(r3)
/* 8020BB74 00208AD4  EF E0 07 B2 */	fmuls f31, f0, f30
/* 8020BB78 00208AD8  F3 E1 B0 08 */	psq_st f31, 8(r1), 1, qr3
/* 8020BB7C 00208ADC  38 61 00 0C */	addi r3, r1, 0xc
/* 8020BB80 00208AE0  7F E7 07 34 */	extsh r7, r31
/* 8020BB84 00208AE4  38 C0 00 00 */	li r6, 0
/* 8020BB88 00208AE8  A0 A1 00 08 */	lhz r5, 8(r1)
/* 8020BB8C 00208AEC  48 14 D5 D1 */	bl Play__12CMidiManagerFRCQ212CMidiManager9CMidiDataUsbs
/* 8020BB90 00208AF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8020BB94 00208AF4  38 61 00 40 */	addi r3, r1, 0x40
/* 8020BB98 00208AF8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8020BB9C 00208AFC  48 13 1F 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020BBA0 00208B00  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8020BBA4 00208B04  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8020BBA8 00208B08  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 8020BBAC 00208B0C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8020BBB0 00208B10  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8020BBB4 00208B14  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8020BBB8 00208B18  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8020BBBC 00208B1C  7C 08 03 A6 */	mtlr r0
/* 8020BBC0 00208B20  38 21 00 80 */	addi r1, r1, 0x80
/* 8020BBC4 00208B24  4E 80 00 20 */	blr

.global __dt__11CScriptMidiFv
__dt__11CScriptMidiFv:
/* 8020BBC8 00208B28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BBCC 00208B2C  7C 08 02 A6 */	mflr r0
/* 8020BBD0 00208B30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BBD4 00208B34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020BBD8 00208B38  7C 9F 23 78 */	mr r31, r4
/* 8020BBDC 00208B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8020BBE0 00208B40  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020BBE4 00208B44  41 82 00 48 */	beq lbl_8020BC2C
/* 8020BBE8 00208B48  3C 80 80 3E */	lis r4, lbl_803E7048@ha
/* 8020BBEC 00208B4C  C0 22 B1 B0 */	lfs f1, lbl_805ACED0@sda21(r2)
/* 8020BBF0 00208B50  38 04 70 48 */	addi r0, r4, lbl_803E7048@l
/* 8020BBF4 00208B54  90 1E 00 00 */	stw r0, 0(r30)
/* 8020BBF8 00208B58  4B FF FD 45 */	bl StopInternal__11CScriptMidiFf
/* 8020BBFC 00208B5C  34 1E 00 34 */	addic. r0, r30, 0x34
/* 8020BC00 00208B60  41 82 00 10 */	beq lbl_8020BC10
/* 8020BC04 00208B64  38 7E 00 34 */	addi r3, r30, 0x34
/* 8020BC08 00208B68  38 80 00 00 */	li r4, 0
/* 8020BC0C 00208B6C  48 13 52 35 */	bl __dt__6CTokenFv
lbl_8020BC10:
/* 8020BC10 00208B70  7F C3 F3 78 */	mr r3, r30
/* 8020BC14 00208B74  38 80 00 00 */	li r4, 0
/* 8020BC18 00208B78  4B E4 56 5D */	bl __dt__7CEntityFv
/* 8020BC1C 00208B7C  7F E0 07 35 */	extsh. r0, r31
/* 8020BC20 00208B80  40 81 00 0C */	ble lbl_8020BC2C
/* 8020BC24 00208B84  7F C3 F3 78 */	mr r3, r30
/* 8020BC28 00208B88  48 10 9D 09 */	bl Free__7CMemoryFPCv
lbl_8020BC2C:
/* 8020BC2C 00208B8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BC30 00208B90  7F C3 F3 78 */	mr r3, r30
/* 8020BC34 00208B94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020BC38 00208B98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020BC3C 00208B9C  7C 08 03 A6 */	mtlr r0
/* 8020BC40 00208BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BC44 00208BA4  4E 80 00 20 */	blr

.global AcceptScriptMsg__11CScriptMidiF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__11CScriptMidiF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8020BC48 00208BA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020BC4C 00208BAC  7C 08 02 A6 */	mflr r0
/* 8020BC50 00208BB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020BC54 00208BB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020BC58 00208BB8  7C DF 33 78 */	mr r31, r6
/* 8020BC5C 00208BBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020BC60 00208BC0  7C 9E 23 78 */	mr r30, r4
/* 8020BC64 00208BC4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8020BC68 00208BC8  7C 7D 1B 78 */	mr r29, r3
/* 8020BC6C 00208BCC  A0 05 00 00 */	lhz r0, 0(r5)
/* 8020BC70 00208BD0  38 A1 00 08 */	addi r5, r1, 8
/* 8020BC74 00208BD4  B0 01 00 08 */	sth r0, 8(r1)
/* 8020BC78 00208BD8  4B E4 54 E5 */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8020BC7C 00208BDC  2C 1E 00 0F */	cmpwi r30, 0xf
/* 8020BC80 00208BE0  41 82 00 40 */	beq lbl_8020BCC0
/* 8020BC84 00208BE4  40 80 00 10 */	bge lbl_8020BC94
/* 8020BC88 00208BE8  2C 1E 00 04 */	cmpwi r30, 4
/* 8020BC8C 00208BEC  41 82 00 54 */	beq lbl_8020BCE0
/* 8020BC90 00208BF0  48 00 00 5C */	b lbl_8020BCEC
lbl_8020BC94:
/* 8020BC94 00208BF4  2C 1E 00 14 */	cmpwi r30, 0x14
/* 8020BC98 00208BF8  41 82 00 08 */	beq lbl_8020BCA0
/* 8020BC9C 00208BFC  48 00 00 50 */	b lbl_8020BCEC
lbl_8020BCA0:
/* 8020BCA0 00208C00  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8020BCA4 00208C04  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8020BCA8 00208C08  41 82 00 44 */	beq lbl_8020BCEC
/* 8020BCAC 00208C0C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8020BCB0 00208C10  7F A3 EB 78 */	mr r3, r29
/* 8020BCB4 00208C14  7F E4 FB 78 */	mr r4, r31
/* 8020BCB8 00208C18  4B FF FD 95 */	bl Play__11CScriptMidiFR13CStateManagerf
/* 8020BCBC 00208C1C  48 00 00 30 */	b lbl_8020BCEC
lbl_8020BCC0:
/* 8020BCC0 00208C20  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8020BCC4 00208C24  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8020BCC8 00208C28  41 82 00 24 */	beq lbl_8020BCEC
/* 8020BCCC 00208C2C  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 8020BCD0 00208C30  7F A3 EB 78 */	mr r3, r29
/* 8020BCD4 00208C34  7F E4 FB 78 */	mr r4, r31
/* 8020BCD8 00208C38  4B FF FC B9 */	bl Stop__11CScriptMidiFR13CStateManagerf
/* 8020BCDC 00208C3C  48 00 00 10 */	b lbl_8020BCEC
lbl_8020BCE0:
/* 8020BCE0 00208C40  C0 22 B1 B0 */	lfs f1, lbl_805ACED0@sda21(r2)
/* 8020BCE4 00208C44  7F A3 EB 78 */	mr r3, r29
/* 8020BCE8 00208C48  4B FF FC 55 */	bl StopInternal__11CScriptMidiFf
lbl_8020BCEC:
/* 8020BCEC 00208C4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020BCF0 00208C50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020BCF4 00208C54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020BCF8 00208C58  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8020BCFC 00208C5C  7C 08 03 A6 */	mtlr r0
/* 8020BD00 00208C60  38 21 00 20 */	addi r1, r1, 0x20
/* 8020BD04 00208C64  4E 80 00 20 */	blr

.global Accept__11CScriptMidiFR8IVisitor
Accept__11CScriptMidiFR8IVisitor:
/* 8020BD08 00208C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BD0C 00208C6C  7C 08 02 A6 */	mflr r0
/* 8020BD10 00208C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BD14 00208C74  7C 60 1B 78 */	mr r0, r3
/* 8020BD18 00208C78  7C 83 23 78 */	mr r3, r4
/* 8020BD1C 00208C7C  81 84 00 00 */	lwz r12, 0(r4)
/* 8020BD20 00208C80  7C 04 03 78 */	mr r4, r0
/* 8020BD24 00208C84  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8020BD28 00208C88  7D 89 03 A6 */	mtctr r12
/* 8020BD2C 00208C8C  4E 80 04 21 */	bctrl
/* 8020BD30 00208C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BD34 00208C94  7C 08 03 A6 */	mtlr r0
/* 8020BD38 00208C98  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BD3C 00208C9C  4E 80 00 20 */	blr

.global "__ct__11CScriptMidiF9TUniqueIdRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bUiffi"
"__ct__11CScriptMidiF9TUniqueIdRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bUiffi":
/* 8020BD40 00208CA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8020BD44 00208CA4  7C 08 02 A6 */	mflr r0
/* 8020BD48 00208CA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020BD4C 00208CAC  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 8020BD50 00208CB0  FF E0 10 90 */	fmr f31, f2
/* 8020BD54 00208CB4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8020BD58 00208CB8  FF C0 08 90 */	fmr f30, f1
/* 8020BD5C 00208CBC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8020BD60 00208CC0  7D 3F 4B 78 */	mr r31, r9
/* 8020BD64 00208CC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8020BD68 00208CC8  7D 1E 43 78 */	mr r30, r8
/* 8020BD6C 00208CCC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8020BD70 00208CD0  7C 7D 1B 78 */	mr r29, r3
/* 8020BD74 00208CD4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8020BD78 00208CD8  7C C4 33 78 */	mr r4, r6
/* 8020BD7C 00208CDC  7C E6 3B 78 */	mr r6, r7
/* 8020BD80 00208CE0  B0 01 00 08 */	sth r0, 8(r1)
/* 8020BD84 00208CE4  7C 87 23 78 */	mr r7, r4
/* 8020BD88 00208CE8  38 81 00 08 */	addi r4, r1, 8
/* 8020BD8C 00208CEC  4B E4 55 99 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BD90 00208CF0  3C 60 80 3E */	lis r3, lbl_803E7048@ha
/* 8020BD94 00208CF4  3C 80 43 53 */	lis r4, 0x43534E47@ha
/* 8020BD98 00208CF8  38 03 70 48 */	addi r0, r3, lbl_803E7048@l
/* 8020BD9C 00208CFC  38 61 00 0C */	addi r3, r1, 0xc
/* 8020BDA0 00208D00  90 1D 00 00 */	stw r0, 0(r29)
/* 8020BDA4 00208D04  38 04 4E 47 */	addi r0, r4, 0x43534E47@l
/* 8020BDA8 00208D08  38 A1 00 14 */	addi r5, r1, 0x14
/* 8020BDAC 00208D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BDB0 00208D10  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8020BDB4 00208D14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020BDB8 00208D18  81 84 00 00 */	lwz r12, 0(r4)
/* 8020BDBC 00208D1C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8020BDC0 00208D20  7D 89 03 A6 */	mtctr r12
/* 8020BDC4 00208D24  4E 80 04 21 */	bctrl
/* 8020BDC8 00208D28  38 7D 00 34 */	addi r3, r29, 0x34
/* 8020BDCC 00208D2C  38 81 00 0C */	addi r4, r1, 0xc
/* 8020BDD0 00208D30  48 13 50 D9 */	bl __ct__6CTokenFRC6CToken
/* 8020BDD4 00208D34  38 61 00 0C */	addi r3, r1, 0xc
/* 8020BDD8 00208D38  38 80 FF FF */	li r4, -1
/* 8020BDDC 00208D3C  48 13 50 65 */	bl __dt__6CTokenFv
/* 8020BDE0 00208D40  38 00 00 00 */	li r0, 0
/* 8020BDE4 00208D44  7F A3 EB 78 */	mr r3, r29
/* 8020BDE8 00208D48  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 8020BDEC 00208D4C  D3 DD 00 40 */	stfs f30, 0x40(r29)
/* 8020BDF0 00208D50  D3 FD 00 44 */	stfs f31, 0x44(r29)
/* 8020BDF4 00208D54  B3 FD 00 48 */	sth r31, 0x48(r29)
/* 8020BDF8 00208D58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8020BDFC 00208D5C  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 8020BE00 00208D60  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8020BE04 00208D64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8020BE08 00208D68  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8020BE0C 00208D6C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8020BE10 00208D70  7C 08 03 A6 */	mtlr r0
/* 8020BE14 00208D74  38 21 00 40 */	addi r1, r1, 0x40
/* 8020BE18 00208D78  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805ACEC8
lbl_805ACEC8:
	# ROM: 0x3F9768
	.4byte 0x447A0000

.global lbl_805ACECC
lbl_805ACECC:
	# ROM: 0x3F976C
	.4byte 0x42FE0000

.global lbl_805ACED0
lbl_805ACED0:
	# ROM: 0x3F9770
	.4byte 0
	.4byte 0


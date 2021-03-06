.include "macros.inc"

.section .text, "ax"

.global __copy_longs_rev_unaligned
__copy_longs_rev_unaligned:
/* 8038D9EC 0038A94C  7D 63 2A 14 */	add r11, r3, r5
/* 8038D9F0 0038A950  7D 44 2A 14 */	add r10, r4, r5
/* 8038D9F4 0038A954  55 63 07 BF */	clrlwi. r3, r11, 0x1e
/* 8038D9F8 0038A958  41 82 00 18 */	beq lbl_8038DA10
/* 8038D9FC 0038A95C  7C A3 28 50 */	subf r5, r3, r5
lbl_8038DA00:
/* 8038DA00 0038A960  8C 0A FF FF */	lbzu r0, -1(r10)
/* 8038DA04 0038A964  34 63 FF FF */	addic. r3, r3, -1
/* 8038DA08 0038A968  9C 0B FF FF */	stbu r0, -1(r11)
/* 8038DA0C 0038A96C  40 82 FF F4 */	bne lbl_8038DA00
lbl_8038DA10:
/* 8038DA10 0038A970  55 48 1E F8 */	rlwinm r8, r10, 3, 0x1b, 0x1c
/* 8038DA14 0038A974  55 47 07 BE */	clrlwi r7, r10, 0x1e
/* 8038DA18 0038A978  21 28 00 20 */	subfic r9, r8, 0x20
/* 8038DA1C 0038A97C  54 A6 E8 FE */	srwi r6, r5, 3
/* 8038DA20 0038A980  20 07 00 04 */	subfic r0, r7, 4
/* 8038DA24 0038A984  7D 4A 02 14 */	add r10, r10, r0
/* 8038DA28 0038A988  84 8A FF FC */	lwzu r4, -4(r10)
lbl_8038DA2C:
/* 8038DA2C 0038A98C  80 0A FF FC */	lwz r0, -4(r10)
/* 8038DA30 0038A990  7C 83 4C 30 */	srw r3, r4, r9
/* 8038DA34 0038A994  34 C6 FF FF */	addic. r6, r6, -1
/* 8038DA38 0038A998  7C 04 40 30 */	slw r4, r0, r8
/* 8038DA3C 0038A99C  7C 00 4C 30 */	srw r0, r0, r9
/* 8038DA40 0038A9A0  7C 83 1B 78 */	or r3, r4, r3
/* 8038DA44 0038A9A4  90 6B FF FC */	stw r3, -4(r11)
/* 8038DA48 0038A9A8  84 8A FF F8 */	lwzu r4, -8(r10)
/* 8038DA4C 0038A9AC  7C 83 40 30 */	slw r3, r4, r8
/* 8038DA50 0038A9B0  7C 60 03 78 */	or r0, r3, r0
/* 8038DA54 0038A9B4  94 0B FF F8 */	stwu r0, -8(r11)
/* 8038DA58 0038A9B8  40 82 FF D4 */	bne lbl_8038DA2C
/* 8038DA5C 0038A9BC  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 8038DA60 0038A9C0  41 82 00 18 */	beq lbl_8038DA78
/* 8038DA64 0038A9C4  84 6A FF FC */	lwzu r3, -4(r10)
/* 8038DA68 0038A9C8  7C 80 4C 30 */	srw r0, r4, r9
/* 8038DA6C 0038A9CC  7C 63 40 30 */	slw r3, r3, r8
/* 8038DA70 0038A9D0  7C 60 03 78 */	or r0, r3, r0
/* 8038DA74 0038A9D4  94 0B FF FC */	stwu r0, -4(r11)
lbl_8038DA78:
/* 8038DA78 0038A9D8  38 00 00 03 */	li r0, 3
/* 8038DA7C 0038A9DC  7C A5 00 39 */	and. r5, r5, r0
/* 8038DA80 0038A9E0  4D 82 00 20 */	beqlr
/* 8038DA84 0038A9E4  7D 4A 3A 14 */	add r10, r10, r7
lbl_8038DA88:
/* 8038DA88 0038A9E8  8C 0A FF FF */	lbzu r0, -1(r10)
/* 8038DA8C 0038A9EC  34 A5 FF FF */	addic. r5, r5, -1
/* 8038DA90 0038A9F0  9C 0B FF FF */	stbu r0, -1(r11)
/* 8038DA94 0038A9F4  40 82 FF F4 */	bne lbl_8038DA88
/* 8038DA98 0038A9F8  4E 80 00 20 */	blr

.global __copy_longs_unaligned
__copy_longs_unaligned:
/* 8038DA9C 0038A9FC  7C 03 00 D0 */	neg r0, r3
/* 8038DAA0 0038AA00  39 04 FF FF */	addi r8, r4, -1
/* 8038DAA4 0038AA04  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 8038DAA8 0038AA08  38 63 FF FF */	addi r3, r3, -1
/* 8038DAAC 0038AA0C  41 82 00 18 */	beq lbl_8038DAC4
/* 8038DAB0 0038AA10  7C A6 28 50 */	subf r5, r6, r5
lbl_8038DAB4:
/* 8038DAB4 0038AA14  8C 08 00 01 */	lbzu r0, 1(r8)
/* 8038DAB8 0038AA18  34 C6 FF FF */	addic. r6, r6, -1
/* 8038DABC 0038AA1C  9C 03 00 01 */	stbu r0, 1(r3)
/* 8038DAC0 0038AA20  40 82 FF F4 */	bne lbl_8038DAB4
lbl_8038DAC4:
/* 8038DAC4 0038AA24  38 08 00 01 */	addi r0, r8, 1
/* 8038DAC8 0038AA28  38 C3 FF FD */	addi r6, r3, -3
/* 8038DACC 0038AA2C  54 09 07 BE */	clrlwi r9, r0, 0x1e
/* 8038DAD0 0038AA30  54 A7 E8 FE */	srwi r7, r5, 3
/* 8038DAD4 0038AA34  7D 09 40 50 */	subf r8, r9, r8
/* 8038DAD8 0038AA38  54 0A 1E F8 */	rlwinm r10, r0, 3, 0x1b, 0x1c
/* 8038DADC 0038AA3C  84 88 00 01 */	lwzu r4, 1(r8)
/* 8038DAE0 0038AA40  21 6A 00 20 */	subfic r11, r10, 0x20
lbl_8038DAE4:
/* 8038DAE4 0038AA44  80 68 00 04 */	lwz r3, 4(r8)
/* 8038DAE8 0038AA48  7C 84 50 30 */	slw r4, r4, r10
/* 8038DAEC 0038AA4C  34 E7 FF FF */	addic. r7, r7, -1
/* 8038DAF0 0038AA50  7C 60 5C 30 */	srw r0, r3, r11
/* 8038DAF4 0038AA54  7C 63 50 30 */	slw r3, r3, r10
/* 8038DAF8 0038AA58  7C 80 03 78 */	or r0, r4, r0
/* 8038DAFC 0038AA5C  90 06 00 04 */	stw r0, 4(r6)
/* 8038DB00 0038AA60  84 88 00 08 */	lwzu r4, 8(r8)
/* 8038DB04 0038AA64  7C 80 5C 30 */	srw r0, r4, r11
/* 8038DB08 0038AA68  7C 60 03 78 */	or r0, r3, r0
/* 8038DB0C 0038AA6C  94 06 00 08 */	stwu r0, 8(r6)
/* 8038DB10 0038AA70  40 82 FF D4 */	bne lbl_8038DAE4
/* 8038DB14 0038AA74  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 8038DB18 0038AA78  41 82 00 18 */	beq lbl_8038DB30
/* 8038DB1C 0038AA7C  84 08 00 04 */	lwzu r0, 4(r8)
/* 8038DB20 0038AA80  7C 83 50 30 */	slw r3, r4, r10
/* 8038DB24 0038AA84  7C 00 5C 30 */	srw r0, r0, r11
/* 8038DB28 0038AA88  7C 60 03 78 */	or r0, r3, r0
/* 8038DB2C 0038AA8C  94 06 00 04 */	stwu r0, 4(r6)
lbl_8038DB30:
/* 8038DB30 0038AA90  38 00 00 03 */	li r0, 3
/* 8038DB34 0038AA94  38 88 00 03 */	addi r4, r8, 3
/* 8038DB38 0038AA98  7C A5 00 39 */	and. r5, r5, r0
/* 8038DB3C 0038AA9C  38 66 00 03 */	addi r3, r6, 3
/* 8038DB40 0038AAA0  4D 82 00 20 */	beqlr
/* 8038DB44 0038AAA4  20 09 00 04 */	subfic r0, r9, 4
/* 8038DB48 0038AAA8  7C 80 20 50 */	subf r4, r0, r4
lbl_8038DB4C:
/* 8038DB4C 0038AAAC  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8038DB50 0038AAB0  34 A5 FF FF */	addic. r5, r5, -1
/* 8038DB54 0038AAB4  9C 03 00 01 */	stbu r0, 1(r3)
/* 8038DB58 0038AAB8  40 82 FF F4 */	bne lbl_8038DB4C
/* 8038DB5C 0038AABC  4E 80 00 20 */	blr

.global __copy_longs_rev_aligned
__copy_longs_rev_aligned:
/* 8038DB60 0038AAC0  7C C3 2A 14 */	add r6, r3, r5
/* 8038DB64 0038AAC4  7C 84 2A 14 */	add r4, r4, r5
/* 8038DB68 0038AAC8  54 C3 07 BF */	clrlwi. r3, r6, 0x1e
/* 8038DB6C 0038AACC  41 82 00 18 */	beq lbl_8038DB84
/* 8038DB70 0038AAD0  7C A3 28 50 */	subf r5, r3, r5
lbl_8038DB74:
/* 8038DB74 0038AAD4  8C 04 FF FF */	lbzu r0, -1(r4)
/* 8038DB78 0038AAD8  34 63 FF FF */	addic. r3, r3, -1
/* 8038DB7C 0038AADC  9C 06 FF FF */	stbu r0, -1(r6)
/* 8038DB80 0038AAE0  40 82 FF F4 */	bne lbl_8038DB74
lbl_8038DB84:
/* 8038DB84 0038AAE4  54 A3 D9 7F */	rlwinm. r3, r5, 0x1b, 5, 0x1f
/* 8038DB88 0038AAE8  41 82 00 4C */	beq lbl_8038DBD4
lbl_8038DB8C:
/* 8038DB8C 0038AAEC  80 04 FF FC */	lwz r0, -4(r4)
/* 8038DB90 0038AAF0  34 63 FF FF */	addic. r3, r3, -1
/* 8038DB94 0038AAF4  90 06 FF FC */	stw r0, -4(r6)
/* 8038DB98 0038AAF8  80 04 FF F8 */	lwz r0, -8(r4)
/* 8038DB9C 0038AAFC  90 06 FF F8 */	stw r0, -8(r6)
/* 8038DBA0 0038AB00  80 04 FF F4 */	lwz r0, -0xc(r4)
/* 8038DBA4 0038AB04  90 06 FF F4 */	stw r0, -0xc(r6)
/* 8038DBA8 0038AB08  80 04 FF F0 */	lwz r0, -0x10(r4)
/* 8038DBAC 0038AB0C  90 06 FF F0 */	stw r0, -0x10(r6)
/* 8038DBB0 0038AB10  80 04 FF EC */	lwz r0, -0x14(r4)
/* 8038DBB4 0038AB14  90 06 FF EC */	stw r0, -0x14(r6)
/* 8038DBB8 0038AB18  80 04 FF E8 */	lwz r0, -0x18(r4)
/* 8038DBBC 0038AB1C  90 06 FF E8 */	stw r0, -0x18(r6)
/* 8038DBC0 0038AB20  80 04 FF E4 */	lwz r0, -0x1c(r4)
/* 8038DBC4 0038AB24  90 06 FF E4 */	stw r0, -0x1c(r6)
/* 8038DBC8 0038AB28  84 04 FF E0 */	lwzu r0, -0x20(r4)
/* 8038DBCC 0038AB2C  94 06 FF E0 */	stwu r0, -0x20(r6)
/* 8038DBD0 0038AB30  40 82 FF BC */	bne lbl_8038DB8C
lbl_8038DBD4:
/* 8038DBD4 0038AB34  54 A3 F7 7F */	rlwinm. r3, r5, 0x1e, 0x1d, 0x1f
/* 8038DBD8 0038AB38  41 82 00 14 */	beq lbl_8038DBEC
lbl_8038DBDC:
/* 8038DBDC 0038AB3C  84 04 FF FC */	lwzu r0, -4(r4)
/* 8038DBE0 0038AB40  34 63 FF FF */	addic. r3, r3, -1
/* 8038DBE4 0038AB44  94 06 FF FC */	stwu r0, -4(r6)
/* 8038DBE8 0038AB48  40 82 FF F4 */	bne lbl_8038DBDC
lbl_8038DBEC:
/* 8038DBEC 0038AB4C  38 00 00 03 */	li r0, 3
/* 8038DBF0 0038AB50  7C A5 00 39 */	and. r5, r5, r0
/* 8038DBF4 0038AB54  4D 82 00 20 */	beqlr
lbl_8038DBF8:
/* 8038DBF8 0038AB58  8C 04 FF FF */	lbzu r0, -1(r4)
/* 8038DBFC 0038AB5C  34 A5 FF FF */	addic. r5, r5, -1
/* 8038DC00 0038AB60  9C 06 FF FF */	stbu r0, -1(r6)
/* 8038DC04 0038AB64  40 82 FF F4 */	bne lbl_8038DBF8
/* 8038DC08 0038AB68  4E 80 00 20 */	blr

.global __copy_longs_aligned
__copy_longs_aligned:
/* 8038DC0C 0038AB6C  7C 03 00 D0 */	neg r0, r3
/* 8038DC10 0038AB70  38 E4 FF FF */	addi r7, r4, -1
/* 8038DC14 0038AB74  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 8038DC18 0038AB78  38 63 FF FF */	addi r3, r3, -1
/* 8038DC1C 0038AB7C  41 82 00 18 */	beq lbl_8038DC34
/* 8038DC20 0038AB80  7C A6 28 50 */	subf r5, r6, r5
lbl_8038DC24:
/* 8038DC24 0038AB84  8C 07 00 01 */	lbzu r0, 1(r7)
/* 8038DC28 0038AB88  34 C6 FF FF */	addic. r6, r6, -1
/* 8038DC2C 0038AB8C  9C 03 00 01 */	stbu r0, 1(r3)
/* 8038DC30 0038AB90  40 82 FF F4 */	bne lbl_8038DC24
lbl_8038DC34:
/* 8038DC34 0038AB94  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 8038DC38 0038AB98  38 C7 FF FD */	addi r6, r7, -3
/* 8038DC3C 0038AB9C  38 63 FF FD */	addi r3, r3, -3
/* 8038DC40 0038ABA0  41 82 00 4C */	beq lbl_8038DC8C
lbl_8038DC44:
/* 8038DC44 0038ABA4  80 06 00 04 */	lwz r0, 4(r6)
/* 8038DC48 0038ABA8  34 84 FF FF */	addic. r4, r4, -1
/* 8038DC4C 0038ABAC  90 03 00 04 */	stw r0, 4(r3)
/* 8038DC50 0038ABB0  80 06 00 08 */	lwz r0, 8(r6)
/* 8038DC54 0038ABB4  90 03 00 08 */	stw r0, 8(r3)
/* 8038DC58 0038ABB8  80 06 00 0C */	lwz r0, 0xc(r6)
/* 8038DC5C 0038ABBC  90 03 00 0C */	stw r0, 0xc(r3)
/* 8038DC60 0038ABC0  80 06 00 10 */	lwz r0, 0x10(r6)
/* 8038DC64 0038ABC4  90 03 00 10 */	stw r0, 0x10(r3)
/* 8038DC68 0038ABC8  80 06 00 14 */	lwz r0, 0x14(r6)
/* 8038DC6C 0038ABCC  90 03 00 14 */	stw r0, 0x14(r3)
/* 8038DC70 0038ABD0  80 06 00 18 */	lwz r0, 0x18(r6)
/* 8038DC74 0038ABD4  90 03 00 18 */	stw r0, 0x18(r3)
/* 8038DC78 0038ABD8  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8038DC7C 0038ABDC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8038DC80 0038ABE0  84 06 00 20 */	lwzu r0, 0x20(r6)
/* 8038DC84 0038ABE4  94 03 00 20 */	stwu r0, 0x20(r3)
/* 8038DC88 0038ABE8  40 82 FF BC */	bne lbl_8038DC44
lbl_8038DC8C:
/* 8038DC8C 0038ABEC  54 A4 F7 7F */	rlwinm. r4, r5, 0x1e, 0x1d, 0x1f
/* 8038DC90 0038ABF0  41 82 00 14 */	beq lbl_8038DCA4
lbl_8038DC94:
/* 8038DC94 0038ABF4  84 06 00 04 */	lwzu r0, 4(r6)
/* 8038DC98 0038ABF8  34 84 FF FF */	addic. r4, r4, -1
/* 8038DC9C 0038ABFC  94 03 00 04 */	stwu r0, 4(r3)
/* 8038DCA0 0038AC00  40 82 FF F4 */	bne lbl_8038DC94
lbl_8038DCA4:
/* 8038DCA4 0038AC04  38 00 00 03 */	li r0, 3
/* 8038DCA8 0038AC08  38 86 00 03 */	addi r4, r6, 3
/* 8038DCAC 0038AC0C  7C A5 00 39 */	and. r5, r5, r0
/* 8038DCB0 0038AC10  38 63 00 03 */	addi r3, r3, 3
/* 8038DCB4 0038AC14  4D 82 00 20 */	beqlr
lbl_8038DCB8:
/* 8038DCB8 0038AC18  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8038DCBC 0038AC1C  34 A5 FF FF */	addic. r5, r5, -1
/* 8038DCC0 0038AC20  9C 03 00 01 */	stbu r0, 1(r3)
/* 8038DCC4 0038AC24  40 82 FF F4 */	bne lbl_8038DCB8
/* 8038DCC8 0038AC28  4E 80 00 20 */	blr

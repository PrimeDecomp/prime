.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CStreamAudioManager_cpp

.section .sdata

.global lbl_805A8A30
lbl_805A8A30:
	# ROM: 0x3F63D0
	.4byte 0x00000001

.global lbl_805A8A34
lbl_805A8A34:
	# ROM: 0x3F63D4
	.float -1.0

.global lbl_805A8A38
lbl_805A8A38:
	# ROM: 0x3F63D8
	.4byte 0x0000007F

.global lbl_805A8A3C
lbl_805A8A3C:
	# ROM: 0x3F63DC
	.4byte 0x0000007F

.global lbl_805A8A40
lbl_805A8A40:
	# ROM: 0x3F63E0
	.byte 0x01

.global lbl_805A8A41
lbl_805A8A41:
	# ROM: 0x3F63E1
	.byte 0x01, 0x00, 0x00
	.4byte 0

.section .sbss, "wa"

.global lbl_805A9680
lbl_805A9680:
	.skip 0x4
.global lbl_805A9684
lbl_805A9684:
	.skip 0x4
.global lbl_805A9688
lbl_805A9688:
	.skip 0x8

.section .text, "ax"

.global sub_803653f8
sub_803653f8:
/* 803653F8 00362358  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 803653FC 0036235C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80365400 00362360  40 82 00 0C */	bne lbl_8036540C
/* 80365404 00362364  C0 0D 9E 74 */	lfs f0, lbl_805A8A34@sda21(r13)
/* 80365408 00362368  48 00 00 0C */	b lbl_80365414
lbl_8036540C:
/* 8036540C 0036236C  C0 0D 9E 74 */	lfs f0, lbl_805A8A34@sda21(r13)
/* 80365410 00362370  EC 00 08 24 */	fdivs f0, f0, f1
lbl_80365414:
/* 80365414 00362374  38 00 00 04 */	li r0, 4
/* 80365418 00362378  D0 0D AA C4 */	stfs f0, lbl_805A9684@sda21(r13)
/* 8036541C 0036237C  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
/* 80365420 00362380  4E 80 00 20 */	blr

.global sub_80365424
sub_80365424:
/* 80365424 00362384  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80365428 00362388  C0 4D AA C0 */	lfs f2, lbl_805A9680@sda21(r13)
/* 8036542C 0036238C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80365430 00362390  D0 4D 9E 74 */	stfs f2, lbl_805A8A34@sda21(r13)
/* 80365434 00362394  40 82 00 08 */	bne lbl_8036543C
/* 80365438 00362398  48 00 00 08 */	b lbl_80365440
lbl_8036543C:
/* 8036543C 0036239C  EC 42 08 24 */	fdivs f2, f2, f1
lbl_80365440:
/* 80365440 003623A0  38 00 00 06 */	li r0, 6
/* 80365444 003623A4  D0 4D AA C8 */	stfs f2, lbl_805A9688@sda21(r13)
/* 80365448 003623A8  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
/* 8036544C 003623AC  4E 80 00 20 */	blr

.global sub_80365450
sub_80365450:
/* 80365450 003623B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80365454 003623B4  7C 08 02 A6 */	mflr r0
/* 80365458 003623B8  3C 80 80 5A */	lis r4, lbl_805A6B90@ha
/* 8036545C 003623BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80365460 003623C0  38 84 6B 90 */	addi r4, r4, lbl_805A6B90@l
/* 80365464 003623C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80365468 003623C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036546C 003623CC  7C 7E 1B 78 */	mr r30, r3
/* 80365470 003623D0  80 0D 9E 70 */	lwz r0, lbl_805A8A30@sda21(r13)
/* 80365474 003623D4  20 00 00 01 */	subfic r0, r0, 1
/* 80365478 003623D8  7C 00 00 34 */	cntlzw r0, r0
/* 8036547C 003623DC  54 1F D9 7E */	srwi r31, r0, 5
/* 80365480 003623E0  48 00 00 A5 */	bl sub_80365524
/* 80365484 003623E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80365488 003623E8  41 82 00 18 */	beq lbl_803654A0
/* 8036548C 003623EC  3C 60 80 5A */	lis r3, lbl_805A6B90@ha
/* 80365490 003623F0  7F C4 F3 78 */	mr r4, r30
/* 80365494 003623F4  38 63 6B 90 */	addi r3, r3, lbl_805A6B90@l
/* 80365498 003623F8  4B FD 88 C5 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8036549C 003623FC  3B E0 00 01 */	li r31, 1
lbl_803654A0:
/* 803654A0 00362400  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 803654A4 00362404  41 82 00 68 */	beq lbl_8036550C
/* 803654A8 00362408  88 0D 9E 80 */	lbz r0, lbl_805A8A40@sda21(r13)
/* 803654AC 0036240C  28 00 00 00 */	cmplwi r0, 0
/* 803654B0 00362410  41 82 00 5C */	beq lbl_8036550C
/* 803654B4 00362414  3C 80 80 3E */	lis r4, lbl_803D8410@ha
/* 803654B8 00362418  38 61 00 08 */	addi r3, r1, 8
/* 803654BC 0036241C  38 84 84 10 */	addi r4, r4, lbl_803D8410@l
/* 803654C0 00362420  4B C9 F7 F9 */	bl string_l__4rstlFPCc
/* 803654C4 00362424  7F C3 F3 78 */	mr r3, r30
/* 803654C8 00362428  38 81 00 08 */	addi r4, r1, 8
/* 803654CC 0036242C  48 00 00 59 */	bl sub_80365524
/* 803654D0 00362430  7C 7F 1B 78 */	mr r31, r3
/* 803654D4 00362434  38 61 00 08 */	addi r3, r1, 8
/* 803654D8 00362438  4B FD 86 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 803654DC 0036243C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 803654E0 00362440  41 82 00 2C */	beq lbl_8036550C
/* 803654E4 00362444  4B FE 5E 19 */	bl TrkFlushTracks__9CAudioSysFv
/* 803654E8 00362448  7F C3 F3 78 */	mr r3, r30
/* 803654EC 0036244C  38 80 00 00 */	li r4, 0
/* 803654F0 00362450  38 A0 00 00 */	li r5, 0
/* 803654F4 00362454  4B FE 5E 71 */	bl "TrkQueueTrack__9CAudioSysFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PFUl_vUi"
/* 803654F8 00362458  4B FE 5D 3D */	bl TrkNextTrack__9CAudioSysFv
/* 803654FC 0036245C  38 60 00 02 */	li r3, 2
/* 80365500 00362460  4B FE 5D BD */	bl TrkSetRepeatMode__9CAudioSysF14ETRKRepeatMode
/* 80365504 00362464  38 60 00 01 */	li r3, 1
/* 80365508 00362468  4B FE 5D 95 */	bl TrkSetState__9CAudioSysF13ETRKPlayState
lbl_8036550C:
/* 8036550C 0036246C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80365510 00362470  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80365514 00362474  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80365518 00362478  7C 08 03 A6 */	mtlr r0
/* 8036551C 0036247C  38 21 00 20 */	addi r1, r1, 0x20
/* 80365520 00362480  4E 80 00 20 */	blr

.global sub_80365524
sub_80365524:
/* 80365524 00362484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80365528 00362488  7C 08 02 A6 */	mflr r0
/* 8036552C 0036248C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80365530 00362490  4B CC 52 45 */	bl sub_8002a774
/* 80365534 00362494  7C 03 00 D0 */	neg r0, r3
/* 80365538 00362498  7C 00 1B 78 */	or r0, r0, r3
/* 8036553C 0036249C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80365540 003624A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80365544 003624A4  7C 08 03 A6 */	mtlr r0
/* 80365548 003624A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8036554C 003624AC  4E 80 00 20 */	blr

.global InternalSetVolume__19CStreamAudioManagerFf
InternalSetVolume__19CStreamAudioManagerFf:
/* 80365550 003624B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80365554 003624B4  7C 08 02 A6 */	mflr r0
/* 80365558 003624B8  C0 02 CD BC */	lfs f0, lbl_805AEADC@sda21(r2)
/* 8036555C 003624BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80365560 003624C0  3C 00 43 30 */	lis r0, 0x4330
/* 80365564 003624C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80365568 003624C8  C8 62 CD C0 */	lfd f3, lbl_805AEAE0@sda21(r2)
/* 8036556C 003624CC  80 6D 9E 78 */	lwz r3, lbl_805A8A38@sda21(r13)
/* 80365570 003624D0  90 01 00 08 */	stw r0, 8(r1)
/* 80365574 003624D4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80365578 003624D8  C0 82 CD B4 */	lfs f4, lbl_805AEAD4@sda21(r2)
/* 8036557C 003624DC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80365580 003624E0  C0 02 CD B8 */	lfs f0, lbl_805AEAD8@sda21(r2)
/* 80365584 003624E4  C8 41 00 08 */	lfd f2, 8(r1)
/* 80365588 003624E8  EC 42 18 28 */	fsubs f2, f2, f3
/* 8036558C 003624EC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80365590 003624F0  EC 24 00 72 */	fmuls f1, f4, f1
/* 80365594 003624F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80365598 003624F8  FC 00 00 1E */	fctiwz f0, f0
/* 8036559C 003624FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803655A0 00362500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803655A4 00362504  41 82 00 10 */	beq lbl_803655B4
/* 803655A8 00362508  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803655AC 0036250C  7C 64 1B 78 */	mr r4, r3
/* 803655B0 00362510  4B FE 5C A5 */	bl TrkSetVolume__9CAudioSysFUcUc
lbl_803655B4:
/* 803655B4 00362514  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803655B8 00362518  7C 08 03 A6 */	mtlr r0
/* 803655BC 0036251C  38 21 00 20 */	addi r1, r1, 0x20
/* 803655C0 00362520  4E 80 00 20 */	blr

.global HandleMusicUnmute__19CStreamAudioManagerFv
HandleMusicUnmute__19CStreamAudioManagerFv:
/* 803655C4 00362524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803655C8 00362528  7C 08 02 A6 */	mflr r0
/* 803655CC 0036252C  3C 60 80 5A */	lis r3, lbl_805A6B90@ha
/* 803655D0 00362530  90 01 00 14 */	stw r0, 0x14(r1)
/* 803655D4 00362534  38 63 6B 90 */	addi r3, r3, lbl_805A6B90@l
/* 803655D8 00362538  4B FF FE 79 */	bl sub_80365450
/* 803655DC 0036253C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803655E0 00362540  7C 08 03 A6 */	mtlr r0
/* 803655E4 00362544  38 21 00 10 */	addi r1, r1, 0x10
/* 803655E8 00362548  4E 80 00 20 */	blr

.global StopAllStreams__19CStreamAudioManagerFv
StopAllStreams__19CStreamAudioManagerFv:
/* 803655EC 0036254C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803655F0 00362550  7C 08 02 A6 */	mflr r0
/* 803655F4 00362554  3C 80 80 54 */	lis r4, lbl_80540580@ha
/* 803655F8 00362558  3C 60 80 54 */	lis r3, lbl_805405E4@ha
/* 803655FC 0036255C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80365600 00362560  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80365604 00362564  3B E4 05 80 */	addi r31, r4, lbl_80540580@l
/* 80365608 00362568  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8036560C 0036256C  3B C3 05 E4 */	addi r30, r3, lbl_805405E4@l
/* 80365610 00362570  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80365614 00362574  3B A0 00 00 */	li r29, 0
lbl_80365618:
/* 80365618 00362578  7F A3 EB 78 */	mr r3, r29
/* 8036561C 0036257C  48 00 0B 79 */	bl StopStreaming__19CStreamAudioManagerFi
/* 80365620 00362580  38 61 00 34 */	addi r3, r1, 0x34
/* 80365624 00362584  48 00 0F 2D */	bl __ct__20SDSPStreamCacheEntryFv
/* 80365628 00362588  7F E3 FB 78 */	mr r3, r31
/* 8036562C 0036258C  38 81 00 34 */	addi r4, r1, 0x34
/* 80365630 00362590  4B FD 87 2D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365634 00362594  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80365638 00362598  38 61 00 34 */	addi r3, r1, 0x34
/* 8036563C 0036259C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80365640 003625A0  90 9F 00 10 */	stw r4, 0x10(r31)
/* 80365644 003625A4  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80365648 003625A8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8036564C 003625AC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80365650 003625B0  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80365654 003625B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80365658 003625B8  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8036565C 003625BC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80365660 003625C0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80365664 003625C4  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 80365668 003625C8  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8036566C 003625CC  98 1F 00 28 */	stb r0, 0x28(r31)
/* 80365670 003625D0  4B FD 84 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80365674 003625D4  38 61 00 08 */	addi r3, r1, 8
/* 80365678 003625D8  48 00 0E D9 */	bl __ct__20SDSPStreamCacheEntryFv
/* 8036567C 003625DC  7F C3 F3 78 */	mr r3, r30
/* 80365680 003625E0  38 81 00 08 */	addi r4, r1, 8
/* 80365684 003625E4  4B FD 86 D9 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365688 003625E8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8036568C 003625EC  38 61 00 08 */	addi r3, r1, 8
/* 80365690 003625F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80365694 003625F4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80365698 003625F8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8036569C 003625FC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 803656A0 00362600  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 803656A4 00362604  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 803656A8 00362608  80 01 00 28 */	lwz r0, 0x28(r1)
/* 803656AC 0036260C  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 803656B0 00362610  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 803656B4 00362614  90 1E 00 20 */	stw r0, 0x20(r30)
/* 803656B8 00362618  88 01 00 30 */	lbz r0, 0x30(r1)
/* 803656BC 0036261C  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 803656C0 00362620  98 1E 00 28 */	stb r0, 0x28(r30)
/* 803656C4 00362624  4B FD 84 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 803656C8 00362628  3B BD 00 01 */	addi r29, r29, 1
/* 803656CC 0036262C  3B DE 00 2C */	addi r30, r30, 0x2c
/* 803656D0 00362630  2C 1D 00 02 */	cmpwi r29, 2
/* 803656D4 00362634  3B FF 00 2C */	addi r31, r31, 0x2c
/* 803656D8 00362638  41 80 FF 40 */	blt lbl_80365618
/* 803656DC 0036263C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803656E0 00362640  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 803656E4 00362644  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 803656E8 00362648  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 803656EC 0036264C  7C 08 03 A6 */	mtlr r0
/* 803656F0 00362650  38 21 00 70 */	addi r1, r1, 0x70
/* 803656F4 00362654  4E 80 00 20 */	blr

.global sub_803656f8
sub_803656f8:
/* 803656F8 00362658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803656FC 0036265C  7C 08 02 A6 */	mflr r0
/* 80365700 00362660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80365704 00362664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80365708 00362668  7C 9F 23 78 */	mr r31, r4
/* 8036570C 0036266C  93 C1 00 08 */	stw r30, 8(r1)
/* 80365710 00362670  7C 7E 1B 79 */	or. r30, r3, r3
/* 80365714 00362674  41 82 00 1C */	beq lbl_80365730
/* 80365718 00362678  41 82 00 08 */	beq lbl_80365720
/* 8036571C 0036267C  4B FD 83 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80365720:
/* 80365720 00362680  7F E0 07 35 */	extsh. r0, r31
/* 80365724 00362684  40 81 00 0C */	ble lbl_80365730
/* 80365728 00362688  7F C3 F3 78 */	mr r3, r30
/* 8036572C 0036268C  4B FB 02 05 */	bl Free__7CMemoryFPCv
lbl_80365730:
/* 80365730 00362690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80365734 00362694  7F C3 F3 78 */	mr r3, r30
/* 80365738 00362698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036573C 0036269C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80365740 003626A0  7C 08 03 A6 */	mtlr r0
/* 80365744 003626A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80365748 003626A8  4E 80 00 20 */	blr

.global HandleMusicMute__19CStreamAudioManagerFv
HandleMusicMute__19CStreamAudioManagerFv:
/* 8036574C 003626AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80365750 003626B0  7C 08 02 A6 */	mflr r0
/* 80365754 003626B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80365758 003626B8  4B FE 5B A5 */	bl TrkFlushTracks__9CAudioSysFv
/* 8036575C 003626BC  38 60 00 00 */	li r3, 0
/* 80365760 003626C0  4B FE 5B 3D */	bl TrkSetState__9CAudioSysF13ETRKPlayState
/* 80365764 003626C4  3C 80 80 3E */	lis r4, lbl_803D8410@ha
/* 80365768 003626C8  38 61 00 08 */	addi r3, r1, 8
/* 8036576C 003626CC  38 84 84 10 */	addi r4, r4, lbl_803D8410@l
/* 80365770 003626D0  4B C9 F5 49 */	bl string_l__4rstlFPCc
/* 80365774 003626D4  3C 60 80 5A */	lis r3, lbl_805A6B90@ha
/* 80365778 003626D8  38 81 00 08 */	addi r4, r1, 8
/* 8036577C 003626DC  38 63 6B 90 */	addi r3, r3, lbl_805A6B90@l
/* 80365780 003626E0  4B FD 85 DD */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365784 003626E4  38 61 00 08 */	addi r3, r1, 8
/* 80365788 003626E8  4B FD 83 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8036578C 003626EC  C0 02 CD BC */	lfs f0, lbl_805AEADC@sda21(r2)
/* 80365790 003626F0  38 00 00 01 */	li r0, 1
/* 80365794 003626F4  C0 2D 9E 74 */	lfs f1, lbl_805A8A34@sda21(r13)
/* 80365798 003626F8  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
/* 8036579C 003626FC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 803657A0 00362700  41 82 00 08 */	beq lbl_803657A8
/* 803657A4 00362704  4B FF FD AD */	bl InternalSetVolume__19CStreamAudioManagerFf
lbl_803657A8:
/* 803657A8 00362708  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803657AC 0036270C  7C 08 03 A6 */	mtlr r0
/* 803657B0 00362710  38 21 00 20 */	addi r1, r1, 0x20
/* 803657B4 00362714  4E 80 00 20 */	blr

.global StopOneShot__19CStreamAudioManagerFv
StopOneShot__19CStreamAudioManagerFv:
/* 803657B8 00362718  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803657BC 0036271C  7C 08 02 A6 */	mflr r0
/* 803657C0 00362720  38 60 00 01 */	li r3, 1
/* 803657C4 00362724  90 01 00 64 */	stw r0, 0x64(r1)
/* 803657C8 00362728  48 00 09 CD */	bl StopStreaming__19CStreamAudioManagerFi
/* 803657CC 0036272C  38 61 00 34 */	addi r3, r1, 0x34
/* 803657D0 00362730  48 00 0D 81 */	bl __ct__20SDSPStreamCacheEntryFv
/* 803657D4 00362734  3C 60 80 54 */	lis r3, lbl_80540580@ha
/* 803657D8 00362738  38 81 00 34 */	addi r4, r1, 0x34
/* 803657DC 0036273C  38 63 05 80 */	addi r3, r3, lbl_80540580@l
/* 803657E0 00362740  38 63 00 2C */	addi r3, r3, 0x2c
/* 803657E4 00362744  4B FD 85 79 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 803657E8 00362748  3C 60 80 54 */	lis r3, lbl_80540580@ha
/* 803657EC 0036274C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 803657F0 00362750  38 C3 05 80 */	addi r6, r3, lbl_80540580@l
/* 803657F4 00362754  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 803657F8 00362758  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 803657FC 0036275C  38 61 00 34 */	addi r3, r1, 0x34
/* 80365800 00362760  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80365804 00362764  80 81 00 54 */	lwz r4, 0x54(r1)
/* 80365808 00362768  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8036580C 0036276C  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 80365810 00362770  90 E6 00 3C */	stw r7, 0x3c(r6)
/* 80365814 00362774  90 A6 00 40 */	stw r5, 0x40(r6)
/* 80365818 00362778  D0 46 00 44 */	stfs f2, 0x44(r6)
/* 8036581C 0036277C  D0 26 00 48 */	stfs f1, 0x48(r6)
/* 80365820 00362780  90 86 00 4C */	stw r4, 0x4c(r6)
/* 80365824 00362784  D0 06 00 50 */	stfs f0, 0x50(r6)
/* 80365828 00362788  98 06 00 54 */	stb r0, 0x54(r6)
/* 8036582C 0036278C  4B FD 82 B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80365830 00362790  38 61 00 08 */	addi r3, r1, 8
/* 80365834 00362794  48 00 0D 1D */	bl __ct__20SDSPStreamCacheEntryFv
/* 80365838 00362798  3C 60 80 54 */	lis r3, lbl_805405E4@ha
/* 8036583C 0036279C  38 81 00 08 */	addi r4, r1, 8
/* 80365840 003627A0  38 63 05 E4 */	addi r3, r3, lbl_805405E4@l
/* 80365844 003627A4  38 63 00 2C */	addi r3, r3, 0x2c
/* 80365848 003627A8  4B FD 85 15 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8036584C 003627AC  3C 60 80 54 */	lis r3, lbl_805405E4@ha
/* 80365850 003627B0  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 80365854 003627B4  38 C3 05 E4 */	addi r6, r3, lbl_805405E4@l
/* 80365858 003627B8  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8036585C 003627BC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80365860 003627C0  38 61 00 08 */	addi r3, r1, 8
/* 80365864 003627C4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80365868 003627C8  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8036586C 003627CC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80365870 003627D0  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80365874 003627D4  90 E6 00 3C */	stw r7, 0x3c(r6)
/* 80365878 003627D8  90 A6 00 40 */	stw r5, 0x40(r6)
/* 8036587C 003627DC  D0 46 00 44 */	stfs f2, 0x44(r6)
/* 80365880 003627E0  D0 26 00 48 */	stfs f1, 0x48(r6)
/* 80365884 003627E4  90 86 00 4C */	stw r4, 0x4c(r6)
/* 80365888 003627E8  D0 06 00 50 */	stfs f0, 0x50(r6)
/* 8036588C 003627EC  98 06 00 54 */	stb r0, 0x54(r6)
/* 80365890 003627F0  4B FD 82 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80365894 003627F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80365898 003627F8  7C 08 03 A6 */	mtlr r0
/* 8036589C 003627FC  38 21 00 60 */	addi r1, r1, 0x60
/* 803658A0 00362800  4E 80 00 20 */	blr

.global StopAll__19CStreamAudioManagerFv
StopAll__19CStreamAudioManagerFv:
/* 803658A4 00362804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803658A8 00362808  7C 08 02 A6 */	mflr r0
/* 803658AC 0036280C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803658B0 00362810  4B FF FE 9D */	bl HandleMusicMute__19CStreamAudioManagerFv
/* 803658B4 00362814  4B FF FD 39 */	bl StopAllStreams__19CStreamAudioManagerFv
/* 803658B8 00362818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803658BC 0036281C  7C 08 03 A6 */	mtlr r0
/* 803658C0 00362820  38 21 00 10 */	addi r1, r1, 0x10
/* 803658C4 00362824  4E 80 00 20 */	blr

.global SetMusicUnmute__19CStreamAudioManagerFb
SetMusicUnmute__19CStreamAudioManagerFb:
/* 803658C8 00362828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803658CC 0036282C  7C 08 02 A6 */	mflr r0
/* 803658D0 00362830  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 803658D4 00362834  90 01 00 14 */	stw r0, 0x14(r1)
/* 803658D8 00362838  88 0D 9E 80 */	lbz r0, lbl_805A8A40@sda21(r13)
/* 803658DC 0036283C  7C 04 00 40 */	cmplw r4, r0
/* 803658E0 00362840  41 82 00 1C */	beq lbl_803658FC
/* 803658E4 00362844  28 04 00 00 */	cmplwi r4, 0
/* 803658E8 00362848  98 6D 9E 80 */	stb r3, lbl_805A8A40@sda21(r13)
/* 803658EC 0036284C  41 82 00 0C */	beq lbl_803658F8
/* 803658F0 00362850  4B FF FC D5 */	bl HandleMusicUnmute__19CStreamAudioManagerFv
/* 803658F4 00362854  48 00 00 08 */	b lbl_803658FC
lbl_803658F8:
/* 803658F8 00362858  4B FF FE 55 */	bl HandleMusicMute__19CStreamAudioManagerFv
lbl_803658FC:
/* 803658FC 0036285C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80365900 00362860  7C 08 03 A6 */	mtlr r0
/* 80365904 00362864  38 21 00 10 */	addi r1, r1, 0x10
/* 80365908 00362868  4E 80 00 20 */	blr

.global sub_8036590c
sub_8036590c:
/* 8036590C 0036286C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80365910 00362870  7C 08 02 A6 */	mflr r0
/* 80365914 00362874  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80365918 00362878  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036591C 0036287C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80365920 00362880  40 82 00 18 */	bne lbl_80365938
/* 80365924 00362884  C0 2D AA C0 */	lfs f1, lbl_805A9680@sda21(r13)
/* 80365928 00362888  C0 0D 9E 74 */	lfs f0, lbl_805A8A34@sda21(r13)
/* 8036592C 0036288C  D0 2D AA C8 */	stfs f1, lbl_805A9688@sda21(r13)
/* 80365930 00362890  D0 0D AA C4 */	stfs f0, lbl_805A9684@sda21(r13)
/* 80365934 00362894  48 00 00 1C */	b lbl_80365950
lbl_80365938:
/* 80365938 00362898  C0 4D AA C0 */	lfs f2, lbl_805A9680@sda21(r13)
/* 8036593C 0036289C  C0 0D 9E 74 */	lfs f0, lbl_805A8A34@sda21(r13)
/* 80365940 003628A0  EC 42 08 24 */	fdivs f2, f2, f1
/* 80365944 003628A4  EC 00 08 24 */	fdivs f0, f0, f1
/* 80365948 003628A8  D0 4D AA C8 */	stfs f2, lbl_805A9688@sda21(r13)
/* 8036594C 003628AC  D0 0D AA C4 */	stfs f0, lbl_805A9684@sda21(r13)
lbl_80365950:
/* 80365950 003628B0  3C 60 80 5A */	lis r3, lbl_805A6BA0@ha
/* 80365954 003628B4  3C 80 80 5A */	lis r4, lbl_805A6B60@ha
/* 80365958 003628B8  38 63 6B A0 */	addi r3, r3, lbl_805A6BA0@l
/* 8036595C 003628BC  38 84 6B 60 */	addi r4, r4, lbl_805A6B60@l
/* 80365960 003628C0  4B FD 83 FD */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365964 003628C4  3C 60 80 5A */	lis r3, lbl_805A6B60@ha
/* 80365968 003628C8  3C 80 80 3E */	lis r4, lbl_803D8410@ha
/* 8036596C 003628CC  38 63 6B 60 */	addi r3, r3, lbl_805A6B60@l
/* 80365970 003628D0  38 84 84 10 */	addi r4, r4, lbl_803D8410@l
/* 80365974 003628D4  48 00 00 79 */	bl AreStringsNotEqual__21CStreamedAudioManagerFPCcPCc
/* 80365978 003628D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8036597C 003628DC  41 82 00 2C */	beq lbl_803659A8
/* 80365980 003628E0  3C 60 80 5A */	lis r3, lbl_805A6B90@ha
/* 80365984 003628E4  3C 80 80 5A */	lis r4, lbl_805A6B60@ha
/* 80365988 003628E8  38 63 6B 90 */	addi r3, r3, lbl_805A6B90@l
/* 8036598C 003628EC  38 84 6B 60 */	addi r4, r4, lbl_805A6B60@l
/* 80365990 003628F0  4B FF FB 95 */	bl sub_80365524
/* 80365994 003628F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80365998 003628F8  41 82 00 10 */	beq lbl_803659A8
/* 8036599C 003628FC  38 00 00 02 */	li r0, 2
/* 803659A0 00362900  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
/* 803659A4 00362904  48 00 00 38 */	b lbl_803659DC
lbl_803659A8:
/* 803659A8 00362908  38 00 00 00 */	li r0, 0
/* 803659AC 0036290C  38 8D A9 18 */	addi r4, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 803659B0 00362910  3C 60 80 5A */	lis r3, lbl_805A6B60@ha
/* 803659B4 00362914  90 81 00 08 */	stw r4, 8(r1)
/* 803659B8 00362918  38 63 6B 60 */	addi r3, r3, lbl_805A6B60@l
/* 803659BC 0036291C  38 81 00 08 */	addi r4, r1, 8
/* 803659C0 00362920  90 01 00 0C */	stw r0, 0xc(r1)
/* 803659C4 00362924  90 01 00 10 */	stw r0, 0x10(r1)
/* 803659C8 00362928  4B FD 83 95 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 803659CC 0036292C  38 61 00 08 */	addi r3, r1, 8
/* 803659D0 00362930  4B FD 81 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 803659D4 00362934  38 00 00 05 */	li r0, 5
/* 803659D8 00362938  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
lbl_803659DC:
/* 803659DC 0036293C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803659E0 00362940  7C 08 03 A6 */	mtlr r0
/* 803659E4 00362944  38 21 00 20 */	addi r1, r1, 0x20
/* 803659E8 00362948  4E 80 00 20 */	blr

.global AreStringsNotEqual__21CStreamedAudioManagerFPCcPCc
AreStringsNotEqual__21CStreamedAudioManagerFPCcPCc:
/* 803659EC 0036294C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803659F0 00362950  7C 08 02 A6 */	mflr r0
/* 803659F4 00362954  38 A0 FF FF */	li r5, -1
/* 803659F8 00362958  90 01 00 14 */	stw r0, 0x14(r1)
/* 803659FC 0036295C  4B D1 4A 91 */	bl CompareStateString__10CPatternedFPCcPCci
/* 80365A00 00362960  7C 03 00 D0 */	neg r0, r3
/* 80365A04 00362964  7C 00 1B 78 */	or r0, r0, r3
/* 80365A08 00362968  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80365A0C 0036296C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80365A10 00362970  7C 08 03 A6 */	mtlr r0
/* 80365A14 00362974  38 21 00 10 */	addi r1, r1, 0x10
/* 80365A18 00362978  4E 80 00 20 */	blr

.global SetSfxVolume__21CStreamedAudioManagerFUc
SetSfxVolume__21CStreamedAudioManagerFUc:
/* 80365A1C 0036297C  2C 03 00 7F */	cmpwi r3, 0x7f
/* 80365A20 00362980  90 6D 9E 7C */	stw r3, lbl_805A8A3C@sda21(r13)
/* 80365A24 00362984  4C 81 00 20 */	blelr
/* 80365A28 00362988  38 00 00 7F */	li r0, 0x7f
/* 80365A2C 0036298C  90 0D 9E 7C */	stw r0, lbl_805A8A3C@sda21(r13)
/* 80365A30 00362990  4E 80 00 20 */	blr

.global SetMusicVolume__19CStreamAudioManagerFi
SetMusicVolume__19CStreamAudioManagerFi:
/* 80365A34 00362994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80365A38 00362998  7C 08 02 A6 */	mflr r0
/* 80365A3C 0036299C  2C 03 00 7F */	cmpwi r3, 0x7f
/* 80365A40 003629A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80365A44 003629A4  90 6D 9E 78 */	stw r3, lbl_805A8A38@sda21(r13)
/* 80365A48 003629A8  40 81 00 0C */	ble lbl_80365A54
/* 80365A4C 003629AC  38 00 00 7F */	li r0, 0x7f
/* 80365A50 003629B0  90 0D 9E 78 */	stw r0, lbl_805A8A38@sda21(r13)
lbl_80365A54:
/* 80365A54 003629B4  C0 2D AA C0 */	lfs f1, lbl_805A9680@sda21(r13)
/* 80365A58 003629B8  4B FF FA F9 */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365A5C 003629BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80365A60 003629C0  7C 08 03 A6 */	mtlr r0
/* 80365A64 003629C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80365A68 003629C8  4E 80 00 20 */	blr

.global "SetCurrentAudio__19CStreamAudioManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fUc"
"SetCurrentAudio__19CStreamAudioManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fUc":
/* 80365A6C 003629CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80365A70 003629D0  7C 08 02 A6 */	mflr r0
/* 80365A74 003629D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80365A78 003629D8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80365A7C 003629DC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80365A80 003629E0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80365A84 003629E4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80365A88 003629E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80365A8C 003629EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80365A90 003629F0  3C 00 43 30 */	lis r0, 0x4330
/* 80365A94 003629F4  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 80365A98 003629F8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80365A9C 003629FC  7C 9F 23 78 */	mr r31, r4
/* 80365AA0 00362A00  3C 80 80 5A */	lis r4, lbl_805A6B90@ha
/* 80365AA4 00362A04  C8 62 CD C8 */	lfd f3, lbl_805AEAE8@sda21(r2)
/* 80365AA8 00362A08  90 01 00 08 */	stw r0, 8(r1)
/* 80365AAC 00362A0C  FF C0 08 90 */	fmr f30, f1
/* 80365AB0 00362A10  FF E0 10 90 */	fmr f31, f2
/* 80365AB4 00362A14  38 84 6B 90 */	addi r4, r4, lbl_805A6B90@l
/* 80365AB8 00362A18  C8 01 00 08 */	lfd f0, 8(r1)
/* 80365ABC 00362A1C  7C 7E 1B 78 */	mr r30, r3
/* 80365AC0 00362A20  EC 00 18 28 */	fsubs f0, f0, f3
/* 80365AC4 00362A24  D0 0D 9E 74 */	stfs f0, lbl_805A8A34@sda21(r13)
/* 80365AC8 00362A28  4B CE CB 19 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 80365ACC 00362A2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80365AD0 00362A30  41 82 00 3C */	beq lbl_80365B0C
/* 80365AD4 00362A34  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80365AD8 00362A38  3C 00 43 30 */	lis r0, 0x4330
/* 80365ADC 00362A3C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80365AE0 00362A40  C8 42 CD C8 */	lfd f2, lbl_805AEAE8@sda21(r2)
/* 80365AE4 00362A44  90 01 00 08 */	stw r0, 8(r1)
/* 80365AE8 00362A48  C8 01 00 08 */	lfd f0, 8(r1)
/* 80365AEC 00362A4C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80365AF0 00362A50  EC 20 10 28 */	fsubs f1, f0, f2
/* 80365AF4 00362A54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80365AF8 00362A58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80365AFC 00362A5C  D0 2D AA C0 */	stfs f1, lbl_805A9680@sda21(r13)
/* 80365B00 00362A60  EC 20 10 28 */	fsubs f1, f0, f2
/* 80365B04 00362A64  4B FF FA 4D */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365B08 00362A68  48 00 00 88 */	b lbl_80365B90
lbl_80365B0C:
/* 80365B0C 00362A6C  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80365B10 00362A70  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 80365B14 00362A74  40 82 00 0C */	bne lbl_80365B20
/* 80365B18 00362A78  C0 2D AA C0 */	lfs f1, lbl_805A9680@sda21(r13)
/* 80365B1C 00362A7C  48 00 00 0C */	b lbl_80365B28
lbl_80365B20:
/* 80365B20 00362A80  C0 0D AA C0 */	lfs f0, lbl_805A9680@sda21(r13)
/* 80365B24 00362A84  EC 20 F0 24 */	fdivs f1, f0, f30
lbl_80365B28:
/* 80365B28 00362A88  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80365B2C 00362A8C  D0 2D AA C8 */	stfs f1, lbl_805A9688@sda21(r13)
/* 80365B30 00362A90  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80365B34 00362A94  40 82 00 0C */	bne lbl_80365B40
/* 80365B38 00362A98  C0 0D 9E 74 */	lfs f0, lbl_805A8A34@sda21(r13)
/* 80365B3C 00362A9C  48 00 00 0C */	b lbl_80365B48
lbl_80365B40:
/* 80365B40 00362AA0  C0 0D 9E 74 */	lfs f0, lbl_805A8A34@sda21(r13)
/* 80365B44 00362AA4  EC 00 F8 24 */	fdivs f0, f0, f31
lbl_80365B48:
/* 80365B48 00362AA8  80 0D 9E 70 */	lwz r0, lbl_805A8A30@sda21(r13)
/* 80365B4C 00362AAC  D0 0D AA C4 */	stfs f0, lbl_805A9684@sda21(r13)
/* 80365B50 00362AB0  2C 00 00 01 */	cmpwi r0, 1
/* 80365B54 00362AB4  40 82 00 24 */	bne lbl_80365B78
/* 80365B58 00362AB8  C0 22 CD B0 */	lfs f1, lbl_805AEAD0@sda21(r2)
/* 80365B5C 00362ABC  D0 2D AA C0 */	stfs f1, lbl_805A9680@sda21(r13)
/* 80365B60 00362AC0  4B FF F9 F1 */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365B64 00362AC4  7F C3 F3 78 */	mr r3, r30
/* 80365B68 00362AC8  4B FF F8 E9 */	bl sub_80365450
/* 80365B6C 00362ACC  38 00 00 04 */	li r0, 4
/* 80365B70 00362AD0  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
/* 80365B74 00362AD4  48 00 00 1C */	b lbl_80365B90
lbl_80365B78:
/* 80365B78 00362AD8  38 00 00 02 */	li r0, 2
/* 80365B7C 00362ADC  3C 60 80 5A */	lis r3, lbl_805A6BA0@ha
/* 80365B80 00362AE0  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
/* 80365B84 00362AE4  38 63 6B A0 */	addi r3, r3, lbl_805A6BA0@l
/* 80365B88 00362AE8  7F C4 F3 78 */	mr r4, r30
/* 80365B8C 00362AEC  4B FD 81 D1 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_80365B90:
/* 80365B90 00362AF0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80365B94 00362AF4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80365B98 00362AF8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80365B9C 00362AFC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80365BA0 00362B00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80365BA4 00362B04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80365BA8 00362B08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80365BAC 00362B0C  7C 08 03 A6 */	mtlr r0
/* 80365BB0 00362B10  38 21 00 40 */	addi r1, r1, 0x40
/* 80365BB4 00362B14  4E 80 00 20 */	blr

.global "SetDefaultAudio__19CStreamAudioManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fUc"
"SetDefaultAudio__19CStreamAudioManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fUc":
/* 80365BB8 00362B18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80365BBC 00362B1C  7C 08 02 A6 */	mflr r0
/* 80365BC0 00362B20  3C A0 80 5A */	lis r5, lbl_805A6B60@ha
/* 80365BC4 00362B24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80365BC8 00362B28  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80365BCC 00362B2C  FF E0 10 90 */	fmr f31, f2
/* 80365BD0 00362B30  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80365BD4 00362B34  FF C0 08 90 */	fmr f30, f1
/* 80365BD8 00362B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80365BDC 00362B3C  7C 9F 23 78 */	mr r31, r4
/* 80365BE0 00362B40  93 C1 00 08 */	stw r30, 8(r1)
/* 80365BE4 00362B44  7C 7E 1B 78 */	mr r30, r3
/* 80365BE8 00362B48  38 65 6B 60 */	addi r3, r5, lbl_805A6B60@l
/* 80365BEC 00362B4C  7F C4 F3 78 */	mr r4, r30
/* 80365BF0 00362B50  4B FD 81 6D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365BF4 00362B54  FC 20 F0 90 */	fmr f1, f30
/* 80365BF8 00362B58  7F C3 F3 78 */	mr r3, r30
/* 80365BFC 00362B5C  FC 40 F8 90 */	fmr f2, f31
/* 80365C00 00362B60  7F E4 FB 78 */	mr r4, r31
/* 80365C04 00362B64  4B FF FE 69 */	bl "SetCurrentAudio__19CStreamAudioManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fUc"
/* 80365C08 00362B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80365C0C 00362B6C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80365C10 00362B70  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80365C14 00362B74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80365C18 00362B78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80365C1C 00362B7C  7C 08 03 A6 */	mtlr r0
/* 80365C20 00362B80  38 21 00 20 */	addi r1, r1, 0x20
/* 80365C24 00362B84  4E 80 00 20 */	blr

.global Update__19CStreamAudioManagerFf
Update__19CStreamAudioManagerFf:
/* 80365C28 00362B88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80365C2C 00362B8C  7C 08 02 A6 */	mflr r0
/* 80365C30 00362B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80365C34 00362B94  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80365C38 00362B98  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80365C3C 00362B9C  80 0D 9E 70 */	lwz r0, lbl_805A8A30@sda21(r13)
/* 80365C40 00362BA0  FF E0 08 90 */	fmr f31, f1
/* 80365C44 00362BA4  2C 00 00 05 */	cmpwi r0, 5
/* 80365C48 00362BA8  41 82 00 68 */	beq lbl_80365CB0
/* 80365C4C 00362BAC  40 80 00 14 */	bge lbl_80365C60
/* 80365C50 00362BB0  2C 00 00 02 */	cmpwi r0, 2
/* 80365C54 00362BB4  41 82 00 18 */	beq lbl_80365C6C
/* 80365C58 00362BB8  40 80 00 D4 */	bge lbl_80365D2C
/* 80365C5C 00362BBC  48 00 01 04 */	b lbl_80365D60
lbl_80365C60:
/* 80365C60 00362BC0  2C 00 00 07 */	cmpwi r0, 7
/* 80365C64 00362BC4  40 80 00 FC */	bge lbl_80365D60
/* 80365C68 00362BC8  48 00 00 8C */	b lbl_80365CF4
lbl_80365C6C:
/* 80365C6C 00362BCC  C0 4D AA C8 */	lfs f2, lbl_805A9688@sda21(r13)
/* 80365C70 00362BD0  C0 2D AA C0 */	lfs f1, lbl_805A9680@sda21(r13)
/* 80365C74 00362BD4  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80365C78 00362BD8  EC 22 0F FC */	fnmsubs f1, f2, f31, f1
/* 80365C7C 00362BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80365C80 00362BE0  D0 2D AA C0 */	stfs f1, lbl_805A9680@sda21(r13)
/* 80365C84 00362BE4  4C 40 13 82 */	cror 2, 0, 2
/* 80365C88 00362BE8  40 82 00 1C */	bne lbl_80365CA4
/* 80365C8C 00362BEC  3C 60 80 5A */	lis r3, lbl_805A6BA0@ha
/* 80365C90 00362BF0  D0 0D AA C0 */	stfs f0, lbl_805A9680@sda21(r13)
/* 80365C94 00362BF4  38 63 6B A0 */	addi r3, r3, lbl_805A6BA0@l
/* 80365C98 00362BF8  4B FF F7 B9 */	bl sub_80365450
/* 80365C9C 00362BFC  38 00 00 03 */	li r0, 3
/* 80365CA0 00362C00  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
lbl_80365CA4:
/* 80365CA4 00362C04  C0 2D AA C0 */	lfs f1, lbl_805A9680@sda21(r13)
/* 80365CA8 00362C08  4B FF F8 A9 */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365CAC 00362C0C  48 00 00 B4 */	b lbl_80365D60
lbl_80365CB0:
/* 80365CB0 00362C10  C0 4D AA C8 */	lfs f2, lbl_805A9688@sda21(r13)
/* 80365CB4 00362C14  C0 2D AA C0 */	lfs f1, lbl_805A9680@sda21(r13)
/* 80365CB8 00362C18  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80365CBC 00362C1C  EC 22 0F FC */	fnmsubs f1, f2, f31, f1
/* 80365CC0 00362C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80365CC4 00362C24  D0 2D AA C0 */	stfs f1, lbl_805A9680@sda21(r13)
/* 80365CC8 00362C28  4C 40 13 82 */	cror 2, 0, 2
/* 80365CCC 00362C2C  40 82 00 20 */	bne lbl_80365CEC
/* 80365CD0 00362C30  38 00 00 01 */	li r0, 1
/* 80365CD4 00362C34  D0 0D AA C0 */	stfs f0, lbl_805A9680@sda21(r13)
/* 80365CD8 00362C38  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
/* 80365CDC 00362C3C  4B FF FA 71 */	bl HandleMusicMute__19CStreamAudioManagerFv
/* 80365CE0 00362C40  C0 2D 9E 74 */	lfs f1, lbl_805A8A34@sda21(r13)
/* 80365CE4 00362C44  4B FF F8 6D */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365CE8 00362C48  48 00 00 78 */	b lbl_80365D60
lbl_80365CEC:
/* 80365CEC 00362C4C  4B FF F8 65 */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365CF0 00362C50  48 00 00 70 */	b lbl_80365D60
lbl_80365CF4:
/* 80365CF4 00362C54  C0 4D AA C8 */	lfs f2, lbl_805A9688@sda21(r13)
/* 80365CF8 00362C58  C0 0D AA C0 */	lfs f0, lbl_805A9680@sda21(r13)
/* 80365CFC 00362C5C  C0 22 CD B0 */	lfs f1, lbl_805AEAD0@sda21(r2)
/* 80365D00 00362C60  EC 02 07 FC */	fnmsubs f0, f2, f31, f0
/* 80365D04 00362C64  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80365D08 00362C68  D0 0D AA C0 */	stfs f0, lbl_805A9680@sda21(r13)
/* 80365D0C 00362C6C  4C 40 13 82 */	cror 2, 0, 2
/* 80365D10 00362C70  40 82 00 10 */	bne lbl_80365D20
/* 80365D14 00362C74  D0 2D AA C0 */	stfs f1, lbl_805A9680@sda21(r13)
/* 80365D18 00362C78  4B FF F8 39 */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365D1C 00362C7C  48 00 00 44 */	b lbl_80365D60
lbl_80365D20:
/* 80365D20 00362C80  FC 20 00 90 */	fmr f1, f0
/* 80365D24 00362C84  4B FF F8 2D */	bl InternalSetVolume__19CStreamAudioManagerFf
/* 80365D28 00362C88  48 00 00 38 */	b lbl_80365D60
lbl_80365D2C:
/* 80365D2C 00362C8C  C0 2D AA C4 */	lfs f1, lbl_805A9684@sda21(r13)
/* 80365D30 00362C90  C0 0D AA C0 */	lfs f0, lbl_805A9680@sda21(r13)
/* 80365D34 00362C94  C0 4D 9E 74 */	lfs f2, lbl_805A8A34@sda21(r13)
/* 80365D38 00362C98  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 80365D3C 00362C9C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80365D40 00362CA0  D0 0D AA C0 */	stfs f0, lbl_805A9680@sda21(r13)
/* 80365D44 00362CA4  4C 41 13 82 */	cror 2, 1, 2
/* 80365D48 00362CA8  40 82 00 10 */	bne lbl_80365D58
/* 80365D4C 00362CAC  38 00 00 00 */	li r0, 0
/* 80365D50 00362CB0  D0 4D AA C0 */	stfs f2, lbl_805A9680@sda21(r13)
/* 80365D54 00362CB4  90 0D 9E 70 */	stw r0, lbl_805A8A30@sda21(r13)
lbl_80365D58:
/* 80365D58 00362CB8  C0 2D AA C0 */	lfs f1, lbl_805A9680@sda21(r13)
/* 80365D5C 00362CBC  4B FF F7 F5 */	bl InternalSetVolume__19CStreamAudioManagerFf
lbl_80365D60:
/* 80365D60 00362CC0  FC 20 F8 90 */	fmr f1, f31
/* 80365D64 00362CC4  48 00 03 F5 */	bl UpdateDSPStreamers__19CStreamAudioManagerFf
/* 80365D68 00362CC8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80365D6C 00362CCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80365D70 00362CD0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80365D74 00362CD4  7C 08 03 A6 */	mtlr r0
/* 80365D78 00362CD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80365D7C 00362CDC  4E 80 00 20 */	blr

.global Start__19CStreamAudioManagerFiRCQ24rstl6stringib
Start__19CStreamAudioManagerFiRCQ24rstl6stringib:
/* 80365D80 00362CE0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80365D84 00362CE4  7C 08 02 A6 */	mflr r0
/* 80365D88 00362CE8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80365D8C 00362CEC  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80365D90 00362CF0  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 80365D94 00362CF4  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80365D98 00362CF8  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 80365D9C 00362CFC  BF 41 00 68 */	stmw r26, 0x68(r1)
/* 80365DA0 00362D00  7C 7B 1B 78 */	mr r27, r3
/* 80365DA4 00362D04  3C E0 80 54 */	lis r7, lbl_80540580@ha
/* 80365DA8 00362D08  1D 1B 00 2C */	mulli r8, r27, 0x2c
/* 80365DAC 00362D0C  3C 60 80 54 */	lis r3, lbl_805405E4@ha
/* 80365DB0 00362D10  38 E7 05 80 */	addi r7, r7, lbl_80540580@l
/* 80365DB4 00362D14  FF C0 08 90 */	fmr f30, f1
/* 80365DB8 00362D18  FF E0 10 90 */	fmr f31, f2
/* 80365DBC 00362D1C  38 03 05 E4 */	addi r0, r3, lbl_805405E4@l
/* 80365DC0 00362D20  7F E7 42 14 */	add r31, r7, r8
/* 80365DC4 00362D24  7C 9C 23 78 */	mr r28, r4
/* 80365DC8 00362D28  7C BD 2B 78 */	mr r29, r5
/* 80365DCC 00362D2C  7C DE 33 78 */	mr r30, r6
/* 80365DD0 00362D30  7F E3 FB 78 */	mr r3, r31
/* 80365DD4 00362D34  7F 40 42 14 */	add r26, r0, r8
/* 80365DD8 00362D38  4B FD 8C 15 */	bl "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365DDC 00362D3C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80365DE0 00362D40  7C 60 00 34 */	cntlzw r0, r3
/* 80365DE4 00362D44  54 03 D9 7E */	srwi r3, r0, 5
/* 80365DE8 00362D48  7C 04 00 D0 */	neg r0, r4
/* 80365DEC 00362D4C  7C 00 23 78 */	or r0, r0, r4
/* 80365DF0 00362D50  54 04 0F FF */	rlwinm. r4, r0, 1, 0x1f, 0x1f
/* 80365DF4 00362D54  41 82 00 8C */	beq lbl_80365E80
/* 80365DF8 00362D58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80365DFC 00362D5C  40 82 00 84 */	bne lbl_80365E80
/* 80365E00 00362D60  FC 20 F0 90 */	fmr f1, f30
/* 80365E04 00362D64  7F 85 E3 78 */	mr r5, r28
/* 80365E08 00362D68  FC 40 F8 90 */	fmr f2, f31
/* 80365E0C 00362D6C  7F C8 F3 78 */	mr r8, r30
/* 80365E10 00362D70  38 61 00 34 */	addi r3, r1, 0x34
/* 80365E14 00362D74  57 A6 06 3E */	clrlwi r6, r29, 0x18
/* 80365E18 00362D78  38 80 00 01 */	li r4, 1
/* 80365E1C 00362D7C  38 E0 FF FF */	li r7, -1
/* 80365E20 00362D80  48 00 06 A5 */	bl __ct__20SDSPStreamCacheEntryFiRCQ24rstl6stringiffib
/* 80365E24 00362D84  7F 43 D3 78 */	mr r3, r26
/* 80365E28 00362D88  38 81 00 34 */	addi r4, r1, 0x34
/* 80365E2C 00362D8C  4B FD 7F 31 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365E30 00362D90  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80365E34 00362D94  38 61 00 34 */	addi r3, r1, 0x34
/* 80365E38 00362D98  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80365E3C 00362D9C  90 9A 00 10 */	stw r4, 0x10(r26)
/* 80365E40 00362DA0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80365E44 00362DA4  90 1A 00 14 */	stw r0, 0x14(r26)
/* 80365E48 00362DA8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80365E4C 00362DAC  D0 3A 00 18 */	stfs f1, 0x18(r26)
/* 80365E50 00362DB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80365E54 00362DB4  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 80365E58 00362DB8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80365E5C 00362DBC  90 1A 00 20 */	stw r0, 0x20(r26)
/* 80365E60 00362DC0  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 80365E64 00362DC4  D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 80365E68 00362DC8  98 1A 00 28 */	stb r0, 0x28(r26)
/* 80365E6C 00362DCC  4B FD 7C 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80365E70 00362DD0  7F 63 DB 78 */	mr r3, r27
/* 80365E74 00362DD4  7F E4 FB 78 */	mr r4, r31
/* 80365E78 00362DD8  48 00 01 4D */	bl Stop__19CStreamAudioManagerFiRCQ24rstl6string
/* 80365E7C 00362DDC  48 00 01 24 */	b lbl_80365FA0
lbl_80365E80:
/* 80365E80 00362DE0  28 04 00 00 */	cmplwi r4, 0
/* 80365E84 00362DE4  41 82 00 60 */	beq lbl_80365EE4
/* 80365E88 00362DE8  D3 DF 00 18 */	stfs f30, 0x18(r31)
/* 80365E8C 00362DEC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80365E90 00362DF0  C0 02 CD D0 */	lfs f0, lbl_805AEAF0@sda21(r2)
/* 80365E94 00362DF4  D3 FF 00 1C */	stfs f31, 0x1c(r31)
/* 80365E98 00362DF8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80365E9C 00362DFC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80365EA0 00362E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80365EA4 00362E04  4C 40 13 82 */	cror 2, 0, 2
/* 80365EA8 00362E08  40 82 00 30 */	bne lbl_80365ED8
/* 80365EAC 00362E0C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80365EB0 00362E10  88 9F 00 28 */	lbz r4, 0x28(r31)
/* 80365EB4 00362E14  48 00 05 91 */	bl GetTargetDSPVolume__19CStreamAudioManagerFcb
/* 80365EB8 00362E18  7C 64 1B 78 */	mr r4, r3
/* 80365EBC 00362E1C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80365EC0 00362E20  4B FF DD 15 */	bl UpdateVolume__17CDSPStreamManagerFic
/* 80365EC4 00362E24  C0 02 CD D4 */	lfs f0, lbl_805AEAF4@sda21(r2)
/* 80365EC8 00362E28  38 00 00 02 */	li r0, 2
/* 80365ECC 00362E2C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80365ED0 00362E30  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80365ED4 00362E34  48 00 00 CC */	b lbl_80365FA0
lbl_80365ED8:
/* 80365ED8 00362E38  38 00 00 01 */	li r0, 1
/* 80365EDC 00362E3C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80365EE0 00362E40  48 00 00 C0 */	b lbl_80365FA0
lbl_80365EE4:
/* 80365EE4 00362E44  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80365EE8 00362E48  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80365EEC 00362E4C  40 81 00 10 */	ble lbl_80365EFC
/* 80365EF0 00362E50  38 60 00 00 */	li r3, 0
/* 80365EF4 00362E54  3B 40 00 01 */	li r26, 1
/* 80365EF8 00362E58  48 00 00 0C */	b lbl_80365F04
lbl_80365EFC:
/* 80365EFC 00362E5C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 80365F00 00362E60  3B 40 00 02 */	li r26, 2
lbl_80365F04:
/* 80365F04 00362E64  7C 1B 00 D0 */	neg r0, r27
/* 80365F08 00362E68  7F C4 F3 78 */	mr r4, r30
/* 80365F0C 00362E6C  7C 00 DB 78 */	or r0, r0, r27
/* 80365F10 00362E70  54 1B 0F FE */	srwi r27, r0, 0x1f
/* 80365F14 00362E74  48 00 05 31 */	bl GetTargetDSPVolume__19CStreamAudioManagerFcb
/* 80365F18 00362E78  7C 64 1B 78 */	mr r4, r3
/* 80365F1C 00362E7C  7F 83 E3 78 */	mr r3, r28
/* 80365F20 00362E80  7F 65 DB 78 */	mr r5, r27
/* 80365F24 00362E84  4B FF E2 91 */	bl StartStreaming__17CDSPStreamManagerFRCQ24rstl6stringcb
/* 80365F28 00362E88  2C 03 FF FF */	cmpwi r3, -1
/* 80365F2C 00362E8C  41 82 00 74 */	beq lbl_80365FA0
/* 80365F30 00362E90  FC 20 F0 90 */	fmr f1, f30
/* 80365F34 00362E94  7F 44 D3 78 */	mr r4, r26
/* 80365F38 00362E98  FC 40 F8 90 */	fmr f2, f31
/* 80365F3C 00362E9C  7F 85 E3 78 */	mr r5, r28
/* 80365F40 00362EA0  7C 67 1B 78 */	mr r7, r3
/* 80365F44 00362EA4  7F C8 F3 78 */	mr r8, r30
/* 80365F48 00362EA8  38 61 00 08 */	addi r3, r1, 8
/* 80365F4C 00362EAC  57 A6 06 3E */	clrlwi r6, r29, 0x18
/* 80365F50 00362EB0  48 00 05 75 */	bl __ct__20SDSPStreamCacheEntryFiRCQ24rstl6stringiffib
/* 80365F54 00362EB4  7F E3 FB 78 */	mr r3, r31
/* 80365F58 00362EB8  38 81 00 08 */	addi r4, r1, 8
/* 80365F5C 00362EBC  4B FD 7E 01 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80365F60 00362EC0  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80365F64 00362EC4  38 61 00 08 */	addi r3, r1, 8
/* 80365F68 00362EC8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80365F6C 00362ECC  90 9F 00 10 */	stw r4, 0x10(r31)
/* 80365F70 00362ED0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80365F74 00362ED4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80365F78 00362ED8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80365F7C 00362EDC  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80365F80 00362EE0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80365F84 00362EE4  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80365F88 00362EE8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80365F8C 00362EEC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80365F90 00362EF0  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80365F94 00362EF4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80365F98 00362EF8  98 1F 00 28 */	stb r0, 0x28(r31)
/* 80365F9C 00362EFC  4B FD 7B 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80365FA0:
/* 80365FA0 00362F00  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 80365FA4 00362F04  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80365FA8 00362F08  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 80365FAC 00362F0C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80365FB0 00362F10  BB 41 00 68 */	lmw r26, 0x68(r1)
/* 80365FB4 00362F14  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80365FB8 00362F18  7C 08 03 A6 */	mtlr r0
/* 80365FBC 00362F1C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80365FC0 00362F20  4E 80 00 20 */	blr

.global Stop__19CStreamAudioManagerFiRCQ24rstl6string
Stop__19CStreamAudioManagerFiRCQ24rstl6string:
/* 80365FC4 00362F24  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80365FC8 00362F28  7C 08 02 A6 */	mflr r0
/* 80365FCC 00362F2C  3C A0 80 54 */	lis r5, lbl_80540580@ha
/* 80365FD0 00362F30  90 01 00 54 */	stw r0, 0x54(r1)
/* 80365FD4 00362F34  38 A5 05 80 */	addi r5, r5, lbl_80540580@l
/* 80365FD8 00362F38  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80365FDC 00362F3C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80365FE0 00362F40  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80365FE4 00362F44  7C 9D 23 78 */	mr r29, r4
/* 80365FE8 00362F48  93 81 00 40 */	stw r28, 0x40(r1)
/* 80365FEC 00362F4C  7C 7C 1B 78 */	mr r28, r3
/* 80365FF0 00362F50  1C DC 00 2C */	mulli r6, r28, 0x2c
/* 80365FF4 00362F54  3C 60 80 54 */	lis r3, lbl_805405E4@ha
/* 80365FF8 00362F58  38 03 05 E4 */	addi r0, r3, lbl_805405E4@l
/* 80365FFC 00362F5C  7F C0 32 14 */	add r30, r0, r6
/* 80366000 00362F60  7F C3 F3 78 */	mr r3, r30
/* 80366004 00362F64  7F E5 32 14 */	add r31, r5, r6
/* 80366008 00362F68  4B FD 89 E5 */	bl "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8036600C 00362F6C  2C 03 00 00 */	cmpwi r3, 0
/* 80366010 00362F70  40 82 00 5C */	bne lbl_8036606C
/* 80366014 00362F74  38 61 00 08 */	addi r3, r1, 8
/* 80366018 00362F78  48 00 05 39 */	bl __ct__20SDSPStreamCacheEntryFv
/* 8036601C 00362F7C  7F C3 F3 78 */	mr r3, r30
/* 80366020 00362F80  38 81 00 08 */	addi r4, r1, 8
/* 80366024 00362F84  4B FD 7D 39 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80366028 00362F88  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8036602C 00362F8C  38 61 00 08 */	addi r3, r1, 8
/* 80366030 00362F90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80366034 00362F94  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80366038 00362F98  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8036603C 00362F9C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80366040 00362FA0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80366044 00362FA4  D0 3E 00 18 */	stfs f1, 0x18(r30)
/* 80366048 00362FA8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8036604C 00362FAC  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80366050 00362FB0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80366054 00362FB4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80366058 00362FB8  88 01 00 30 */	lbz r0, 0x30(r1)
/* 8036605C 00362FBC  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80366060 00362FC0  98 1E 00 28 */	stb r0, 0x28(r30)
/* 80366064 00362FC4  4B FD 7A 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80366068 00362FC8  48 00 00 64 */	b lbl_803660CC
lbl_8036606C:
/* 8036606C 00362FCC  7F E3 FB 78 */	mr r3, r31
/* 80366070 00362FD0  7F A4 EB 78 */	mr r4, r29
/* 80366074 00362FD4  4B FD 89 79 */	bl "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80366078 00362FD8  2C 03 00 00 */	cmpwi r3, 0
/* 8036607C 00362FDC  40 82 00 50 */	bne lbl_803660CC
/* 80366080 00362FE0  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80366084 00362FE4  2C 00 FF FF */	cmpwi r0, -1
/* 80366088 00362FE8  41 82 00 44 */	beq lbl_803660CC
/* 8036608C 00362FEC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80366090 00362FF0  2C 00 00 00 */	cmpwi r0, 0
/* 80366094 00362FF4  40 82 00 08 */	bne lbl_8036609C
/* 80366098 00362FF8  48 00 00 34 */	b lbl_803660CC
lbl_8036609C:
/* 8036609C 00362FFC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 803660A0 00363000  C0 02 CD D0 */	lfs f0, lbl_805AEAF0@sda21(r2)
/* 803660A4 00363004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803660A8 00363008  4C 40 13 82 */	cror 2, 0, 2
/* 803660AC 0036300C  40 82 00 10 */	bne lbl_803660BC
/* 803660B0 00363010  7F 83 E3 78 */	mr r3, r28
/* 803660B4 00363014  48 00 00 E1 */	bl StopStreaming__19CStreamAudioManagerFi
/* 803660B8 00363018  48 00 00 14 */	b lbl_803660CC
lbl_803660BC:
/* 803660BC 0036301C  2C 00 00 03 */	cmpwi r0, 3
/* 803660C0 00363020  41 82 00 0C */	beq lbl_803660CC
/* 803660C4 00363024  38 00 00 03 */	li r0, 3
/* 803660C8 00363028  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_803660CC:
/* 803660CC 0036302C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803660D0 00363030  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 803660D4 00363034  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 803660D8 00363038  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 803660DC 0036303C  83 81 00 40 */	lwz r28, 0x40(r1)
/* 803660E0 00363040  7C 08 03 A6 */	mtlr r0
/* 803660E4 00363044  38 21 00 50 */	addi r1, r1, 0x50
/* 803660E8 00363048  4E 80 00 20 */	blr

.global FadeBackIn__19CStreamAudioManagerFif
FadeBackIn__19CStreamAudioManagerFif:
/* 803660EC 0036304C  1C 83 00 2C */	mulli r4, r3, 0x2c
/* 803660F0 00363050  3C 60 80 54 */	lis r3, lbl_80540580@ha
/* 803660F4 00363054  38 03 05 80 */	addi r0, r3, lbl_80540580@l
/* 803660F8 00363058  7C 60 22 14 */	add r3, r0, r4
/* 803660FC 0036305C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80366100 00363060  2C 00 00 02 */	cmpwi r0, 2
/* 80366104 00363064  4D 82 00 20 */	beqlr
/* 80366108 00363068  2C 00 00 00 */	cmpwi r0, 0
/* 8036610C 0036306C  4D 82 00 20 */	beqlr
/* 80366110 00363070  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80366114 00363074  38 00 00 01 */	li r0, 1
/* 80366118 00363078  90 03 00 10 */	stw r0, 0x10(r3)
/* 8036611C 0036307C  4E 80 00 20 */	blr

.global TemporaryFadeOut__19CStreamAudioManagerFif
TemporaryFadeOut__19CStreamAudioManagerFif:
/* 80366120 00363080  1C 83 00 2C */	mulli r4, r3, 0x2c
/* 80366124 00363084  3C 60 80 54 */	lis r3, lbl_80540580@ha
/* 80366128 00363088  38 03 05 80 */	addi r0, r3, lbl_80540580@l
/* 8036612C 0036308C  7C 60 22 14 */	add r3, r0, r4
/* 80366130 00363090  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80366134 00363094  2C 00 00 03 */	cmpwi r0, 3
/* 80366138 00363098  4D 82 00 20 */	beqlr
/* 8036613C 0036309C  2C 00 00 00 */	cmpwi r0, 0
/* 80366140 003630A0  40 82 00 08 */	bne lbl_80366148

.global sub_80366144
sub_80366144:
/* 80366144 003630A4  4E 80 00 20 */	blr
lbl_80366148:
/* 80366148 003630A8  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8036614C 003630AC  38 00 00 04 */	li r0, 4
/* 80366150 003630B0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80366154 003630B4  4E 80 00 20 */	blr

.global UpdateDSPStreamers__19CStreamAudioManagerFf
UpdateDSPStreamers__19CStreamAudioManagerFf:
/* 80366158 003630B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036615C 003630BC  7C 08 02 A6 */	mflr r0
/* 80366160 003630C0  38 60 00 00 */	li r3, 0
/* 80366164 003630C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80366168 003630C8  DB E1 00 08 */	stfd f31, 8(r1)
/* 8036616C 003630CC  FF E0 08 90 */	fmr f31, f1
/* 80366170 003630D0  48 00 00 79 */	bl UpdateDSP__19CStreamAudioManagerFif
/* 80366174 003630D4  FC 20 F8 90 */	fmr f1, f31
/* 80366178 003630D8  38 60 00 01 */	li r3, 1
/* 8036617C 003630DC  48 00 00 6D */	bl UpdateDSP__19CStreamAudioManagerFif
/* 80366180 003630E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80366184 003630E4  CB E1 00 08 */	lfd f31, 8(r1)
/* 80366188 003630E8  7C 08 03 A6 */	mtlr r0
/* 8036618C 003630EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80366190 003630F0  4E 80 00 20 */	blr

.global StopStreaming__19CStreamAudioManagerFi
StopStreaming__19CStreamAudioManagerFi:
/* 80366194 003630F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80366198 003630F8  7C 08 02 A6 */	mflr r0
/* 8036619C 003630FC  1C 83 00 2C */	mulli r4, r3, 0x2c
/* 803661A0 00363100  3C 60 80 54 */	lis r3, lbl_80540580@ha
/* 803661A4 00363104  90 01 00 14 */	stw r0, 0x14(r1)
/* 803661A8 00363108  38 00 00 00 */	li r0, 0
/* 803661AC 0036310C  38 63 05 80 */	addi r3, r3, lbl_80540580@l
/* 803661B0 00363110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803661B4 00363114  7F E3 22 14 */	add r31, r3, r4
/* 803661B8 00363118  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803661BC 0036311C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 803661C0 00363120  4B FF DB D1 */	bl StopStreaming__17CDSPStreamManagerFi
/* 803661C4 00363124  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 803661C8 00363128  38 00 FF FF */	li r0, -1
/* 803661CC 0036312C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 803661D0 00363130  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803661D4 00363134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803661D8 00363138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803661DC 0036313C  7C 08 03 A6 */	mtlr r0
/* 803661E0 00363140  38 21 00 10 */	addi r1, r1, 0x10
/* 803661E4 00363144  4E 80 00 20 */	blr

.global UpdateDSP__19CStreamAudioManagerFif
UpdateDSP__19CStreamAudioManagerFif:
/* 803661E8 00363148  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803661EC 0036314C  7C 08 02 A6 */	mflr r0
/* 803661F0 00363150  90 01 00 74 */	stw r0, 0x74(r1)
/* 803661F4 00363154  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 803661F8 00363158  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 803661FC 0036315C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80366200 00363160  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80366204 00363164  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80366208 00363168  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8036620C 0036316C  7C 7E 1B 78 */	mr r30, r3
/* 80366210 00363170  3C 80 80 54 */	lis r4, lbl_80540580@ha
/* 80366214 00363174  1C BE 00 2C */	mulli r5, r30, 0x2c
/* 80366218 00363178  FF C0 08 90 */	fmr f30, f1
/* 8036621C 0036317C  38 04 05 80 */	addi r0, r4, lbl_80540580@l
/* 80366220 00363180  7F E0 2A 14 */	add r31, r0, r5
/* 80366224 00363184  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80366228 00363188  2C 00 00 00 */	cmpwi r0, 0
/* 8036622C 0036318C  40 82 00 90 */	bne lbl_803662BC
/* 80366230 00363190  3C 80 80 54 */	lis r4, lbl_805405E4@ha
/* 80366234 00363194  38 04 05 E4 */	addi r0, r4, lbl_805405E4@l
/* 80366238 00363198  7F E0 2A 14 */	add r31, r0, r5
/* 8036623C 0036319C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80366240 003631A0  2C 00 00 00 */	cmpwi r0, 0
/* 80366244 003631A4  41 82 01 D8 */	beq lbl_8036641C
/* 80366248 003631A8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8036624C 003631AC  7F E4 FB 78 */	mr r4, r31
/* 80366250 003631B0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80366254 003631B4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80366258 003631B8  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8036625C 003631BC  88 DF 00 28 */	lbz r6, 0x28(r31)
/* 80366260 003631C0  4B FF FB 21 */	bl Start__19CStreamAudioManagerFiRCQ24rstl6stringib
/* 80366264 003631C4  38 61 00 0C */	addi r3, r1, 0xc
/* 80366268 003631C8  48 00 02 E9 */	bl __ct__20SDSPStreamCacheEntryFv
/* 8036626C 003631CC  7F E3 FB 78 */	mr r3, r31
/* 80366270 003631D0  38 81 00 0C */	addi r4, r1, 0xc
/* 80366274 003631D4  4B FD 7A E9 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80366278 003631D8  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8036627C 003631DC  38 61 00 0C */	addi r3, r1, 0xc
/* 80366280 003631E0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80366284 003631E4  90 9F 00 10 */	stw r4, 0x10(r31)
/* 80366288 003631E8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8036628C 003631EC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80366290 003631F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80366294 003631F4  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80366298 003631F8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8036629C 003631FC  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803662A0 00363200  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 803662A4 00363204  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803662A8 00363208  88 01 00 34 */	lbz r0, 0x34(r1)
/* 803662AC 0036320C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 803662B0 00363210  98 1F 00 28 */	stb r0, 0x28(r31)
/* 803662B4 00363214  4B FD 78 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 803662B8 00363218  48 00 01 64 */	b lbl_8036641C
lbl_803662BC:
/* 803662BC 0036321C  41 82 00 30 */	beq lbl_803662EC
/* 803662C0 00363220  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 803662C4 00363224  4B FF D6 B9 */	bl GetStreamState__17CDSPStreamManagerFi
/* 803662C8 00363228  2C 03 00 01 */	cmpwi r3, 1
/* 803662CC 0036322C  40 82 00 20 */	bne lbl_803662EC
/* 803662D0 00363230  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 803662D4 00363234  4B FF D7 79 */	bl CanStop__17CDSPStreamManagerFi
/* 803662D8 00363238  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803662DC 0036323C  41 82 00 10 */	beq lbl_803662EC
/* 803662E0 00363240  7F C3 F3 78 */	mr r3, r30
/* 803662E4 00363244  4B FF FE B1 */	bl StopStreaming__19CStreamAudioManagerFi
/* 803662E8 00363248  48 00 01 34 */	b lbl_8036641C
lbl_803662EC:
/* 803662EC 0036324C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 803662F0 00363250  2C 00 00 01 */	cmpwi r0, 1
/* 803662F4 00363254  41 82 00 14 */	beq lbl_80366308
/* 803662F8 00363258  2C 00 00 03 */	cmpwi r0, 3
/* 803662FC 0036325C  41 82 00 0C */	beq lbl_80366308
/* 80366300 00363260  2C 00 00 04 */	cmpwi r0, 4
/* 80366304 00363264  40 82 00 14 */	bne lbl_80366318
lbl_80366308:
/* 80366308 00363268  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8036630C 0036326C  4B FF D8 09 */	bl IsStreamAvailable__17CDSPStreamManagerFi
/* 80366310 00363270  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80366314 00363274  40 82 00 2C */	bne lbl_80366340
lbl_80366318:
/* 80366318 00363278  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8036631C 0036327C  2C 00 00 02 */	cmpwi r0, 2
/* 80366320 00363280  40 82 00 FC */	bne lbl_8036641C
/* 80366324 00363284  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80366328 00363288  88 9F 00 28 */	lbz r4, 0x28(r31)
/* 8036632C 0036328C  48 00 01 19 */	bl GetTargetDSPVolume__19CStreamAudioManagerFcb
/* 80366330 00363290  7C 64 1B 78 */	mr r4, r3
/* 80366334 00363294  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80366338 00363298  4B FF D8 9D */	bl UpdateVolume__17CDSPStreamManagerFic
/* 8036633C 0036329C  48 00 00 E0 */	b lbl_8036641C
lbl_80366340:
/* 80366340 003632A0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80366344 003632A4  2C 00 00 01 */	cmpwi r0, 1
/* 80366348 003632A8  40 82 00 3C */	bne lbl_80366384
/* 8036634C 003632AC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80366350 003632B0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80366354 003632B4  EC 3E 00 24 */	fdivs f1, f30, f0
/* 80366358 003632B8  C0 02 CD D4 */	lfs f0, lbl_805AEAF4@sda21(r2)
/* 8036635C 003632BC  EC 22 08 2A */	fadds f1, f2, f1
/* 80366360 003632C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80366364 003632C4  4C 41 13 82 */	cror 2, 1, 2
/* 80366368 003632C8  40 82 00 14 */	bne lbl_8036637C
/* 8036636C 003632CC  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80366370 003632D0  38 00 00 02 */	li r0, 2
/* 80366374 003632D4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80366378 003632D8  48 00 00 5C */	b lbl_803663D4
lbl_8036637C:
/* 8036637C 003632DC  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 80366380 003632E0  48 00 00 54 */	b lbl_803663D4
lbl_80366384:
/* 80366384 003632E4  2C 00 00 03 */	cmpwi r0, 3
/* 80366388 003632E8  41 82 00 0C */	beq lbl_80366394
/* 8036638C 003632EC  2C 00 00 04 */	cmpwi r0, 4
/* 80366390 003632F0  40 82 00 44 */	bne lbl_803663D4
lbl_80366394:
/* 80366394 003632F4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80366398 003632F8  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8036639C 003632FC  EC 3E 00 24 */	fdivs f1, f30, f0
/* 803663A0 00363300  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 803663A4 00363304  EC 22 08 28 */	fsubs f1, f2, f1
/* 803663A8 00363308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803663AC 0036330C  4C 40 13 82 */	cror 2, 0, 2
/* 803663B0 00363310  40 82 00 20 */	bne lbl_803663D0
/* 803663B4 00363314  2C 00 00 04 */	cmpwi r0, 4
/* 803663B8 00363318  40 82 00 0C */	bne lbl_803663C4
/* 803663BC 0036331C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 803663C0 00363320  48 00 00 14 */	b lbl_803663D4
lbl_803663C4:
/* 803663C4 00363324  7F C3 F3 78 */	mr r3, r30
/* 803663C8 00363328  4B FF FD CD */	bl StopStreaming__19CStreamAudioManagerFi
/* 803663CC 0036332C  48 00 00 50 */	b lbl_8036641C
lbl_803663D0:
/* 803663D0 00363330  D0 3F 00 24 */	stfs f1, 0x24(r31)
lbl_803663D4:
/* 803663D4 00363334  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803663D8 00363338  3C 00 43 30 */	lis r0, 0x4330
/* 803663DC 0036333C  90 01 00 38 */	stw r0, 0x38(r1)
/* 803663E0 00363340  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 803663E4 00363344  C8 42 CD C0 */	lfd f2, lbl_805AEAE0@sda21(r2)
/* 803663E8 00363348  90 01 00 3C */	stw r0, 0x3c(r1)
/* 803663EC 0036334C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 803663F0 00363350  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 803663F4 00363354  EC 21 10 28 */	fsubs f1, f1, f2
/* 803663F8 00363358  EF E1 00 32 */	fmuls f31, f1, f0
/* 803663FC 0036335C  F3 E1 C0 08 */	psq_st f31, 8(r1), 1, qr4
/* 80366400 00363360  88 9F 00 28 */	lbz r4, 0x28(r31)
/* 80366404 00363364  88 61 00 08 */	lbz r3, 8(r1)
/* 80366408 00363368  7C 63 07 74 */	extsb r3, r3
/* 8036640C 0036336C  48 00 00 39 */	bl GetTargetDSPVolume__19CStreamAudioManagerFcb
/* 80366410 00363370  7C 64 1B 78 */	mr r4, r3
/* 80366414 00363374  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80366418 00363378  4B FF D7 BD */	bl UpdateVolume__17CDSPStreamManagerFic
lbl_8036641C:
/* 8036641C 0036337C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80366420 00363380  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80366424 00363384  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80366428 00363388  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8036642C 0036338C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80366430 00363390  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80366434 00363394  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80366438 00363398  7C 08 03 A6 */	mtlr r0
/* 8036643C 0036339C  38 21 00 70 */	addi r1, r1, 0x70
/* 80366440 003633A0  4E 80 00 20 */	blr

.global GetTargetDSPVolume__19CStreamAudioManagerFcb
GetTargetDSPVolume__19CStreamAudioManagerFcb:
/* 80366444 003633A4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80366448 003633A8  41 82 00 40 */	beq lbl_80366488
/* 8036644C 003633AC  88 0D 9E 80 */	lbz r0, lbl_805A8A40@sda21(r13)
/* 80366450 003633B0  28 00 00 00 */	cmplwi r0, 0
/* 80366454 003633B4  41 82 00 2C */	beq lbl_80366480
/* 80366458 003633B8  80 0D 9E 78 */	lwz r0, lbl_805A8A38@sda21(r13)
/* 8036645C 003633BC  3C 80 81 02 */	lis r4, 0x81020409@ha
/* 80366460 003633C0  38 84 04 09 */	addi r4, r4, 0x81020409@l
/* 80366464 003633C4  7C 03 01 D6 */	mullw r0, r3, r0
/* 80366468 003633C8  7C 64 00 96 */	mulhw r3, r4, r0
/* 8036646C 003633CC  7C 03 02 14 */	add r0, r3, r0
/* 80366470 003633D0  7C 00 36 70 */	srawi r0, r0, 6
/* 80366474 003633D4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80366478 003633D8  7C 60 1A 14 */	add r3, r0, r3
/* 8036647C 003633DC  4E 80 00 20 */	blr
lbl_80366480:
/* 80366480 003633E0  38 60 00 00 */	li r3, 0
/* 80366484 003633E4  4E 80 00 20 */	blr
lbl_80366488:
/* 80366488 003633E8  88 0D 9E 81 */	lbz r0, lbl_805A8A41@sda21(r13)
/* 8036648C 003633EC  28 00 00 00 */	cmplwi r0, 0
/* 80366490 003633F0  41 82 00 2C */	beq lbl_803664BC
/* 80366494 003633F4  80 0D 9E 7C */	lwz r0, lbl_805A8A3C@sda21(r13)
/* 80366498 003633F8  3C 80 81 02 */	lis r4, 0x81020409@ha
/* 8036649C 003633FC  38 84 04 09 */	addi r4, r4, 0x81020409@l
/* 803664A0 00363400  7C 03 01 D6 */	mullw r0, r3, r0
/* 803664A4 00363404  7C 64 00 96 */	mulhw r3, r4, r0
/* 803664A8 00363408  7C 03 02 14 */	add r0, r3, r0
/* 803664AC 0036340C  7C 00 36 70 */	srawi r0, r0, 6
/* 803664B0 00363410  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803664B4 00363414  7C 60 1A 14 */	add r3, r0, r3
/* 803664B8 00363418  4E 80 00 20 */	blr
lbl_803664BC:
/* 803664BC 0036341C  38 60 00 00 */	li r3, 0
/* 803664C0 00363420  4E 80 00 20 */	blr

.global __ct__20SDSPStreamCacheEntryFiRCQ24rstl6stringiffib
__ct__20SDSPStreamCacheEntryFiRCQ24rstl6stringiffib:
/* 803664C4 00363424  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803664C8 00363428  7C 08 02 A6 */	mflr r0
/* 803664CC 0036342C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803664D0 00363430  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803664D4 00363434  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 803664D8 00363438  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 803664DC 0036343C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 803664E0 00363440  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 803664E4 00363444  FF C0 08 90 */	fmr f30, f1
/* 803664E8 00363448  7C 9C 23 78 */	mr r28, r4
/* 803664EC 0036344C  FF E0 10 90 */	fmr f31, f2
/* 803664F0 00363450  7C 7B 1B 78 */	mr r27, r3
/* 803664F4 00363454  7C DD 33 78 */	mr r29, r6
/* 803664F8 00363458  7C FE 3B 78 */	mr r30, r7
/* 803664FC 0036345C  7D 1F 43 78 */	mr r31, r8
/* 80366500 00363460  7C A4 2B 78 */	mr r4, r5
/* 80366504 00363464  4B FD 7C 5D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80366508 00363468  93 9B 00 10 */	stw r28, 0x10(r27)
/* 8036650C 0036346C  7F 63 DB 78 */	mr r3, r27
/* 80366510 00363470  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80366514 00363474  93 BB 00 14 */	stw r29, 0x14(r27)
/* 80366518 00363478  D3 DB 00 18 */	stfs f30, 0x18(r27)
/* 8036651C 0036347C  D3 FB 00 1C */	stfs f31, 0x1c(r27)
/* 80366520 00363480  93 DB 00 20 */	stw r30, 0x20(r27)
/* 80366524 00363484  D0 1B 00 24 */	stfs f0, 0x24(r27)
/* 80366528 00363488  9B FB 00 28 */	stb r31, 0x28(r27)
/* 8036652C 0036348C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80366530 00363490  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80366534 00363494  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80366538 00363498  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8036653C 0036349C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80366540 003634A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80366544 003634A4  7C 08 03 A6 */	mtlr r0
/* 80366548 003634A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8036654C 003634AC  4E 80 00 20 */	blr

.global __ct__20SDSPStreamCacheEntryFv
__ct__20SDSPStreamCacheEntryFv:
/* 80366550 003634B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80366554 003634B4  7C 08 02 A6 */	mflr r0
/* 80366558 003634B8  3C 80 80 3E */	lis r4, lbl_803D8410@ha
/* 8036655C 003634BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80366560 003634C0  38 84 84 10 */	addi r4, r4, lbl_803D8410@l
/* 80366564 003634C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80366568 003634C8  7C 7F 1B 78 */	mr r31, r3
/* 8036656C 003634CC  38 61 00 08 */	addi r3, r1, 8
/* 80366570 003634D0  4B C9 E7 49 */	bl string_l__4rstlFPCc
/* 80366574 003634D4  7F E3 FB 78 */	mr r3, r31
/* 80366578 003634D8  38 81 00 08 */	addi r4, r1, 8
/* 8036657C 003634DC  4B FD 7B E5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80366580 003634E0  38 61 00 08 */	addi r3, r1, 8
/* 80366584 003634E4  4B FD 75 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80366588 003634E8  38 A0 00 00 */	li r5, 0
/* 8036658C 003634EC  C0 02 CD B0 */	lfs f0, lbl_805AEAD0@sda21(r2)
/* 80366590 003634F0  90 BF 00 10 */	stw r5, 0x10(r31)
/* 80366594 003634F4  38 80 FF FF */	li r4, -1
/* 80366598 003634F8  38 00 00 01 */	li r0, 1
/* 8036659C 003634FC  7F E3 FB 78 */	mr r3, r31
/* 803665A0 00363500  90 BF 00 14 */	stw r5, 0x14(r31)
/* 803665A4 00363504  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 803665A8 00363508  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 803665AC 0036350C  90 9F 00 20 */	stw r4, 0x20(r31)
/* 803665B0 00363510  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 803665B4 00363514  98 1F 00 28 */	stb r0, 0x28(r31)
/* 803665B8 00363518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803665BC 0036351C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803665C0 00363520  7C 08 03 A6 */	mtlr r0
/* 803665C4 00363524  38 21 00 20 */	addi r1, r1, 0x20
/* 803665C8 00363528  4E 80 00 20 */	blr

.global __sinit_CStreamAudioManager_cpp
__sinit_CStreamAudioManager_cpp:
/* 803665CC 0036352C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803665D0 00363530  7C 08 02 A6 */	mflr r0
/* 803665D4 00363534  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 803665D8 00363538  38 AD A9 18 */	addi r5, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 803665DC 0036353C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803665E0 00363540  3C 60 80 5A */	lis r3, lbl_805A6B60@ha
/* 803665E4 00363544  3C C0 80 54 */	lis r6, lbl_80540550@ha
/* 803665E8 00363548  38 00 00 00 */	li r0, 0
/* 803665EC 0036354C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803665F0 00363550  3B E6 05 50 */	addi r31, r6, lbl_80540550@l
/* 803665F4 00363554  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 803665F8 00363558  94 A3 6B 60 */	stwu r5, lbl_805A6B60@l(r3)
/* 803665FC 0036355C  38 BF 00 00 */	addi r5, r31, 0
/* 80366600 00363560  90 03 00 04 */	stw r0, 4(r3)
/* 80366604 00363564  90 03 00 08 */	stw r0, 8(r3)
/* 80366608 00363568  48 02 30 85 */	bl __register_global_object
/* 8036660C 0036356C  38 AD A9 18 */	addi r5, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 80366610 00363570  3C 60 80 5A */	lis r3, lbl_805A6B90@ha
/* 80366614 00363574  94 A3 6B 90 */	stwu r5, lbl_805A6B90@l(r3)
/* 80366618 00363578  38 00 00 00 */	li r0, 0
/* 8036661C 0036357C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80366620 00363580  38 BF 00 0C */	addi r5, r31, 0xc
/* 80366624 00363584  90 03 00 04 */	stw r0, 4(r3)
/* 80366628 00363588  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8036662C 0036358C  90 03 00 08 */	stw r0, 8(r3)
/* 80366630 00363590  48 02 30 5D */	bl __register_global_object
/* 80366634 00363594  38 AD A9 18 */	addi r5, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 80366638 00363598  3C 60 80 5A */	lis r3, lbl_805A6BA0@ha
/* 8036663C 0036359C  94 A3 6B A0 */	stwu r5, lbl_805A6BA0@l(r3)
/* 80366640 003635A0  38 00 00 00 */	li r0, 0
/* 80366644 003635A4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80366648 003635A8  38 BF 00 18 */	addi r5, r31, 0x18
/* 8036664C 003635AC  90 03 00 04 */	stw r0, 4(r3)
/* 80366650 003635B0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80366654 003635B4  90 03 00 08 */	stw r0, 8(r3)
/* 80366658 003635B8  48 02 30 35 */	bl __register_global_object
/* 8036665C 003635BC  3C 60 80 36 */	lis r3, __ct__20SDSPStreamCacheEntryFv@ha
/* 80366660 003635C0  3C A0 80 36 */	lis r5, sub_803656f8@ha
/* 80366664 003635C4  38 83 65 50 */	addi r4, r3, __ct__20SDSPStreamCacheEntryFv@l
/* 80366668 003635C8  38 C0 00 2C */	li r6, 0x2c
/* 8036666C 003635CC  38 7F 00 30 */	addi r3, r31, 0x30
/* 80366670 003635D0  38 A5 56 F8 */	addi r5, r5, sub_803656f8@l
/* 80366674 003635D4  38 E0 00 02 */	li r7, 2
/* 80366678 003635D8  48 02 30 D5 */	bl __construct_array
/* 8036667C 003635DC  3C 60 80 36 */	lis r3, sub_80366710@ha
/* 80366680 003635E0  38 BF 00 24 */	addi r5, r31, 0x24
/* 80366684 003635E4  38 83 67 10 */	addi r4, r3, sub_80366710@l
/* 80366688 003635E8  38 60 00 00 */	li r3, 0
/* 8036668C 003635EC  48 02 30 01 */	bl __register_global_object
/* 80366690 003635F0  3C 60 80 36 */	lis r3, __ct__20SDSPStreamCacheEntryFv@ha
/* 80366694 003635F4  3C A0 80 36 */	lis r5, sub_803656f8@ha
/* 80366698 003635F8  38 83 65 50 */	addi r4, r3, __ct__20SDSPStreamCacheEntryFv@l
/* 8036669C 003635FC  38 C0 00 2C */	li r6, 0x2c
/* 803666A0 00363600  38 7F 00 94 */	addi r3, r31, 0x94
/* 803666A4 00363604  38 A5 56 F8 */	addi r5, r5, sub_803656f8@l
/* 803666A8 00363608  38 E0 00 02 */	li r7, 2
/* 803666AC 0036360C  48 02 30 A1 */	bl __construct_array
/* 803666B0 00363610  3C 60 80 36 */	lis r3, sub_803666d8@ha
/* 803666B4 00363614  38 BF 00 88 */	addi r5, r31, 0x88
/* 803666B8 00363618  38 83 66 D8 */	addi r4, r3, sub_803666d8@l
/* 803666BC 0036361C  38 60 00 00 */	li r3, 0
/* 803666C0 00363620  48 02 2F CD */	bl __register_global_object
/* 803666C4 00363624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803666C8 00363628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803666CC 0036362C  7C 08 03 A6 */	mtlr r0
/* 803666D0 00363630  38 21 00 10 */	addi r1, r1, 0x10
/* 803666D4 00363634  4E 80 00 20 */	blr

.global sub_803666d8
sub_803666d8:
/* 803666D8 00363638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803666DC 0036363C  7C 08 02 A6 */	mflr r0
/* 803666E0 00363640  3C 60 80 54 */	lis r3, lbl_805405E4@ha
/* 803666E4 00363644  3C 80 80 36 */	lis r4, sub_803656f8@ha
/* 803666E8 00363648  90 01 00 14 */	stw r0, 0x14(r1)
/* 803666EC 0036364C  38 63 05 E4 */	addi r3, r3, lbl_805405E4@l
/* 803666F0 00363650  38 A0 00 2C */	li r5, 0x2c
/* 803666F4 00363654  38 84 56 F8 */	addi r4, r4, sub_803656f8@l
/* 803666F8 00363658  38 C0 00 02 */	li r6, 2
/* 803666FC 0036365C  48 02 2F D9 */	bl __destroy_arr
/* 80366700 00363660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80366704 00363664  7C 08 03 A6 */	mtlr r0
/* 80366708 00363668  38 21 00 10 */	addi r1, r1, 0x10
/* 8036670C 0036366C  4E 80 00 20 */	blr

.global sub_80366710
sub_80366710:
/* 80366710 00363670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80366714 00363674  7C 08 02 A6 */	mflr r0
/* 80366718 00363678  3C 60 80 54 */	lis r3, lbl_80540580@ha
/* 8036671C 0036367C  3C 80 80 36 */	lis r4, sub_803656f8@ha
/* 80366720 00363680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80366724 00363684  38 63 05 80 */	addi r3, r3, lbl_80540580@l
/* 80366728 00363688  38 A0 00 2C */	li r5, 0x2c
/* 8036672C 0036368C  38 84 56 F8 */	addi r4, r4, sub_803656f8@l
/* 80366730 00363690  38 C0 00 02 */	li r6, 2
/* 80366734 00363694  48 02 2F A1 */	bl __destroy_arr
/* 80366738 00363698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036673C 0036369C  7C 08 03 A6 */	mtlr r0
/* 80366740 003636A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80366744 003636A4  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AEAD0
lbl_805AEAD0:
	# ROM: 0x3FB370
	.4byte 0

.global lbl_805AEAD4
lbl_805AEAD4:
	# ROM: 0x3FB374
	.float 2.0

.global lbl_805AEAD8
lbl_805AEAD8:
	# ROM: 0x3FB378
	.4byte 0x42FE0000

.global lbl_805AEADC
lbl_805AEADC:
	# ROM: 0x3FB37C
	.float -1.0

.global lbl_805AEAE0
lbl_805AEAE0:
	# ROM: 0x3FB380
	.double 4.503601774854144E15

.global lbl_805AEAE8
lbl_805AEAE8:
	# ROM: 0x3FB388
	.4byte 0x43300000
	.4byte 0

.global lbl_805AEAF0
lbl_805AEAF0:
	# ROM: 0x3FB390
	.float 1.1920929E-7

.global lbl_805AEAF4
lbl_805AEAF4:
	# ROM: 0x3FB394
	.float 1.0


.section .rodata
.global lbl_803D8410
lbl_803D8410:
	# ROM: 0x3D5410
	.4byte 0
	.4byte 0


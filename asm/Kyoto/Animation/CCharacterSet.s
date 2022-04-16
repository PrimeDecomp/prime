.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __ct__13CCharacterSetFR12CInputStream
__ct__13CCharacterSetFR12CInputStream:
/* 802DF4D4 002DC434  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802DF4D8 002DC438  7C 08 02 A6 */	mflr r0
/* 802DF4DC 002DC43C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802DF4E0 002DC440  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 802DF4E4 002DC444  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 802DF4E8 002DC448  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 802DF4EC 002DC44C  7C 9D 23 78 */	mr r29, r4
/* 802DF4F0 002DC450  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 802DF4F4 002DC454  7C 7C 1B 78 */	mr r28, r3
/* 802DF4F8 002DC458  7F A3 EB 78 */	mr r3, r29
/* 802DF4FC 002DC45C  48 05 F7 B5 */	bl ReadShort__12CInputStreamFv
/* 802DF500 002DC460  B0 7C 00 00 */	sth r3, 0(r28)
/* 802DF504 002DC464  38 00 00 00 */	li r0, 0
/* 802DF508 002DC468  7F A3 EB 78 */	mr r3, r29
/* 802DF50C 002DC46C  90 1C 00 08 */	stw r0, 8(r28)
/* 802DF510 002DC470  90 1C 00 0C */	stw r0, 0xc(r28)
/* 802DF514 002DC474  90 1C 00 10 */	stw r0, 0x10(r28)
/* 802DF518 002DC478  48 05 F7 6D */	bl ReadLong__12CInputStreamFv
/* 802DF51C 002DC47C  7C 7F 1B 78 */	mr r31, r3
/* 802DF520 002DC480  38 7C 00 04 */	addi r3, r28, 4
/* 802DF524 002DC484  7F E4 FB 78 */	mr r4, r31
/* 802DF528 002DC488  48 00 02 3D */	bl sub_802df764
/* 802DF52C 002DC48C  3B C0 00 00 */	li r30, 0
/* 802DF530 002DC490  48 00 00 2C */	b lbl_802DF55C
lbl_802DF534:
/* 802DF534 002DC494  7F A4 EB 78 */	mr r4, r29
/* 802DF538 002DC498  38 61 00 08 */	addi r3, r1, 8
/* 802DF53C 002DC49C  48 00 01 31 */	bl "__ct__Q24rstl66map<i,14CCharacterInfo,Q24rstl7less<i>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl7less<i>RCQ24rstl17rmemory_allocator"
/* 802DF540 002DC4A0  38 7C 00 04 */	addi r3, r28, 4
/* 802DF544 002DC4A4  38 81 00 08 */	addi r4, r1, 8
/* 802DF548 002DC4A8  48 00 00 41 */	bl sub_802df588
/* 802DF54C 002DC4AC  38 61 00 08 */	addi r3, r1, 8
/* 802DF550 002DC4B0  38 80 FF FF */	li r4, -1
/* 802DF554 002DC4B4  4B FF 8E B9 */	bl __dt__13CAnimationSetFv
/* 802DF558 002DC4B8  3B DE 00 01 */	addi r30, r30, 1
lbl_802DF55C:
/* 802DF55C 002DC4BC  7C 1E F8 00 */	cmpw r30, r31
/* 802DF560 002DC4C0  41 80 FF D4 */	blt lbl_802DF534
/* 802DF564 002DC4C4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802DF568 002DC4C8  7F 83 E3 78 */	mr r3, r28
/* 802DF56C 002DC4CC  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 802DF570 002DC4D0  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 802DF574 002DC4D4  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 802DF578 002DC4D8  83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 802DF57C 002DC4DC  7C 08 03 A6 */	mtlr r0
/* 802DF580 002DC4E0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802DF584 002DC4E4  4E 80 00 20 */	blr 

.global sub_802df588
sub_802df588:
/* 802DF588 002DC4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF58C 002DC4EC  7C 08 02 A6 */	mflr r0
/* 802DF590 002DC4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF594 002DC4F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF598 002DC4F8  7C 9F 23 78 */	mr r31, r4
/* 802DF59C 002DC4FC  93 C1 00 08 */	stw r30, 8(r1)
/* 802DF5A0 002DC500  7C 7E 1B 78 */	mr r30, r3
/* 802DF5A4 002DC504  80 03 00 04 */	lwz r0, 4(r3)
/* 802DF5A8 002DC508  80 A3 00 08 */	lwz r5, 8(r3)
/* 802DF5AC 002DC50C  7C 00 28 00 */	cmpw r0, r5
/* 802DF5B0 002DC510  41 80 00 18 */	blt lbl_802DF5C8
/* 802DF5B4 002DC514  2C 05 00 00 */	cmpwi r5, 0
/* 802DF5B8 002DC518  38 80 00 04 */	li r4, 4
/* 802DF5BC 002DC51C  41 82 00 08 */	beq lbl_802DF5C4
/* 802DF5C0 002DC520  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DF5C4:
/* 802DF5C4 002DC524  48 00 01 A1 */	bl sub_802df764
lbl_802DF5C8:
/* 802DF5C8 002DC528  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DF5CC 002DC52C  7F E4 FB 78 */	mr r4, r31
/* 802DF5D0 002DC530  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802DF5D4 002DC534  1C 00 00 C4 */	mulli r0, r0, 0xc4
/* 802DF5D8 002DC538  7C 63 02 14 */	add r3, r3, r0
/* 802DF5DC 002DC53C  48 00 00 29 */	bl "__ct__Q34rstl150red_black_tree<i,Q24rstl24pair<i,14CCharacterInfo>,0,Q24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>,Q24rstl7less<i>,Q24rstl17rmemory_allocator>6headerFv"
/* 802DF5E0 002DC540  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DF5E4 002DC544  38 03 00 01 */	addi r0, r3, 1
/* 802DF5E8 002DC548  90 1E 00 04 */	stw r0, 4(r30)
/* 802DF5EC 002DC54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF5F0 002DC550  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DF5F4 002DC554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF5F8 002DC558  7C 08 03 A6 */	mtlr r0
/* 802DF5FC 002DC55C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF600 002DC560  4E 80 00 20 */	blr 

.global "__ct__Q34rstl150red_black_tree<i,Q24rstl24pair<i,14CCharacterInfo>,0,Q24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>,Q24rstl7less<i>,Q24rstl17rmemory_allocator>6headerFv"
"__ct__Q34rstl150red_black_tree<i,Q24rstl24pair<i,14CCharacterInfo>,0,Q24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>,Q24rstl7less<i>,Q24rstl17rmemory_allocator>6headerFv":
/* 802DF604 002DC564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF608 002DC568  7C 08 02 A6 */	mflr r0
/* 802DF60C 002DC56C  28 03 00 00 */	cmplwi r3, 0
/* 802DF610 002DC570  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF614 002DC574  41 82 00 08 */	beq lbl_802DF61C
/* 802DF618 002DC578  48 00 00 15 */	bl "Get<Q24rstl24pair<i,14CCharacterInfo>>__12CInputStreamFRC40TType<Q24rstl24pair<i,14CCharacterInfo>>"
lbl_802DF61C:
/* 802DF61C 002DC57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF620 002DC580  7C 08 03 A6 */	mtlr r0
/* 802DF624 002DC584  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF628 002DC588  4E 80 00 20 */	blr 

.global "Get<Q24rstl24pair<i,14CCharacterInfo>>__12CInputStreamFRC40TType<Q24rstl24pair<i,14CCharacterInfo>>"
"Get<Q24rstl24pair<i,14CCharacterInfo>>__12CInputStreamFRC40TType<Q24rstl24pair<i,14CCharacterInfo>>":
/* 802DF62C 002DC58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF630 002DC590  7C 08 02 A6 */	mflr r0
/* 802DF634 002DC594  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF638 002DC598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF63C 002DC59C  7C 7F 1B 78 */	mr r31, r3
/* 802DF640 002DC5A0  38 7F 00 04 */	addi r3, r31, 4
/* 802DF644 002DC5A4  80 04 00 00 */	lwz r0, 0(r4)
/* 802DF648 002DC5A8  38 84 00 04 */	addi r4, r4, 4
/* 802DF64C 002DC5AC  90 1F 00 00 */	stw r0, 0(r31)
/* 802DF650 002DC5B0  4B D5 0E 81 */	bl __ct__14CCharacterInfoFRC14CCharacterInfo
/* 802DF654 002DC5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF658 002DC5B8  7F E3 FB 78 */	mr r3, r31
/* 802DF65C 002DC5BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF660 002DC5C0  7C 08 03 A6 */	mtlr r0
/* 802DF664 002DC5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF668 002DC5C8  4E 80 00 20 */	blr 

.global "__ct__Q24rstl66map<i,14CCharacterInfo,Q24rstl7less<i>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl7less<i>RCQ24rstl17rmemory_allocator"
"__ct__Q24rstl66map<i,14CCharacterInfo,Q24rstl7less<i>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl7less<i>RCQ24rstl17rmemory_allocator":
/* 802DF66C 002DC5CC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802DF670 002DC5D0  7C 08 02 A6 */	mflr r0
/* 802DF674 002DC5D4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802DF678 002DC5D8  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 802DF67C 002DC5DC  7C 9F 23 78 */	mr r31, r4
/* 802DF680 002DC5E0  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 802DF684 002DC5E4  7C 7E 1B 78 */	mr r30, r3
/* 802DF688 002DC5E8  7F E3 FB 78 */	mr r3, r31
/* 802DF68C 002DC5EC  48 05 F5 F9 */	bl ReadLong__12CInputStreamFv
/* 802DF690 002DC5F0  90 7E 00 00 */	stw r3, 0(r30)
/* 802DF694 002DC5F4  7F E4 FB 78 */	mr r4, r31
/* 802DF698 002DC5F8  38 61 00 0C */	addi r3, r1, 0xc
/* 802DF69C 002DC5FC  38 A1 00 08 */	addi r5, r1, 8
/* 802DF6A0 002DC600  88 0D A6 F0 */	lbz r0, lbl_805A92B0@sda21(r13)
/* 802DF6A4 002DC604  98 01 00 08 */	stb r0, 8(r1)
/* 802DF6A8 002DC608  48 00 00 39 */	bl "Get<14CCharacterInfo>__12CInputStreamFRC23TType<14CCharacterInfo>"
/* 802DF6AC 002DC60C  38 7E 00 04 */	addi r3, r30, 4
/* 802DF6B0 002DC610  38 81 00 0C */	addi r4, r1, 0xc
/* 802DF6B4 002DC614  4B D5 0E 1D */	bl __ct__14CCharacterInfoFRC14CCharacterInfo
/* 802DF6B8 002DC618  38 61 00 0C */	addi r3, r1, 0xc
/* 802DF6BC 002DC61C  38 80 FF FF */	li r4, -1
/* 802DF6C0 002DC620  4B D4 F8 05 */	bl __dt__14CCharacterInfoFv
/* 802DF6C4 002DC624  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802DF6C8 002DC628  7F C3 F3 78 */	mr r3, r30
/* 802DF6CC 002DC62C  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 802DF6D0 002DC630  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 802DF6D4 002DC634  7C 08 03 A6 */	mtlr r0
/* 802DF6D8 002DC638  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802DF6DC 002DC63C  4E 80 00 20 */	blr 

.global "Get<14CCharacterInfo>__12CInputStreamFRC23TType<14CCharacterInfo>"
"Get<14CCharacterInfo>__12CInputStreamFRC23TType<14CCharacterInfo>":
/* 802DF6E0 002DC640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DF6E4 002DC644  7C 08 02 A6 */	mflr r0
/* 802DF6E8 002DC648  7C 85 23 78 */	mr r5, r4
/* 802DF6EC 002DC64C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DF6F0 002DC650  38 81 00 08 */	addi r4, r1, 8
/* 802DF6F4 002DC654  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DF6F8 002DC658  7C 7F 1B 78 */	mr r31, r3
/* 802DF6FC 002DC65C  88 0D A6 F4 */	lbz r0, lbl_805A92B4@sda21(r13)
/* 802DF700 002DC660  98 01 00 08 */	stb r0, 8(r1)
/* 802DF704 002DC664  48 00 00 19 */	bl "cinput_stream_helper<14CCharacterInfo>__FRC23TType<14CCharacterInfo>R12CInputStream"
/* 802DF708 002DC668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DF70C 002DC66C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DF710 002DC670  7C 08 03 A6 */	mtlr r0
/* 802DF714 002DC674  38 21 00 20 */	addi r1, r1, 0x20
/* 802DF718 002DC678  4E 80 00 20 */	blr 

.global "cinput_stream_helper<14CCharacterInfo>__FRC23TType<14CCharacterInfo>R12CInputStream"
"cinput_stream_helper<14CCharacterInfo>__FRC23TType<14CCharacterInfo>R12CInputStream":
/* 802DF71C 002DC67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF720 002DC680  7C 08 02 A6 */	mflr r0
/* 802DF724 002DC684  7C A4 2B 78 */	mr r4, r5
/* 802DF728 002DC688  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF72C 002DC68C  4B FF E2 85 */	bl __ct__14CCharacterInfoFR12CInputStream
/* 802DF730 002DC690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF734 002DC694  7C 08 03 A6 */	mtlr r0
/* 802DF738 002DC698  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF73C 002DC69C  4E 80 00 20 */	blr 

.global sub_802df740
sub_802df740:
/* 802DF740 002DC6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF744 002DC6A4  7C 08 02 A6 */	mflr r0
/* 802DF748 002DC6A8  38 80 FF FF */	li r4, -1
/* 802DF74C 002DC6AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF750 002DC6B0  4B FF 8C BD */	bl __dt__13CAnimationSetFv
/* 802DF754 002DC6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF758 002DC6B8  7C 08 03 A6 */	mtlr r0
/* 802DF75C 002DC6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF760 002DC6C0  4E 80 00 20 */	blr 

.global sub_802df764
sub_802df764:
/* 802DF764 002DC6C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DF768 002DC6C8  7C 08 02 A6 */	mflr r0
/* 802DF76C 002DC6CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DF770 002DC6D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802DF774 002DC6D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802DF778 002DC6D8  7C 9E 23 78 */	mr r30, r4
/* 802DF77C 002DC6DC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802DF780 002DC6E0  7C 7D 1B 78 */	mr r29, r3
/* 802DF784 002DC6E4  80 03 00 08 */	lwz r0, 8(r3)
/* 802DF788 002DC6E8  7C 1E 00 00 */	cmpw r30, r0
/* 802DF78C 002DC6EC  40 81 00 8C */	ble lbl_802DF818
/* 802DF790 002DC6F0  1C 7E 00 C4 */	mulli r3, r30, 0xc4
/* 802DF794 002DC6F4  2C 03 00 00 */	cmpwi r3, 0
/* 802DF798 002DC6F8  40 82 00 0C */	bne lbl_802DF7A4
/* 802DF79C 002DC6FC  3B E0 00 00 */	li r31, 0
/* 802DF7A0 002DC700  48 00 00 18 */	b lbl_802DF7B8
lbl_802DF7A4:
/* 802DF7A4 002DC704  3C 80 80 3D */	lis r4, lbl_803D6D50@ha
/* 802DF7A8 002DC708  38 A0 00 00 */	li r5, 0
/* 802DF7AC 002DC70C  38 84 6D 50 */	addi r4, r4, lbl_803D6D50@l
/* 802DF7B0 002DC710  48 03 60 69 */	bl __nwa__FUlPCcPCc
/* 802DF7B4 002DC714  7C 7F 1B 78 */	mr r31, r3
lbl_802DF7B8:
/* 802DF7B8 002DC718  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DF7BC 002DC71C  7F E5 FB 78 */	mr r5, r31
/* 802DF7C0 002DC720  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 802DF7C4 002DC724  38 61 00 14 */	addi r3, r1, 0x14
/* 802DF7C8 002DC728  1C 00 00 C4 */	mulli r0, r0, 0xc4
/* 802DF7CC 002DC72C  38 81 00 0C */	addi r4, r1, 0xc
/* 802DF7D0 002DC730  7C C6 02 14 */	add r6, r6, r0
/* 802DF7D4 002DC734  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802DF7D8 002DC738  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DF7DC 002DC73C  90 C1 00 08 */	stw r6, 8(r1)
/* 802DF7E0 002DC740  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DF7E4 002DC744  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF7E8 002DC748  48 00 00 99 */	bl "__ct__Q24rstl150red_black_tree<i,Q24rstl24pair<i,14CCharacterInfo>,0,Q24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>,Q24rstl7less<i>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>RCQ24rstl7less<i>RCQ24rstl17rmemory_allocator"
/* 802DF7EC 002DC74C  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DF7F0 002DC750  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802DF7F4 002DC754  1C 00 00 C4 */	mulli r0, r0, 0xc4
/* 802DF7F8 002DC758  7C 83 02 14 */	add r4, r3, r0
/* 802DF7FC 002DC75C  48 00 00 39 */	bl sub_802df834
/* 802DF800 002DC760  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802DF804 002DC764  28 03 00 00 */	cmplwi r3, 0
/* 802DF808 002DC768  41 82 00 08 */	beq lbl_802DF810
/* 802DF80C 002DC76C  48 03 61 25 */	bl Free__7CMemoryFPCv
lbl_802DF810:
/* 802DF810 002DC770  93 FD 00 0C */	stw r31, 0xc(r29)
/* 802DF814 002DC774  93 DD 00 08 */	stw r30, 8(r29)
lbl_802DF818:
/* 802DF818 002DC778  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DF81C 002DC77C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802DF820 002DC780  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802DF824 002DC784  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802DF828 002DC788  7C 08 03 A6 */	mtlr r0
/* 802DF82C 002DC78C  38 21 00 30 */	addi r1, r1, 0x30
/* 802DF830 002DC790  4E 80 00 20 */	blr 

.global sub_802df834
sub_802df834:
/* 802DF834 002DC794  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF838 002DC798  7C 08 02 A6 */	mflr r0
/* 802DF83C 002DC79C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF840 002DC7A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF844 002DC7A4  7C 7F 1B 78 */	mr r31, r3
/* 802DF848 002DC7A8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DF84C 002DC7AC  7C 9E 23 78 */	mr r30, r4
/* 802DF850 002DC7B0  48 00 00 10 */	b lbl_802DF860
lbl_802DF854:
/* 802DF854 002DC7B4  7F E3 FB 78 */	mr r3, r31
/* 802DF858 002DC7B8  4B FF FE E9 */	bl sub_802df740
/* 802DF85C 002DC7BC  3B FF 00 C4 */	addi r31, r31, 0xc4
lbl_802DF860:
/* 802DF860 002DC7C0  7C 1F F0 40 */	cmplw r31, r30
/* 802DF864 002DC7C4  40 82 FF F0 */	bne lbl_802DF854
/* 802DF868 002DC7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF86C 002DC7CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF870 002DC7D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DF874 002DC7D4  7C 08 03 A6 */	mtlr r0
/* 802DF878 002DC7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF87C 002DC7DC  4E 80 00 20 */	blr 

.global "__ct__Q24rstl150red_black_tree<i,Q24rstl24pair<i,14CCharacterInfo>,0,Q24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>,Q24rstl7less<i>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>RCQ24rstl7less<i>RCQ24rstl17rmemory_allocator"
"__ct__Q24rstl150red_black_tree<i,Q24rstl24pair<i,14CCharacterInfo>,0,Q24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>,Q24rstl7less<i>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>RCQ24rstl7less<i>RCQ24rstl17rmemory_allocator":
/* 802DF880 002DC7E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DF884 002DC7E4  7C 08 02 A6 */	mflr r0
/* 802DF888 002DC7E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DF88C 002DC7EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DF890 002DC7F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DF894 002DC7F4  7C BE 2B 78 */	mr r30, r5
/* 802DF898 002DC7F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DF89C 002DC7FC  7C 9D 23 78 */	mr r29, r4
/* 802DF8A0 002DC800  83 E3 00 00 */	lwz r31, 0(r3)
/* 802DF8A4 002DC804  48 00 00 18 */	b lbl_802DF8BC
lbl_802DF8A8:
/* 802DF8A8 002DC808  7F C3 F3 78 */	mr r3, r30
/* 802DF8AC 002DC80C  7F E4 FB 78 */	mr r4, r31
/* 802DF8B0 002DC810  4B FF FD 55 */	bl "__ct__Q34rstl150red_black_tree<i,Q24rstl24pair<i,14CCharacterInfo>,0,Q24rstl44select1st<Q24rstl24pair<i,14CCharacterInfo>>,Q24rstl7less<i>,Q24rstl17rmemory_allocator>6headerFv"
/* 802DF8B4 002DC814  3B DE 00 C4 */	addi r30, r30, 0xc4
/* 802DF8B8 002DC818  3B FF 00 C4 */	addi r31, r31, 0xc4
lbl_802DF8BC:
/* 802DF8BC 002DC81C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802DF8C0 002DC820  7C 1F 00 40 */	cmplw r31, r0
/* 802DF8C4 002DC824  40 82 FF E4 */	bne lbl_802DF8A8
/* 802DF8C8 002DC828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DF8CC 002DC82C  7F C3 F3 78 */	mr r3, r30
/* 802DF8D0 002DC830  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DF8D4 002DC834  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DF8D8 002DC838  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DF8DC 002DC83C  7C 08 03 A6 */	mtlr r0
/* 802DF8E0 002DC840  38 21 00 20 */	addi r1, r1, 0x20
/* 802DF8E4 002DC844  4E 80 00 20 */	blr

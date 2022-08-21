.include "macros.inc"

.section .data, "wa"

.global DSPInitCode
DSPInitCode:
	# ROM: 0x3EDFA8
	.4byte 0x029F0010
	.4byte 0x029F0033
	.4byte 0x029F0034
	.4byte 0x029F0035
	.4byte 0x029F0036
	.4byte 0x029F0037
	.4byte 0x029F0038
	.4byte 0x029F0039
	.4byte 0x12061203
	.4byte 0x12041205
	.4byte 0x00808000
	.4byte 0x0088FFFF
	.4byte 0x00841000
	.4byte 0x0064001D
	.4byte 0x02180000
	.4byte 0x81001C1E
	.4byte 0x00441B1E
	.4byte 0x00840800
	.4byte 0x00640027
	.4byte 0x191E0000
	.4byte 0x00DEFFFC
	.4byte 0x02A08000
	.4byte 0x029C0028
	.4byte 0x16FC0054
	.4byte 0x16FD4348
	.4byte 0x002102FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0
	.4byte 0
	.4byte 0

.section .text, "ax"

.global __OSInitAudioSystem
__OSInitAudioSystem:
/* 8037E7DC 0037B73C  7C 08 02 A6 */	mflr r0
/* 8037E7E0 0037B740  90 01 00 04 */	stw r0, 4(r1)
/* 8037E7E4 0037B744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037E7E8 0037B748  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8037E7EC 0037B74C  4B FF FF A5 */	bl OSGetArenaHi
/* 8037E7F0 0037B750  3C 80 81 00 */	lis r4, 0x8100
/* 8037E7F4 0037B754  38 A0 00 80 */	li r5, 0x80
/* 8037E7F8 0037B758  38 63 FF 80 */	addi r3, r3, -128
/* 8037E7FC 0037B75C  4B C8 4C 95 */	bl memcpy
/* 8037E800 0037B760  3C 60 80 3F */	lis r3, DSPInitCode@ha
/* 8037E804 0037B764  38 83 0F A8 */	addi r4, r3, DSPInitCode@l
/* 8037E808 0037B768  3C 60 81 00 */	lis r3, 0x8100
/* 8037E80C 0037B76C  38 A0 00 80 */	li r5, 0x80
/* 8037E810 0037B770  4B C8 4C 81 */	bl memcpy
/* 8037E814 0037B774  3C 60 81 00 */	lis r3, 0x8100
/* 8037E818 0037B778  38 80 00 80 */	li r4, 0x80
/* 8037E81C 0037B77C  48 00 02 95 */	bl DCFlushRange
/* 8037E820 0037B780  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8037E824 0037B784  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8037E828 0037B788  38 00 00 43 */	li r0, 0x43
/* 8037E82C 0037B78C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 8037E830 0037B790  3B E3 00 0A */	addi r31, r3, 0xa
/* 8037E834 0037B794  38 00 08 AC */	li r0, 0x8ac
/* 8037E838 0037B798  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8037E83C 0037B79C  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8037E840 0037B7A0  60 00 00 01 */	ori r0, r0, 1
/* 8037E844 0037B7A4  B0 03 00 0A */	sth r0, 0xa(r3)
lbl_8037E848:
/* 8037E848 0037B7A8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E84C 0037B7AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037E850 0037B7B0  40 82 FF F8 */	bne lbl_8037E848
/* 8037E854 0037B7B4  38 00 00 00 */	li r0, 0
/* 8037E858 0037B7B8  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 8037E85C 0037B7BC  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
lbl_8037E860:
/* 8037E860 0037B7C0  3B C4 50 00 */	addi r30, r4, 0x5000
/* 8037E864 0037B7C4  A4 7E 00 04 */	lhzu r3, 4(r30)
/* 8037E868 0037B7C8  3B A4 50 00 */	addi r29, r4, 0x5000
/* 8037E86C 0037B7CC  A4 1D 00 06 */	lhzu r0, 6(r29)
/* 8037E870 0037B7D0  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 8037E874 0037B7D4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8037E878 0037B7D8  40 82 FF E8 */	bne lbl_8037E860
/* 8037E87C 0037B7DC  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8037E880 0037B7E0  3C 00 01 00 */	lis r0, 0x100
/* 8037E884 0037B7E4  3B 63 50 00 */	addi r27, r3, 0xCC005000@l
/* 8037E888 0037B7E8  94 1B 00 20 */	stwu r0, 0x20(r27)
/* 8037E88C 0037B7EC  38 00 00 00 */	li r0, 0
/* 8037E890 0037B7F0  3B 43 50 00 */	addi r26, r3, 0x5000
/* 8037E894 0037B7F4  94 1A 00 24 */	stwu r0, 0x24(r26)
/* 8037E898 0037B7F8  38 00 00 20 */	li r0, 0x20
/* 8037E89C 0037B7FC  3B 23 50 00 */	addi r25, r3, 0x5000
/* 8037E8A0 0037B800  94 19 00 28 */	stwu r0, 0x28(r25)
/* 8037E8A4 0037B804  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8037E8A8 0037B808  48 00 00 08 */	b lbl_8037E8B0
lbl_8037E8AC:
/* 8037E8AC 0037B80C  A0 7F 00 00 */	lhz r3, 0(r31)
lbl_8037E8B0:
/* 8037E8B0 0037B810  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8037E8B4 0037B814  41 82 FF F8 */	beq lbl_8037E8AC
/* 8037E8B8 0037B818  B0 7F 00 00 */	sth r3, 0(r31)
/* 8037E8BC 0037B81C  48 00 6B 05 */	bl OSGetTick
/* 8037E8C0 0037B820  7C 7C 1B 78 */	mr r28, r3
lbl_8037E8C4:
/* 8037E8C4 0037B824  48 00 6A FD */	bl OSGetTick
/* 8037E8C8 0037B828  7C 1C 18 50 */	subf r0, r28, r3
/* 8037E8CC 0037B82C  2C 00 08 92 */	cmpwi r0, 0x892
/* 8037E8D0 0037B830  41 80 FF F4 */	blt lbl_8037E8C4
/* 8037E8D4 0037B834  3C 00 01 00 */	lis r0, 0x100
/* 8037E8D8 0037B838  90 1B 00 00 */	stw r0, 0(r27)
/* 8037E8DC 0037B83C  38 60 00 00 */	li r3, 0
/* 8037E8E0 0037B840  38 00 00 20 */	li r0, 0x20
/* 8037E8E4 0037B844  90 7A 00 00 */	stw r3, 0(r26)
/* 8037E8E8 0037B848  90 19 00 00 */	stw r0, 0(r25)
/* 8037E8EC 0037B84C  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8037E8F0 0037B850  48 00 00 08 */	b lbl_8037E8F8
lbl_8037E8F4:
/* 8037E8F4 0037B854  A0 7F 00 00 */	lhz r3, 0(r31)
lbl_8037E8F8:
/* 8037E8F8 0037B858  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8037E8FC 0037B85C  41 82 FF F8 */	beq lbl_8037E8F4
/* 8037E900 0037B860  B0 7F 00 00 */	sth r3, 0(r31)
/* 8037E904 0037B864  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E908 0037B868  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 8037E90C 0037B86C  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8037E910:
/* 8037E910 0037B870  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E914 0037B874  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8037E918 0037B878  40 82 FF F8 */	bne lbl_8037E910
/* 8037E91C 0037B87C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E920 0037B880  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8037E924 0037B884  B0 1F 00 00 */	sth r0, 0(r31)
/* 8037E928 0037B888  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8037E92C 0037B88C  48 00 00 08 */	b lbl_8037E934
lbl_8037E930:
/* 8037E930 0037B890  A0 1E 00 00 */	lhz r0, 0(r30)
lbl_8037E934:
/* 8037E934 0037B894  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8037E938 0037B898  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 8037E93C 0037B89C  41 82 FF F4 */	beq lbl_8037E930
/* 8037E940 0037B8A0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E944 0037B8A4  A0 9D 00 00 */	lhz r4, 0(r29)
/* 8037E948 0037B8A8  60 00 00 04 */	ori r0, r0, 4
/* 8037E94C 0037B8AC  B0 1F 00 00 */	sth r0, 0(r31)
/* 8037E950 0037B8B0  38 00 08 AC */	li r0, 0x8ac
/* 8037E954 0037B8B4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8037E958 0037B8B8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E95C 0037B8BC  60 00 00 01 */	ori r0, r0, 1
/* 8037E960 0037B8C0  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8037E964:
/* 8037E964 0037B8C4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E968 0037B8C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037E96C 0037B8CC  40 82 FF F8 */	bne lbl_8037E964
/* 8037E970 0037B8D0  4B FF FE 21 */	bl OSGetArenaHi
/* 8037E974 0037B8D4  38 83 FF 80 */	addi r4, r3, -128
/* 8037E978 0037B8D8  3C 60 81 00 */	lis r3, 0x8100
/* 8037E97C 0037B8DC  38 A0 00 80 */	li r5, 0x80
/* 8037E980 0037B8E0  4B C8 4B 11 */	bl memcpy
/* 8037E984 0037B8E4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8037E988 0037B8E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037E98C 0037B8EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8037E990 0037B8F0  7C 08 03 A6 */	mtlr r0
/* 8037E994 0037B8F4  4E 80 00 20 */	blr 

.global __OSStopAudioSystem
__OSStopAudioSystem:
/* 8037E998 0037B8F8  7C 08 02 A6 */	mflr r0
/* 8037E99C 0037B8FC  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8037E9A0 0037B900  90 01 00 04 */	stw r0, 4(r1)
/* 8037E9A4 0037B904  38 00 08 04 */	li r0, 0x804
/* 8037E9A8 0037B908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037E9AC 0037B90C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037E9B0 0037B910  3B E3 50 00 */	addi r31, r3, 0xCC005000@l
/* 8037E9B4 0037B914  38 63 50 00 */	addi r3, r3, 0x5000
/* 8037E9B8 0037B918  93 C1 00 08 */	stw r30, 8(r1)
/* 8037E9BC 0037B91C  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 8037E9C0 0037B920  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 8037E9C4 0037B924  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 8037E9C8 0037B928  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8037E9CC 0037B92C  A4 1F 00 0A */	lhzu r0, 0xa(r31)
/* 8037E9D0 0037B930  48 00 00 08 */	b lbl_8037E9D8
lbl_8037E9D4:
/* 8037E9D4 0037B934  A0 1F 00 00 */	lhz r0, 0(r31)
lbl_8037E9D8:
/* 8037E9D8 0037B938  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8037E9DC 0037B93C  40 82 FF F8 */	bne lbl_8037E9D4
/* 8037E9E0 0037B940  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037E9E4 0037B944  48 00 00 08 */	b lbl_8037E9EC
lbl_8037E9E8:
/* 8037E9E8 0037B948  A0 1F 00 00 */	lhz r0, 0(r31)
lbl_8037E9EC:
/* 8037E9EC 0037B94C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8037E9F0 0037B950  40 82 FF F8 */	bne lbl_8037E9E8
/* 8037E9F4 0037B954  38 00 08 AC */	li r0, 0x8ac
/* 8037E9F8 0037B958  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8037E9FC 0037B95C  B0 1F 00 00 */	sth r0, 0(r31)
/* 8037EA00 0037B960  38 00 00 00 */	li r0, 0
/* 8037EA04 0037B964  B0 03 50 00 */	sth r0, 0xCC005000@l(r3)
/* 8037EA08 0037B968  38 83 50 00 */	addi r4, r3, 0x5000
lbl_8037EA0C:
/* 8037EA0C 0037B96C  A0 64 00 04 */	lhz r3, 4(r4)
/* 8037EA10 0037B970  A0 04 00 06 */	lhz r0, 6(r4)
/* 8037EA14 0037B974  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 8037EA18 0037B978  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8037EA1C 0037B97C  40 82 FF F0 */	bne lbl_8037EA0C
/* 8037EA20 0037B980  48 00 69 A1 */	bl OSGetTick
/* 8037EA24 0037B984  7C 7E 1B 78 */	mr r30, r3
lbl_8037EA28:
/* 8037EA28 0037B988  48 00 69 99 */	bl OSGetTick
/* 8037EA2C 0037B98C  7C 1E 18 50 */	subf r0, r30, r3
/* 8037EA30 0037B990  2C 00 00 2C */	cmpwi r0, 0x2c
/* 8037EA34 0037B994  41 80 FF F4 */	blt lbl_8037EA28
/* 8037EA38 0037B998  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037EA3C 0037B99C  60 00 00 01 */	ori r0, r0, 1
/* 8037EA40 0037B9A0  B0 1F 00 00 */	sth r0, 0(r31)
/* 8037EA44 0037B9A4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8037EA48 0037B9A8  48 00 00 08 */	b lbl_8037EA50
lbl_8037EA4C:
/* 8037EA4C 0037B9AC  A0 1F 00 00 */	lhz r0, 0(r31)
lbl_8037EA50:
/* 8037EA50 0037B9B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8037EA54 0037B9B4  40 82 FF F8 */	bne lbl_8037EA4C
/* 8037EA58 0037B9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037EA5C 0037B9BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037EA60 0037B9C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8037EA64 0037B9C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8037EA68 0037B9C8  7C 08 03 A6 */	mtlr r0
/* 8037EA6C 0037B9CC  4E 80 00 20 */	blr 

.include "macros.inc"

.comm mData__10CStopwatch, 0x18, 4

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CStopwatch_cpp

.section .sbss, "wa"
.balign 8

.global lbl_805A9238
lbl_805A9238:
	.skip 0x4
.global lbl_805A923C
lbl_805A923C:
	.skip 0x4

.section .text, "ax"

.global GetGlobalTimerObj__10CStopwatchFv
GetGlobalTimerObj__10CStopwatchFv:
/* 802D6264 002D31C4  38 6D A6 78 */	addi r3, r13, lbl_805A9238@sda21
/* 802D6268 002D31C8  4E 80 00 20 */	blr

.global Wait__10CStopwatchFf
Wait__10CStopwatchFf:
/* 802D626C 002D31CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6270 002D31D0  7C 08 02 A6 */	mflr r0
/* 802D6274 002D31D4  FC 40 0A 10 */	fabs f2, f1
/* 802D6278 002D31D8  C8 02 C5 58 */	lfd f0, lbl_805AE278@sda21(r2)
/* 802D627C 002D31DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6280 002D31E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802D6284 002D31E4  40 80 00 18 */	bge lbl_802D629C
/* 802D6288 002D31E8  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 802D628C 002D31EC  C0 22 C5 60 */	lfs f1, lbl_805AE280@sda21(r2)
/* 802D6290 002D31F0  38 63 FD 30 */	addi r3, r3, mData__10CStopwatch@l
/* 802D6294 002D31F4  48 00 05 05 */	bl Wait__Q210CStopwatch7CSWDataCFf
/* 802D6298 002D31F8  48 00 00 10 */	b lbl_802D62A8
lbl_802D629C:
/* 802D629C 002D31FC  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 802D62A0 002D3200  38 63 FD 30 */	addi r3, r3, mData__10CStopwatch@l
/* 802D62A4 002D3204  48 00 04 F5 */	bl Wait__Q210CStopwatch7CSWDataCFf
lbl_802D62A8:
/* 802D62A8 002D3208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D62AC 002D320C  7C 08 03 A6 */	mtlr r0
/* 802D62B0 002D3210  38 21 00 10 */	addi r1, r1, 0x10
/* 802D62B4 002D3214  4E 80 00 20 */	blr

.global InitGlobalTimer__10CStopwatchFv
InitGlobalTimer__10CStopwatchFv:
/* 802D62B8 002D3218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D62BC 002D321C  7C 08 02 A6 */	mflr r0
/* 802D62C0 002D3220  3C 60 80 5A */	lis r3, lbl_805A0004@ha
/* 802D62C4 002D3224  38 80 00 00 */	li r4, 0
/* 802D62C8 002D3228  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D62CC 002D322C  84 03 FD 30 */	lwzu r0, -0x2d0(r3)
/* 802D62D0 002D3230  80 A3 00 04 */	lwz r5, lbl_805A0004@l(r3)
/* 802D62D4 002D3234  7C 00 22 78 */	xor r0, r0, r4
/* 802D62D8 002D3238  7C A4 22 78 */	xor r4, r5, r4
/* 802D62DC 002D323C  7C 80 03 79 */	or. r0, r4, r0
/* 802D62E0 002D3240  40 82 00 08 */	bne lbl_802D62E8
/* 802D62E4 002D3244  48 00 04 39 */	bl Initialize__Q210CStopwatch7CSWDataFv
lbl_802D62E8:
/* 802D62E8 002D3248  48 0A F0 C1 */	bl OSGetTime
/* 802D62EC 002D324C  90 6D A6 78 */	stw r3, lbl_805A9238@sda21(r13)
/* 802D62F0 002D3250  38 60 00 01 */	li r3, 1
/* 802D62F4 002D3254  90 8D A6 7C */	stw r4, lbl_805A923C@sda21(r13)
/* 802D62F8 002D3258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D62FC 002D325C  7C 08 03 A6 */	mtlr r0
/* 802D6300 002D3260  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6304 002D3264  4E 80 00 20 */	blr

.global __sinit_CStopwatch_cpp
__sinit_CStopwatch_cpp:
/* 802D6308 002D3268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D630C 002D326C  7C 08 02 A6 */	mflr r0
/* 802D6310 002D3270  3C 60 80 5A */	lis r3, mData__10CStopwatch@ha
/* 802D6314 002D3274  C0 02 C5 60 */	lfs f0, lbl_805AE280@sda21(r2)
/* 802D6318 002D3278  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D631C 002D327C  38 63 FD 30 */	addi r3, r3, mData__10CStopwatch@l
/* 802D6320 002D3280  38 00 00 00 */	li r0, 0
/* 802D6324 002D3284  90 03 00 04 */	stw r0, 4(r3)
/* 802D6328 002D3288  90 03 00 00 */	stw r0, 0(r3)
/* 802D632C 002D328C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802D6330 002D3290  90 03 00 08 */	stw r0, 8(r3)
/* 802D6334 002D3294  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802D6338 002D3298  48 0A F0 71 */	bl OSGetTime
/* 802D633C 002D329C  90 8D A6 7C */	stw r4, lbl_805A923C@sda21(r13)
/* 802D6340 002D32A0  90 6D A6 78 */	stw r3, lbl_805A9238@sda21(r13)
/* 802D6344 002D32A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6348 002D32A8  7C 08 03 A6 */	mtlr r0
/* 802D634C 002D32AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6350 002D32B0  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AE278
lbl_805AE278:
	# ROM: 0x3FAB18
	.4byte 0x3F50624D
	.4byte 0xE0000000

.global lbl_805AE280
lbl_805AE280:
	# ROM: 0x3FAB20
	.4byte 0
	.4byte 0


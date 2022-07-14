.include "macros.inc"

.section .bss
.global Header
Header:
	.skip 0x20

.section .sbss
SaveStart:
	.skip 0x4
SaveEnd:
	.skip 0x4
Prepared:
	.skip 0x8

.section .text, "ax"

Run:
/* 80382E28 0037FD88  7C 00 04 AC */	sync 0
/* 80382E2C 0037FD8C  4C 00 01 2C */	isync
/* 80382E30 0037FD90  7C 68 03 A6 */	mtlr r3
/* 80382E34 0037FD94  4E 80 00 20 */	blr

Callback:
/* 80382E38 0037FD98  38 00 00 01 */	li r0, 1
/* 80382E3C 0037FD9C  90 0D AD 30 */	stw r0, Prepared@sda21(r13)
/* 80382E40 0037FDA0  4E 80 00 20 */	blr

.global __OSReboot
__OSReboot:
/* 80382E44 0037FDA4  7C 08 02 A6 */	mflr r0
/* 80382E48 0037FDA8  90 01 00 04 */	stw r0, 4(r1)
/* 80382E4C 0037FDAC  94 21 FC C0 */	stwu r1, -0x340(r1)
/* 80382E50 0037FDB0  93 E1 03 3C */	stw r31, 0x33c(r1)
/* 80382E54 0037FDB4  93 C1 03 38 */	stw r30, 0x338(r1)
/* 80382E58 0037FDB8  3C 60 80 54 */	lis r3, Header@ha
/* 80382E5C 0037FDBC  3B C3 15 80 */	addi r30, r3, Header@l
/* 80382E60 0037FDC0  4B FF E8 01 */	bl OSDisableInterrupts
/* 80382E64 0037FDC4  80 AD AD 28 */	lwz r5, SaveStart@sda21(r13)
/* 80382E68 0037FDC8  3C 80 81 30 */	lis r4, 0x812FDFF0@ha
/* 80382E6C 0037FDCC  80 0D AD 2C */	lwz r0, SaveEnd@sda21(r13)
/* 80382E70 0037FDD0  38 60 00 00 */	li r3, 0
/* 80382E74 0037FDD4  3F E0 81 80 */	lis r31, 0x817FFFFC@ha
/* 80382E78 0037FDD8  38 E0 00 01 */	li r7, 1
/* 80382E7C 0037FDDC  90 7F FF FC */	stw r3, 0x817FFFFC@l(r31)
/* 80382E80 0037FDE0  3C C0 80 00 */	lis r6, 0x800030E2@ha
/* 80382E84 0037FDE4  90 7F FF F8 */	stw r3, -8(r31)
/* 80382E88 0037FDE8  38 61 00 70 */	addi r3, r1, 0x70
/* 80382E8C 0037FDEC  98 E6 30 E2 */	stb r7, 0x800030E2@l(r6)
/* 80382E90 0037FDF0  90 A4 DF F0 */	stw r5, 0x812FDFF0@l(r4)
/* 80382E94 0037FDF4  90 04 DF EC */	stw r0, -0x2014(r4)
/* 80382E98 0037FDF8  4B FF C7 7D */	bl OSClearContext
/* 80382E9C 0037FDFC  38 61 00 70 */	addi r3, r1, 0x70
/* 80382EA0 0037FE00  4B FF C5 7D */	bl OSSetCurrentContext
/* 80382EA4 0037FE04  4B FE ED 01 */	bl DVDInit
/* 80382EA8 0037FE08  38 60 00 01 */	li r3, 1
/* 80382EAC 0037FE0C  4B FF 13 51 */	bl DVDSetAutoInvalidation
/* 80382EB0 0037FE10  3C 60 80 38 */	lis r3, Callback@ha
/* 80382EB4 0037FE14  38 63 2E 38 */	addi r3, r3, Callback@l
/* 80382EB8 0037FE18  4B FF 18 E5 */	bl __DVDPrepareResetAsync
/* 80382EBC 0037FE1C  4B FF 17 FD */	bl DVDCheckDisk
/* 80382EC0 0037FE20  2C 03 00 00 */	cmpwi r3, 0
/* 80382EC4 0037FE24  40 82 00 0C */	bne lbl_80382ED0
/* 80382EC8 0037FE28  80 7F FF FC */	lwz r3, -4(r31)
/* 80382ECC 0037FE2C  48 00 02 E1 */	bl __OSDoHotReset
lbl_80382ED0:
/* 80382ED0 0037FE30  38 60 FF E0 */	li r3, -32
/* 80382ED4 0037FE34  4B FF EB 55 */	bl __OSMaskInterrupts
/* 80382ED8 0037FE38  38 60 04 00 */	li r3, 0x400
/* 80382EDC 0037FE3C  4B FF EB D5 */	bl __OSUnmaskInterrupts
/* 80382EE0 0037FE40  4B FF E7 95 */	bl OSEnableInterrupts
/* 80382EE4 0037FE44  48 00 00 04 */	b lbl_80382EE8
lbl_80382EE8:
/* 80382EE8 0037FE48  48 00 00 04 */	b lbl_80382EEC
lbl_80382EEC:
/* 80382EEC 0037FE4C  80 0D AD 30 */	lwz r0, Prepared@sda21(r13)
/* 80382EF0 0037FE50  2C 00 00 00 */	cmpwi r0, 0
/* 80382EF4 0037FE54  41 82 FF F8 */	beq lbl_80382EEC
/* 80382EF8 0037FE58  7F C4 F3 78 */	mr r4, r30
/* 80382EFC 0037FE5C  38 61 00 40 */	addi r3, r1, 0x40
/* 80382F00 0037FE60  38 A0 00 20 */	li r5, 0x20
/* 80382F04 0037FE64  38 C0 24 40 */	li r6, 0x2440
/* 80382F08 0037FE68  38 E0 00 00 */	li r7, 0
/* 80382F0C 0037FE6C  4B FF 0A C5 */	bl DVDReadAbsAsyncForBS
/* 80382F10 0037FE70  3F E0 81 80 */	lis r31, 0x8180
/* 80382F14 0037FE74  48 00 00 04 */	b lbl_80382F18
lbl_80382F18:
/* 80382F18 0037FE78  48 00 00 04 */	b lbl_80382F1C
lbl_80382F1C:
/* 80382F1C 0037FE7C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80382F20 0037FE80  2C 00 00 01 */	cmpwi r0, 1
/* 80382F24 0037FE84  41 82 FF F8 */	beq lbl_80382F1C
/* 80382F28 0037FE88  40 80 00 14 */	bge lbl_80382F3C
/* 80382F2C 0037FE8C  2C 00 FF FF */	cmpwi r0, -1
/* 80382F30 0037FE90  41 82 00 18 */	beq lbl_80382F48
/* 80382F34 0037FE94  40 80 00 20 */	bge lbl_80382F54
/* 80382F38 0037FE98  4B FF FF E4 */	b lbl_80382F1C
lbl_80382F3C:
/* 80382F3C 0037FE9C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80382F40 0037FEA0  40 80 FF DC */	bge lbl_80382F1C
/* 80382F44 0037FEA4  48 00 00 04 */	b lbl_80382F48
lbl_80382F48:
/* 80382F48 0037FEA8  80 7F FF FC */	lwz r3, -4(r31)
/* 80382F4C 0037FEAC  48 00 02 61 */	bl __OSDoHotReset
/* 80382F50 0037FEB0  4B FF FF CC */	b lbl_80382F1C
lbl_80382F54:
/* 80382F54 0037FEB4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80382F58 0037FEB8  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80382F5C 0037FEBC  38 03 00 1F */	addi r0, r3, 0x1f
/* 80382F60 0037FEC0  38 84 00 20 */	addi r4, r4, 0x20
/* 80382F64 0037FEC4  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 80382F68 0037FEC8  48 00 00 04 */	b lbl_80382F6C
lbl_80382F6C:
/* 80382F6C 0037FECC  48 00 00 04 */	b lbl_80382F70
lbl_80382F70:
/* 80382F70 0037FED0  80 0D AD 30 */	lwz r0, Prepared@sda21(r13)
/* 80382F74 0037FED4  2C 00 00 00 */	cmpwi r0, 0
/* 80382F78 0037FED8  41 82 FF F8 */	beq lbl_80382F70
/* 80382F7C 0037FEDC  7F C5 F3 78 */	mr r5, r30
/* 80382F80 0037FEE0  38 61 00 10 */	addi r3, r1, 0x10
/* 80382F84 0037FEE4  38 C4 24 40 */	addi r6, r4, 0x2440
/* 80382F88 0037FEE8  3C 80 81 30 */	lis r4, 0x8130
/* 80382F8C 0037FEEC  38 E0 00 00 */	li r7, 0
/* 80382F90 0037FEF0  4B FF 0A 41 */	bl DVDReadAbsAsyncForBS
/* 80382F94 0037FEF4  3F E0 81 80 */	lis r31, 0x8180
/* 80382F98 0037FEF8  48 00 00 04 */	b lbl_80382F9C
lbl_80382F9C:
/* 80382F9C 0037FEFC  48 00 00 04 */	b lbl_80382FA0
lbl_80382FA0:
/* 80382FA0 0037FF00  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80382FA4 0037FF04  2C 00 00 01 */	cmpwi r0, 1
/* 80382FA8 0037FF08  41 82 FF F8 */	beq lbl_80382FA0
/* 80382FAC 0037FF0C  40 80 00 14 */	bge lbl_80382FC0
/* 80382FB0 0037FF10  2C 00 FF FF */	cmpwi r0, -1
/* 80382FB4 0037FF14  41 82 00 18 */	beq lbl_80382FCC
/* 80382FB8 0037FF18  40 80 00 20 */	bge lbl_80382FD8
/* 80382FBC 0037FF1C  4B FF FF E4 */	b lbl_80382FA0
lbl_80382FC0:
/* 80382FC0 0037FF20  2C 00 00 0C */	cmpwi r0, 0xc
/* 80382FC4 0037FF24  40 80 FF DC */	bge lbl_80382FA0
/* 80382FC8 0037FF28  48 00 00 04 */	b lbl_80382FCC
lbl_80382FCC:
/* 80382FCC 0037FF2C  80 7F FF FC */	lwz r3, -4(r31)
/* 80382FD0 0037FF30  48 00 01 DD */	bl __OSDoHotReset
/* 80382FD4 0037FF34  4B FF FF CC */	b lbl_80382FA0
lbl_80382FD8:
/* 80382FD8 0037FF38  3C 60 81 30 */	lis r3, 0x8130
/* 80382FDC 0037FF3C  7F C4 F3 78 */	mr r4, r30
/* 80382FE0 0037FF40  4B FF BB B5 */	bl ICInvalidateRange
/* 80382FE4 0037FF44  4B FF E6 7D */	bl OSDisableInterrupts
/* 80382FE8 0037FF48  4B FF BB E1 */	bl ICFlashInvalidate
/* 80382FEC 0037FF4C  3C 60 81 30 */	lis r3, 0x8130
/* 80382FF0 0037FF50  4B FF FE 39 */	bl Run
/* 80382FF4 0037FF54  80 01 03 44 */	lwz r0, 0x344(r1)
/* 80382FF8 0037FF58  83 E1 03 3C */	lwz r31, 0x33c(r1)
/* 80382FFC 0037FF5C  83 C1 03 38 */	lwz r30, 0x338(r1)
/* 80383000 0037FF60  38 21 03 40 */	addi r1, r1, 0x340
/* 80383004 0037FF64  7C 08 03 A6 */	mtlr r0
/* 80383008 0037FF68  4E 80 00 20 */	blr

.global OSSetSaveRegion
OSSetSaveRegion:
/* 8038300C 0037FF6C  90 6D AD 28 */	stw r3, SaveStart@sda21(r13)
/* 80383010 0037FF70  90 8D AD 2C */	stw r4, SaveEnd@sda21(r13)
/* 80383014 0037FF74  4E 80 00 20 */	blr

.global OSGetSaveRegion
OSGetSaveRegion:
/* 80383018 0037FF78  80 0D AC DC */	lwz r0, __OSSavedRegionStart@sda21(r13)
/* 8038301C 0037FF7C  90 03 00 00 */	stw r0, 0(r3)
/* 80383020 0037FF80  80 0D AC D8 */	lwz r0, __OSSavedRegionEnd@sda21(r13)
/* 80383024 0037FF84  90 04 00 00 */	stw r0, 0(r4)
/* 80383028 0037FF88  4E 80 00 20 */	blr

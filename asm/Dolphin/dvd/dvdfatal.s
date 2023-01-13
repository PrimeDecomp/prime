.include "macros.inc"

.section .data
.balign 8

.if version < 2

.global lbl_803F0148
lbl_803F0148:

	# ROM: 0x3ED148
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A96
	.4byte 0x7B91CC82
	.4byte 0xCC837083
	.4byte 0x8F815B83
	.4byte 0x7B835E83
	.4byte 0x9382F089
	.4byte 0x9F82B582
	.4byte 0xC493648C
	.4byte 0xB982F04F
	.4byte 0x464682C9
	.4byte 0x82B58141
	.4byte 0x0A967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC8E
	.4byte 0x778EA682
	.4byte 0xC98F5D82
	.4byte 0xC182C482
	.4byte 0xAD82BE82
	.4byte 0xB382A281
	.4byte 0x42000000

.global lbl_803F01B8
lbl_803F01B8:

	# ROM: 0x3ED1B8
	.asciz "\n\n\nAn error has occurred.\nTurn the power off and refer to the\nNintendo GameCube Instruction Booklet\nfor further instructions."
	.balign 4

.global lbl_803F0238
lbl_803F0238:

	# ROM: 0x3ED238
	.4byte 0x0A0A0A41
	.4byte 0x6E206572
	.4byte 0x726F7220
	.4byte 0x68617320
	.4byte 0x6F636375
	.4byte 0x72726564
	.4byte 0x2E0A5475
	.4byte 0x726E2074
	.4byte 0x68652070
	.4byte 0x6F776572
	.4byte 0x206F6666
	.4byte 0x20616E64
	.4byte 0x20726566
	.4byte 0x65722074
	.4byte 0x6F207468
	.4byte 0x650A4E69
	.4byte 0x6E74656E
	.4byte 0x646F2047
	.4byte 0x616D6543
	.4byte 0x75626599
	.asciz " Instruction Booklet\nfor further instructions."
	.balign 4

.global lbl_803F02B8
lbl_803F02B8:

	# ROM: 0x3ED2B8
	.asciz "\n\n\nEin Fehler ist aufgetreten.\nBitte schalten Sie den NINTENDO GAMECUBE\naus und lesen Sie die Bedienungsanleitung,\num weitere Informationen zu erhalten."
	.balign 4

.global lbl_803F0354
lbl_803F0354:

	# ROM: 0x3ED354
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x45746569
	.4byte 0x676E657A
	.4byte 0x206C6120
	.4byte 0x636F6E73
	.4byte 0x6F6C6520
	.4byte 0x65742072
	.4byte 0xE966E972
	.asciz "ez-vous au\nmanuel d'instructions NINTENDO GAMECUBE\npour de plus amples informations."
	.balign 4

.global lbl_803F03E4
lbl_803F03E4:

	# ROM: 0x3ED3E4
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F722E
	.4byte 0x0A417061
	.4byte 0x6761206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61207920
	.4byte 0x636F6E73
	.4byte 0x756C7461
	.4byte 0x20656C20
	.4byte 0x6D616E75
	.4byte 0x616C0A64
	.4byte 0x6520696E
	.4byte 0x73747275
	.4byte 0x6363696F
	.4byte 0x6E657320
	.4byte 0x6465204E
	.4byte 0x494E5445
	.4byte 0x4E444F20
	.4byte 0x47414D45
	.4byte 0x43554245
	.4byte 0x0A706172
	.4byte 0x61206F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000

.global lbl_803F046C
lbl_803F046C:

	# ROM: 0x3ED46C
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore.\nSpegni (OFF) e controlla il manuale\nd'istruzioni del NINTENDO GAMECUBE\nper ulteriori indicazioni."

.global lbl_803F04EC
lbl_803F04EC:

	# ROM: 0x3ED4EC
	.asciz "\n\n\nEr is een fout opgetreden.\nZet de NINTENDO GAMECUBE uit en\nraadpleeg de handleiding van de\nNintendo GameCube voor nadere\ninstructies."
	.balign 4

.endif

.if version < 2

.section .sdata
.balign 8
.global lbl_805A8AB0
lbl_805A8AB0:
	# ROM: 0x3F6450
	.4byte lbl_803F0148

.global lbl_805A8AB4
lbl_805A8AB4:
	# ROM: 0x3F6454
	.4byte lbl_803F01B8

.section .sdata2
.balign 8
.global lbl_805AEB20
lbl_805AEB20:
	# ROM: 0x3FB3C0
	.4byte 0

.global lbl_805AEB24
lbl_805AEB24:
	# ROM: 0x3FB3C4
	.4byte 0xFFFFFF00


.section .rodata
.balign 8
lbl_803D8570:
	# ROM: 0x3D5570
	.4byte lbl_803F0238
	.4byte lbl_803F02B8
	.4byte lbl_803F0354
	.4byte lbl_803F03E4
	.4byte lbl_803F046C
	.4byte lbl_803F04EC

.endif

.section .sbss
.balign 8
.global lbl_805A9820
lbl_805A9820:
	.skip 0x8

.section .text, "ax"

.if version < 2

.global ShowMessage
ShowMessage:
/* 80374D40 00371CA0  7C 08 02 A6 */	mflr r0
/* 80374D44 00371CA4  90 01 00 04 */	stw r0, 4(r1)
/* 80374D48 00371CA8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80374D4C 00371CAC  80 62 CE 00 */	lwz r3, lbl_805AEB20@sda21(r2)
/* 80374D50 00371CB0  80 02 CE 04 */	lwz r0, lbl_805AEB24@sda21(r2)
/* 80374D54 00371CB4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80374D58 00371CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80374D5C 00371CBC  48 01 47 7D */	bl VIGetTvFormat
/* 80374D60 00371CC0  28 03 00 00 */	cmplwi r3, 0
/* 80374D64 00371CC4  40 82 00 24 */	bne lbl_80374D88
/* 80374D68 00371CC8  48 00 C1 DD */	bl OSGetFontEncode
/* 80374D6C 00371CCC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80374D70 00371CD0  28 00 00 01 */	cmplwi r0, 1
/* 80374D74 00371CD4  40 82 00 0C */	bne lbl_80374D80
/* 80374D78 00371CD8  80 AD 9E F0 */	lwz r5, lbl_805A8AB0@sda21(r13)
/* 80374D7C 00371CDC  48 00 00 24 */	b lbl_80374DA0
lbl_80374D80:
/* 80374D80 00371CE0  80 AD 9E F4 */	lwz r5, lbl_805A8AB4@sda21(r13)
/* 80374D84 00371CE4  48 00 00 1C */	b lbl_80374DA0
lbl_80374D88:
/* 80374D88 00371CE8  48 00 F4 C1 */	bl OSGetLanguage
/* 80374D8C 00371CEC  3C 80 80 3E */	lis r4, lbl_803D8570@ha
/* 80374D90 00371CF0  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 80374D94 00371CF4  38 04 85 70 */	addi r0, r4, lbl_803D8570@l
/* 80374D98 00371CF8  7C 60 1A 14 */	add r3, r0, r3
/* 80374D9C 00371CFC  80 A3 00 00 */	lwz r5, 0(r3)
lbl_80374DA0:
/* 80374DA0 00371D00  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80374DA4 00371D04  38 81 00 08 */	addi r4, r1, 8
/* 80374DA8 00371D08  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80374DAC 00371D0C  38 61 00 0C */	addi r3, r1, 0xc
/* 80374DB0 00371D10  90 C1 00 08 */	stw r6, 8(r1)
/* 80374DB4 00371D14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80374DB8 00371D18  48 00 B7 79 */	bl OSFatal
/* 80374DBC 00371D1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80374DC0 00371D20  38 21 00 18 */	addi r1, r1, 0x18
/* 80374DC4 00371D24  7C 08 03 A6 */	mtlr r0
/* 80374DC8 00371D28  4E 80 00 20 */	blr

.global DVDSetAutoFatalMessaging
DVDSetAutoFatalMessaging:
/* 80374DCC 00371D2C  7C 08 02 A6 */	mflr r0
/* 80374DD0 00371D30  90 01 00 04 */	stw r0, 4(r1)
/* 80374DD4 00371D34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80374DD8 00371D38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80374DDC 00371D3C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80374DE0 00371D40  7C 7E 1B 78 */	mr r30, r3
/* 80374DE4 00371D44  48 00 C8 7D */	bl OSDisableInterrupts
/* 80374DE8 00371D48  80 0D AC 60 */	lwz r0, lbl_805A9820@sda21(r13)
/* 80374DEC 00371D4C  28 00 00 00 */	cmplwi r0, 0
/* 80374DF0 00371D50  41 82 00 0C */	beq lbl_80374DFC
/* 80374DF4 00371D54  3B E0 00 01 */	li r31, 1
/* 80374DF8 00371D58  48 00 00 08 */	b lbl_80374E00
lbl_80374DFC:
/* 80374DFC 00371D5C  3B E0 00 00 */	li r31, 0
lbl_80374E00:
/* 80374E00 00371D60  2C 1E 00 00 */	cmpwi r30, 0
/* 80374E04 00371D64  41 82 00 10 */	beq lbl_80374E14
/* 80374E08 00371D68  3C 80 80 37 */	lis r4, ShowMessage@ha
/* 80374E0C 00371D6C  38 04 4D 40 */	addi r0, r4, ShowMessage@l
/* 80374E10 00371D70  48 00 00 08 */	b lbl_80374E18
lbl_80374E14:
/* 80374E14 00371D74  38 00 00 00 */	li r0, 0
lbl_80374E18:
/* 80374E18 00371D78  90 0D AC 60 */	stw r0, lbl_805A9820@sda21(r13)
/* 80374E1C 00371D7C  48 00 C8 6D */	bl OSRestoreInterrupts
/* 80374E20 00371D80  7F E3 FB 78 */	mr r3, r31
/* 80374E24 00371D84  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80374E28 00371D88  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80374E2C 00371D8C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80374E30 00371D90  38 21 00 18 */	addi r1, r1, 0x18
/* 80374E34 00371D94  7C 08 03 A6 */	mtlr r0
/* 80374E38 00371D98  4E 80 00 20 */	blr

.endif

.global __DVDPrintFatalMessage
__DVDPrintFatalMessage:
/* 80374E3C 00371D9C  7C 08 02 A6 */	mflr r0
/* 80374E40 00371DA0  90 01 00 04 */	stw r0, 4(r1)
/* 80374E44 00371DA4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80374E48 00371DA8  81 8D AC 60 */	lwz r12, lbl_805A9820@sda21(r13)
/* 80374E4C 00371DAC  28 0C 00 00 */	cmplwi r12, 0
/* 80374E50 00371DB0  41 82 00 0C */	beq lbl_80374E5C
/* 80374E54 00371DB4  7D 88 03 A6 */	mtlr r12
/* 80374E58 00371DB8  4E 80 00 21 */	blrl
lbl_80374E5C:
/* 80374E5C 00371DBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80374E60 00371DC0  38 21 00 08 */	addi r1, r1, 8
/* 80374E64 00371DC4  7C 08 03 A6 */	mtlr r0
/* 80374E68 00371DC8  4E 80 00 20 */	blr

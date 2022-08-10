.include "macros.inc"

.section .data
.balign 8
.global lbl_803F0100
lbl_803F0100:
	# ROM: 0x3ED100
	.4byte 0
	.4byte 0x00023A00
	.4byte 0x00062800
	.4byte 0x00030200
	.4byte 0x00031100
	.4byte 0x00052000
	.4byte 0x00052001
	.4byte 0x00052100
	.4byte 0x00052400
	.4byte 0x00052401
	.4byte 0x00052402
	.4byte 0x000B5A01
	.4byte 0x00056300
	.4byte 0x00020401
	.4byte 0x00020400
	.4byte 0x00040800
	.4byte 0x00100007
	.4byte 0
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
	.asciz "\n\n\nAn error has occurred.\nTurn the power off and refer to the\nNintendo GameCube Instruction Booklet\nfor further instructions."
	.balign 4
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
	.asciz "\n\n\nEin Fehler ist aufgetreten.\nBitte schalten Sie den NINTENDO GAMECUBE\naus und lesen Sie die Bedienungsanleitung,\num weitere Informationen zu erhalten."
	.balign 4
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
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore.\nSpegni (OFF) e controlla il manuale\nd'istruzioni del NINTENDO GAMECUBE\nper ulteriori indicazioni."
	.asciz "\n\n\nEr is een fout opgetreden.\nZet de NINTENDO GAMECUBE uit en\nraadpleeg de handleiding van de\nNintendo GameCube voor nadere\ninstructies."
	.balign 4


.section .text, "ax"

.global ErrorCode2Num
ErrorCode2Num:
/* 80374AB0 00371A10  38 00 00 02 */	li r0, 2
/* 80374AB4 00371A14  3C 80 80 3F */	lis r4, lbl_803F0100@ha
/* 80374AB8 00371A18  7C 09 03 A6 */	mtctr r0
/* 80374ABC 00371A1C  38 84 01 00 */	addi r4, r4, lbl_803F0100@l
/* 80374AC0 00371A20  38 A0 00 00 */	li r5, 0
lbl_80374AC4:
/* 80374AC4 00371A24  80 04 00 00 */	lwz r0, 0(r4)
/* 80374AC8 00371A28  7C 03 00 40 */	cmplw r3, r0
/* 80374ACC 00371A2C  40 82 00 0C */	bne lbl_80374AD8
/* 80374AD0 00371A30  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374AD4 00371A34  4E 80 00 20 */	blr
lbl_80374AD8:
/* 80374AD8 00371A38  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374ADC 00371A3C  38 A5 00 01 */	addi r5, r5, 1
/* 80374AE0 00371A40  7C 03 00 40 */	cmplw r3, r0
/* 80374AE4 00371A44  40 82 00 0C */	bne lbl_80374AF0
/* 80374AE8 00371A48  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374AEC 00371A4C  4E 80 00 20 */	blr
lbl_80374AF0:
/* 80374AF0 00371A50  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374AF4 00371A54  38 A5 00 01 */	addi r5, r5, 1
/* 80374AF8 00371A58  7C 03 00 40 */	cmplw r3, r0
/* 80374AFC 00371A5C  40 82 00 0C */	bne lbl_80374B08
/* 80374B00 00371A60  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B04 00371A64  4E 80 00 20 */	blr
lbl_80374B08:
/* 80374B08 00371A68  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B0C 00371A6C  38 A5 00 01 */	addi r5, r5, 1
/* 80374B10 00371A70  7C 03 00 40 */	cmplw r3, r0
/* 80374B14 00371A74  40 82 00 0C */	bne lbl_80374B20
/* 80374B18 00371A78  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B1C 00371A7C  4E 80 00 20 */	blr
lbl_80374B20:
/* 80374B20 00371A80  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B24 00371A84  38 A5 00 01 */	addi r5, r5, 1
/* 80374B28 00371A88  7C 03 00 40 */	cmplw r3, r0
/* 80374B2C 00371A8C  40 82 00 0C */	bne lbl_80374B38
/* 80374B30 00371A90  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B34 00371A94  4E 80 00 20 */	blr
lbl_80374B38:
/* 80374B38 00371A98  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B3C 00371A9C  38 A5 00 01 */	addi r5, r5, 1
/* 80374B40 00371AA0  7C 03 00 40 */	cmplw r3, r0
/* 80374B44 00371AA4  40 82 00 0C */	bne lbl_80374B50
/* 80374B48 00371AA8  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B4C 00371AAC  4E 80 00 20 */	blr
lbl_80374B50:
/* 80374B50 00371AB0  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B54 00371AB4  38 A5 00 01 */	addi r5, r5, 1
/* 80374B58 00371AB8  7C 03 00 40 */	cmplw r3, r0
/* 80374B5C 00371ABC  40 82 00 0C */	bne lbl_80374B68
/* 80374B60 00371AC0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B64 00371AC4  4E 80 00 20 */	blr
lbl_80374B68:
/* 80374B68 00371AC8  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B6C 00371ACC  38 A5 00 01 */	addi r5, r5, 1
/* 80374B70 00371AD0  7C 03 00 40 */	cmplw r3, r0
/* 80374B74 00371AD4  40 82 00 0C */	bne lbl_80374B80
/* 80374B78 00371AD8  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B7C 00371ADC  4E 80 00 20 */	blr
lbl_80374B80:
/* 80374B80 00371AE0  84 04 00 04 */	lwzu r0, 4(r4)
/* 80374B84 00371AE4  38 A5 00 01 */	addi r5, r5, 1
/* 80374B88 00371AE8  7C 03 00 40 */	cmplw r3, r0
/* 80374B8C 00371AEC  40 82 00 0C */	bne lbl_80374B98
/* 80374B90 00371AF0  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80374B94 00371AF4  4E 80 00 20 */	blr
lbl_80374B98:
/* 80374B98 00371AF8  38 84 00 04 */	addi r4, r4, 4
/* 80374B9C 00371AFC  38 A5 00 01 */	addi r5, r5, 1
/* 80374BA0 00371B00  42 00 FF 24 */	bdnz lbl_80374AC4
/* 80374BA4 00371B04  3C 80 00 10 */	lis r4, 0x10
/* 80374BA8 00371B08  7C 03 20 40 */	cmplw r3, r4
/* 80374BAC 00371B0C  41 80 00 18 */	blt lbl_80374BC4
/* 80374BB0 00371B10  38 04 00 08 */	addi r0, r4, 8
/* 80374BB4 00371B14  7C 03 00 40 */	cmplw r3, r0
/* 80374BB8 00371B18  41 81 00 0C */	bgt lbl_80374BC4
/* 80374BBC 00371B1C  38 60 00 11 */	li r3, 0x11
/* 80374BC0 00371B20  4E 80 00 20 */	blr
lbl_80374BC4:
/* 80374BC4 00371B24  38 60 00 1D */	li r3, 0x1d
/* 80374BC8 00371B28  4E 80 00 20 */	blr

.global __DVDStoreErrorCode
__DVDStoreErrorCode:
/* 80374BCC 00371B2C  7C 08 02 A6 */	mflr r0
/* 80374BD0 00371B30  90 01 00 04 */	stw r0, 4(r1)
/* 80374BD4 00371B34  3C 03 FE DD */	addis r0, r3, 0xfedd
/* 80374BD8 00371B38  28 00 45 67 */	cmplwi r0, 0x4567
/* 80374BDC 00371B3C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80374BE0 00371B40  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80374BE4 00371B44  40 82 00 0C */	bne lbl_80374BF0
/* 80374BE8 00371B48  3B E0 00 FF */	li r31, 0xff
/* 80374BEC 00371B4C  48 00 00 38 */	b lbl_80374C24
lbl_80374BF0:
/* 80374BF0 00371B50  28 00 45 68 */	cmplwi r0, 0x4568
/* 80374BF4 00371B54  40 82 00 0C */	bne lbl_80374C00
/* 80374BF8 00371B58  3B E0 00 FE */	li r31, 0xfe
/* 80374BFC 00371B5C  48 00 00 28 */	b lbl_80374C24
lbl_80374C00:
/* 80374C00 00371B60  54 7F 46 3E */	srwi r31, r3, 0x18
/* 80374C04 00371B64  54 63 02 3E */	clrlwi r3, r3, 8
/* 80374C08 00371B68  4B FF FE A9 */	bl ErrorCode2Num
/* 80374C0C 00371B6C  28 1F 00 06 */	cmplwi r31, 6
/* 80374C10 00371B70  41 80 00 08 */	blt lbl_80374C18
/* 80374C14 00371B74  3B E0 00 06 */	li r31, 6
lbl_80374C18:
/* 80374C18 00371B78  1C 1F 00 1E */	mulli r0, r31, 0x1e
/* 80374C1C 00371B7C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80374C20 00371B80  7F E3 02 14 */	add r31, r3, r0
lbl_80374C24:
/* 80374C24 00371B84  48 00 EF 0D */	bl __OSLockSramEx
/* 80374C28 00371B88  9B E3 00 24 */	stb r31, 0x24(r3)
/* 80374C2C 00371B8C  38 60 00 01 */	li r3, 1
/* 80374C30 00371B90  48 00 F2 89 */	bl __OSUnlockSramEx
/* 80374C34 00371B94  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80374C38 00371B98  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80374C3C 00371B9C  38 21 00 18 */	addi r1, r1, 0x18
/* 80374C40 00371BA0  7C 08 03 A6 */	mtlr r0
/* 80374C44 00371BA4  4E 80 00 20 */	blr

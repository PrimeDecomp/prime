.include "macros.inc"

.section .text, "ax"

.global UpdateIconOffsets
UpdateIconOffsets:
/* 803BDF54 003BAEB4  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 803BDF58 003BAEB8  3C 08 00 01 */	addis r0, r8, 1
/* 803BDF5C 003BAEBC  28 00 FF FF */	cmplwi r0, 0xffff
/* 803BDF60 003BAEC0  40 82 00 18 */	bne lbl_803BDF78
/* 803BDF64 003BAEC4  38 00 00 00 */	li r0, 0
/* 803BDF68 003BAEC8  98 04 00 2E */	stb r0, 0x2e(r4)
/* 803BDF6C 003BAECC  39 00 00 00 */	li r8, 0
/* 803BDF70 003BAED0  B0 04 00 34 */	sth r0, 0x34(r4)
/* 803BDF74 003BAED4  B0 04 00 36 */	sth r0, 0x36(r4)
lbl_803BDF78:
/* 803BDF78 003BAED8  88 03 00 07 */	lbz r0, 7(r3)
/* 803BDF7C 003BAEDC  39 20 00 00 */	li r9, 0
/* 803BDF80 003BAEE0  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803BDF84 003BAEE4  2C 00 00 02 */	cmpwi r0, 2
/* 803BDF88 003BAEE8  41 82 00 28 */	beq lbl_803BDFB0
/* 803BDF8C 003BAEEC  40 80 00 38 */	bge lbl_803BDFC4
/* 803BDF90 003BAEF0  2C 00 00 01 */	cmpwi r0, 1
/* 803BDF94 003BAEF4  40 80 00 08 */	bge lbl_803BDF9C
/* 803BDF98 003BAEF8  48 00 00 2C */	b lbl_803BDFC4
lbl_803BDF9C:
/* 803BDF9C 003BAEFC  91 04 00 3C */	stw r8, 0x3c(r4)
/* 803BDFA0 003BAF00  38 08 0C 00 */	addi r0, r8, 0xc00
/* 803BDFA4 003BAF04  39 08 0E 00 */	addi r8, r8, 0xe00
/* 803BDFA8 003BAF08  90 04 00 40 */	stw r0, 0x40(r4)
/* 803BDFAC 003BAF0C  48 00 00 24 */	b lbl_803BDFD0
lbl_803BDFB0:
/* 803BDFB0 003BAF10  91 04 00 3C */	stw r8, 0x3c(r4)
/* 803BDFB4 003BAF14  38 00 FF FF */	li r0, -1
/* 803BDFB8 003BAF18  39 08 18 00 */	addi r8, r8, 0x1800
/* 803BDFBC 003BAF1C  90 04 00 40 */	stw r0, 0x40(r4)
/* 803BDFC0 003BAF20  48 00 00 10 */	b lbl_803BDFD0
lbl_803BDFC4:
/* 803BDFC4 003BAF24  38 00 FF FF */	li r0, -1
/* 803BDFC8 003BAF28  90 04 00 3C */	stw r0, 0x3c(r4)
/* 803BDFCC 003BAF2C  90 04 00 40 */	stw r0, 0x40(r4)
lbl_803BDFD0:
/* 803BDFD0 003BAF30  38 00 00 02 */	li r0, 2
/* 803BDFD4 003BAF34  7C 09 03 A6 */	mtctr r0
/* 803BDFD8 003BAF38  38 E4 00 00 */	addi r7, r4, 0
/* 803BDFDC 003BAF3C  39 40 00 00 */	li r10, 0
/* 803BDFE0 003BAF40  38 C0 00 00 */	li r6, 0
/* 803BDFE4 003BAF44  38 00 FF FF */	li r0, -1
lbl_803BDFE8:
/* 803BDFE8 003BAF48  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 803BDFEC 003BAF4C  7C A5 36 30 */	sraw r5, r5, r6
/* 803BDFF0 003BAF50  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 803BDFF4 003BAF54  2C 05 00 02 */	cmpwi r5, 2
/* 803BDFF8 003BAF58  41 82 00 24 */	beq lbl_803BE01C
/* 803BDFFC 003BAF5C  40 80 00 2C */	bge lbl_803BE028
/* 803BE000 003BAF60  2C 05 00 01 */	cmpwi r5, 1
/* 803BE004 003BAF64  40 80 00 08 */	bge lbl_803BE00C
/* 803BE008 003BAF68  48 00 00 20 */	b lbl_803BE028
lbl_803BE00C:
/* 803BE00C 003BAF6C  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE010 003BAF70  39 20 00 01 */	li r9, 1
/* 803BE014 003BAF74  39 08 04 00 */	addi r8, r8, 0x400
/* 803BE018 003BAF78  48 00 00 14 */	b lbl_803BE02C
lbl_803BE01C:
/* 803BE01C 003BAF7C  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE020 003BAF80  39 08 08 00 */	addi r8, r8, 0x800
/* 803BE024 003BAF84  48 00 00 08 */	b lbl_803BE02C
lbl_803BE028:
/* 803BE028 003BAF88  90 07 00 44 */	stw r0, 0x44(r7)
lbl_803BE02C:
/* 803BE02C 003BAF8C  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 803BE030 003BAF90  38 C6 00 02 */	addi r6, r6, 2
/* 803BE034 003BAF94  38 E7 00 04 */	addi r7, r7, 4
/* 803BE038 003BAF98  7C A5 36 30 */	sraw r5, r5, r6
/* 803BE03C 003BAF9C  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 803BE040 003BAFA0  2C 05 00 02 */	cmpwi r5, 2
/* 803BE044 003BAFA4  41 82 00 24 */	beq lbl_803BE068
/* 803BE048 003BAFA8  40 80 00 2C */	bge lbl_803BE074
/* 803BE04C 003BAFAC  2C 05 00 01 */	cmpwi r5, 1
/* 803BE050 003BAFB0  40 80 00 08 */	bge lbl_803BE058
/* 803BE054 003BAFB4  48 00 00 20 */	b lbl_803BE074
lbl_803BE058:
/* 803BE058 003BAFB8  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE05C 003BAFBC  39 20 00 01 */	li r9, 1
/* 803BE060 003BAFC0  39 08 04 00 */	addi r8, r8, 0x400
/* 803BE064 003BAFC4  48 00 00 14 */	b lbl_803BE078
lbl_803BE068:
/* 803BE068 003BAFC8  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE06C 003BAFCC  39 08 08 00 */	addi r8, r8, 0x800
/* 803BE070 003BAFD0  48 00 00 08 */	b lbl_803BE078
lbl_803BE074:
/* 803BE074 003BAFD4  90 07 00 44 */	stw r0, 0x44(r7)
lbl_803BE078:
/* 803BE078 003BAFD8  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 803BE07C 003BAFDC  38 C6 00 02 */	addi r6, r6, 2
/* 803BE080 003BAFE0  39 4A 00 01 */	addi r10, r10, 1
/* 803BE084 003BAFE4  7C A5 36 30 */	sraw r5, r5, r6
/* 803BE088 003BAFE8  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 803BE08C 003BAFEC  2C 05 00 02 */	cmpwi r5, 2
/* 803BE090 003BAFF0  38 E7 00 04 */	addi r7, r7, 4
/* 803BE094 003BAFF4  41 82 00 24 */	beq lbl_803BE0B8
/* 803BE098 003BAFF8  40 80 00 2C */	bge lbl_803BE0C4
/* 803BE09C 003BAFFC  2C 05 00 01 */	cmpwi r5, 1
/* 803BE0A0 003BB000  40 80 00 08 */	bge lbl_803BE0A8
/* 803BE0A4 003BB004  48 00 00 20 */	b lbl_803BE0C4
lbl_803BE0A8:
/* 803BE0A8 003BB008  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE0AC 003BB00C  39 20 00 01 */	li r9, 1
/* 803BE0B0 003BB010  39 08 04 00 */	addi r8, r8, 0x400
/* 803BE0B4 003BB014  48 00 00 14 */	b lbl_803BE0C8
lbl_803BE0B8:
/* 803BE0B8 003BB018  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE0BC 003BB01C  39 08 08 00 */	addi r8, r8, 0x800
/* 803BE0C0 003BB020  48 00 00 08 */	b lbl_803BE0C8
lbl_803BE0C4:
/* 803BE0C4 003BB024  90 07 00 44 */	stw r0, 0x44(r7)
lbl_803BE0C8:
/* 803BE0C8 003BB028  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 803BE0CC 003BB02C  38 C6 00 02 */	addi r6, r6, 2
/* 803BE0D0 003BB030  39 4A 00 01 */	addi r10, r10, 1
/* 803BE0D4 003BB034  7C A5 36 30 */	sraw r5, r5, r6
/* 803BE0D8 003BB038  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 803BE0DC 003BB03C  2C 05 00 02 */	cmpwi r5, 2
/* 803BE0E0 003BB040  38 E7 00 04 */	addi r7, r7, 4
/* 803BE0E4 003BB044  41 82 00 24 */	beq lbl_803BE108
/* 803BE0E8 003BB048  40 80 00 2C */	bge lbl_803BE114
/* 803BE0EC 003BB04C  2C 05 00 01 */	cmpwi r5, 1
/* 803BE0F0 003BB050  40 80 00 08 */	bge lbl_803BE0F8
/* 803BE0F4 003BB054  48 00 00 20 */	b lbl_803BE114
lbl_803BE0F8:
/* 803BE0F8 003BB058  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE0FC 003BB05C  39 20 00 01 */	li r9, 1
/* 803BE100 003BB060  39 08 04 00 */	addi r8, r8, 0x400
/* 803BE104 003BB064  48 00 00 14 */	b lbl_803BE118
lbl_803BE108:
/* 803BE108 003BB068  91 07 00 44 */	stw r8, 0x44(r7)
/* 803BE10C 003BB06C  39 08 08 00 */	addi r8, r8, 0x800
/* 803BE110 003BB070  48 00 00 08 */	b lbl_803BE118
lbl_803BE114:
/* 803BE114 003BB074  90 07 00 44 */	stw r0, 0x44(r7)
lbl_803BE118:
/* 803BE118 003BB078  38 C6 00 02 */	addi r6, r6, 2
/* 803BE11C 003BB07C  38 E7 00 04 */	addi r7, r7, 4
/* 803BE120 003BB080  39 4A 00 01 */	addi r10, r10, 1
/* 803BE124 003BB084  42 00 FE C4 */	bdnz lbl_803BDFE8
/* 803BE128 003BB088  2C 09 00 00 */	cmpwi r9, 0
/* 803BE12C 003BB08C  41 82 00 10 */	beq lbl_803BE13C
/* 803BE130 003BB090  91 04 00 64 */	stw r8, 0x64(r4)
/* 803BE134 003BB094  39 08 02 00 */	addi r8, r8, 0x200
/* 803BE138 003BB098  48 00 00 0C */	b lbl_803BE144
lbl_803BE13C:
/* 803BE13C 003BB09C  38 00 FF FF */	li r0, -1
/* 803BE140 003BB0A0  90 04 00 64 */	stw r0, 0x64(r4)
lbl_803BE144:
/* 803BE144 003BB0A4  91 04 00 68 */	stw r8, 0x68(r4)
/* 803BE148 003BB0A8  4E 80 00 20 */	blr

.global CARDGetStatus
CARDGetStatus:
/* 803BE14C 003BB0AC  7C 08 02 A6 */	mflr r0
/* 803BE150 003BB0B0  90 01 00 04 */	stw r0, 4(r1)
/* 803BE154 003BB0B4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 803BE158 003BB0B8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 803BE15C 003BB0BC  3B E5 00 00 */	addi r31, r5, 0
/* 803BE160 003BB0C0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 803BE164 003BB0C4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 803BE168 003BB0C8  7C 9D 23 79 */	or. r29, r4, r4
/* 803BE16C 003BB0CC  41 80 00 0C */	blt lbl_803BE178
/* 803BE170 003BB0D0  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 803BE174 003BB0D4  41 80 00 0C */	blt lbl_803BE180
lbl_803BE178:
/* 803BE178 003BB0D8  38 60 FF 80 */	li r3, -128
/* 803BE17C 003BB0DC  48 00 00 E0 */	b lbl_803BE25C
lbl_803BE180:
/* 803BE180 003BB0E0  38 81 00 14 */	addi r4, r1, 0x14
/* 803BE184 003BB0E4  4B FF AC 1D */	bl __CARDGetControlBlock
/* 803BE188 003BB0E8  2C 03 00 00 */	cmpwi r3, 0
/* 803BE18C 003BB0EC  40 80 00 08 */	bge lbl_803BE194
/* 803BE190 003BB0F0  48 00 00 CC */	b lbl_803BE25C
lbl_803BE194:
/* 803BE194 003BB0F4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803BE198 003BB0F8  4B FF C7 D9 */	bl __CARDGetDirBlock
/* 803BE19C 003BB0FC  57 A0 30 32 */	slwi r0, r29, 6
/* 803BE1A0 003BB100  7F A3 02 14 */	add r29, r3, r0
/* 803BE1A4 003BB104  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803BE1A8 003BB108  7F A4 EB 78 */	mr r4, r29
/* 803BE1AC 003BB10C  4B FF EC 29 */	bl __CARDAccess
/* 803BE1B0 003BB110  3B C3 00 00 */	addi r30, r3, 0
/* 803BE1B4 003BB114  2C 1E FF F6 */	cmpwi r30, -10
/* 803BE1B8 003BB118  40 82 00 10 */	bne lbl_803BE1C8
/* 803BE1BC 003BB11C  7F A3 EB 78 */	mr r3, r29
/* 803BE1C0 003BB120  4B FF EC AD */	bl sub_803bce6c
/* 803BE1C4 003BB124  7C 7E 1B 78 */	mr r30, r3
lbl_803BE1C8:
/* 803BE1C8 003BB128  2C 1E 00 00 */	cmpwi r30, 0
/* 803BE1CC 003BB12C  41 80 00 84 */	blt lbl_803BE250
/* 803BE1D0 003BB130  38 9D 00 00 */	addi r4, r29, 0
/* 803BE1D4 003BB134  38 7F 00 28 */	addi r3, r31, 0x28
/* 803BE1D8 003BB138  38 A0 00 04 */	li r5, 4
/* 803BE1DC 003BB13C  4B C4 52 B5 */	bl memcpy
/* 803BE1E0 003BB140  38 7F 00 2C */	addi r3, r31, 0x2c
/* 803BE1E4 003BB144  38 9D 00 04 */	addi r4, r29, 4
/* 803BE1E8 003BB148  38 A0 00 02 */	li r5, 2
/* 803BE1EC 003BB14C  4B C4 52 A5 */	bl memcpy
/* 803BE1F0 003BB150  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803BE1F4 003BB154  7F E3 FB 78 */	mr r3, r31
/* 803BE1F8 003BB158  A0 DD 00 38 */	lhz r6, 0x38(r29)
/* 803BE1FC 003BB15C  38 9D 00 08 */	addi r4, r29, 8
/* 803BE200 003BB160  80 05 00 0C */	lwz r0, 0xc(r5)
/* 803BE204 003BB164  38 A0 00 20 */	li r5, 0x20
/* 803BE208 003BB168  7C 06 01 D6 */	mullw r0, r6, r0
/* 803BE20C 003BB16C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803BE210 003BB170  4B C4 52 81 */	bl memcpy
/* 803BE214 003BB174  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 803BE218 003BB178  38 7D 00 00 */	addi r3, r29, 0
/* 803BE21C 003BB17C  38 9F 00 00 */	addi r4, r31, 0
/* 803BE220 003BB180  90 1F 00 24 */	stw r0, 0x24(r31)
/* 803BE224 003BB184  88 1D 00 07 */	lbz r0, 7(r29)
/* 803BE228 003BB188  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 803BE22C 003BB18C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 803BE230 003BB190  90 1F 00 30 */	stw r0, 0x30(r31)
/* 803BE234 003BB194  A0 1D 00 30 */	lhz r0, 0x30(r29)
/* 803BE238 003BB198  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 803BE23C 003BB19C  A0 1D 00 32 */	lhz r0, 0x32(r29)
/* 803BE240 003BB1A0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 803BE244 003BB1A4  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 803BE248 003BB1A8  90 1F 00 38 */	stw r0, 0x38(r31)
/* 803BE24C 003BB1AC  4B FF FD 09 */	bl UpdateIconOffsets
lbl_803BE250:
/* 803BE250 003BB1B0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803BE254 003BB1B4  7F C4 F3 78 */	mr r4, r30
/* 803BE258 003BB1B8  4B FF AC 01 */	bl __CARDPutControlBlock
lbl_803BE25C:
/* 803BE25C 003BB1BC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 803BE260 003BB1C0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 803BE264 003BB1C4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 803BE268 003BB1C8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 803BE26C 003BB1CC  38 21 00 28 */	addi r1, r1, 0x28
/* 803BE270 003BB1D0  7C 08 03 A6 */	mtlr r0
/* 803BE274 003BB1D4  4E 80 00 20 */	blr

.global CARDSetStatusAsync
CARDSetStatusAsync:
/* 803BE278 003BB1D8  7C 08 02 A6 */	mflr r0
/* 803BE27C 003BB1DC  90 01 00 04 */	stw r0, 4(r1)
/* 803BE280 003BB1E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BE284 003BB1E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803BE288 003BB1E8  7C 9F 23 79 */	or. r31, r4, r4
/* 803BE28C 003BB1EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803BE290 003BB1F0  3B C6 00 00 */	addi r30, r6, 0
/* 803BE294 003BB1F4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803BE298 003BB1F8  3B A5 00 00 */	addi r29, r5, 0
/* 803BE29C 003BB1FC  93 81 00 20 */	stw r28, 0x20(r1)
/* 803BE2A0 003BB200  3B 83 00 00 */	addi r28, r3, 0
/* 803BE2A4 003BB204  41 80 00 40 */	blt lbl_803BE2E4
/* 803BE2A8 003BB208  2C 1F 00 7F */	cmpwi r31, 0x7f
/* 803BE2AC 003BB20C  40 80 00 38 */	bge lbl_803BE2E4
/* 803BE2B0 003BB210  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 803BE2B4 003BB214  3C 03 00 01 */	addis r0, r3, 1
/* 803BE2B8 003BB218  28 00 FF FF */	cmplwi r0, 0xffff
/* 803BE2BC 003BB21C  41 82 00 0C */	beq lbl_803BE2C8
/* 803BE2C0 003BB220  28 03 02 00 */	cmplwi r3, 0x200
/* 803BE2C4 003BB224  40 80 00 20 */	bge lbl_803BE2E4
lbl_803BE2C8:
/* 803BE2C8 003BB228  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 803BE2CC 003BB22C  3C 03 00 01 */	addis r0, r3, 1
/* 803BE2D0 003BB230  28 00 FF FF */	cmplwi r0, 0xffff
/* 803BE2D4 003BB234  41 82 00 18 */	beq lbl_803BE2EC
/* 803BE2D8 003BB238  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 803BE2DC 003BB23C  28 00 1F C0 */	cmplwi r0, 0x1fc0
/* 803BE2E0 003BB240  40 81 00 0C */	ble lbl_803BE2EC
lbl_803BE2E4:
/* 803BE2E4 003BB244  38 60 FF 80 */	li r3, -128
/* 803BE2E8 003BB248  48 00 00 E4 */	b lbl_803BE3CC
lbl_803BE2EC:
/* 803BE2EC 003BB24C  38 7C 00 00 */	addi r3, r28, 0
/* 803BE2F0 003BB250  38 81 00 18 */	addi r4, r1, 0x18
/* 803BE2F4 003BB254  4B FF AA AD */	bl __CARDGetControlBlock
/* 803BE2F8 003BB258  2C 03 00 00 */	cmpwi r3, 0
/* 803BE2FC 003BB25C  40 80 00 08 */	bge lbl_803BE304
/* 803BE300 003BB260  48 00 00 CC */	b lbl_803BE3CC
lbl_803BE304:
/* 803BE304 003BB264  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE308 003BB268  4B FF C6 69 */	bl __CARDGetDirBlock
/* 803BE30C 003BB26C  57 E0 30 32 */	slwi r0, r31, 6
/* 803BE310 003BB270  7F E3 02 14 */	add r31, r3, r0
/* 803BE314 003BB274  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE318 003BB278  7F E4 FB 78 */	mr r4, r31
/* 803BE31C 003BB27C  4B FF EA B9 */	bl __CARDAccess
/* 803BE320 003BB280  7C 64 1B 79 */	or. r4, r3, r3
/* 803BE324 003BB284  40 80 00 10 */	bge lbl_803BE334
/* 803BE328 003BB288  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE32C 003BB28C  4B FF AB 2D */	bl __CARDPutControlBlock
/* 803BE330 003BB290  48 00 00 9C */	b lbl_803BE3CC
lbl_803BE334:
/* 803BE334 003BB294  88 1D 00 2E */	lbz r0, 0x2e(r29)
/* 803BE338 003BB298  38 7F 00 00 */	addi r3, r31, 0
/* 803BE33C 003BB29C  38 9D 00 00 */	addi r4, r29, 0
/* 803BE340 003BB2A0  98 1F 00 07 */	stb r0, 7(r31)
/* 803BE344 003BB2A4  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 803BE348 003BB2A8  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803BE34C 003BB2AC  A0 1D 00 34 */	lhz r0, 0x34(r29)
/* 803BE350 003BB2B0  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 803BE354 003BB2B4  A0 1D 00 36 */	lhz r0, 0x36(r29)
/* 803BE358 003BB2B8  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 803BE35C 003BB2BC  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 803BE360 003BB2C0  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 803BE364 003BB2C4  4B FF FB F1 */	bl UpdateIconOffsets
/* 803BE368 003BB2C8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 803BE36C 003BB2CC  3C 03 00 01 */	addis r0, r3, 1
/* 803BE370 003BB2D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 803BE374 003BB2D4  40 82 00 14 */	bne lbl_803BE388
/* 803BE378 003BB2D8  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 803BE37C 003BB2DC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 803BE380 003BB2E0  60 00 00 01 */	ori r0, r0, 1
/* 803BE384 003BB2E4  B0 1F 00 32 */	sth r0, 0x32(r31)
lbl_803BE388:
/* 803BE388 003BB2E8  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 803BE38C 003BB2EC  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 803BE390 003BB2F0  54 1D F0 BE */	srwi r29, r0, 2
/* 803BE394 003BB2F4  4B FC 70 15 */	bl OSGetTime
/* 803BE398 003BB2F8  38 DD 00 00 */	addi r6, r29, 0
/* 803BE39C 003BB2FC  38 A0 00 00 */	li r5, 0
/* 803BE3A0 003BB300  4B FC B8 2D */	bl __div2i
/* 803BE3A4 003BB304  90 9F 00 28 */	stw r4, 0x28(r31)
/* 803BE3A8 003BB308  38 7C 00 00 */	addi r3, r28, 0
/* 803BE3AC 003BB30C  38 9E 00 00 */	addi r4, r30, 0
/* 803BE3B0 003BB310  4B FF C7 61 */	bl __CARDUpdateDir
/* 803BE3B4 003BB314  7C 7C 1B 79 */	or. r28, r3, r3
/* 803BE3B8 003BB318  40 80 00 10 */	bge lbl_803BE3C8
/* 803BE3BC 003BB31C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803BE3C0 003BB320  7F 84 E3 78 */	mr r4, r28
/* 803BE3C4 003BB324  4B FF AA 95 */	bl __CARDPutControlBlock
lbl_803BE3C8:
/* 803BE3C8 003BB328  7F 83 E3 78 */	mr r3, r28
lbl_803BE3CC:
/* 803BE3CC 003BB32C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BE3D0 003BB330  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803BE3D4 003BB334  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803BE3D8 003BB338  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803BE3DC 003BB33C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803BE3E0 003BB340  38 21 00 30 */	addi r1, r1, 0x30
/* 803BE3E4 003BB344  7C 08 03 A6 */	mtlr r0
/* 803BE3E8 003BB348  4E 80 00 20 */	blr


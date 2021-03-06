.include "macros.inc"

.section .text, "ax"

.global strchr
strchr:
/* 8038FF2C 0038CE8C  38 63 FF FF */	addi r3, r3, -1
/* 8038FF30 0038CE90  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8038FF34 0038CE94  48 00 00 0C */	b lbl_8038FF40
lbl_8038FF38:
/* 8038FF38 0038CE98  7C 04 00 40 */	cmplw r4, r0
/* 8038FF3C 0038CE9C  4D 82 00 20 */	beqlr
lbl_8038FF40:
/* 8038FF40 0038CEA0  8C 83 00 01 */	lbzu r4, 1(r3)
/* 8038FF44 0038CEA4  28 04 00 00 */	cmplwi r4, 0
/* 8038FF48 0038CEA8  40 82 FF F0 */	bne lbl_8038FF38
/* 8038FF4C 0038CEAC  28 00 00 00 */	cmplwi r0, 0
/* 8038FF50 0038CEB0  4D 82 00 20 */	beqlr
/* 8038FF54 0038CEB4  38 60 00 00 */	li r3, 0
/* 8038FF58 0038CEB8  4E 80 00 20 */	blr

.global strncmp
strncmp:
/* 8038FF5C 0038CEBC  38 63 FF FF */	addi r3, r3, -1
/* 8038FF60 0038CEC0  38 84 FF FF */	addi r4, r4, -1
/* 8038FF64 0038CEC4  38 C5 00 01 */	addi r6, r5, 1
/* 8038FF68 0038CEC8  48 00 00 24 */	b lbl_8038FF8C
lbl_8038FF6C:
/* 8038FF6C 0038CECC  8C 03 00 01 */	lbzu r0, 1(r3)
/* 8038FF70 0038CED0  8C A4 00 01 */	lbzu r5, 1(r4)
/* 8038FF74 0038CED4  7C 00 28 40 */	cmplw r0, r5
/* 8038FF78 0038CED8  41 82 00 0C */	beq lbl_8038FF84
/* 8038FF7C 0038CEDC  7C 65 00 50 */	subf r3, r5, r0
/* 8038FF80 0038CEE0  4E 80 00 20 */	blr
lbl_8038FF84:
/* 8038FF84 0038CEE4  28 00 00 00 */	cmplwi r0, 0
/* 8038FF88 0038CEE8  41 82 00 0C */	beq lbl_8038FF94
lbl_8038FF8C:
/* 8038FF8C 0038CEEC  34 C6 FF FF */	addic. r6, r6, -1
/* 8038FF90 0038CEF0  40 82 FF DC */	bne lbl_8038FF6C
lbl_8038FF94:
/* 8038FF94 0038CEF4  38 60 00 00 */	li r3, 0
/* 8038FF98 0038CEF8  4E 80 00 20 */	blr

.global strcmp
strcmp:
/* 8038FF9C 0038CEFC  88 A3 00 00 */	lbz r5, 0(r3)
/* 8038FFA0 0038CF00  88 04 00 00 */	lbz r0, 0(r4)
/* 8038FFA4 0038CF04  7C 00 28 51 */	subf. r0, r0, r5
/* 8038FFA8 0038CF08  41 82 00 0C */	beq lbl_8038FFB4
/* 8038FFAC 0038CF0C  7C 03 03 78 */	mr r3, r0
/* 8038FFB0 0038CF10  4E 80 00 20 */	blr
lbl_8038FFB4:
/* 8038FFB4 0038CF14  54 80 07 BE */	clrlwi r0, r4, 0x1e
/* 8038FFB8 0038CF18  54 66 07 BE */	clrlwi r6, r3, 0x1e
/* 8038FFBC 0038CF1C  7C 00 30 40 */	cmplw r0, r6
/* 8038FFC0 0038CF20  40 82 00 CC */	bne lbl_8039008C
/* 8038FFC4 0038CF24  28 06 00 00 */	cmplwi r6, 0
/* 8038FFC8 0038CF28  41 82 00 58 */	beq lbl_80390020
/* 8038FFCC 0038CF2C  28 05 00 00 */	cmplwi r5, 0
/* 8038FFD0 0038CF30  40 82 00 0C */	bne lbl_8038FFDC
/* 8038FFD4 0038CF34  38 60 00 00 */	li r3, 0
/* 8038FFD8 0038CF38  4E 80 00 20 */	blr
lbl_8038FFDC:
/* 8038FFDC 0038CF3C  20 06 00 03 */	subfic r0, r6, 3
/* 8038FFE0 0038CF40  7C 09 03 A6 */	mtctr r0
/* 8038FFE4 0038CF44  28 00 00 00 */	cmplwi r0, 0
/* 8038FFE8 0038CF48  41 82 00 30 */	beq lbl_80390018
lbl_8038FFEC:
/* 8038FFEC 0038CF4C  8C A3 00 01 */	lbzu r5, 1(r3)
/* 8038FFF0 0038CF50  8C 04 00 01 */	lbzu r0, 1(r4)
/* 8038FFF4 0038CF54  7C 00 28 51 */	subf. r0, r0, r5
/* 8038FFF8 0038CF58  41 82 00 0C */	beq lbl_80390004
/* 8038FFFC 0038CF5C  7C 03 03 78 */	mr r3, r0
/* 80390000 0038CF60  4E 80 00 20 */	blr
lbl_80390004:
/* 80390004 0038CF64  28 05 00 00 */	cmplwi r5, 0
/* 80390008 0038CF68  40 82 00 0C */	bne lbl_80390014
/* 8039000C 0038CF6C  38 60 00 00 */	li r3, 0
/* 80390010 0038CF70  4E 80 00 20 */	blr
lbl_80390014:
/* 80390014 0038CF74  42 00 FF D8 */	bdnz lbl_8038FFEC
lbl_80390018:
/* 80390018 0038CF78  38 63 00 01 */	addi r3, r3, 1
/* 8039001C 0038CF7C  38 84 00 01 */	addi r4, r4, 1
lbl_80390020:
/* 80390020 0038CF80  80 E3 00 00 */	lwz r7, 0(r3)
/* 80390024 0038CF84  3C A0 80 81 */	lis r5, 0x80808080@ha
/* 80390028 0038CF88  38 C5 80 80 */	addi r6, r5, 0x80808080@l
/* 8039002C 0038CF8C  81 04 00 00 */	lwz r8, 0(r4)
/* 80390030 0038CF90  3C A7 FE FF */	addis r5, r7, 0xfeff
/* 80390034 0038CF94  38 05 FE FF */	addi r0, r5, -257
/* 80390038 0038CF98  7C 00 30 39 */	and. r0, r0, r6
/* 8039003C 0038CF9C  40 82 00 38 */	bne lbl_80390074
/* 80390040 0038CFA0  48 00 00 1C */	b lbl_8039005C
lbl_80390044:
/* 80390044 0038CFA4  84 E3 00 04 */	lwzu r7, 4(r3)
/* 80390048 0038CFA8  85 04 00 04 */	lwzu r8, 4(r4)
/* 8039004C 0038CFAC  3C A7 FE FF */	addis r5, r7, 0xfeff
/* 80390050 0038CFB0  38 05 FE FF */	addi r0, r5, -257
/* 80390054 0038CFB4  7C 00 30 39 */	and. r0, r0, r6
/* 80390058 0038CFB8  40 82 00 1C */	bne lbl_80390074
lbl_8039005C:
/* 8039005C 0038CFBC  7C 07 40 40 */	cmplw r7, r8
/* 80390060 0038CFC0  41 82 FF E4 */	beq lbl_80390044
/* 80390064 0038CFC4  38 60 FF FF */	li r3, -1
/* 80390068 0038CFC8  4C 81 00 20 */	blelr
/* 8039006C 0038CFCC  38 60 00 01 */	li r3, 1
/* 80390070 0038CFD0  4E 80 00 20 */	blr
lbl_80390074:
/* 80390074 0038CFD4  88 A3 00 00 */	lbz r5, 0(r3)
/* 80390078 0038CFD8  88 04 00 00 */	lbz r0, 0(r4)
/* 8039007C 0038CFDC  7C 00 28 51 */	subf. r0, r0, r5
/* 80390080 0038CFE0  41 82 00 0C */	beq lbl_8039008C
/* 80390084 0038CFE4  7C 03 03 78 */	mr r3, r0
/* 80390088 0038CFE8  4E 80 00 20 */	blr
lbl_8039008C:
/* 8039008C 0038CFEC  28 05 00 00 */	cmplwi r5, 0
/* 80390090 0038CFF0  40 82 00 0C */	bne lbl_8039009C
/* 80390094 0038CFF4  38 60 00 00 */	li r3, 0
/* 80390098 0038CFF8  4E 80 00 20 */	blr
lbl_8039009C:
/* 8039009C 0038CFFC  8C A3 00 01 */	lbzu r5, 1(r3)
/* 803900A0 0038D000  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803900A4 0038D004  7C 00 28 51 */	subf. r0, r0, r5
/* 803900A8 0038D008  41 82 00 0C */	beq lbl_803900B4
/* 803900AC 0038D00C  7C 03 03 78 */	mr r3, r0
/* 803900B0 0038D010  4E 80 00 20 */	blr
lbl_803900B4:
/* 803900B4 0038D014  28 05 00 00 */	cmplwi r5, 0
/* 803900B8 0038D018  40 82 FF E4 */	bne lbl_8039009C
/* 803900BC 0038D01C  38 60 00 00 */	li r3, 0
/* 803900C0 0038D020  4E 80 00 20 */	blr

.global strncpy
strncpy:
/* 803900C4 0038D024  38 84 FF FF */	addi r4, r4, -1
/* 803900C8 0038D028  38 C3 FF FF */	addi r6, r3, -1
/* 803900CC 0038D02C  38 A5 00 01 */	addi r5, r5, 1
/* 803900D0 0038D030  48 00 00 2C */	b lbl_803900FC
lbl_803900D4:
/* 803900D4 0038D034  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803900D8 0038D038  28 00 00 00 */	cmplwi r0, 0
/* 803900DC 0038D03C  9C 06 00 01 */	stbu r0, 1(r6)
/* 803900E0 0038D040  40 82 00 1C */	bne lbl_803900FC
/* 803900E4 0038D044  38 00 00 00 */	li r0, 0
/* 803900E8 0038D048  48 00 00 08 */	b lbl_803900F0
lbl_803900EC:
/* 803900EC 0038D04C  9C 06 00 01 */	stbu r0, 1(r6)
lbl_803900F0:
/* 803900F0 0038D050  34 A5 FF FF */	addic. r5, r5, -1
/* 803900F4 0038D054  40 82 FF F8 */	bne lbl_803900EC
/* 803900F8 0038D058  4E 80 00 20 */	blr
lbl_803900FC:
/* 803900FC 0038D05C  34 A5 FF FF */	addic. r5, r5, -1
/* 80390100 0038D060  40 82 FF D4 */	bne lbl_803900D4
/* 80390104 0038D064  4E 80 00 20 */	blr

.global strcpy
strcpy:
/* 80390108 0038D068  54 60 07 BE */	clrlwi r0, r3, 0x1e
/* 8039010C 0038D06C  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 80390110 0038D070  7C 00 28 40 */	cmplw r0, r5
/* 80390114 0038D074  7C 67 1B 78 */	mr r7, r3
/* 80390118 0038D078  40 82 00 84 */	bne lbl_8039019C
/* 8039011C 0038D07C  28 05 00 00 */	cmplwi r5, 0
/* 80390120 0038D080  41 82 00 40 */	beq lbl_80390160
/* 80390124 0038D084  88 04 00 00 */	lbz r0, 0(r4)
/* 80390128 0038D088  28 00 00 00 */	cmplwi r0, 0
/* 8039012C 0038D08C  98 07 00 00 */	stb r0, 0(r7)
/* 80390130 0038D090  4D 82 00 20 */	beqlr
/* 80390134 0038D094  20 05 00 03 */	subfic r0, r5, 3
/* 80390138 0038D098  7C 09 03 A6 */	mtctr r0
/* 8039013C 0038D09C  28 00 00 00 */	cmplwi r0, 0
/* 80390140 0038D0A0  41 82 00 18 */	beq lbl_80390158
lbl_80390144:
/* 80390144 0038D0A4  8C 04 00 01 */	lbzu r0, 1(r4)
/* 80390148 0038D0A8  28 00 00 00 */	cmplwi r0, 0
/* 8039014C 0038D0AC  9C 07 00 01 */	stbu r0, 1(r7)
/* 80390150 0038D0B0  4D 82 00 20 */	beqlr
/* 80390154 0038D0B4  42 00 FF F0 */	bdnz lbl_80390144
lbl_80390158:
/* 80390158 0038D0B8  38 E7 00 01 */	addi r7, r7, 1
/* 8039015C 0038D0BC  38 84 00 01 */	addi r4, r4, 1
lbl_80390160:
/* 80390160 0038D0C0  81 04 00 00 */	lwz r8, 0(r4)
/* 80390164 0038D0C4  3C A0 80 81 */	lis r5, 0x80808080@ha
/* 80390168 0038D0C8  38 C5 80 80 */	addi r6, r5, 0x80808080@l
/* 8039016C 0038D0CC  3C A8 FE FF */	addis r5, r8, 0xfeff
/* 80390170 0038D0D0  38 05 FE FF */	addi r0, r5, -257
/* 80390174 0038D0D4  7C 00 30 39 */	and. r0, r0, r6
/* 80390178 0038D0D8  40 82 00 24 */	bne lbl_8039019C
/* 8039017C 0038D0DC  38 E7 FF FC */	addi r7, r7, -4
lbl_80390180:
/* 80390180 0038D0E0  95 07 00 04 */	stwu r8, 4(r7)
/* 80390184 0038D0E4  85 04 00 04 */	lwzu r8, 4(r4)
/* 80390188 0038D0E8  3C A8 FE FF */	addis r5, r8, 0xfeff
/* 8039018C 0038D0EC  38 05 FE FF */	addi r0, r5, -257
/* 80390190 0038D0F0  7C 00 30 39 */	and. r0, r0, r6
/* 80390194 0038D0F4  41 82 FF EC */	beq lbl_80390180
/* 80390198 0038D0F8  38 E7 00 04 */	addi r7, r7, 4
lbl_8039019C:
/* 8039019C 0038D0FC  88 04 00 00 */	lbz r0, 0(r4)
/* 803901A0 0038D100  28 00 00 00 */	cmplwi r0, 0
/* 803901A4 0038D104  98 07 00 00 */	stb r0, 0(r7)
/* 803901A8 0038D108  4D 82 00 20 */	beqlr
lbl_803901AC:
/* 803901AC 0038D10C  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803901B0 0038D110  28 00 00 00 */	cmplwi r0, 0
/* 803901B4 0038D114  9C 07 00 01 */	stbu r0, 1(r7)
/* 803901B8 0038D118  40 82 FF F4 */	bne lbl_803901AC
/* 803901BC 0038D11C  4E 80 00 20 */	blr

.global strlen
strlen:
/* 803901C0 0038D120  38 83 FF FF */	addi r4, r3, -1
/* 803901C4 0038D124  38 60 FF FF */	li r3, -1
lbl_803901C8:
/* 803901C8 0038D128  8C 04 00 01 */	lbzu r0, 1(r4)
/* 803901CC 0038D12C  38 63 00 01 */	addi r3, r3, 1
/* 803901D0 0038D130  28 00 00 00 */	cmplwi r0, 0
/* 803901D4 0038D134  40 82 FF F4 */	bne lbl_803901C8
/* 803901D8 0038D138  4E 80 00 20 */	blr

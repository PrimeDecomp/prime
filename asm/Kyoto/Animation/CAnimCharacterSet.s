.include "macros.inc"

.section .data

.global lbl_803ECBD0
lbl_803ECBD0:
	# ROM: 0x3E9BD0
	.4byte 0
	.4byte 0
	.4byte sub_802d81c0
	.4byte 0

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global FAnimCharacterSet__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FAnimCharacterSet__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 802D80B8 002D5018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D80BC 002D501C  7C 08 02 A6 */	mflr r0
/* 802D80C0 002D5020  3C 80 80 3D */	lis r4, lbl_803D6D30@ha
/* 802D80C4 002D5024  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D80C8 002D5028  38 84 6D 30 */	addi r4, r4, lbl_803D6D30@l
/* 802D80CC 002D502C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D80D0 002D5030  7C BF 2B 78 */	mr r31, r5
/* 802D80D4 002D5034  38 A0 00 00 */	li r5, 0
/* 802D80D8 002D5038  93 C1 00 08 */	stw r30, 8(r1)
/* 802D80DC 002D503C  7C 7E 1B 78 */	mr r30, r3
/* 802D80E0 002D5040  38 60 00 78 */	li r3, 0x78
/* 802D80E4 002D5044  48 03 D7 89 */	bl __nw__FUlPCcPCc
/* 802D80E8 002D5048  7C 64 1B 79 */	or. r4, r3, r3
/* 802D80EC 002D504C  41 82 00 10 */	beq lbl_802D80FC
/* 802D80F0 002D5050  7F E4 FB 78 */	mr r4, r31
/* 802D80F4 002D5054  48 00 05 AD */	bl __ct__17CAnimCharacterSetFR12CInputStream
/* 802D80F8 002D5058  7C 64 1B 78 */	mr r4, r3
lbl_802D80FC:
/* 802D80FC 002D505C  7F C3 F3 78 */	mr r3, r30
/* 802D8100 002D5060  48 00 00 1D */	bl sub_802d811c
/* 802D8104 002D5064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D8108 002D5068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D810C 002D506C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D8110 002D5070  7C 08 03 A6 */	mtlr r0
/* 802D8114 002D5074  38 21 00 10 */	addi r1, r1, 0x10
/* 802D8118 002D5078  4E 80 00 20 */	blr 

.global sub_802d811c
sub_802d811c:
/* 802D811C 002D507C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D8120 002D5080  7C 08 02 A6 */	mflr r0
/* 802D8124 002D5084  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D8128 002D5088  7C 04 00 D0 */	neg r0, r4
/* 802D812C 002D508C  7C 00 23 78 */	or r0, r0, r4
/* 802D8130 002D5090  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D8134 002D5094  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D8138 002D5098  7C 7F 1B 78 */	mr r31, r3
/* 802D813C 002D509C  38 61 00 08 */	addi r3, r1, 8
/* 802D8140 002D50A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 802D8144 002D50A4  38 81 00 10 */	addi r4, r1, 0x10
/* 802D8148 002D50A8  98 01 00 10 */	stb r0, 0x10(r1)
/* 802D814C 002D50AC  48 00 04 29 */	bl sub_802d8574
/* 802D8150 002D50B0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802D8154 002D50B4  38 00 00 00 */	li r0, 0
/* 802D8158 002D50B8  98 01 00 08 */	stb r0, 8(r1)
/* 802D815C 002D50BC  7C 03 00 D0 */	neg r0, r3
/* 802D8160 002D50C0  7C 00 1B 78 */	or r0, r0, r3
/* 802D8164 002D50C4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D8168 002D50C8  98 1F 00 00 */	stb r0, 0(r31)
/* 802D816C 002D50CC  90 7F 00 04 */	stw r3, 4(r31)
/* 802D8170 002D50D0  88 01 00 08 */	lbz r0, 8(r1)
/* 802D8174 002D50D4  28 00 00 00 */	cmplwi r0, 0
/* 802D8178 002D50D8  41 82 00 24 */	beq lbl_802D819C
/* 802D817C 002D50DC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802D8180 002D50E0  28 03 00 00 */	cmplwi r3, 0
/* 802D8184 002D50E4  41 82 00 18 */	beq lbl_802D819C
/* 802D8188 002D50E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802D818C 002D50EC  38 80 00 01 */	li r4, 1
/* 802D8190 002D50F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D8194 002D50F4  7D 89 03 A6 */	mtctr r12
/* 802D8198 002D50F8  4E 80 04 21 */	bctrl 
lbl_802D819C:
/* 802D819C 002D50FC  38 61 00 10 */	addi r3, r1, 0x10
/* 802D81A0 002D5100  38 80 FF FF */	li r4, -1
/* 802D81A4 002D5104  48 00 04 99 */	bl sub_802d863c
/* 802D81A8 002D5108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D81AC 002D510C  7F E3 FB 78 */	mr r3, r31
/* 802D81B0 002D5110  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D81B4 002D5114  7C 08 03 A6 */	mtlr r0
/* 802D81B8 002D5118  38 21 00 20 */	addi r1, r1, 0x20
/* 802D81BC 002D511C  4E 80 00 20 */	blr 

.global sub_802d81c0
sub_802d81c0:
/* 802D81C0 002D5120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D81C4 002D5124  7C 08 02 A6 */	mflr r0
/* 802D81C8 002D5128  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D81CC 002D512C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D81D0 002D5130  7C 9F 23 78 */	mr r31, r4
/* 802D81D4 002D5134  93 C1 00 08 */	stw r30, 8(r1)
/* 802D81D8 002D5138  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D81DC 002D513C  41 82 00 58 */	beq lbl_802D8234
/* 802D81E0 002D5140  3C 60 80 3F */	lis r3, lbl_803ECBD0@ha
/* 802D81E4 002D5144  38 03 CB D0 */	addi r0, r3, lbl_803ECBD0@l
/* 802D81E8 002D5148  90 1E 00 00 */	stw r0, 0(r30)
/* 802D81EC 002D514C  80 7E 00 04 */	lwz r3, 4(r30)
/* 802D81F0 002D5150  28 03 00 00 */	cmplwi r3, 0
/* 802D81F4 002D5154  41 82 00 0C */	beq lbl_802D8200
/* 802D81F8 002D5158  38 80 00 01 */	li r4, 1
/* 802D81FC 002D515C  48 00 00 55 */	bl sub_802d8250
lbl_802D8200:
/* 802D8200 002D5160  28 1E 00 00 */	cmplwi r30, 0
/* 802D8204 002D5164  41 82 00 20 */	beq lbl_802D8224
/* 802D8208 002D5168  3C 60 80 3E */	lis r3, lbl_803D8D78@ha
/* 802D820C 002D516C  38 03 8D 78 */	addi r0, r3, lbl_803D8D78@l
/* 802D8210 002D5170  90 1E 00 00 */	stw r0, 0(r30)
/* 802D8214 002D5174  41 82 00 10 */	beq lbl_802D8224
/* 802D8218 002D5178  3C 60 80 3E */	lis r3, lbl_803D8D6C@ha
/* 802D821C 002D517C  38 03 8D 6C */	addi r0, r3, lbl_803D8D6C@l
/* 802D8220 002D5180  90 1E 00 00 */	stw r0, 0(r30)
lbl_802D8224:
/* 802D8224 002D5184  7F E0 07 35 */	extsh. r0, r31
/* 802D8228 002D5188  40 81 00 0C */	ble lbl_802D8234
/* 802D822C 002D518C  7F C3 F3 78 */	mr r3, r30
/* 802D8230 002D5190  48 03 D7 01 */	bl Free__7CMemoryFPCv
lbl_802D8234:
/* 802D8234 002D5194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D8238 002D5198  7F C3 F3 78 */	mr r3, r30
/* 802D823C 002D519C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D8240 002D51A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D8244 002D51A4  7C 08 03 A6 */	mtlr r0
/* 802D8248 002D51A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D824C 002D51AC  4E 80 00 20 */	blr 

.global sub_802d8250
sub_802d8250:
/* 802D8250 002D51B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D8254 002D51B4  7C 08 02 A6 */	mflr r0
/* 802D8258 002D51B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D825C 002D51BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D8260 002D51C0  7C 9F 23 78 */	mr r31, r4
/* 802D8264 002D51C4  93 C1 00 08 */	stw r30, 8(r1)
/* 802D8268 002D51C8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D826C 002D51CC  41 82 00 2C */	beq lbl_802D8298
/* 802D8270 002D51D0  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D8274 002D51D4  38 80 FF FF */	li r4, -1
/* 802D8278 002D51D8  48 00 01 ED */	bl sub_802d8464
/* 802D827C 002D51DC  38 7E 00 04 */	addi r3, r30, 4
/* 802D8280 002D51E0  38 80 FF FF */	li r4, -1
/* 802D8284 002D51E4  48 00 00 31 */	bl sub_802d82b4
/* 802D8288 002D51E8  7F E0 07 35 */	extsh. r0, r31
/* 802D828C 002D51EC  40 81 00 0C */	ble lbl_802D8298
/* 802D8290 002D51F0  7F C3 F3 78 */	mr r3, r30
/* 802D8294 002D51F4  48 03 D6 9D */	bl Free__7CMemoryFPCv
lbl_802D8298:
/* 802D8298 002D51F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D829C 002D51FC  7F C3 F3 78 */	mr r3, r30
/* 802D82A0 002D5200  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D82A4 002D5204  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D82A8 002D5208  7C 08 03 A6 */	mtlr r0
/* 802D82AC 002D520C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D82B0 002D5210  4E 80 00 20 */	blr 

.global sub_802d82b4
sub_802d82b4:
/* 802D82B4 002D5214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D82B8 002D5218  7C 08 02 A6 */	mflr r0
/* 802D82BC 002D521C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D82C0 002D5220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D82C4 002D5224  7C 9F 23 78 */	mr r31, r4
/* 802D82C8 002D5228  93 C1 00 08 */	stw r30, 8(r1)
/* 802D82CC 002D522C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D82D0 002D5230  41 82 00 20 */	beq lbl_802D82F0
/* 802D82D4 002D5234  38 7E 00 04 */	addi r3, r30, 4
/* 802D82D8 002D5238  38 80 FF FF */	li r4, -1
/* 802D82DC 002D523C  48 00 00 31 */	bl sub_802d830c
/* 802D82E0 002D5240  7F E0 07 35 */	extsh. r0, r31
/* 802D82E4 002D5244  40 81 00 0C */	ble lbl_802D82F0
/* 802D82E8 002D5248  7F C3 F3 78 */	mr r3, r30
/* 802D82EC 002D524C  48 03 D6 45 */	bl Free__7CMemoryFPCv
lbl_802D82F0:
/* 802D82F0 002D5250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D82F4 002D5254  7F C3 F3 78 */	mr r3, r30
/* 802D82F8 002D5258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D82FC 002D525C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D8300 002D5260  7C 08 03 A6 */	mtlr r0
/* 802D8304 002D5264  38 21 00 10 */	addi r1, r1, 0x10
/* 802D8308 002D5268  4E 80 00 20 */	blr 

.global sub_802d830c
sub_802d830c:
/* 802D830C 002D526C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D8310 002D5270  7C 08 02 A6 */	mflr r0
/* 802D8314 002D5274  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D8318 002D5278  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D831C 002D527C  7C 9F 23 78 */	mr r31, r4
/* 802D8320 002D5280  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D8324 002D5284  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D8328 002D5288  41 82 00 54 */	beq lbl_802D837C
/* 802D832C 002D528C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802D8330 002D5290  38 61 00 14 */	addi r3, r1, 0x14
/* 802D8334 002D5294  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802D8338 002D5298  38 81 00 0C */	addi r4, r1, 0xc
/* 802D833C 002D529C  1C 00 00 C4 */	mulli r0, r0, 0xc4
/* 802D8340 002D52A0  7C A5 02 14 */	add r5, r5, r0
/* 802D8344 002D52A4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802D8348 002D52A8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802D834C 002D52AC  90 A1 00 08 */	stw r5, 8(r1)
/* 802D8350 002D52B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D8354 002D52B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D8358 002D52B8  48 00 00 41 */	bl sub_802d8398
/* 802D835C 002D52BC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802D8360 002D52C0  28 03 00 00 */	cmplwi r3, 0
/* 802D8364 002D52C4  41 82 00 08 */	beq lbl_802D836C
/* 802D8368 002D52C8  48 03 D5 C9 */	bl Free__7CMemoryFPCv
lbl_802D836C:
/* 802D836C 002D52CC  7F E0 07 35 */	extsh. r0, r31
/* 802D8370 002D52D0  40 81 00 0C */	ble lbl_802D837C
/* 802D8374 002D52D4  7F C3 F3 78 */	mr r3, r30
/* 802D8378 002D52D8  48 03 D5 B9 */	bl Free__7CMemoryFPCv
lbl_802D837C:
/* 802D837C 002D52DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D8380 002D52E0  7F C3 F3 78 */	mr r3, r30
/* 802D8384 002D52E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D8388 002D52E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D838C 002D52EC  7C 08 03 A6 */	mtlr r0
/* 802D8390 002D52F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D8394 002D52F4  4E 80 00 20 */	blr 

.global sub_802d8398
sub_802d8398:
/* 802D8398 002D52F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D839C 002D52FC  7C 08 02 A6 */	mflr r0
/* 802D83A0 002D5300  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D83A4 002D5304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D83A8 002D5308  93 C1 00 08 */	stw r30, 8(r1)
/* 802D83AC 002D530C  7C 9E 23 78 */	mr r30, r4
/* 802D83B0 002D5310  83 E3 00 00 */	lwz r31, 0(r3)
/* 802D83B4 002D5314  48 00 00 10 */	b lbl_802D83C4
lbl_802D83B8:
/* 802D83B8 002D5318  7F E3 FB 78 */	mr r3, r31
/* 802D83BC 002D531C  48 00 00 2D */	bl sub_802d83e8
/* 802D83C0 002D5320  3B FF 00 C4 */	addi r31, r31, 0xc4
lbl_802D83C4:
/* 802D83C4 002D5324  80 1E 00 00 */	lwz r0, 0(r30)
/* 802D83C8 002D5328  7C 1F 00 40 */	cmplw r31, r0
/* 802D83CC 002D532C  40 82 FF EC */	bne lbl_802D83B8
/* 802D83D0 002D5330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D83D4 002D5334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D83D8 002D5338  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D83DC 002D533C  7C 08 03 A6 */	mtlr r0
/* 802D83E0 002D5340  38 21 00 10 */	addi r1, r1, 0x10
/* 802D83E4 002D5344  4E 80 00 20 */	blr 

.global sub_802d83e8
sub_802d83e8:
/* 802D83E8 002D5348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D83EC 002D534C  7C 08 02 A6 */	mflr r0
/* 802D83F0 002D5350  38 80 FF FF */	li r4, -1
/* 802D83F4 002D5354  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D83F8 002D5358  48 00 00 15 */	bl __dt__13CAnimationSetFv
/* 802D83FC 002D535C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D8400 002D5360  7C 08 03 A6 */	mtlr r0
/* 802D8404 002D5364  38 21 00 10 */	addi r1, r1, 0x10
/* 802D8408 002D5368  4E 80 00 20 */	blr 

.global __dt__13CAnimationSetFv
__dt__13CAnimationSetFv:
/* 802D840C 002D536C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D8410 002D5370  7C 08 02 A6 */	mflr r0
/* 802D8414 002D5374  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D8418 002D5378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D841C 002D537C  7C 9F 23 78 */	mr r31, r4
/* 802D8420 002D5380  93 C1 00 08 */	stw r30, 8(r1)
/* 802D8424 002D5384  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D8428 002D5388  41 82 00 20 */	beq lbl_802D8448
/* 802D842C 002D538C  38 7E 00 04 */	addi r3, r30, 4
/* 802D8430 002D5390  38 80 FF FF */	li r4, -1
/* 802D8434 002D5394  4B D5 6A 91 */	bl __dt__14CCharacterInfoFv
/* 802D8438 002D5398  7F E0 07 35 */	extsh. r0, r31
/* 802D843C 002D539C  40 81 00 0C */	ble lbl_802D8448
/* 802D8440 002D53A0  7F C3 F3 78 */	mr r3, r30
/* 802D8444 002D53A4  48 03 D4 ED */	bl Free__7CMemoryFPCv
lbl_802D8448:
/* 802D8448 002D53A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D844C 002D53AC  7F C3 F3 78 */	mr r3, r30
/* 802D8450 002D53B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D8454 002D53B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D8458 002D53B8  7C 08 03 A6 */	mtlr r0
/* 802D845C 002D53BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D8460 002D53C0  4E 80 00 20 */	blr 

.global sub_802d8464
sub_802d8464:
/* 802D8464 002D53C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D8468 002D53C8  7C 08 02 A6 */	mflr r0
/* 802D846C 002D53CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D8470 002D53D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802D8474 002D53D4  7C 9F 23 78 */	mr r31, r4
/* 802D8478 002D53D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802D847C 002D53DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D8480 002D53E0  41 82 00 D8 */	beq lbl_802D8558
/* 802D8484 002D53E4  34 1E 00 50 */	addic. r0, r30, 0x50
/* 802D8488 002D53E8  41 82 00 44 */	beq lbl_802D84CC
/* 802D848C 002D53EC  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 802D8490 002D53F0  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 802D8494 002D53F4  54 00 18 38 */	slwi r0, r0, 3
/* 802D8498 002D53F8  7C 03 02 14 */	add r0, r3, r0
/* 802D849C 002D53FC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802D84A0 002D5400  7C 64 1B 78 */	mr r4, r3
/* 802D84A4 002D5404  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D84A8 002D5408  90 01 00 20 */	stw r0, 0x20(r1)
/* 802D84AC 002D540C  90 61 00 18 */	stw r3, 0x18(r1)
/* 802D84B0 002D5410  48 00 00 08 */	b lbl_802D84B8
lbl_802D84B4:
/* 802D84B4 002D5414  38 84 00 08 */	addi r4, r4, 8
lbl_802D84B8:
/* 802D84B8 002D5418  7C 04 00 40 */	cmplw r4, r0
/* 802D84BC 002D541C  40 82 FF F8 */	bne lbl_802D84B4
/* 802D84C0 002D5420  28 03 00 00 */	cmplwi r3, 0
/* 802D84C4 002D5424  41 82 00 08 */	beq lbl_802D84CC
/* 802D84C8 002D5428  48 03 D4 69 */	bl Free__7CMemoryFPCv
lbl_802D84CC:
/* 802D84CC 002D542C  38 7E 00 40 */	addi r3, r30, 0x40
/* 802D84D0 002D5430  38 80 FF FF */	li r4, -1
/* 802D84D4 002D5434  4B FF F2 89 */	bl "__dt__Q24rstl52vector<15CHalfTransition,Q24rstl17rmemory_allocator>Fv"
/* 802D84D8 002D5438  34 1E 00 28 */	addic. r0, r30, 0x28
/* 802D84DC 002D543C  41 82 00 44 */	beq lbl_802D8520
/* 802D84E0 002D5440  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 802D84E4 002D5444  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 802D84E8 002D5448  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802D84EC 002D544C  90 61 00 0C */	stw r3, 0xc(r1)
/* 802D84F0 002D5450  7C 64 1B 78 */	mr r4, r3
/* 802D84F4 002D5454  7C 03 02 14 */	add r0, r3, r0
/* 802D84F8 002D5458  90 61 00 08 */	stw r3, 8(r1)
/* 802D84FC 002D545C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D8500 002D5460  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D8504 002D5464  48 00 00 08 */	b lbl_802D850C
lbl_802D8508:
/* 802D8508 002D5468  38 84 00 0C */	addi r4, r4, 0xc
lbl_802D850C:
/* 802D850C 002D546C  7C 04 00 40 */	cmplw r4, r0
/* 802D8510 002D5470  40 82 FF F8 */	bne lbl_802D8508
/* 802D8514 002D5474  28 03 00 00 */	cmplwi r3, 0
/* 802D8518 002D5478  41 82 00 08 */	beq lbl_802D8520
/* 802D851C 002D547C  48 03 D4 15 */	bl Free__7CMemoryFPCv
lbl_802D8520:
/* 802D8520 002D5480  34 1E 00 24 */	addic. r0, r30, 0x24
/* 802D8524 002D5484  41 82 00 0C */	beq lbl_802D8530
/* 802D8528 002D5488  38 7E 00 24 */	addi r3, r30, 0x24
/* 802D852C 002D548C  4B D5 BD 69 */	bl __dt__17CMetaTransFactoryFv
lbl_802D8530:
/* 802D8530 002D5490  38 7E 00 14 */	addi r3, r30, 0x14
/* 802D8534 002D5494  38 80 FF FF */	li r4, -1
/* 802D8538 002D5498  4B FF F2 D9 */	bl sub_802d7810
/* 802D853C 002D549C  38 7E 00 04 */	addi r3, r30, 4
/* 802D8540 002D54A0  38 80 FF FF */	li r4, -1
/* 802D8544 002D54A4  4B FF F4 F5 */	bl sub_802d7a38
/* 802D8548 002D54A8  7F E0 07 35 */	extsh. r0, r31
/* 802D854C 002D54AC  40 81 00 0C */	ble lbl_802D8558
/* 802D8550 002D54B0  7F C3 F3 78 */	mr r3, r30
/* 802D8554 002D54B4  48 03 D3 DD */	bl Free__7CMemoryFPCv
lbl_802D8558:
/* 802D8558 002D54B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D855C 002D54BC  7F C3 F3 78 */	mr r3, r30
/* 802D8560 002D54C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802D8564 002D54C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802D8568 002D54C8  7C 08 03 A6 */	mtlr r0
/* 802D856C 002D54CC  38 21 00 30 */	addi r1, r1, 0x30
/* 802D8570 002D54D0  4E 80 00 20 */	blr 

.global sub_802d8574
sub_802d8574:
/* 802D8574 002D54D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D8578 002D54D8  7C 08 02 A6 */	mflr r0
/* 802D857C 002D54DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D8580 002D54E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D8584 002D54E4  7C 7F 1B 78 */	mr r31, r3
/* 802D8588 002D54E8  48 00 00 19 */	bl sub_802d85a0
/* 802D858C 002D54EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D8590 002D54F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D8594 002D54F4  7C 08 03 A6 */	mtlr r0
/* 802D8598 002D54F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D859C 002D54FC  4E 80 00 20 */	blr 

.global sub_802d85a0
sub_802d85a0:
/* 802D85A0 002D5500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D85A4 002D5504  7C 08 02 A6 */	mflr r0
/* 802D85A8 002D5508  3C A0 80 3D */	lis r5, lbl_803D6D30@ha
/* 802D85AC 002D550C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D85B0 002D5510  38 05 6D 30 */	addi r0, r5, lbl_803D6D30@l
/* 802D85B4 002D5514  38 A0 00 00 */	li r5, 0
/* 802D85B8 002D5518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D85BC 002D551C  7C 9F 23 78 */	mr r31, r4
/* 802D85C0 002D5520  7C 04 03 78 */	mr r4, r0
/* 802D85C4 002D5524  93 C1 00 08 */	stw r30, 8(r1)
/* 802D85C8 002D5528  7C 7E 1B 78 */	mr r30, r3
/* 802D85CC 002D552C  38 60 00 08 */	li r3, 8
/* 802D85D0 002D5530  48 03 D2 9D */	bl __nw__FUlPCcPCc
/* 802D85D4 002D5534  28 03 00 00 */	cmplwi r3, 0
/* 802D85D8 002D5538  41 82 00 38 */	beq lbl_802D8610
/* 802D85DC 002D553C  3C 80 80 3E */	lis r4, lbl_803D8D6C@ha
/* 802D85E0 002D5540  3C A0 80 3E */	lis r5, lbl_803D8D78@ha
/* 802D85E4 002D5544  38 04 8D 6C */	addi r0, r4, lbl_803D8D6C@l
/* 802D85E8 002D5548  3C 80 80 3F */	lis r4, lbl_803ECBD0@ha
/* 802D85EC 002D554C  90 03 00 00 */	stw r0, 0(r3)
/* 802D85F0 002D5550  38 C5 8D 78 */	addi r6, r5, lbl_803D8D78@l
/* 802D85F4 002D5554  38 A0 00 00 */	li r5, 0
/* 802D85F8 002D5558  38 04 CB D0 */	addi r0, r4, lbl_803ECBD0@l
/* 802D85FC 002D555C  90 C3 00 00 */	stw r6, 0(r3)
/* 802D8600 002D5560  98 BF 00 00 */	stb r5, 0(r31)
/* 802D8604 002D5564  80 9F 00 04 */	lwz r4, 4(r31)
/* 802D8608 002D5568  90 83 00 04 */	stw r4, 4(r3)
/* 802D860C 002D556C  90 03 00 00 */	stw r0, 0(r3)
lbl_802D8610:
/* 802D8610 002D5570  7C 03 00 D0 */	neg r0, r3
/* 802D8614 002D5574  7C 00 1B 78 */	or r0, r0, r3
/* 802D8618 002D5578  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D861C 002D557C  98 1E 00 00 */	stb r0, 0(r30)
/* 802D8620 002D5580  90 7E 00 04 */	stw r3, 4(r30)
/* 802D8624 002D5584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D8628 002D5588  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D862C 002D558C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D8630 002D5590  7C 08 03 A6 */	mtlr r0
/* 802D8634 002D5594  38 21 00 10 */	addi r1, r1, 0x10
/* 802D8638 002D5598  4E 80 00 20 */	blr 

.global sub_802d863c
sub_802d863c:
/* 802D863C 002D559C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D8640 002D55A0  7C 08 02 A6 */	mflr r0
/* 802D8644 002D55A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D8648 002D55A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D864C 002D55AC  7C 9F 23 78 */	mr r31, r4
/* 802D8650 002D55B0  93 C1 00 08 */	stw r30, 8(r1)
/* 802D8654 002D55B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D8658 002D55B8  41 82 00 2C */	beq lbl_802D8684
/* 802D865C 002D55BC  88 1E 00 00 */	lbz r0, 0(r30)
/* 802D8660 002D55C0  28 00 00 00 */	cmplwi r0, 0
/* 802D8664 002D55C4  41 82 00 10 */	beq lbl_802D8674
/* 802D8668 002D55C8  80 7E 00 04 */	lwz r3, 4(r30)
/* 802D866C 002D55CC  38 80 00 01 */	li r4, 1
/* 802D8670 002D55D0  4B FF FB E1 */	bl sub_802d8250
lbl_802D8674:
/* 802D8674 002D55D4  7F E0 07 35 */	extsh. r0, r31
/* 802D8678 002D55D8  40 81 00 0C */	ble lbl_802D8684
/* 802D867C 002D55DC  7F C3 F3 78 */	mr r3, r30
/* 802D8680 002D55E0  48 03 D2 B1 */	bl Free__7CMemoryFPCv
lbl_802D8684:
/* 802D8684 002D55E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D8688 002D55E8  7F C3 F3 78 */	mr r3, r30
/* 802D868C 002D55EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D8690 002D55F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D8694 002D55F4  7C 08 03 A6 */	mtlr r0
/* 802D8698 002D55F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D869C 002D55FC  4E 80 00 20 */	blr 

.global __ct__17CAnimCharacterSetFR12CInputStream
__ct__17CAnimCharacterSetFR12CInputStream:
/* 802D86A0 002D5600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D86A4 002D5604  7C 08 02 A6 */	mflr r0
/* 802D86A8 002D5608  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D86AC 002D560C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D86B0 002D5610  7C 9F 23 78 */	mr r31, r4
/* 802D86B4 002D5614  93 C1 00 08 */	stw r30, 8(r1)
/* 802D86B8 002D5618  7C 7E 1B 78 */	mr r30, r3
/* 802D86BC 002D561C  7F E3 FB 78 */	mr r3, r31
/* 802D86C0 002D5620  48 06 65 F1 */	bl ReadShort__12CInputStreamFv
/* 802D86C4 002D5624  B0 7E 00 00 */	sth r3, 0(r30)
/* 802D86C8 002D5628  7F E4 FB 78 */	mr r4, r31
/* 802D86CC 002D562C  38 7E 00 04 */	addi r3, r30, 4
/* 802D86D0 002D5630  48 00 6E 05 */	bl __ct__13CCharacterSetFR12CInputStream
/* 802D86D4 002D5634  7F E4 FB 78 */	mr r4, r31
/* 802D86D8 002D5638  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D86DC 002D563C  4B FF ED 25 */	bl __ct__13CAnimationSetFR12CInputStream
/* 802D86E0 002D5640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D86E4 002D5644  7F C3 F3 78 */	mr r3, r30
/* 802D86E8 002D5648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D86EC 002D564C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D86F0 002D5650  7C 08 03 A6 */	mtlr r0
/* 802D86F4 002D5654  38 21 00 10 */	addi r1, r1, 0x10
/* 802D86F8 002D5658  4E 80 00 20 */	blr

.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CScriptLayerManager_cpp

.section .sdata
.balign 8

.global lbl_805A8200
lbl_805A8200:
	# ROM: 0x3F5BA0
	.4byte 0
	.4byte 0


.section .bss
.balign 8

.lcomm lbl_8046D340, 0xC, 4
.lcomm lbl_8046D34C, 0x14, 4

.section .text, "ax"

.global nullsub_5
nullsub_5:
/* 80233FB0 00230F10  4E 80 00 20 */	blr

.global GetAreaLayerCount__16CWorldLayerStateFi
GetAreaLayerCount__16CWorldLayerStateFi:
/* 80233FB4 00230F14  80 04 00 00 */	lwz r0, 0(r4)
/* 80233FB8 00230F18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80233FBC 00230F1C  54 00 20 36 */	slwi r0, r0, 4
/* 80233FC0 00230F20  7C 63 00 2E */	lwzx r3, r3, r0
.global lbl_80233FC4
lbl_80233FC4:
/* 80233FC4 00230F24  4E 80 00 20 */	blr

.global "InitializeWorldLayers__16CWorldLayerStateFQ24rstl6vector<Q2CWorldLayers4Area>"
"InitializeWorldLayers__16CWorldLayerStateFQ24rstl6vector<Q2CWorldLayers4Area>":
/* 80233FC8 00230F28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80233FCC 00230F2C  7C 08 02 A6 */	mflr r0
/* 80233FD0 00230F30  90 01 00 74 */	stw r0, 0x74(r1)
/* 80233FD4 00230F34  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 80233FD8 00230F38  7C 7A 1B 78 */	mr r26, r3
/* 80233FDC 00230F3C  80 03 00 04 */	lwz r0, 4(r3)
/* 80233FE0 00230F40  2C 00 00 00 */	cmpwi r0, 0
/* 80233FE4 00230F44  40 82 01 34 */	bne lbl_80234118
/* 80233FE8 00230F48  48 00 01 85 */	bl sub_8023416c
/* 80233FEC 00230F4C  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 80233FF0 00230F50  2C 00 00 00 */	cmpwi r0, 0
/* 80233FF4 00230F54  41 82 01 24 */	beq lbl_80234118
/* 80233FF8 00230F58  83 DA 00 04 */	lwz r30, 4(r26)
/* 80233FFC 00230F5C  3B A0 00 00 */	li r29, 0
/* 80234000 00230F60  3B 80 00 00 */	li r28, 0
/* 80234004 00230F64  48 00 00 AC */	b lbl_802340B0
lbl_80234008:
/* 80234008 00230F68  93 81 00 30 */	stw r28, 0x30(r1)
/* 8023400C 00230F6C  7F 43 D3 78 */	mr r3, r26
/* 80234010 00230F70  38 81 00 34 */	addi r4, r1, 0x34
/* 80234014 00230F74  93 81 00 34 */	stw r28, 0x34(r1)
/* 80234018 00230F78  4B FF FF 9D */	bl GetAreaLayerCount__16CWorldLayerStateFi
/* 8023401C 00230F7C  93 81 00 28 */	stw r28, 0x28(r1)
/* 80234020 00230F80  7C 7F 1B 78 */	mr r31, r3
/* 80234024 00230F84  3B 60 00 01 */	li r27, 1
/* 80234028 00230F88  48 00 00 7C */	b lbl_802340A4
lbl_8023402C:
/* 8023402C 00230F8C  7F A3 2E 70 */	srawi r3, r29, 5
/* 80234030 00230F90  57 A0 D8 08 */	slwi r0, r29, 0x1b
/* 80234034 00230F94  57 A4 0F FE */	srwi r4, r29, 0x1f
/* 80234038 00230F98  81 1A 00 20 */	lwz r8, 0x20(r26)
/* 8023403C 00230F9C  7C 63 01 94 */	addze r3, r3
/* 80234040 00230FA0  38 A0 00 01 */	li r5, 1
/* 80234044 00230FA4  54 66 10 3A */	slwi r6, r3, 2
/* 80234048 00230FA8  93 61 00 20 */	stw r27, 0x20(r1)
/* 8023404C 00230FAC  7D 08 32 14 */	add r8, r8, r6
/* 80234050 00230FB0  7C 64 00 50 */	subf r3, r4, r0
/* 80234054 00230FB4  80 08 00 00 */	lwz r0, 0(r8)
/* 80234058 00230FB8  54 63 28 3E */	rotlwi r3, r3, 5
/* 8023405C 00230FBC  7C 63 22 14 */	add r3, r3, r4
/* 80234060 00230FC0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80234064 00230FC4  7C A7 18 30 */	slw r7, r5, r3
/* 80234068 00230FC8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8023406C 00230FCC  7C E5 00 38 */	and r5, r7, r0
/* 80234070 00230FD0  91 01 00 18 */	stw r8, 0x18(r1)
/* 80234074 00230FD4  7C 05 00 D0 */	neg r0, r5
/* 80234078 00230FD8  7F 43 D3 78 */	mr r3, r26
/* 8023407C 00230FDC  7C 00 2B 78 */	or r0, r0, r5
/* 80234080 00230FE0  91 01 00 38 */	stw r8, 0x38(r1)
/* 80234084 00230FE4  54 06 0F FE */	srwi r6, r0, 0x1f
/* 80234088 00230FE8  38 A1 00 24 */	addi r5, r1, 0x24
/* 8023408C 00230FEC  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 80234090 00230FF0  3B BD 00 01 */	addi r29, r29, 1
/* 80234094 00230FF4  93 61 00 24 */	stw r27, 0x24(r1)
/* 80234098 00230FF8  93 81 00 2C */	stw r28, 0x2c(r1)
/* 8023409C 00230FFC  48 00 02 25 */	bl SetLayerActive__16CWorldLayerStateFiib
/* 802340A0 00231000  3B 7B 00 01 */	addi r27, r27, 1
lbl_802340A4:
/* 802340A4 00231004  7C 1B F8 00 */	cmpw r27, r31
/* 802340A8 00231008  41 80 FF 84 */	blt lbl_8023402C
/* 802340AC 0023100C  3B 9C 00 01 */	addi r28, r28, 1
lbl_802340B0:
/* 802340B0 00231010  7C 1C F0 00 */	cmpw r28, r30
/* 802340B4 00231014  41 80 FF 54 */	blt lbl_80234008
/* 802340B8 00231018  38 00 00 00 */	li r0, 0
/* 802340BC 0023101C  38 7A 00 10 */	addi r3, r26, 0x10
/* 802340C0 00231020  90 01 00 40 */	stw r0, 0x40(r1)
/* 802340C4 00231024  38 81 00 40 */	addi r4, r1, 0x40
/* 802340C8 00231028  90 01 00 48 */	stw r0, 0x48(r1)
/* 802340CC 0023102C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802340D0 00231030  90 01 00 50 */	stw r0, 0x50(r1)
/* 802340D4 00231034  48 00 00 59 */	bl sub_8023412c
/* 802340D8 00231038  80 01 00 48 */	lwz r0, 0x48(r1)
/* 802340DC 0023103C  80 61 00 50 */	lwz r3, 0x50(r1)
/* 802340E0 00231040  54 00 10 3A */	slwi r0, r0, 2
/* 802340E4 00231044  7C 03 02 14 */	add r0, r3, r0
/* 802340E8 00231048  90 61 00 0C */	stw r3, 0xc(r1)
/* 802340EC 0023104C  7C 64 1B 78 */	mr r4, r3
/* 802340F0 00231050  90 01 00 14 */	stw r0, 0x14(r1)
/* 802340F4 00231054  90 01 00 10 */	stw r0, 0x10(r1)
/* 802340F8 00231058  90 61 00 08 */	stw r3, 8(r1)
/* 802340FC 0023105C  48 00 00 08 */	b lbl_80234104
lbl_80234100:
/* 80234100 00231060  38 84 00 04 */	addi r4, r4, 4
lbl_80234104:
/* 80234104 00231064  7C 04 00 40 */	cmplw r4, r0
/* 80234108 00231068  40 82 FF F8 */	bne lbl_80234100
/* 8023410C 0023106C  28 03 00 00 */	cmplwi r3, 0
/* 80234110 00231070  41 82 00 08 */	beq lbl_80234118
/* 80234114 00231074  48 0E 18 1D */	bl Free__7CMemoryFPCv
lbl_80234118:
/* 80234118 00231078  BB 41 00 58 */	lmw r26, 0x58(r1)
/* 8023411C 0023107C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80234120 00231080  7C 08 03 A6 */	mtlr r0
/* 80234124 00231084  38 21 00 70 */	addi r1, r1, 0x70
/* 80234128 00231088  4E 80 00 20 */	blr

.global sub_8023412c
sub_8023412c:
/* 8023412C 0023108C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80234130 00231090  7C 08 02 A6 */	mflr r0
/* 80234134 00231094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80234138 00231098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023413C 0023109C  7C 7F 1B 78 */	mr r31, r3
/* 80234140 002310A0  38 7F 00 04 */	addi r3, r31, 4
/* 80234144 002310A4  80 04 00 00 */	lwz r0, 0(r4)
/* 80234148 002310A8  38 84 00 04 */	addi r4, r4, 4
/* 8023414C 002310AC  90 1F 00 00 */	stw r0, 0(r31)
/* 80234150 002310B0  4B E2 F5 AD */	bl "clear__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fv"
/* 80234154 002310B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80234158 002310B8  7F E3 FB 78 */	mr r3, r31
/* 8023415C 002310BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80234160 002310C0  7C 08 03 A6 */	mtlr r0
/* 80234164 002310C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80234168 002310C8  4E 80 00 20 */	blr

.global sub_8023416c
sub_8023416c:
/* 8023416C 002310CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80234170 002310D0  7C 08 02 A6 */	mflr r0
/* 80234174 002310D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80234178 002310D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8023417C 002310DC  7C 9F 23 78 */	mr r31, r4
/* 80234180 002310E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80234184 002310E4  7C 7E 1B 78 */	mr r30, r3
/* 80234188 002310E8  7C 1E F8 40 */	cmplw r30, r31
/* 8023418C 002310EC  40 82 00 08 */	bne lbl_80234194
/* 80234190 002310F0  48 00 00 C8 */	b lbl_80234258
lbl_80234194:
/* 80234194 002310F4  80 1E 00 04 */	lwz r0, 4(r30)
/* 80234198 002310F8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023419C 002310FC  54 00 20 36 */	slwi r0, r0, 4
/* 802341A0 00231100  7C 03 02 14 */	add r0, r3, r0
/* 802341A4 00231104  90 61 00 0C */	stw r3, 0xc(r1)
/* 802341A8 00231108  90 01 00 14 */	stw r0, 0x14(r1)
/* 802341AC 0023110C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802341B0 00231110  90 61 00 08 */	stw r3, 8(r1)
/* 802341B4 00231114  48 00 00 08 */	b lbl_802341BC
lbl_802341B8:
/* 802341B8 00231118  38 63 00 10 */	addi r3, r3, 0x10
lbl_802341BC:
/* 802341BC 0023111C  7C 03 00 40 */	cmplw r3, r0
/* 802341C0 00231120  40 82 FF F8 */	bne lbl_802341B8
/* 802341C4 00231124  38 00 00 00 */	li r0, 0
/* 802341C8 00231128  90 1E 00 04 */	stw r0, 4(r30)
/* 802341CC 0023112C  80 9F 00 04 */	lwz r4, 4(r31)
/* 802341D0 00231130  2C 04 00 00 */	cmpwi r4, 0
/* 802341D4 00231134  40 82 00 28 */	bne lbl_802341FC
/* 802341D8 00231138  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802341DC 0023113C  28 03 00 00 */	cmplwi r3, 0
/* 802341E0 00231140  41 82 00 08 */	beq lbl_802341E8
/* 802341E4 00231144  48 0E 17 4D */	bl Free__7CMemoryFPCv
lbl_802341E8:
/* 802341E8 00231148  38 00 00 00 */	li r0, 0
/* 802341EC 0023114C  90 1E 00 04 */	stw r0, 4(r30)
/* 802341F0 00231150  90 1E 00 08 */	stw r0, 8(r30)
/* 802341F4 00231154  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802341F8 00231158  48 00 00 5C */	b lbl_80234254
lbl_802341FC:
/* 802341FC 0023115C  7F C3 F3 78 */	mr r3, r30
/* 80234200 00231160  4B E2 58 B5 */	bl sub_80059ab4
/* 80234204 00231164  80 1F 00 04 */	lwz r0, 4(r31)
/* 80234208 00231168  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 8023420C 0023116C  54 00 20 36 */	slwi r0, r0, 4
/* 80234210 00231170  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80234214 00231174  7C A6 02 14 */	add r5, r6, r0
/* 80234218 00231178  48 00 00 2C */	b lbl_80234244
lbl_8023421C:
/* 8023421C 0023117C  28 04 00 00 */	cmplwi r4, 0
/* 80234220 00231180  41 82 00 1C */	beq lbl_8023423C
/* 80234224 00231184  80 06 00 00 */	lwz r0, 0(r6)
/* 80234228 00231188  90 04 00 00 */	stw r0, 0(r4)
/* 8023422C 0023118C  80 06 00 08 */	lwz r0, 8(r6)
/* 80234230 00231190  80 66 00 0C */	lwz r3, 0xc(r6)
/* 80234234 00231194  90 64 00 0C */	stw r3, 0xc(r4)
/* 80234238 00231198  90 04 00 08 */	stw r0, 8(r4)
lbl_8023423C:
/* 8023423C 0023119C  38 84 00 10 */	addi r4, r4, 0x10
/* 80234240 002311A0  38 C6 00 10 */	addi r6, r6, 0x10
lbl_80234244:
/* 80234244 002311A4  7C 06 28 40 */	cmplw r6, r5
/* 80234248 002311A8  40 82 FF D4 */	bne lbl_8023421C
/* 8023424C 002311AC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80234250 002311B0  90 1E 00 04 */	stw r0, 4(r30)
lbl_80234254:
/* 80234254 002311B4  7F C3 F3 78 */	mr r3, r30
lbl_80234258:
/* 80234258 002311B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023425C 002311BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80234260 002311C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80234264 002311C4  7C 08 03 A6 */	mtlr r0
/* 80234268 002311C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8023426C 002311CC  4E 80 00 20 */	blr

.global IsLayerActive__16CWorldLayerStateFii
IsLayerActive__16CWorldLayerStateFii:
/* 80234270 002311D0  80 E4 00 00 */	lwz r7, 0(r4)
/* 80234274 002311D4  38 C0 00 01 */	li r6, 1
/* 80234278 002311D8  80 05 00 00 */	lwz r0, 0(r5)
/* 8023427C 002311DC  38 80 00 00 */	li r4, 0
/* 80234280 002311E0  54 E5 20 36 */	slwi r5, r7, 4
/* 80234284 002311E4  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 80234288 002311E8  38 65 00 08 */	addi r3, r5, 8
/* 8023428C 002311EC  7C C5 00 30 */	slw r5, r6, r0
/* 80234290 002311F0  7C C7 1A 14 */	add r6, r7, r3
/* 80234294 002311F4  80 66 00 00 */	lwz r3, 0(r6)
/* 80234298 002311F8  7C A0 FE 70 */	srawi r0, r5, 0x1f
/* 8023429C 002311FC  80 C6 00 04 */	lwz r6, 4(r6)
/* 802342A0 00231200  7C 63 00 38 */	and r3, r3, r0
/* 802342A4 00231204  7C C0 28 38 */	and r0, r6, r5
/* 802342A8 00231208  7C 00 22 78 */	xor r0, r0, r4
/* 802342AC 0023120C  7C 63 22 78 */	xor r3, r3, r4
/* 802342B0 00231210  7C 03 1B 78 */	or r3, r0, r3
/* 802342B4 00231214  30 03 FF FF */	addic r0, r3, -1
/* 802342B8 00231218  7C 60 19 10 */	subfe r3, r0, r3
/* 802342BC 0023121C  4E 80 00 20 */	blr

.global SetLayerActive__16CWorldLayerStateFiib
SetLayerActive__16CWorldLayerStateFiib:
/* 802342C0 00231220  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802342C4 00231224  80 84 00 00 */	lwz r4, 0(r4)
/* 802342C8 00231228  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802342CC 0023122C  54 80 20 36 */	slwi r0, r4, 4
/* 802342D0 00231230  80 85 00 00 */	lwz r4, 0(r5)
/* 802342D4 00231234  7C C3 02 14 */	add r6, r3, r0
/* 802342D8 00231238  41 82 00 2C */	beq lbl_80234304
/* 802342DC 0023123C  38 00 00 01 */	li r0, 1
/* 802342E0 00231240  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 802342E4 00231244  7C 03 20 30 */	slw r3, r0, r4
/* 802342E8 00231248  80 86 00 08 */	lwz r4, 8(r6)
/* 802342EC 0023124C  7C A0 1B 78 */	or r0, r5, r3
/* 802342F0 00231250  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 802342F4 00231254  90 06 00 0C */	stw r0, 0xc(r6)
/* 802342F8 00231258  7C 80 1B 78 */	or r0, r4, r3
/* 802342FC 0023125C  90 06 00 08 */	stw r0, 8(r6)
/* 80234300 00231260  4E 80 00 20 */	blr
lbl_80234304:
/* 80234304 00231264  38 00 00 01 */	li r0, 1
/* 80234308 00231268  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 8023430C 0023126C  7C 00 20 30 */	slw r0, r0, r4
/* 80234310 00231270  80 86 00 08 */	lwz r4, 8(r6)
/* 80234314 00231274  7C 03 00 F8 */	nor r3, r0, r0
/* 80234318 00231278  7C A0 18 38 */	and r0, r5, r3
/* 8023431C 0023127C  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 80234320 00231280  90 06 00 0C */	stw r0, 0xc(r6)
/* 80234324 00231284  7C 80 18 38 */	and r0, r4, r3
/* 80234328 00231288  90 06 00 08 */	stw r0, 8(r6)
/* 8023432C 0023128C  4E 80 00 20 */	blr

.global PutTo__16CWorldLayerStateFR16CMemoryStreamOut
PutTo__16CWorldLayerStateFR16CMemoryStreamOut:
/* 80234330 00231290  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80234334 00231294  7C 08 02 A6 */	mflr r0
/* 80234338 00231298  90 01 00 44 */	stw r0, 0x44(r1)
/* 8023433C 0023129C  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 80234340 002312A0  7C 7A 1B 78 */	mr r26, r3
/* 80234344 002312A4  7C 9B 23 78 */	mr r27, r4
/* 80234348 002312A8  3B E0 00 00 */	li r31, 0
/* 8023434C 002312AC  3B A0 00 00 */	li r29, 0
/* 80234350 002312B0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80234354 002312B4  48 00 00 24 */	b lbl_80234378
lbl_80234358:
/* 80234358 002312B8  93 A1 00 20 */	stw r29, 0x20(r1)
/* 8023435C 002312BC  7F 43 D3 78 */	mr r3, r26
/* 80234360 002312C0  38 81 00 24 */	addi r4, r1, 0x24
/* 80234364 002312C4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80234368 002312C8  4B FF FC 4D */	bl GetAreaLayerCount__16CWorldLayerStateFi
/* 8023436C 002312CC  7F E3 FA 14 */	add r31, r3, r31
/* 80234370 002312D0  3B BD 00 01 */	addi r29, r29, 1
/* 80234374 002312D4  3B FF FF FF */	addi r31, r31, -1
lbl_80234378:
/* 80234378 002312D8  7C 1D F0 00 */	cmpw r29, r30
/* 8023437C 002312DC  41 80 FF DC */	blt lbl_80234358
/* 80234380 002312E0  7F 63 DB 78 */	mr r3, r27
/* 80234384 002312E4  7F E4 FB 78 */	mr r4, r31
/* 80234388 002312E8  38 A0 00 0A */	li r5, 0xa
/* 8023438C 002312EC  48 10 B0 31 */	bl WriteBits__13COutputStreamFii
/* 80234390 002312F0  3B A0 00 00 */	li r29, 0
/* 80234394 002312F4  48 00 00 70 */	b lbl_80234404
lbl_80234398:
/* 80234398 002312F8  93 A1 00 18 */	stw r29, 0x18(r1)
/* 8023439C 002312FC  7F 43 D3 78 */	mr r3, r26
/* 802343A0 00231300  38 81 00 1C */	addi r4, r1, 0x1c
/* 802343A4 00231304  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 802343A8 00231308  4B FF FC 0D */	bl GetAreaLayerCount__16CWorldLayerStateFi
/* 802343AC 0023130C  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802343B0 00231310  7C 7F 1B 78 */	mr r31, r3
/* 802343B4 00231314  3B 80 00 01 */	li r28, 1
/* 802343B8 00231318  48 00 00 40 */	b lbl_802343F8
lbl_802343BC:
/* 802343BC 0023131C  93 81 00 08 */	stw r28, 8(r1)
/* 802343C0 00231320  7F 43 D3 78 */	mr r3, r26
/* 802343C4 00231324  38 81 00 14 */	addi r4, r1, 0x14
/* 802343C8 00231328  38 A1 00 0C */	addi r5, r1, 0xc
/* 802343CC 0023132C  93 81 00 0C */	stw r28, 0xc(r1)
/* 802343D0 00231330  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802343D4 00231334  4B FF FE 9D */	bl IsLayerActive__16CWorldLayerStateFii
/* 802343D8 00231338  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 802343DC 0023133C  7F 63 DB 78 */	mr r3, r27
/* 802343E0 00231340  7C 04 00 D0 */	neg r0, r4
/* 802343E4 00231344  38 A0 00 01 */	li r5, 1
/* 802343E8 00231348  7C 00 23 78 */	or r0, r0, r4
/* 802343EC 0023134C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 802343F0 00231350  48 10 AF CD */	bl WriteBits__13COutputStreamFii
/* 802343F4 00231354  3B 9C 00 01 */	addi r28, r28, 1
lbl_802343F8:
/* 802343F8 00231358  7C 1C F8 00 */	cmpw r28, r31
/* 802343FC 0023135C  41 80 FF C0 */	blt lbl_802343BC
/* 80234400 00231360  3B BD 00 01 */	addi r29, r29, 1
lbl_80234404:
/* 80234404 00231364  7C 1D F0 00 */	cmpw r29, r30
/* 80234408 00231368  41 80 FF 90 */	blt lbl_80234398
/* 8023440C 0023136C  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 80234410 00231370  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80234414 00231374  7C 08 03 A6 */	mtlr r0
/* 80234418 00231378  38 21 00 40 */	addi r1, r1, 0x40
/* 8023441C 0023137C  4E 80 00 20 */	blr

.global __ct__16CWorldLayerStateFR16CBitStreamReaderRC10CSaveWorld
__ct__16CWorldLayerStateFR16CBitStreamReaderRC10CSaveWorld:
/* 80234420 00231380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80234424 00231384  7C 08 02 A6 */	mflr r0
/* 80234428 00231388  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023442C 0023138C  38 00 00 00 */	li r0, 0
/* 80234430 00231390  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80234434 00231394  7C 9D 23 78 */	mr r29, r4
/* 80234438 00231398  7C 7C 1B 78 */	mr r28, r3
/* 8023443C 0023139C  38 80 00 0A */	li r4, 0xa
/* 80234440 002313A0  90 03 00 04 */	stw r0, 4(r3)
/* 80234444 002313A4  7F A3 EB 78 */	mr r3, r29
/* 80234448 002313A8  90 1C 00 08 */	stw r0, 8(r28)
/* 8023444C 002313AC  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80234450 002313B0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80234454 002313B4  90 1C 00 18 */	stw r0, 0x18(r28)
/* 80234458 002313B8  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 8023445C 002313BC  90 1C 00 20 */	stw r0, 0x20(r28)
/* 80234460 002313C0  48 10 A8 D9 */	bl ReadBits__12CInputStreamFUi
/* 80234464 002313C4  7C 7F 1B 78 */	mr r31, r3
/* 80234468 002313C8  38 7C 00 14 */	addi r3, r28, 0x14
/* 8023446C 002313CC  57 E4 D8 08 */	slwi r4, r31, 0x1b
/* 80234470 002313D0  57 E5 0F FE */	srwi r5, r31, 0x1f
/* 80234474 002313D4  7F E0 2E 70 */	srawi r0, r31, 5
/* 80234478 002313D8  7C 85 20 50 */	subf r4, r5, r4
/* 8023447C 002313DC  54 84 28 3E */	rotlwi r4, r4, 5
/* 80234480 002313E0  7C 00 01 94 */	addze r0, r0
/* 80234484 002313E4  7C A4 2A 14 */	add r5, r4, r5
/* 80234488 002313E8  7C 85 00 D0 */	neg r4, r5
/* 8023448C 002313EC  7C 84 2B 78 */	or r4, r4, r5
/* 80234490 002313F0  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80234494 002313F4  7C 80 22 14 */	add r4, r0, r4
/* 80234498 002313F8  4B E2 F6 8D */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 8023449C 002313FC  3B C0 00 00 */	li r30, 0
/* 802344A0 00231400  48 00 01 14 */	b lbl_802345B4
lbl_802344A4:
/* 802344A4 00231404  7F A3 EB 78 */	mr r3, r29
/* 802344A8 00231408  38 80 00 01 */	li r4, 1
/* 802344AC 0023140C  48 10 A8 8D */	bl ReadBits__12CInputStreamFUi
/* 802344B0 00231410  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 802344B4 00231414  7C 03 00 D0 */	neg r0, r3
/* 802344B8 00231418  7C 05 1B 78 */	or r5, r0, r3
/* 802344BC 0023141C  54 80 D8 08 */	slwi r0, r4, 0x1b
/* 802344C0 00231420  54 83 0F FE */	srwi r3, r4, 0x1f
/* 802344C4 00231424  7C 03 00 50 */	subf r0, r3, r0
/* 802344C8 00231428  54 BB 0F FE */	srwi r27, r5, 0x1f
/* 802344CC 0023142C  54 00 28 3E */	rotlwi r0, r0, 5
/* 802344D0 00231430  7C 00 1A 15 */	add. r0, r0, r3
/* 802344D4 00231434  40 82 00 54 */	bne lbl_80234528
/* 802344D8 00231438  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 802344DC 0023143C  80 BC 00 1C */	lwz r5, 0x1c(r28)
/* 802344E0 00231440  7C 00 28 00 */	cmpw r0, r5
/* 802344E4 00231444  41 80 00 1C */	blt lbl_80234500
/* 802344E8 00231448  2C 05 00 00 */	cmpwi r5, 0
/* 802344EC 0023144C  38 7C 00 14 */	addi r3, r28, 0x14
/* 802344F0 00231450  38 80 00 04 */	li r4, 4
/* 802344F4 00231454  41 82 00 08 */	beq lbl_802344FC
/* 802344F8 00231458  54 A4 08 3C */	slwi r4, r5, 1
lbl_802344FC:
/* 802344FC 0023145C  4B E2 F6 29 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_80234500:
/* 80234500 00231460  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80234504 00231464  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 80234508 00231468  54 00 10 3A */	slwi r0, r0, 2
/* 8023450C 0023146C  7C 63 02 15 */	add. r3, r3, r0
/* 80234510 00231470  41 82 00 0C */	beq lbl_8023451C
/* 80234514 00231474  80 0D 96 40 */	lwz r0, lbl_805A8200@sda21(r13)
/* 80234518 00231478  90 03 00 00 */	stw r0, 0(r3)
lbl_8023451C:
/* 8023451C 0023147C  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80234520 00231480  38 03 00 01 */	addi r0, r3, 1
/* 80234524 00231484  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80234528:
/* 80234528 00231488  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8023452C 0023148C  28 1B 00 00 */	cmplwi r27, 0
/* 80234530 00231490  38 03 00 01 */	addi r0, r3, 1
/* 80234534 00231494  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80234538 00231498  41 82 00 40 */	beq lbl_80234578
/* 8023453C 0023149C  7C 64 2E 70 */	srawi r4, r3, 5
/* 80234540 002314A0  54 60 D8 08 */	slwi r0, r3, 0x1b
/* 80234544 002314A4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80234548 002314A8  80 FC 00 20 */	lwz r7, 0x20(r28)
/* 8023454C 002314AC  7C A4 01 94 */	addze r5, r4
/* 80234550 002314B0  38 80 00 01 */	li r4, 1
/* 80234554 002314B4  7C 03 00 50 */	subf r0, r3, r0
/* 80234558 002314B8  54 A6 10 3A */	slwi r6, r5, 2
/* 8023455C 002314BC  54 00 28 3E */	rotlwi r0, r0, 5
/* 80234560 002314C0  7C A7 30 2E */	lwzx r5, r7, r6
/* 80234564 002314C4  7C 00 1A 14 */	add r0, r0, r3
/* 80234568 002314C8  7C 80 00 30 */	slw r0, r4, r0
/* 8023456C 002314CC  7C A0 03 78 */	or r0, r5, r0
/* 80234570 002314D0  7C 07 31 2E */	stwx r0, r7, r6
/* 80234574 002314D4  48 00 00 3C */	b lbl_802345B0
lbl_80234578:
/* 80234578 002314D8  7C 64 2E 70 */	srawi r4, r3, 5
/* 8023457C 002314DC  54 60 D8 08 */	slwi r0, r3, 0x1b
/* 80234580 002314E0  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80234584 002314E4  80 FC 00 20 */	lwz r7, 0x20(r28)
/* 80234588 002314E8  7C A4 01 94 */	addze r5, r4
/* 8023458C 002314EC  38 80 00 01 */	li r4, 1
/* 80234590 002314F0  7C 03 00 50 */	subf r0, r3, r0
/* 80234594 002314F4  54 A6 10 3A */	slwi r6, r5, 2
/* 80234598 002314F8  54 00 28 3E */	rotlwi r0, r0, 5
/* 8023459C 002314FC  7C A7 30 2E */	lwzx r5, r7, r6
/* 802345A0 00231500  7C 00 1A 14 */	add r0, r0, r3
/* 802345A4 00231504  7C 80 00 30 */	slw r0, r4, r0
/* 802345A8 00231508  7C A0 00 78 */	andc r0, r5, r0
/* 802345AC 0023150C  7C 07 31 2E */	stwx r0, r7, r6
lbl_802345B0:
/* 802345B0 00231510  3B DE 00 01 */	addi r30, r30, 1
lbl_802345B4:
/* 802345B4 00231514  7C 1E F8 40 */	cmplw r30, r31
/* 802345B8 00231518  41 80 FE EC */	blt lbl_802344A4
/* 802345BC 0023151C  7F 83 E3 78 */	mr r3, r28
/* 802345C0 00231520  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802345C4 00231524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802345C8 00231528  7C 08 03 A6 */	mtlr r0
/* 802345CC 0023152C  38 21 00 20 */	addi r1, r1, 0x20
/* 802345D0 00231530  4E 80 00 20 */	blr

.global __ct__13CGLXMemoryInfoFi
__ct__13CGLXMemoryInfoFi:
/* 802345D4 00231534  38 00 00 00 */	li r0, 0
/* 802345D8 00231538  90 03 00 04 */	stw r0, 4(r3)
/* 802345DC 0023153C  90 03 00 08 */	stw r0, 8(r3)
/* 802345E0 00231540  90 03 00 0C */	stw r0, 0xc(r3)
/* 802345E4 00231544  90 03 00 10 */	stw r0, 0x10(r3)
/* 802345E8 00231548  90 03 00 18 */	stw r0, 0x18(r3)
/* 802345EC 0023154C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802345F0 00231550  90 03 00 20 */	stw r0, 0x20(r3)
/* 802345F4 00231554  4E 80 00 20 */	blr

.global __sinit_CScriptLayerManager_cpp
__sinit_CScriptLayerManager_cpp:
/* 802345F8 00231558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802345FC 0023155C  7C 08 02 A6 */	mflr r0
/* 80234600 00231560  3C 80 80 3D */	lis r4, lbl_803D42E0@ha
/* 80234604 00231564  3C 60 80 47 */	lis r3, lbl_8046D34C@ha
/* 80234608 00231568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023460C 0023156C  38 84 42 E0 */	addi r4, r4, lbl_803D42E0@l
/* 80234610 00231570  38 C4 00 07 */	addi r6, r4, 7
/* 80234614 00231574  38 00 00 00 */	li r0, 0
/* 80234618 00231578  94 C3 D3 4C */	stwu r6, lbl_8046D34C@l(r3)
/* 8023461C 0023157C  90 03 00 04 */	stw r0, 4(r3)
/* 80234620 00231580  48 00 00 08 */	b lbl_80234628
lbl_80234624:
/* 80234624 00231584  38 C6 00 01 */	addi r6, r6, 1
lbl_80234628:
/* 80234628 00231588  88 06 00 00 */	lbz r0, 0(r6)
/* 8023462C 0023158C  7C 00 07 75 */	extsb. r0, r0
/* 80234630 00231590  40 82 FF F4 */	bne lbl_80234624
/* 80234634 00231594  3C 80 80 3D */	lis r4, lbl_803D42E0@ha
/* 80234638 00231598  3C 60 80 47 */	lis r3, lbl_8046D34C@ha
/* 8023463C 0023159C  38 A4 42 E0 */	addi r5, r4, lbl_803D42E0@l
/* 80234640 002315A0  38 05 00 07 */	addi r0, r5, 7
/* 80234644 002315A4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 80234648 002315A8  38 63 D3 4C */	addi r3, r3, lbl_8046D34C@l
/* 8023464C 002315AC  3C A0 80 47 */	lis r5, lbl_8046D340@ha
/* 80234650 002315B0  7C 00 30 50 */	subf r0, r0, r6
/* 80234654 002315B4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 80234658 002315B8  90 03 00 08 */	stw r0, 8(r3)
/* 8023465C 002315BC  38 A5 D3 40 */	addi r5, r5, lbl_8046D340@l
/* 80234660 002315C0  48 15 50 2D */	bl __register_global_object
/* 80234664 002315C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80234668 002315C8  7C 08 03 A6 */	mtlr r0
/* 8023466C 002315CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80234670 002315D0  4E 80 00 20 */	blr

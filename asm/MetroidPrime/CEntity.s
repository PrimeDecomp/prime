.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CEntity_cpp

.section .data
.balign 8

.global __vt__7CEntity
__vt__7CEntity:
	# ROM: 0x3D6E30
	.4byte 0
	.4byte 0
	.4byte __dt__7CEntityFv
	.4byte 0
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .bss
.balign 8

.lcomm lbl_8046C3B8, 0x10, 4

.section .text, "ax"

.global GetAreaId__7CEntityCFv
GetAreaId__7CEntityCFv:
/* 80051084 0004DFE4  88 04 00 30 */	lbz r0, 0x30(r4)
/* 80051088 0004DFE8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8005108C 0004DFEC  41 82 00 0C */	beq lbl_80051098
/* 80051090 0004DFF0  38 8D A3 90 */	addi r4, r13, kInvalidAreaId@sda21
/* 80051094 0004DFF4  48 00 00 08 */	b lbl_8005109C
lbl_80051098:
/* 80051098 0004DFF8  38 84 00 04 */	addi r4, r4, 4
lbl_8005109C:
/* 8005109C 0004DFFC  80 04 00 00 */	lwz r0, 0(r4)
/* 800510A0 0004E000  90 03 00 00 */	stw r0, 0(r3)
/* 800510A4 0004E004  4E 80 00 20 */	blr

.global SetActive__7CEntityFb
SetActive__7CEntityFb:
/* 800510A8 0004E008  88 03 00 30 */	lbz r0, 0x30(r3)
/* 800510AC 0004E00C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 800510B0 0004E010  98 03 00 30 */	stb r0, 0x30(r3)
/* 800510B4 0004E014  4E 80 00 20 */	blr

.global Think__7CEntityFfR13CStateManager
Think__7CEntityFfR13CStateManager:
/* 800510B8 0004E018  4E 80 00 20 */	blr

.global PreThink__7CEntityFfR13CStateManager
PreThink__7CEntityFfR13CStateManager:
/* 800510BC 0004E01C  4E 80 00 20 */	blr

.global SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage:
/* 800510C0 0004E020  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800510C4 0004E024  7C 08 02 A6 */	mflr r0
/* 800510C8 0004E028  90 01 00 34 */	stw r0, 0x34(r1)
/* 800510CC 0004E02C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800510D0 0004E030  7C 7B 1B 78 */	mr r27, r3
/* 800510D4 0004E034  7C 9C 23 78 */	mr r28, r4
/* 800510D8 0004E038  7C BD 2B 78 */	mr r29, r5
/* 800510DC 0004E03C  7C DE 33 78 */	mr r30, r6
/* 800510E0 0004E040  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 800510E4 0004E044  48 00 00 4C */	b lbl_80051130
lbl_800510E8:
/* 800510E8 0004E048  80 1F 00 00 */	lwz r0, 0(r31)
/* 800510EC 0004E04C  7C 1C 00 00 */	cmpw r28, r0
/* 800510F0 0004E050  40 82 00 3C */	bne lbl_8005112C
/* 800510F4 0004E054  80 1F 00 04 */	lwz r0, 4(r31)
/* 800510F8 0004E058  7C 1E 00 00 */	cmpw r30, r0
/* 800510FC 0004E05C  41 82 00 30 */	beq lbl_8005112C
/* 80051100 0004E060  80 1F 00 08 */	lwz r0, 8(r31)
/* 80051104 0004E064  7F A3 EB 78 */	mr r3, r29
/* 80051108 0004E068  7F 87 E3 78 */	mr r7, r28
/* 8005110C 0004E06C  38 81 00 0C */	addi r4, r1, 0xc
/* 80051110 0004E070  90 01 00 10 */	stw r0, 0x10(r1)
/* 80051114 0004E074  38 A1 00 10 */	addi r5, r1, 0x10
/* 80051118 0004E078  A0 1B 00 08 */	lhz r0, 8(r27)
/* 8005111C 0004E07C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80051120 0004E080  B0 01 00 08 */	sth r0, 8(r1)
/* 80051124 0004E084  80 DF 00 04 */	lwz r6, 4(r31)
/* 80051128 0004E088  4B FF 6A 15 */	bl SendScriptMsg__13CStateManagerF9TUniqueId9TEditorId20EScriptObjectMessage18EScriptObjectState
lbl_8005112C:
/* 8005112C 0004E08C  3B FF 00 0C */	addi r31, r31, 0xc
lbl_80051130:
/* 80051130 0004E090  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 80051134 0004E094  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 80051138 0004E098  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8005113C 0004E09C  7C 03 02 14 */	add r0, r3, r0
/* 80051140 0004E0A0  7C 1F 00 40 */	cmplw r31, r0
/* 80051144 0004E0A4  40 82 FF A4 */	bne lbl_800510E8
/* 80051148 0004E0A8  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8005114C 0004E0AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80051150 0004E0B0  7C 08 03 A6 */	mtlr r0
/* 80051154 0004E0B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80051158 0004E0B8  4E 80 00 20 */	blr

.global AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8005115C 0004E0BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051160 0004E0C0  7C 08 02 A6 */	mflr r0
/* 80051164 0004E0C4  2C 04 00 04 */	cmpwi r4, 4
/* 80051168 0004E0C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005116C 0004E0CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80051170 0004E0D0  7C DF 33 78 */	mr r31, r6
/* 80051174 0004E0D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80051178 0004E0D8  7C 7E 1B 78 */	mr r30, r3
/* 8005117C 0004E0DC  41 82 00 58 */	beq lbl_800511D4
/* 80051180 0004E0E0  40 80 00 10 */	bge lbl_80051190
/* 80051184 0004E0E4  2C 04 00 01 */	cmpwi r4, 1
/* 80051188 0004E0E8  41 82 00 14 */	beq lbl_8005119C
/* 8005118C 0004E0EC  48 00 00 D0 */	b lbl_8005125C
lbl_80051190:
/* 80051190 0004E0F0  2C 04 00 11 */	cmpwi r4, 0x11
/* 80051194 0004E0F4  41 82 00 78 */	beq lbl_8005120C
/* 80051198 0004E0F8  48 00 00 C4 */	b lbl_8005125C
lbl_8005119C:
/* 8005119C 0004E0FC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 800511A0 0004E100  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800511A4 0004E104  40 82 00 B8 */	bne lbl_8005125C
/* 800511A8 0004E108  81 83 00 00 */	lwz r12, 0(r3)
/* 800511AC 0004E10C  38 80 00 01 */	li r4, 1
/* 800511B0 0004E110  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800511B4 0004E114  7D 89 03 A6 */	mtctr r12
/* 800511B8 0004E118  4E 80 04 21 */	bctrl
/* 800511BC 0004E11C  7F C3 F3 78 */	mr r3, r30
/* 800511C0 0004E120  7F E5 FB 78 */	mr r5, r31
/* 800511C4 0004E124  38 80 00 00 */	li r4, 0
/* 800511C8 0004E128  38 C0 FF FF */	li r6, -1
/* 800511CC 0004E12C  4B FF FE F5 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 800511D0 0004E130  48 00 00 8C */	b lbl_8005125C
lbl_800511D4:
/* 800511D4 0004E134  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 800511D8 0004E138  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800511DC 0004E13C  41 82 00 80 */	beq lbl_8005125C
/* 800511E0 0004E140  81 83 00 00 */	lwz r12, 0(r3)
/* 800511E4 0004E144  38 80 00 00 */	li r4, 0
/* 800511E8 0004E148  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800511EC 0004E14C  7D 89 03 A6 */	mtctr r12
/* 800511F0 0004E150  4E 80 04 21 */	bctrl
/* 800511F4 0004E154  7F C3 F3 78 */	mr r3, r30
/* 800511F8 0004E158  7F E5 FB 78 */	mr r5, r31
/* 800511FC 0004E15C  38 80 00 05 */	li r4, 5
/* 80051200 0004E160  38 C0 FF FF */	li r6, -1
/* 80051204 0004E164  4B FF FE BD */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80051208 0004E168  48 00 00 54 */	b lbl_8005125C
lbl_8005120C:
/* 8005120C 0004E16C  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80051210 0004E170  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80051214 0004E174  40 82 00 28 */	bne lbl_8005123C
/* 80051218 0004E178  A0 05 00 00 */	lhz r0, 0(r5)
/* 8005121C 0004E17C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80051220 0004E180  38 80 00 01 */	li r4, 1
/* 80051224 0004E184  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80051228 0004E188  81 83 00 00 */	lwz r12, 0(r3)
/* 8005122C 0004E18C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80051230 0004E190  7D 89 03 A6 */	mtctr r12
/* 80051234 0004E194  4E 80 04 21 */	bctrl
/* 80051238 0004E198  48 00 00 24 */	b lbl_8005125C
lbl_8005123C:
/* 8005123C 0004E19C  A0 05 00 00 */	lhz r0, 0(r5)
/* 80051240 0004E1A0  38 A1 00 08 */	addi r5, r1, 8
/* 80051244 0004E1A4  38 80 00 04 */	li r4, 4
/* 80051248 0004E1A8  B0 01 00 08 */	sth r0, 8(r1)
/* 8005124C 0004E1AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80051250 0004E1B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80051254 0004E1B4  7D 89 03 A6 */	mtctr r12
/* 80051258 0004E1B8  4E 80 04 21 */	bctrl
lbl_8005125C:
/* 8005125C 0004E1BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80051260 0004E1C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80051264 0004E1C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80051268 0004E1C8  7C 08 03 A6 */	mtlr r0
/* 8005126C 0004E1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80051270 0004E1D0  4E 80 00 20 */	blr

.global __dt__7CEntityFv
__dt__7CEntityFv:
/* 80051274 0004E1D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051278 0004E1D8  7C 08 02 A6 */	mflr r0
/* 8005127C 0004E1DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80051280 0004E1E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80051284 0004E1E4  7C 9F 23 78 */	mr r31, r4
/* 80051288 0004E1E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005128C 0004E1EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80051290 0004E1F0  41 82 00 78 */	beq lbl_80051308
/* 80051294 0004E1F4  3C 60 80 3E */	lis r3, __vt__7CEntity@ha
/* 80051298 0004E1F8  34 1E 00 20 */	addic. r0, r30, 0x20
/* 8005129C 0004E1FC  38 03 9E 30 */	addi r0, r3, __vt__7CEntity@l
/* 800512A0 0004E200  90 1E 00 00 */	stw r0, 0(r30)
/* 800512A4 0004E204  41 82 00 44 */	beq lbl_800512E8
/* 800512A8 0004E208  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800512AC 0004E20C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 800512B0 0004E210  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800512B4 0004E214  90 61 00 0C */	stw r3, 0xc(r1)
/* 800512B8 0004E218  7C 64 1B 78 */	mr r4, r3
/* 800512BC 0004E21C  7C 03 02 14 */	add r0, r3, r0
/* 800512C0 0004E220  90 61 00 08 */	stw r3, 8(r1)
/* 800512C4 0004E224  90 01 00 14 */	stw r0, 0x14(r1)
/* 800512C8 0004E228  90 01 00 10 */	stw r0, 0x10(r1)
/* 800512CC 0004E22C  48 00 00 08 */	b lbl_800512D4
lbl_800512D0:
/* 800512D0 0004E230  38 84 00 0C */	addi r4, r4, 0xc
lbl_800512D4:
/* 800512D4 0004E234  7C 04 00 40 */	cmplw r4, r0
/* 800512D8 0004E238  40 82 FF F8 */	bne lbl_800512D0
/* 800512DC 0004E23C  28 03 00 00 */	cmplwi r3, 0
/* 800512E0 0004E240  41 82 00 08 */	beq lbl_800512E8
/* 800512E4 0004E244  48 2C 46 4D */	bl Free__7CMemoryFPCv
lbl_800512E8:
/* 800512E8 0004E248  34 1E 00 10 */	addic. r0, r30, 0x10
/* 800512EC 0004E24C  41 82 00 0C */	beq lbl_800512F8
/* 800512F0 0004E250  38 7E 00 10 */	addi r3, r30, 0x10
/* 800512F4 0004E254  48 2E C7 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800512F8:
/* 800512F8 0004E258  7F E0 07 35 */	extsh. r0, r31
/* 800512FC 0004E25C  40 81 00 0C */	ble lbl_80051308
/* 80051300 0004E260  7F C3 F3 78 */	mr r3, r30
/* 80051304 0004E264  48 2C 46 2D */	bl Free__7CMemoryFPCv
lbl_80051308:
/* 80051308 0004E268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005130C 0004E26C  7F C3 F3 78 */	mr r3, r30
/* 80051310 0004E270  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80051314 0004E274  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80051318 0004E278  7C 08 03 A6 */	mtlr r0
/* 8005131C 0004E27C  38 21 00 20 */	addi r1, r1, 0x20
/* 80051320 0004E280  4E 80 00 20 */	blr

.global "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 80051324 0004E284  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051328 0004E288  7C 08 02 A6 */	mflr r0
/* 8005132C 0004E28C  3D 00 80 3E */	lis r8, __vt__7CEntity@ha
/* 80051330 0004E290  90 01 00 24 */	stw r0, 0x24(r1)
/* 80051334 0004E294  38 08 9E 30 */	addi r0, r8, __vt__7CEntity@l
/* 80051338 0004E298  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8005133C 0004E29C  7C DF 33 78 */	mr r31, r6
/* 80051340 0004E2A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80051344 0004E2A4  7C 7E 1B 78 */	mr r30, r3
/* 80051348 0004E2A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8005134C 0004E2AC  7C BD 2B 78 */	mr r29, r5
/* 80051350 0004E2B0  90 03 00 00 */	stw r0, 0(r3)
/* 80051354 0004E2B4  38 7E 00 10 */	addi r3, r30, 0x10
/* 80051358 0004E2B8  80 05 00 00 */	lwz r0, 0(r5)
/* 8005135C 0004E2BC  90 1E 00 04 */	stw r0, 4(r30)
/* 80051360 0004E2C0  A0 04 00 00 */	lhz r0, 0(r4)
/* 80051364 0004E2C4  7C E4 3B 78 */	mr r4, r7
/* 80051368 0004E2C8  B0 1E 00 08 */	sth r0, 8(r30)
/* 8005136C 0004E2CC  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80051370 0004E2D0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80051374 0004E2D4  48 2E CD ED */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80051378 0004E2D8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8005137C 0004E2DC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80051380 0004E2E0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80051384 0004E2E4  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80051388 0004E2E8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8005138C 0004E2EC  2C 00 00 00 */	cmpwi r0, 0
/* 80051390 0004E2F0  40 82 00 1C */	bne lbl_800513AC
/* 80051394 0004E2F4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80051398 0004E2F8  2C 00 00 00 */	cmpwi r0, 0
/* 8005139C 0004E2FC  40 82 00 10 */	bne lbl_800513AC
/* 800513A0 0004E300  38 00 00 00 */	li r0, 0
/* 800513A4 0004E304  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 800513A8 0004E308  48 00 00 78 */	b lbl_80051420
lbl_800513AC:
/* 800513AC 0004E30C  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 800513B0 0004E310  1C 60 00 0C */	mulli r3, r0, 0xc
/* 800513B4 0004E314  2C 03 00 00 */	cmpwi r3, 0
/* 800513B8 0004E318  40 82 00 10 */	bne lbl_800513C8
/* 800513BC 0004E31C  38 00 00 00 */	li r0, 0
/* 800513C0 0004E320  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 800513C4 0004E324  48 00 00 18 */	b lbl_800513DC
lbl_800513C8:
/* 800513C8 0004E328  3C 80 80 3D */	lis r4, lbl_803CCF18@ha
/* 800513CC 0004E32C  38 A0 00 00 */	li r5, 0
/* 800513D0 0004E330  38 84 CF 18 */	addi r4, r4, lbl_803CCF18@l
/* 800513D4 0004E334  48 2C 44 45 */	bl __nwa__FUlPCcPCc
/* 800513D8 0004E338  90 7E 00 2C */	stw r3, 0x2c(r30)
lbl_800513DC:
/* 800513DC 0004E33C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800513E0 0004E340  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 800513E4 0004E344  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 800513E8 0004E348  7C 09 03 A6 */	mtctr r0
/* 800513EC 0004E34C  2C 00 00 00 */	cmpwi r0, 0
/* 800513F0 0004E350  40 81 00 30 */	ble lbl_80051420
lbl_800513F4:
/* 800513F4 0004E354  28 03 00 00 */	cmplwi r3, 0
/* 800513F8 0004E358  41 82 00 1C */	beq lbl_80051414
/* 800513FC 0004E35C  80 04 00 00 */	lwz r0, 0(r4)
/* 80051400 0004E360  90 03 00 00 */	stw r0, 0(r3)
/* 80051404 0004E364  80 04 00 04 */	lwz r0, 4(r4)
/* 80051408 0004E368  90 03 00 04 */	stw r0, 4(r3)
/* 8005140C 0004E36C  80 04 00 08 */	lwz r0, 8(r4)
/* 80051410 0004E370  90 03 00 08 */	stw r0, 8(r3)
lbl_80051414:
/* 80051414 0004E374  38 63 00 0C */	addi r3, r3, 0xc
/* 80051418 0004E378  38 84 00 0C */	addi r4, r4, 0xc
/* 8005141C 0004E37C  42 00 FF D8 */	bdnz lbl_800513F4
lbl_80051420:
/* 80051420 0004E380  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80051424 0004E384  53 E0 3E 30 */	rlwimi r0, r31, 7, 0x18, 0x18
/* 80051428 0004E388  38 80 00 00 */	li r4, 0
/* 8005142C 0004E38C  7F C3 F3 78 */	mr r3, r30
/* 80051430 0004E390  98 1E 00 30 */	stb r0, 0x30(r30)
/* 80051434 0004E394  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80051438 0004E398  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8005143C 0004E39C  98 1E 00 30 */	stb r0, 0x30(r30)
/* 80051440 0004E3A0  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80051444 0004E3A4  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80051448 0004E3A8  98 1E 00 30 */	stb r0, 0x30(r30)
/* 8005144C 0004E3AC  80 BE 00 04 */	lwz r5, 4(r30)
/* 80051450 0004E3B0  80 8D A3 90 */	lwz r4, kInvalidAreaId@sda21(r13)
/* 80051454 0004E3B4  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80051458 0004E3B8  7C 85 20 50 */	subf r4, r5, r4
/* 8005145C 0004E3BC  7C 84 00 34 */	cntlzw r4, r4
/* 80051460 0004E3C0  50 80 FE F6 */	rlwimi r0, r4, 0x1f, 0x1b, 0x1b
/* 80051464 0004E3C4  98 1E 00 30 */	stb r0, 0x30(r30)
/* 80051468 0004E3C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005146C 0004E3CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80051470 0004E3D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80051474 0004E3D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80051478 0004E3D8  7C 08 03 A6 */	mtlr r0
/* 8005147C 0004E3DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80051480 0004E3E0  4E 80 00 20 */	blr

.global "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
"__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId":
/* 80051484 0004E3E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80051488 0004E3E8  7C 08 02 A6 */	mflr r0
/* 8005148C 0004E3EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80051490 0004E3F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80051494 0004E3F4  7C DF 33 78 */	mr r31, r6
/* 80051498 0004E3F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8005149C 0004E3FC  7C 7E 1B 78 */	mr r30, r3
/* 800514A0 0004E400  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800514A4 0004E404  7C BD 2B 78 */	mr r29, r5
/* 800514A8 0004E408  80 04 00 00 */	lwz r0, 0(r4)
/* 800514AC 0004E40C  90 03 00 00 */	stw r0, 0(r3)
/* 800514B0 0004E410  80 05 00 04 */	lwz r0, 4(r5)
/* 800514B4 0004E414  90 03 00 08 */	stw r0, 8(r3)
/* 800514B8 0004E418  80 05 00 08 */	lwz r0, 8(r5)
/* 800514BC 0004E41C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800514C0 0004E420  80 05 00 04 */	lwz r0, 4(r5)
/* 800514C4 0004E424  2C 00 00 00 */	cmpwi r0, 0
/* 800514C8 0004E428  40 82 00 1C */	bne lbl_800514E4
/* 800514CC 0004E42C  80 1D 00 08 */	lwz r0, 8(r29)
/* 800514D0 0004E430  2C 00 00 00 */	cmpwi r0, 0
/* 800514D4 0004E434  40 82 00 10 */	bne lbl_800514E4
/* 800514D8 0004E438  38 00 00 00 */	li r0, 0
/* 800514DC 0004E43C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 800514E0 0004E440  48 00 00 78 */	b lbl_80051558
lbl_800514E4:
/* 800514E4 0004E444  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800514E8 0004E448  1C 60 00 0C */	mulli r3, r0, 0xc
/* 800514EC 0004E44C  2C 03 00 00 */	cmpwi r3, 0
/* 800514F0 0004E450  40 82 00 10 */	bne lbl_80051500
/* 800514F4 0004E454  38 00 00 00 */	li r0, 0
/* 800514F8 0004E458  90 1E 00 10 */	stw r0, 0x10(r30)
/* 800514FC 0004E45C  48 00 00 18 */	b lbl_80051514
lbl_80051500:
/* 80051500 0004E460  3C 80 80 3D */	lis r4, lbl_803CCF18@ha
/* 80051504 0004E464  38 A0 00 00 */	li r5, 0
/* 80051508 0004E468  38 84 CF 18 */	addi r4, r4, lbl_803CCF18@l
/* 8005150C 0004E46C  48 2C 43 0D */	bl __nwa__FUlPCcPCc
/* 80051510 0004E470  90 7E 00 10 */	stw r3, 0x10(r30)
lbl_80051514:
/* 80051514 0004E474  80 1E 00 08 */	lwz r0, 8(r30)
/* 80051518 0004E478  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8005151C 0004E47C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80051520 0004E480  7C 09 03 A6 */	mtctr r0
/* 80051524 0004E484  2C 00 00 00 */	cmpwi r0, 0
/* 80051528 0004E488  40 81 00 30 */	ble lbl_80051558
lbl_8005152C:
/* 8005152C 0004E48C  28 03 00 00 */	cmplwi r3, 0
/* 80051530 0004E490  41 82 00 1C */	beq lbl_8005154C
/* 80051534 0004E494  80 04 00 00 */	lwz r0, 0(r4)
/* 80051538 0004E498  90 03 00 00 */	stw r0, 0(r3)
/* 8005153C 0004E49C  80 04 00 04 */	lwz r0, 4(r4)
/* 80051540 0004E4A0  90 03 00 04 */	stw r0, 4(r3)
/* 80051544 0004E4A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80051548 0004E4A8  90 03 00 08 */	stw r0, 8(r3)
lbl_8005154C:
/* 8005154C 0004E4AC  38 63 00 0C */	addi r3, r3, 0xc
/* 80051550 0004E4B0  38 84 00 0C */	addi r4, r4, 0xc
/* 80051554 0004E4B4  42 00 FF D8 */	bdnz lbl_8005152C
lbl_80051558:
/* 80051558 0004E4B8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8005155C 0004E4BC  7F C3 F3 78 */	mr r3, r30
/* 80051560 0004E4C0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80051564 0004E4C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80051568 0004E4C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8005156C 0004E4CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80051570 0004E4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80051574 0004E4D4  7C 08 03 A6 */	mtlr r0
/* 80051578 0004E4D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8005157C 0004E4DC  4E 80 00 20 */	blr

.global __sinit_CEntity_cpp
__sinit_CEntity_cpp:
/* 80051580 0004E4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051584 0004E4E4  7C 08 02 A6 */	mflr r0
/* 80051588 0004E4E8  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8005158C 0004E4EC  3C 80 80 05 */	lis r4, "__dt__Q24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>Fv"@ha
/* 80051590 0004E4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051594 0004E4F4  3C A0 80 47 */	lis r5, lbl_8046C3B8@ha
/* 80051598 0004E4F8  38 63 D4 10 */	addi r3, r3, NullConnectionList__7CEntity@l
/* 8005159C 0004E4FC  38 00 00 00 */	li r0, 0
/* 800515A0 0004E500  90 03 00 04 */	stw r0, 4(r3)
/* 800515A4 0004E504  38 84 86 F8 */	addi r4, r4, "__dt__Q24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>Fv"@l
/* 800515A8 0004E508  38 A5 C3 B8 */	addi r5, r5, lbl_8046C3B8@l
/* 800515AC 0004E50C  90 03 00 08 */	stw r0, 8(r3)
/* 800515B0 0004E510  90 03 00 0C */	stw r0, 0xc(r3)
/* 800515B4 0004E514  48 33 80 D9 */	bl __register_global_object
/* 800515B8 0004E518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800515BC 0004E51C  7C 08 03 A6 */	mtlr r0
/* 800515C0 0004E520  38 21 00 10 */	addi r1, r1, 0x10
/* 800515C4 0004E524  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CCF18
lbl_803CCF18:
	# ROM: 0x3C9F18
	.asciz "??(??)"
	.balign 4


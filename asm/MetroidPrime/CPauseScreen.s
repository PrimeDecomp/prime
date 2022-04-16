.include "macros.inc"

.section .text, "ax"

.global GetHelmetCamYOff__12CPauseScreenCFv
GetHelmetCamYOff__12CPauseScreenCFv:
/* 800729DC 0006F93C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800729E0 0006F940  7C 08 02 A6 */	mflr r0
/* 800729E4 0006F944  90 01 00 14 */	stw r0, 0x14(r1)
/* 800729E8 0006F948  80 03 00 78 */	lwz r0, 0x78(r3)
/* 800729EC 0006F94C  54 00 18 38 */	slwi r0, r0, 3
/* 800729F0 0006F950  7C 63 02 14 */	add r3, r3, r0
/* 800729F4 0006F954  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800729F8 0006F958  28 03 00 00 */	cmplwi r3, 0
/* 800729FC 0006F95C  40 82 00 0C */	bne lbl_80072A08
/* 80072A00 0006F960  C0 22 88 30 */	lfs f1, lbl_805AA550@sda21(r2)
/* 80072A04 0006F964  48 00 00 14 */	b lbl_80072A18
lbl_80072A08:
/* 80072A08 0006F968  81 83 00 00 */	lwz r12, 0(r3)
/* 80072A0C 0006F96C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80072A10 0006F970  7D 89 03 A6 */	mtctr r12
/* 80072A14 0006F974  4E 80 04 21 */	bctrl 
lbl_80072A18:
/* 80072A18 0006F978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072A1C 0006F97C  7C 08 03 A6 */	mtlr r0
/* 80072A20 0006F980  38 21 00 10 */	addi r1, r1, 0x10
/* 80072A24 0006F984  4E 80 00 20 */	blr 

.global ShouldSwitchToInGame__12CPauseScreenCFv
ShouldSwitchToInGame__12CPauseScreenCFv:
/* 80072A28 0006F988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072A2C 0006F98C  7C 08 02 A6 */	mflr r0
/* 80072A30 0006F990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072A34 0006F994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072A38 0006F998  3B E0 00 00 */	li r31, 0
/* 80072A3C 0006F99C  93 C1 00 08 */	stw r30, 8(r1)
/* 80072A40 0006F9A0  7C 7E 1B 78 */	mr r30, r3
/* 80072A44 0006F9A4  48 00 00 A5 */	bl IsLoaded__12CPauseScreenCFv
/* 80072A48 0006F9A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072A4C 0006F9AC  41 82 00 20 */	beq lbl_80072A6C
/* 80072A50 0006F9B0  80 1E 00 08 */	lwz r0, 8(r30)
/* 80072A54 0006F9B4  2C 00 00 03 */	cmpwi r0, 3
/* 80072A58 0006F9B8  40 82 00 14 */	bne lbl_80072A6C
/* 80072A5C 0006F9BC  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80072A60 0006F9C0  2C 00 00 03 */	cmpwi r0, 3
/* 80072A64 0006F9C4  40 82 00 08 */	bne lbl_80072A6C
/* 80072A68 0006F9C8  3B E0 00 01 */	li r31, 1
lbl_80072A6C:
/* 80072A6C 0006F9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072A70 0006F9D0  7F E3 FB 78 */	mr r3, r31
/* 80072A74 0006F9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80072A78 0006F9D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80072A7C 0006F9DC  7C 08 03 A6 */	mtlr r0
/* 80072A80 0006F9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80072A84 0006F9E4  4E 80 00 20 */	blr 

.global ShouldSwitchToMapScreen__12CPauseScreenCFv
ShouldSwitchToMapScreen__12CPauseScreenCFv:
/* 80072A88 0006F9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072A8C 0006F9EC  7C 08 02 A6 */	mflr r0
/* 80072A90 0006F9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072A94 0006F9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072A98 0006F9F8  3B E0 00 00 */	li r31, 0
/* 80072A9C 0006F9FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80072AA0 0006FA00  7C 7E 1B 78 */	mr r30, r3
/* 80072AA4 0006FA04  48 00 00 45 */	bl IsLoaded__12CPauseScreenCFv
/* 80072AA8 0006FA08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072AAC 0006FA0C  41 82 00 20 */	beq lbl_80072ACC
/* 80072AB0 0006FA10  80 1E 00 08 */	lwz r0, 8(r30)
/* 80072AB4 0006FA14  2C 00 00 04 */	cmpwi r0, 4
/* 80072AB8 0006FA18  40 82 00 14 */	bne lbl_80072ACC
/* 80072ABC 0006FA1C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80072AC0 0006FA20  2C 00 00 04 */	cmpwi r0, 4
/* 80072AC4 0006FA24  40 82 00 08 */	bne lbl_80072ACC
/* 80072AC8 0006FA28  3B E0 00 01 */	li r31, 1
lbl_80072ACC:
/* 80072ACC 0006FA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072AD0 0006FA30  7F E3 FB 78 */	mr r3, r31
/* 80072AD4 0006FA34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80072AD8 0006FA38  83 C1 00 08 */	lwz r30, 8(r1)
/* 80072ADC 0006FA3C  7C 08 03 A6 */	mtlr r0
/* 80072AE0 0006FA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80072AE4 0006FA44  4E 80 00 20 */	blr 

.global IsLoaded__12CPauseScreenCFv
IsLoaded__12CPauseScreenCFv:
/* 80072AE8 0006FA48  88 63 00 90 */	lbz r3, 0x90(r3)
/* 80072AEC 0006FA4C  4E 80 00 20 */	blr 

.global InputEnabled__12CPauseScreenCFv
InputEnabled__12CPauseScreenCFv:
/* 80072AF0 0006FA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80072AF4 0006FA54  7C 08 02 A6 */	mflr r0
/* 80072AF8 0006FA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80072AFC 0006FA5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80072B00 0006FA60  93 C1 00 08 */	stw r30, 8(r1)
/* 80072B04 0006FA64  7C 7E 1B 78 */	mr r30, r3
/* 80072B08 0006FA68  80 63 00 08 */	lwz r3, 8(r3)
/* 80072B0C 0006FA6C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80072B10 0006FA70  7C 03 00 00 */	cmpw r3, r0
/* 80072B14 0006FA74  41 82 00 0C */	beq lbl_80072B20
/* 80072B18 0006FA78  38 60 00 00 */	li r3, 0
/* 80072B1C 0006FA7C  48 00 00 80 */	b lbl_80072B9C
lbl_80072B20:
/* 80072B20 0006FA80  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 80072B24 0006FA84  3B FE 00 80 */	addi r31, r30, 0x80
/* 80072B28 0006FA88  54 00 18 38 */	slwi r0, r0, 3
/* 80072B2C 0006FA8C  7C 7F 02 14 */	add r3, r31, r0
/* 80072B30 0006FA90  80 63 00 04 */	lwz r3, 4(r3)
/* 80072B34 0006FA94  28 03 00 00 */	cmplwi r3, 0
/* 80072B38 0006FA98  41 82 00 24 */	beq lbl_80072B5C
/* 80072B3C 0006FA9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80072B40 0006FAA0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80072B44 0006FAA4  7D 89 03 A6 */	mtctr r12
/* 80072B48 0006FAA8  4E 80 04 21 */	bctrl 
/* 80072B4C 0006FAAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072B50 0006FAB0  41 82 00 0C */	beq lbl_80072B5C
/* 80072B54 0006FAB4  38 60 00 00 */	li r3, 0
/* 80072B58 0006FAB8  48 00 00 44 */	b lbl_80072B9C
lbl_80072B5C:
/* 80072B5C 0006FABC  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 80072B60 0006FAC0  20 00 00 01 */	subfic r0, r0, 1
/* 80072B64 0006FAC4  54 03 18 38 */	slwi r3, r0, 3
/* 80072B68 0006FAC8  38 03 00 04 */	addi r0, r3, 4
/* 80072B6C 0006FACC  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80072B70 0006FAD0  28 03 00 00 */	cmplwi r3, 0
/* 80072B74 0006FAD4  41 82 00 24 */	beq lbl_80072B98
/* 80072B78 0006FAD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80072B7C 0006FADC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80072B80 0006FAE0  7D 89 03 A6 */	mtctr r12
/* 80072B84 0006FAE4  4E 80 04 21 */	bctrl 
/* 80072B88 0006FAE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072B8C 0006FAEC  41 82 00 0C */	beq lbl_80072B98
/* 80072B90 0006FAF0  38 60 00 00 */	li r3, 0
/* 80072B94 0006FAF4  48 00 00 08 */	b lbl_80072B9C
lbl_80072B98:
/* 80072B98 0006FAF8  38 60 00 01 */	li r3, 1
lbl_80072B9C:
/* 80072B9C 0006FAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80072BA0 0006FB00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80072BA4 0006FB04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80072BA8 0006FB08  7C 08 03 A6 */	mtlr r0
/* 80072BAC 0006FB0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80072BB0 0006FB10  4E 80 00 20 */	blr 

.global ProcessControllerInput__12CPauseScreenFRC13CStateManagerRC11CFinalInput
ProcessControllerInput__12CPauseScreenFRC13CStateManagerRC11CFinalInput:
/* 80072BB4 0006FB14  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80072BB8 0006FB18  7C 08 02 A6 */	mflr r0
/* 80072BBC 0006FB1C  90 01 01 14 */	stw r0, 0x114(r1)
/* 80072BC0 0006FB20  BF 41 00 F8 */	stmw r26, 0xf8(r1)
/* 80072BC4 0006FB24  7C 7F 1B 78 */	mr r31, r3
/* 80072BC8 0006FB28  7C 9D 23 78 */	mr r29, r4
/* 80072BCC 0006FB2C  7C BC 2B 78 */	mr r28, r5
/* 80072BD0 0006FB30  4B FF FF 19 */	bl IsLoaded__12CPauseScreenCFv
/* 80072BD4 0006FB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072BD8 0006FB38  41 82 05 C4 */	beq lbl_8007319C
/* 80072BDC 0006FB3C  80 7F 00 08 */	lwz r3, 8(r31)
/* 80072BE0 0006FB40  38 80 00 01 */	li r4, 1
/* 80072BE4 0006FB44  38 63 FF FD */	addi r3, r3, -3
/* 80072BE8 0006FB48  20 03 00 01 */	subfic r0, r3, 1
/* 80072BEC 0006FB4C  7C 83 1B 38 */	orc r3, r4, r3
/* 80072BF0 0006FB50  54 00 F8 7E */	srwi r0, r0, 1
/* 80072BF4 0006FB54  7C 00 18 50 */	subf r0, r0, r3
/* 80072BF8 0006FB58  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80072BFC 0006FB5C  40 82 00 08 */	bne lbl_80072C04
/* 80072C00 0006FB60  38 80 00 00 */	li r4, 0
lbl_80072C04:
/* 80072C04 0006FB64  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80072C08 0006FB68  40 82 05 94 */	bne lbl_8007319C
/* 80072C0C 0006FB6C  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80072C10 0006FB70  3B 5F 00 80 */	addi r26, r31, 0x80
/* 80072C14 0006FB74  3B 60 00 00 */	li r27, 0
/* 80072C18 0006FB78  54 00 18 38 */	slwi r0, r0, 3
/* 80072C1C 0006FB7C  7C 7A 02 14 */	add r3, r26, r0
/* 80072C20 0006FB80  80 63 00 04 */	lwz r3, 4(r3)
/* 80072C24 0006FB84  28 03 00 00 */	cmplwi r3, 0
/* 80072C28 0006FB88  41 82 00 28 */	beq lbl_80072C50
/* 80072C2C 0006FB8C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80072C30 0006FB90  2C 00 00 00 */	cmpwi r0, 0
/* 80072C34 0006FB94  40 82 00 08 */	bne lbl_80072C3C
/* 80072C38 0006FB98  3B 60 00 01 */	li r27, 1
lbl_80072C3C:
/* 80072C3C 0006FB9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80072C40 0006FBA0  7F 84 E3 78 */	mr r4, r28
/* 80072C44 0006FBA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80072C48 0006FBA8  7D 89 03 A6 */	mtctr r12
/* 80072C4C 0006FBAC  4E 80 04 21 */	bctrl 
lbl_80072C50:
/* 80072C50 0006FBB0  7F E3 FB 78 */	mr r3, r31
/* 80072C54 0006FBB4  4B FF FE 9D */	bl InputEnabled__12CPauseScreenCFv
/* 80072C58 0006FBB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072C5C 0006FBBC  41 82 01 84 */	beq lbl_80072DE0
/* 80072C60 0006FBC0  80 7F 00 08 */	lwz r3, 8(r31)
/* 80072C64 0006FBC4  3B C0 00 01 */	li r30, 1
/* 80072C68 0006FBC8  38 63 FF FD */	addi r3, r3, -3
/* 80072C6C 0006FBCC  20 03 00 01 */	subfic r0, r3, 1
/* 80072C70 0006FBD0  7F C3 1B 38 */	orc r3, r30, r3
/* 80072C74 0006FBD4  54 00 F8 7E */	srwi r0, r0, 1
/* 80072C78 0006FBD8  7C 00 18 50 */	subf r0, r0, r3
/* 80072C7C 0006FBDC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80072C80 0006FBE0  40 82 00 08 */	bne lbl_80072C88
/* 80072C84 0006FBE4  3B C0 00 00 */	li r30, 0
lbl_80072C88:
/* 80072C88 0006FBE8  88 1C 00 2E */	lbz r0, 0x2e(r28)
/* 80072C8C 0006FBEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80072C90 0006FBF0  40 82 00 3C */	bne lbl_80072CCC
/* 80072C94 0006FBF4  88 1C 00 2D */	lbz r0, 0x2d(r28)
/* 80072C98 0006FBF8  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80072C9C 0006FBFC  41 82 00 0C */	beq lbl_80072CA8
/* 80072CA0 0006FC00  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80072CA4 0006FC04  40 82 00 28 */	bne lbl_80072CCC
lbl_80072CA8:
/* 80072CA8 0006FC08  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80072CAC 0006FC0C  54 00 18 38 */	slwi r0, r0, 3
/* 80072CB0 0006FC10  7C 7A 02 14 */	add r3, r26, r0
/* 80072CB4 0006FC14  80 63 00 04 */	lwz r3, 4(r3)
/* 80072CB8 0006FC18  28 03 00 00 */	cmplwi r3, 0
/* 80072CBC 0006FC1C  41 82 00 50 */	beq lbl_80072D0C
/* 80072CC0 0006FC20  4B FF DD F1 */	bl ShouldExitPauseScreen__16CPauseScreenBaseCFv
/* 80072CC4 0006FC24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072CC8 0006FC28  41 82 00 44 */	beq lbl_80072D0C
lbl_80072CCC:
/* 80072CCC 0006FC2C  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80072CD0 0006FC30  38 61 00 24 */	addi r3, r1, 0x24
/* 80072CD4 0006FC34  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80072CD8 0006FC38  38 80 05 9A */	li r4, 0x59a
/* 80072CDC 0006FC3C  38 A0 00 7F */	li r5, 0x7f
/* 80072CE0 0006FC40  38 C0 00 40 */	li r6, 0x40
/* 80072CE4 0006FC44  38 E0 00 00 */	li r7, 0
/* 80072CE8 0006FC48  39 20 00 00 */	li r9, 0
/* 80072CEC 0006FC4C  48 27 70 89 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80072CF0 0006FC50  C0 22 88 50 */	lfs f1, lbl_805AA570@sda21(r2)
/* 80072CF4 0006FC54  7F E3 FB 78 */	mr r3, r31
/* 80072CF8 0006FC58  7F A4 EB 78 */	mr r4, r29
/* 80072CFC 0006FC5C  38 A0 00 03 */	li r5, 3
/* 80072D00 0006FC60  38 C0 00 02 */	li r6, 2
/* 80072D04 0006FC64  48 00 09 F9 */	bl StartTransition__12CPauseScreenFfRC13CStateManagerQ212CPauseScreen10ESubScreeni
/* 80072D08 0006FC68  48 00 00 D8 */	b lbl_80072DE0
lbl_80072D0C:
/* 80072D0C 0006FC6C  7F 84 E3 78 */	mr r4, r28
/* 80072D10 0006FC70  38 60 00 41 */	li r3, 0x41
/* 80072D14 0006FC74  4B F9 9A BD */	bl GetPressInput__13ControlMapperFQ213ControlMapper9ECommandsRC11CFinalInput
/* 80072D18 0006FC78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072D1C 0006FC7C  41 82 00 5C */	beq lbl_80072D78
/* 80072D20 0006FC80  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80072D24 0006FC84  38 61 00 20 */	addi r3, r1, 0x20
/* 80072D28 0006FC88  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80072D2C 0006FC8C  38 80 05 99 */	li r4, 0x599
/* 80072D30 0006FC90  38 A0 00 7F */	li r5, 0x7f
/* 80072D34 0006FC94  38 C0 00 40 */	li r6, 0x40
/* 80072D38 0006FC98  38 E0 00 00 */	li r7, 0
/* 80072D3C 0006FC9C  39 20 00 00 */	li r9, 0
/* 80072D40 0006FCA0  48 27 70 35 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80072D44 0006FCA4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80072D48 0006FCA8  3B 40 00 00 */	li r26, 0
/* 80072D4C 0006FCAC  41 82 00 08 */	beq lbl_80072D54
/* 80072D50 0006FCB0  3B 40 00 02 */	li r26, 2
lbl_80072D54:
/* 80072D54 0006FCB4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80072D58 0006FCB8  48 00 15 85 */	bl GetPreviousSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen
/* 80072D5C 0006FCBC  C0 22 88 50 */	lfs f1, lbl_805AA570@sda21(r2)
/* 80072D60 0006FCC0  7C 65 1B 78 */	mr r5, r3
/* 80072D64 0006FCC4  7F E3 FB 78 */	mr r3, r31
/* 80072D68 0006FCC8  7F A4 EB 78 */	mr r4, r29
/* 80072D6C 0006FCCC  7F 46 D3 78 */	mr r6, r26
/* 80072D70 0006FCD0  48 00 09 8D */	bl StartTransition__12CPauseScreenFfRC13CStateManagerQ212CPauseScreen10ESubScreeni
/* 80072D74 0006FCD4  48 00 00 6C */	b lbl_80072DE0
lbl_80072D78:
/* 80072D78 0006FCD8  7F 84 E3 78 */	mr r4, r28
/* 80072D7C 0006FCDC  38 60 00 42 */	li r3, 0x42
/* 80072D80 0006FCE0  4B F9 9A 51 */	bl GetPressInput__13ControlMapperFQ213ControlMapper9ECommandsRC11CFinalInput
/* 80072D84 0006FCE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80072D88 0006FCE8  41 82 00 58 */	beq lbl_80072DE0
/* 80072D8C 0006FCEC  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80072D90 0006FCF0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80072D94 0006FCF4  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80072D98 0006FCF8  38 80 05 99 */	li r4, 0x599
/* 80072D9C 0006FCFC  38 A0 00 7F */	li r5, 0x7f
/* 80072DA0 0006FD00  38 C0 00 40 */	li r6, 0x40
/* 80072DA4 0006FD04  38 E0 00 00 */	li r7, 0
/* 80072DA8 0006FD08  39 20 00 00 */	li r9, 0
/* 80072DAC 0006FD0C  48 27 6F C9 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80072DB0 0006FD10  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80072DB4 0006FD14  3B 40 00 01 */	li r26, 1
/* 80072DB8 0006FD18  41 82 00 08 */	beq lbl_80072DC0
/* 80072DBC 0006FD1C  3B 40 00 02 */	li r26, 2
lbl_80072DC0:
/* 80072DC0 0006FD20  80 7F 00 08 */	lwz r3, 8(r31)
/* 80072DC4 0006FD24  48 00 14 E5 */	bl GetNextSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen
/* 80072DC8 0006FD28  C0 22 88 50 */	lfs f1, lbl_805AA570@sda21(r2)
/* 80072DCC 0006FD2C  7C 65 1B 78 */	mr r5, r3
/* 80072DD0 0006FD30  7F E3 FB 78 */	mr r3, r31
/* 80072DD4 0006FD34  7F A4 EB 78 */	mr r4, r29
/* 80072DD8 0006FD38  7F 46 D3 78 */	mr r6, r26
/* 80072DDC 0006FD3C  48 00 09 21 */	bl StartTransition__12CPauseScreenFfRC13CStateManagerQ212CPauseScreen10ESubScreeni
lbl_80072DE0:
/* 80072DE0 0006FD40  C0 22 CC 2C */	lfs f1, lbl_805AE94C@sda21(r2)
/* 80072DE4 0006FD44  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80072DE8 0006FD48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80072DEC 0006FD4C  40 80 00 0C */	bge lbl_80072DF8
/* 80072DF0 0006FD50  38 00 00 01 */	li r0, 1
/* 80072DF4 0006FD54  48 00 00 08 */	b lbl_80072DFC
lbl_80072DF8:
/* 80072DF8 0006FD58  38 00 00 00 */	li r0, 0
lbl_80072DFC:
/* 80072DFC 0006FD5C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80072E00 0006FD60  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80072E04 0006FD64  7C 03 00 D0 */	neg r0, r3
/* 80072E08 0006FD68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80072E0C 0006FD6C  7C 00 1B 78 */	or r0, r0, r3
/* 80072E10 0006FD70  54 1E 0F FE */	srwi r30, r0, 0x1f
/* 80072E14 0006FD74  40 80 00 0C */	bge lbl_80072E20
/* 80072E18 0006FD78  3B A0 00 01 */	li r29, 1
/* 80072E1C 0006FD7C  48 00 00 08 */	b lbl_80072E24
lbl_80072E20:
/* 80072E20 0006FD80  3B A0 00 00 */	li r29, 0
lbl_80072E24:
/* 80072E24 0006FD84  88 1C 00 2C */	lbz r0, 0x2c(r28)
/* 80072E28 0006FD88  3C 60 80 3D */	lis r3, lbl_803CD2B8@ha
/* 80072E2C 0006FD8C  38 A3 D2 B8 */	addi r5, r3, lbl_803CD2B8@l
/* 80072E30 0006FD90  88 7C 00 2D */	lbz r3, 0x2d(r28)
/* 80072E34 0006FD94  54 1A CF FE */	rlwinm r26, r0, 0x19, 0x1f, 0x1f
/* 80072E38 0006FD98  54 0B D7 FE */	rlwinm r11, r0, 0x1a, 0x1f, 0x1f
/* 80072E3C 0006FD9C  38 00 00 00 */	li r0, 0
/* 80072E40 0006FDA0  54 7C E7 FE */	rlwinm r28, r3, 0x1c, 0x1f, 0x1f
/* 80072E44 0006FDA4  80 85 00 00 */	lwz r4, 0(r5)
/* 80072E48 0006FDA8  7F 7C 00 D0 */	neg r27, r28
/* 80072E4C 0006FDAC  80 65 00 04 */	lwz r3, 4(r5)
/* 80072E50 0006FDB0  7D 9A 00 D0 */	neg r12, r26
/* 80072E54 0006FDB4  81 25 00 08 */	lwz r9, 8(r5)
/* 80072E58 0006FDB8  7D 4B 00 D0 */	neg r10, r11
/* 80072E5C 0006FDBC  81 05 00 0C */	lwz r8, 0xc(r5)
/* 80072E60 0006FDC0  38 CD A9 1A */	addi r6, r13, lbl_805A94DA@sda21
/* 80072E64 0006FDC4  80 E2 88 28 */	lwz r7, lbl_805AA548@sda21(r2)
/* 80072E68 0006FDC8  7F 7B E3 78 */	or r27, r27, r28
/* 80072E6C 0006FDCC  7D 8C D3 78 */	or r12, r12, r26
/* 80072E70 0006FDD0  7D 45 5B 78 */	or r5, r10, r11
/* 80072E74 0006FDD4  90 81 00 DC */	stw r4, 0xdc(r1)
/* 80072E78 0006FDD8  57 7C 0F FE */	srwi r28, r27, 0x1f
/* 80072E7C 0006FDDC  55 9B 0F FE */	srwi r27, r12, 0x1f
/* 80072E80 0006FDE0  54 BA 0F FE */	srwi r26, r5, 0x1f
/* 80072E84 0006FDE4  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 80072E88 0006FDE8  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072E8C 0006FDEC  38 80 01 00 */	li r4, 0x100
/* 80072E90 0006FDF0  38 A0 00 01 */	li r5, 1
/* 80072E94 0006FDF4  91 21 00 E4 */	stw r9, 0xe4(r1)
/* 80072E98 0006FDF8  91 01 00 E8 */	stw r8, 0xe8(r1)
/* 80072E9C 0006FDFC  90 E1 00 28 */	stw r7, 0x28(r1)
/* 80072EA0 0006FE00  90 C1 00 CC */	stw r6, 0xcc(r1)
/* 80072EA4 0006FE04  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80072EA8 0006FE08  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80072EAC 0006FE0C  48 2C A0 C9 */	bl "internal_prepare_to_write__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fib"
/* 80072EB0 0006FE10  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072EB4 0006FE14  38 81 00 DC */	addi r4, r1, 0xdc
/* 80072EB8 0006FE18  38 A0 FF FF */	li r5, -1
/* 80072EBC 0006FE1C  48 2C A6 29 */	bl sub_8033d4e4
/* 80072EC0 0006FE20  80 6D A1 4C */	lwz r3, gpTweakPlayerRes@sda21(r13)
/* 80072EC4 0006FE24  57 C0 10 3A */	slwi r0, r30, 2
/* 80072EC8 0006FE28  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 80072ECC 0006FE2C  7C 63 02 14 */	add r3, r3, r0
/* 80072ED0 0006FE30  38 A4 D2 D8 */	addi r5, r4, lbl_803CD2D8@l
/* 80072ED4 0006FE34  80 83 00 74 */	lwz r4, 0x74(r3)
/* 80072ED8 0006FE38  38 65 01 C8 */	addi r3, r5, 0x1c8
/* 80072EDC 0006FE3C  4C C6 31 82 */	crclr 6
/* 80072EE0 0006FE40  48 26 32 D1 */	bl Stringize__7CBasicsFPCce
/* 80072EE4 0006FE44  7C 64 1B 78 */	mr r4, r3
/* 80072EE8 0006FE48  38 61 00 BC */	addi r3, r1, 0xbc
/* 80072EEC 0006FE4C  38 C1 00 18 */	addi r6, r1, 0x18
/* 80072EF0 0006FE50  38 A0 FF FF */	li r5, -1
/* 80072EF4 0006FE54  48 2C B2 A1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80072EF8 0006FE58  38 61 00 AC */	addi r3, r1, 0xac
/* 80072EFC 0006FE5C  38 81 00 BC */	addi r4, r1, 0xbc
/* 80072F00 0006FE60  48 2C B8 21 */	bl "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80072F04 0006FE64  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072F08 0006FE68  38 81 00 AC */	addi r4, r1, 0xac
/* 80072F0C 0006FE6C  48 2C A7 41 */	bl "append__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80072F10 0006FE70  38 61 00 AC */	addi r3, r1, 0xac
/* 80072F14 0006FE74  48 2C A2 21 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80072F18 0006FE78  38 61 00 BC */	addi r3, r1, 0xbc
/* 80072F1C 0006FE7C  48 2C AB C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80072F20 0006FE80  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072F24 0006FE84  38 81 00 28 */	addi r4, r1, 0x28
/* 80072F28 0006FE88  38 A0 FF FF */	li r5, -1
/* 80072F2C 0006FE8C  48 2C A5 B9 */	bl sub_8033d4e4
/* 80072F30 0006FE90  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80072F34 0006FE94  38 81 00 CC */	addi r4, r1, 0xcc
/* 80072F38 0006FE98  38 A0 00 00 */	li r5, 0
/* 80072F3C 0006FE9C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80072F40 0006FEA0  48 25 69 45 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80072F44 0006FEA4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072F48 0006FEA8  38 81 00 DC */	addi r4, r1, 0xdc
/* 80072F4C 0006FEAC  38 A0 FF FF */	li r5, -1
/* 80072F50 0006FEB0  48 2C A2 AD */	bl sub_8033d1fc
/* 80072F54 0006FEB4  80 6D A1 4C */	lwz r3, gpTweakPlayerRes@sda21(r13)
/* 80072F58 0006FEB8  57 A0 10 3A */	slwi r0, r29, 2
/* 80072F5C 0006FEBC  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 80072F60 0006FEC0  7C 63 02 14 */	add r3, r3, r0
/* 80072F64 0006FEC4  38 A4 D2 D8 */	addi r5, r4, lbl_803CD2D8@l
/* 80072F68 0006FEC8  80 83 00 80 */	lwz r4, 0x80(r3)
/* 80072F6C 0006FECC  38 65 01 C8 */	addi r3, r5, 0x1c8
/* 80072F70 0006FED0  4C C6 31 82 */	crclr 6
/* 80072F74 0006FED4  48 26 32 3D */	bl Stringize__7CBasicsFPCce
/* 80072F78 0006FED8  7C 64 1B 78 */	mr r4, r3
/* 80072F7C 0006FEDC  38 61 00 9C */	addi r3, r1, 0x9c
/* 80072F80 0006FEE0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80072F84 0006FEE4  38 A0 FF FF */	li r5, -1
/* 80072F88 0006FEE8  48 2C B2 0D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80072F8C 0006FEEC  38 61 00 8C */	addi r3, r1, 0x8c
/* 80072F90 0006FEF0  38 81 00 9C */	addi r4, r1, 0x9c
/* 80072F94 0006FEF4  48 2C B7 8D */	bl "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80072F98 0006FEF8  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072F9C 0006FEFC  38 81 00 8C */	addi r4, r1, 0x8c
/* 80072FA0 0006FF00  48 2C A6 AD */	bl "append__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80072FA4 0006FF04  38 61 00 8C */	addi r3, r1, 0x8c
/* 80072FA8 0006FF08  48 2C A1 8D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80072FAC 0006FF0C  38 61 00 9C */	addi r3, r1, 0x9c
/* 80072FB0 0006FF10  48 2C AB 31 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80072FB4 0006FF14  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072FB8 0006FF18  38 81 00 28 */	addi r4, r1, 0x28
/* 80072FBC 0006FF1C  38 A0 FF FF */	li r5, -1
/* 80072FC0 0006FF20  48 2C A5 25 */	bl sub_8033d4e4
/* 80072FC4 0006FF24  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 80072FC8 0006FF28  38 81 00 CC */	addi r4, r1, 0xcc
/* 80072FCC 0006FF2C  38 A0 00 00 */	li r5, 0
/* 80072FD0 0006FF30  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80072FD4 0006FF34  48 25 68 B1 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80072FD8 0006FF38  38 61 00 CC */	addi r3, r1, 0xcc
/* 80072FDC 0006FF3C  38 81 00 DC */	addi r4, r1, 0xdc
/* 80072FE0 0006FF40  38 A0 FF FF */	li r5, -1
/* 80072FE4 0006FF44  48 2C A2 19 */	bl sub_8033d1fc
/* 80072FE8 0006FF48  80 6D A1 4C */	lwz r3, gpTweakPlayerRes@sda21(r13)
/* 80072FEC 0006FF4C  57 80 10 3A */	slwi r0, r28, 2
/* 80072FF0 0006FF50  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 80072FF4 0006FF54  7C 63 02 14 */	add r3, r3, r0
/* 80072FF8 0006FF58  38 A4 D2 D8 */	addi r5, r4, lbl_803CD2D8@l
/* 80072FFC 0006FF5C  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 80073000 0006FF60  38 65 01 C8 */	addi r3, r5, 0x1c8
/* 80073004 0006FF64  4C C6 31 82 */	crclr 6
/* 80073008 0006FF68  48 26 31 A9 */	bl Stringize__7CBasicsFPCce
/* 8007300C 0006FF6C  7C 64 1B 78 */	mr r4, r3
/* 80073010 0006FF70  38 61 00 7C */	addi r3, r1, 0x7c
/* 80073014 0006FF74  38 C1 00 10 */	addi r6, r1, 0x10
/* 80073018 0006FF78  38 A0 FF FF */	li r5, -1
/* 8007301C 0006FF7C  48 2C B1 79 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80073020 0006FF80  38 61 00 6C */	addi r3, r1, 0x6c
/* 80073024 0006FF84  38 81 00 7C */	addi r4, r1, 0x7c
/* 80073028 0006FF88  48 2C B6 F9 */	bl "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8007302C 0006FF8C  38 61 00 CC */	addi r3, r1, 0xcc
/* 80073030 0006FF90  38 81 00 6C */	addi r4, r1, 0x6c
/* 80073034 0006FF94  48 2C A6 19 */	bl "append__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073038 0006FF98  38 61 00 6C */	addi r3, r1, 0x6c
/* 8007303C 0006FF9C  48 2C A0 F9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80073040 0006FFA0  38 61 00 7C */	addi r3, r1, 0x7c
/* 80073044 0006FFA4  48 2C AA 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80073048 0006FFA8  38 61 00 CC */	addi r3, r1, 0xcc
/* 8007304C 0006FFAC  38 81 00 28 */	addi r4, r1, 0x28
/* 80073050 0006FFB0  38 A0 FF FF */	li r5, -1
/* 80073054 0006FFB4  48 2C A4 91 */	bl sub_8033d4e4
/* 80073058 0006FFB8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 8007305C 0006FFBC  38 81 00 CC */	addi r4, r1, 0xcc
/* 80073060 0006FFC0  38 A0 00 00 */	li r5, 0
/* 80073064 0006FFC4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073068 0006FFC8  48 25 68 1D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8007306C 0006FFCC  38 61 00 CC */	addi r3, r1, 0xcc
/* 80073070 0006FFD0  38 81 00 DC */	addi r4, r1, 0xdc
/* 80073074 0006FFD4  38 A0 FF FF */	li r5, -1
/* 80073078 0006FFD8  48 2C A1 85 */	bl sub_8033d1fc
/* 8007307C 0006FFDC  80 6D A1 4C */	lwz r3, gpTweakPlayerRes@sda21(r13)
/* 80073080 0006FFE0  57 60 10 3A */	slwi r0, r27, 2
/* 80073084 0006FFE4  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 80073088 0006FFE8  7C 63 02 14 */	add r3, r3, r0
/* 8007308C 0006FFEC  38 A4 D2 D8 */	addi r5, r4, lbl_803CD2D8@l
/* 80073090 0006FFF0  80 83 00 98 */	lwz r4, 0x98(r3)
/* 80073094 0006FFF4  38 65 01 C8 */	addi r3, r5, 0x1c8
/* 80073098 0006FFF8  4C C6 31 82 */	crclr 6
/* 8007309C 0006FFFC  48 26 31 15 */	bl Stringize__7CBasicsFPCce
/* 800730A0 00070000  7C 64 1B 78 */	mr r4, r3
/* 800730A4 00070004  38 61 00 5C */	addi r3, r1, 0x5c
/* 800730A8 00070008  38 C1 00 0C */	addi r6, r1, 0xc
/* 800730AC 0007000C  38 A0 FF FF */	li r5, -1
/* 800730B0 00070010  48 2C B0 E5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 800730B4 00070014  38 61 00 4C */	addi r3, r1, 0x4c
/* 800730B8 00070018  38 81 00 5C */	addi r4, r1, 0x5c
/* 800730BC 0007001C  48 2C B6 65 */	bl "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800730C0 00070020  38 61 00 CC */	addi r3, r1, 0xcc
/* 800730C4 00070024  38 81 00 4C */	addi r4, r1, 0x4c
/* 800730C8 00070028  48 2C A5 85 */	bl "append__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 800730CC 0007002C  38 61 00 4C */	addi r3, r1, 0x4c
/* 800730D0 00070030  48 2C A0 65 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 800730D4 00070034  38 61 00 5C */	addi r3, r1, 0x5c
/* 800730D8 00070038  48 2C AA 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800730DC 0007003C  38 61 00 CC */	addi r3, r1, 0xcc
/* 800730E0 00070040  38 81 00 28 */	addi r4, r1, 0x28
/* 800730E4 00070044  38 A0 FF FF */	li r5, -1
/* 800730E8 00070048  48 2C A3 FD */	bl sub_8033d4e4
/* 800730EC 0007004C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 800730F0 00070050  38 81 00 CC */	addi r4, r1, 0xcc
/* 800730F4 00070054  38 A0 00 00 */	li r5, 0
/* 800730F8 00070058  38 63 00 D4 */	addi r3, r3, 0xd4
/* 800730FC 0007005C  48 25 67 89 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073100 00070060  38 61 00 CC */	addi r3, r1, 0xcc
/* 80073104 00070064  38 81 00 DC */	addi r4, r1, 0xdc
/* 80073108 00070068  38 A0 FF FF */	li r5, -1
/* 8007310C 0007006C  48 2C A0 F1 */	bl sub_8033d1fc
/* 80073110 00070070  80 6D A1 4C */	lwz r3, gpTweakPlayerRes@sda21(r13)
/* 80073114 00070074  57 40 10 3A */	slwi r0, r26, 2
/* 80073118 00070078  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 8007311C 0007007C  7C 63 02 14 */	add r3, r3, r0
/* 80073120 00070080  38 A4 D2 D8 */	addi r5, r4, lbl_803CD2D8@l
/* 80073124 00070084  80 83 00 A4 */	lwz r4, 0xa4(r3)
/* 80073128 00070088  38 65 01 C8 */	addi r3, r5, 0x1c8
/* 8007312C 0007008C  4C C6 31 82 */	crclr 6
/* 80073130 00070090  48 26 30 81 */	bl Stringize__7CBasicsFPCce
/* 80073134 00070094  7C 64 1B 78 */	mr r4, r3
/* 80073138 00070098  38 61 00 3C */	addi r3, r1, 0x3c
/* 8007313C 0007009C  38 C1 00 08 */	addi r6, r1, 8
/* 80073140 000700A0  38 A0 FF FF */	li r5, -1
/* 80073144 000700A4  48 2C B0 51 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 80073148 000700A8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8007314C 000700AC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80073150 000700B0  48 2C B5 D1 */	bl "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80073154 000700B4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80073158 000700B8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8007315C 000700BC  48 2C A4 F1 */	bl "append__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073160 000700C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80073164 000700C4  48 2C 9F D1 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80073168 000700C8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8007316C 000700CC  48 2C A9 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80073170 000700D0  38 61 00 CC */	addi r3, r1, 0xcc
/* 80073174 000700D4  38 81 00 28 */	addi r4, r1, 0x28
/* 80073178 000700D8  38 A0 FF FF */	li r5, -1
/* 8007317C 000700DC  48 2C A3 69 */	bl sub_8033d4e4
/* 80073180 000700E0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80073184 000700E4  38 81 00 CC */	addi r4, r1, 0xcc
/* 80073188 000700E8  38 A0 00 00 */	li r5, 0
/* 8007318C 000700EC  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073190 000700F0  48 25 66 F5 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073194 000700F4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80073198 000700F8  48 2C 9F 9D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_8007319C:
/* 8007319C 000700FC  BB 41 00 F8 */	lmw r26, 0xf8(r1)
/* 800731A0 00070100  80 01 01 14 */	lwz r0, 0x114(r1)
/* 800731A4 00070104  7C 08 03 A6 */	mtlr r0
/* 800731A8 00070108  38 21 01 10 */	addi r1, r1, 0x110
/* 800731AC 0007010C  4E 80 00 20 */	blr 

.global Draw__12CPauseScreenFv
Draw__12CPauseScreenFv:
/* 800731B0 00070110  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800731B4 00070114  7C 08 02 A6 */	mflr r0
/* 800731B8 00070118  90 01 00 44 */	stw r0, 0x44(r1)
/* 800731BC 0007011C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800731C0 00070120  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800731C4 00070124  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800731C8 00070128  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800731CC 0007012C  7C 7F 1B 78 */	mr r31, r3
/* 800731D0 00070130  4B FF F9 19 */	bl IsLoaded__12CPauseScreenCFv
/* 800731D4 00070134  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800731D8 00070138  41 82 01 38 */	beq lbl_80073310
/* 800731DC 0007013C  C0 02 88 30 */	lfs f0, lbl_805AA550@sda21(r2)
/* 800731E0 00070140  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800731E4 00070144  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800731E8 00070148  40 82 00 0C */	bne lbl_800731F4
/* 800731EC 0007014C  C0 22 88 44 */	lfs f1, lbl_805AA564@sda21(r2)
/* 800731F0 00070150  48 00 00 0C */	b lbl_800731FC
lbl_800731F4:
/* 800731F4 00070154  C0 02 88 50 */	lfs f0, lbl_805AA570@sda21(r2)
/* 800731F8 00070158  EC 21 00 24 */	fdivs f1, f1, f0
lbl_800731FC:
/* 800731FC 0007015C  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 80073200 00070160  C0 42 88 30 */	lfs f2, lbl_805AA550@sda21(r2)
/* 80073204 00070164  54 00 18 38 */	slwi r0, r0, 3
/* 80073208 00070168  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8007320C 0007016C  7F DF 02 14 */	add r30, r31, r0
/* 80073210 00070170  FF E0 10 90 */	fmr f31, f2
/* 80073214 00070174  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80073218 00070178  28 03 00 00 */	cmplwi r3, 0
/* 8007321C 0007017C  41 82 00 CC */	beq lbl_800732E8
/* 80073220 00070180  88 03 01 98 */	lbz r0, 0x198(r3)
/* 80073224 00070184  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80073228 00070188  41 82 00 C0 */	beq lbl_800732E8
/* 8007322C 0007018C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80073230 00070190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80073234 00070194  D0 01 00 08 */	stfs f0, 8(r1)
/* 80073238 00070198  40 80 00 0C */	bge lbl_80073244
/* 8007323C 0007019C  38 81 00 0C */	addi r4, r1, 0xc
/* 80073240 000701A0  48 00 00 08 */	b lbl_80073248
lbl_80073244:
/* 80073244 000701A4  38 81 00 08 */	addi r4, r1, 8
lbl_80073248:
/* 80073248 000701A8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8007324C 000701AC  38 A0 00 01 */	li r5, 1
/* 80073250 000701B0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80073254 000701B4  38 63 FF FD */	addi r3, r3, -3
/* 80073258 000701B8  20 03 00 01 */	subfic r0, r3, 1
/* 8007325C 000701BC  7C A3 1B 38 */	orc r3, r5, r3
/* 80073260 000701C0  54 00 F8 7E */	srwi r0, r0, 1
/* 80073264 000701C4  7C 00 18 50 */	subf r0, r0, r3
/* 80073268 000701C8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8007326C 000701CC  40 82 00 08 */	bne lbl_80073274
/* 80073270 000701D0  38 A0 00 00 */	li r5, 0
lbl_80073274:
/* 80073274 000701D4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80073278 000701D8  41 82 00 0C */	beq lbl_80073284
/* 8007327C 000701DC  FC 40 08 90 */	fmr f2, f1
/* 80073280 000701E0  48 00 00 1C */	b lbl_8007329C
lbl_80073284:
/* 80073284 000701E4  88 1F 00 91 */	lbz r0, 0x91(r31)
/* 80073288 000701E8  28 00 00 00 */	cmplwi r0, 0
/* 8007328C 000701EC  41 82 00 0C */	beq lbl_80073298
/* 80073290 000701F0  FC 40 00 90 */	fmr f2, f0
/* 80073294 000701F4  48 00 00 08 */	b lbl_8007329C
lbl_80073298:
/* 80073298 000701F8  C0 42 88 44 */	lfs f2, lbl_805AA564@sda21(r2)
lbl_8007329C:
/* 8007329C 000701FC  80 9F 00 08 */	lwz r4, 8(r31)
/* 800732A0 00070200  FF E0 10 90 */	fmr f31, f2
/* 800732A4 00070204  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800732A8 00070208  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 800732AC 0007020C  7C 04 00 00 */	cmpw r4, r0
/* 800732B0 00070210  41 82 00 08 */	beq lbl_800732B8
/* 800732B4 00070214  48 00 00 08 */	b lbl_800732BC
lbl_800732B8:
/* 800732B8 00070218  C0 22 88 44 */	lfs f1, lbl_805AA564@sda21(r2)
lbl_800732BC:
/* 800732BC 0007021C  81 83 00 00 */	lwz r12, 0(r3)
/* 800732C0 00070220  C0 62 88 30 */	lfs f3, lbl_805AA550@sda21(r2)
/* 800732C4 00070224  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800732C8 00070228  7D 89 03 A6 */	mtctr r12
/* 800732CC 0007022C  4E 80 04 21 */	bctrl 
/* 800732D0 00070230  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 800732D4 00070234  81 83 00 00 */	lwz r12, 0(r3)
/* 800732D8 00070238  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800732DC 0007023C  7D 89 03 A6 */	mtctr r12
/* 800732E0 00070240  4E 80 04 21 */	bctrl 
/* 800732E4 00070244  FC 40 08 90 */	fmr f2, f1
lbl_800732E8:
/* 800732E8 00070248  C0 02 88 48 */	lfs f0, lbl_805AA568@sda21(r2)
/* 800732EC 0007024C  38 81 00 10 */	addi r4, r1, 0x10
/* 800732F0 00070250  C0 22 88 30 */	lfs f1, lbl_805AA550@sda21(r2)
/* 800732F4 00070254  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800732F8 00070258  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 800732FC 0007025C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073300 00070260  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80073304 00070264  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80073308 00070268  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8007330C 0007026C  48 24 F4 29 */	bl Draw__9CGuiFrameCFRC19CGuiWidgetDrawParms
lbl_80073310:
/* 80073310 00070270  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80073314 00070274  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80073318 00070278  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8007331C 0007027C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80073320 00070280  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80073324 00070284  7C 08 03 A6 */	mtlr r0
/* 80073328 00070288  38 21 00 40 */	addi r1, r1, 0x40
/* 8007332C 0007028C  4E 80 00 20 */	blr 

.global TransitionComplete__12CPauseScreenFv
TransitionComplete__12CPauseScreenFv:
/* 80073330 00070290  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80073334 00070294  7C 08 02 A6 */	mflr r0
/* 80073338 00070298  38 80 00 00 */	li r4, 0
/* 8007333C 0007029C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80073340 000702A0  38 01 00 10 */	addi r0, r1, 0x10
/* 80073344 000702A4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80073348 000702A8  7C 7F 1B 78 */	mr r31, r3
/* 8007334C 000702AC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80073350 000702B0  98 81 00 10 */	stb r4, 0x10(r1)
/* 80073354 000702B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80073358 000702B8  80 63 00 78 */	lwz r3, 0x78(r3)
/* 8007335C 000702BC  54 63 18 38 */	slwi r3, r3, 3
/* 80073360 000702C0  7F DF 1A 14 */	add r30, r31, r3
/* 80073364 000702C4  3B DE 00 80 */	addi r30, r30, 0x80
/* 80073368 000702C8  7C 00 F0 40 */	cmplw r0, r30
/* 8007336C 000702CC  41 82 00 48 */	beq lbl_800733B4
/* 80073370 000702D0  88 1E 00 00 */	lbz r0, 0(r30)
/* 80073374 000702D4  28 00 00 00 */	cmplwi r0, 0
/* 80073378 000702D8  41 82 00 24 */	beq lbl_8007339C
/* 8007337C 000702DC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80073380 000702E0  28 03 00 00 */	cmplwi r3, 0
/* 80073384 000702E4  41 82 00 18 */	beq lbl_8007339C
/* 80073388 000702E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8007338C 000702EC  38 80 00 01 */	li r4, 1
/* 80073390 000702F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80073394 000702F4  7D 89 03 A6 */	mtctr r12
/* 80073398 000702F8  4E 80 04 21 */	bctrl 
lbl_8007339C:
/* 8007339C 000702FC  88 61 00 10 */	lbz r3, 0x10(r1)
/* 800733A0 00070300  38 00 00 00 */	li r0, 0
/* 800733A4 00070304  98 7E 00 00 */	stb r3, 0(r30)
/* 800733A8 00070308  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800733AC 0007030C  90 7E 00 04 */	stw r3, 4(r30)
/* 800733B0 00070310  98 01 00 10 */	stb r0, 0x10(r1)
lbl_800733B4:
/* 800733B4 00070314  88 01 00 10 */	lbz r0, 0x10(r1)
/* 800733B8 00070318  28 00 00 00 */	cmplwi r0, 0
/* 800733BC 0007031C  41 82 00 24 */	beq lbl_800733E0
/* 800733C0 00070320  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800733C4 00070324  28 03 00 00 */	cmplwi r3, 0
/* 800733C8 00070328  41 82 00 18 */	beq lbl_800733E0
/* 800733CC 0007032C  81 83 00 00 */	lwz r12, 0(r3)
/* 800733D0 00070330  38 80 00 01 */	li r4, 1
/* 800733D4 00070334  81 8C 00 08 */	lwz r12, 8(r12)
/* 800733D8 00070338  7D 89 03 A6 */	mtctr r12
/* 800733DC 0007033C  4E 80 04 21 */	bctrl 
lbl_800733E0:
/* 800733E0 00070340  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 800733E4 00070344  20 00 00 01 */	subfic r0, r0, 1
/* 800733E8 00070348  90 1F 00 78 */	stw r0, 0x78(r31)
/* 800733EC 0007034C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800733F0 00070350  90 1F 00 08 */	stw r0, 8(r31)
/* 800733F4 00070354  83 DF 00 1C */	lwz r30, 0x1c(r31)
/* 800733F8 00070358  80 7F 00 08 */	lwz r3, 8(r31)
/* 800733FC 0007035C  48 00 0E E1 */	bl GetPreviousSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen
/* 80073400 00070360  7C 64 1B 78 */	mr r4, r3
/* 80073404 00070364  7F C3 F3 78 */	mr r3, r30
/* 80073408 00070368  38 84 00 06 */	addi r4, r4, 6
/* 8007340C 0007036C  48 2E 32 F1 */	bl GetString__12CStringTableCFi
/* 80073410 00070370  7C 64 1B 78 */	mr r4, r3
/* 80073414 00070374  38 61 00 28 */	addi r3, r1, 0x28
/* 80073418 00070378  38 C1 00 0C */	addi r6, r1, 0xc
/* 8007341C 0007037C  38 A0 FF FF */	li r5, -1
/* 80073420 00070380  48 2C A3 9D */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80073424 00070384  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80073428 00070388  38 81 00 28 */	addi r4, r1, 0x28
/* 8007342C 0007038C  38 A0 00 00 */	li r5, 0
/* 80073430 00070390  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073434 00070394  48 25 64 51 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073438 00070398  38 61 00 28 */	addi r3, r1, 0x28
/* 8007343C 0007039C  48 2C 9C F9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80073440 000703A0  83 DF 00 1C */	lwz r30, 0x1c(r31)
/* 80073444 000703A4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80073448 000703A8  48 00 0E 61 */	bl GetNextSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen
/* 8007344C 000703AC  7C 64 1B 78 */	mr r4, r3
/* 80073450 000703B0  7F C3 F3 78 */	mr r3, r30
/* 80073454 000703B4  38 84 00 06 */	addi r4, r4, 6
/* 80073458 000703B8  48 2E 32 A5 */	bl GetString__12CStringTableCFi
/* 8007345C 000703BC  7C 64 1B 78 */	mr r4, r3
/* 80073460 000703C0  38 61 00 18 */	addi r3, r1, 0x18
/* 80073464 000703C4  38 C1 00 08 */	addi r6, r1, 8
/* 80073468 000703C8  38 A0 FF FF */	li r5, -1
/* 8007346C 000703CC  48 2C A3 51 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80073470 000703D0  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80073474 000703D4  38 81 00 18 */	addi r4, r1, 0x18
/* 80073478 000703D8  38 A0 00 00 */	li r5, 0
/* 8007347C 000703DC  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073480 000703E0  48 25 64 05 */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073484 000703E4  38 61 00 18 */	addi r3, r1, 0x18
/* 80073488 000703E8  48 2C 9C AD */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8007348C 000703EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80073490 000703F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80073494 000703F4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80073498 000703F8  7C 08 03 A6 */	mtlr r0
/* 8007349C 000703FC  38 21 00 40 */	addi r1, r1, 0x40
/* 800734A0 00070400  4E 80 00 20 */	blr 

.global PreDraw__12CPauseScreenFv
PreDraw__12CPauseScreenFv:
/* 800734A4 00070404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800734A8 00070408  7C 08 02 A6 */	mflr r0
/* 800734AC 0007040C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800734B0 00070410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800734B4 00070414  7C 7F 1B 78 */	mr r31, r3
/* 800734B8 00070418  4B FF F6 31 */	bl IsLoaded__12CPauseScreenCFv
/* 800734BC 0007041C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800734C0 00070420  41 82 00 38 */	beq lbl_800734F8
/* 800734C4 00070424  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 800734C8 00070428  54 00 18 38 */	slwi r0, r0, 3
/* 800734CC 0007042C  7C 7F 02 14 */	add r3, r31, r0
/* 800734D0 00070430  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800734D4 00070434  28 03 00 00 */	cmplwi r3, 0
/* 800734D8 00070438  41 82 00 20 */	beq lbl_800734F8
/* 800734DC 0007043C  88 03 01 98 */	lbz r0, 0x198(r3)
/* 800734E0 00070440  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 800734E4 00070444  41 82 00 14 */	beq lbl_800734F8
/* 800734E8 00070448  81 83 00 00 */	lwz r12, 0(r3)
/* 800734EC 0007044C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800734F0 00070450  7D 89 03 A6 */	mtctr r12
/* 800734F4 00070454  4E 80 04 21 */	bctrl 
lbl_800734F8:
/* 800734F8 00070458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800734FC 0007045C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80073500 00070460  7C 08 03 A6 */	mtlr r0
/* 80073504 00070464  38 21 00 10 */	addi r1, r1, 0x10
/* 80073508 00070468  4E 80 00 20 */	blr 

.global Update__12CPauseScreenFfRC13CStateManagerR9CRandom16R18CArchitectureQueue
Update__12CPauseScreenFfRC13CStateManagerR9CRandom16R18CArchitectureQueue:
/* 8007350C 0007046C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80073510 00070470  7C 08 02 A6 */	mflr r0
/* 80073514 00070474  90 01 00 74 */	stw r0, 0x74(r1)
/* 80073518 00070478  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8007351C 0007047C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80073520 00070480  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80073524 00070484  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80073528 00070488  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8007352C 0007048C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80073530 00070490  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 80073534 00070494  FF A0 08 90 */	fmr f29, f1
/* 80073538 00070498  7C 7C 1B 78 */	mr r28, r3
/* 8007353C 0007049C  7C BD 2B 78 */	mr r29, r5
/* 80073540 000704A0  7C DE 33 78 */	mr r30, r6
/* 80073544 000704A4  48 00 04 19 */	bl CheckLoadComplete__12CPauseScreenFRC13CStateManager
/* 80073548 000704A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007354C 000704AC  41 82 01 84 */	beq lbl_800736D0
/* 80073550 000704B0  80 BC 00 78 */	lwz r5, 0x78(r28)
/* 80073554 000704B4  3B FC 00 80 */	addi r31, r28, 0x80
/* 80073558 000704B8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8007355C 000704BC  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80073560 000704C0  20 85 00 01 */	subfic r4, r5, 1
/* 80073564 000704C4  54 A5 18 38 */	slwi r5, r5, 3
/* 80073568 000704C8  54 84 18 38 */	slwi r4, r4, 3
/* 8007356C 000704CC  7C 03 00 00 */	cmpw r3, r0
/* 80073570 000704D0  7C 7F 2A 14 */	add r3, r31, r5
/* 80073574 000704D4  7F 7F 22 14 */	add r27, r31, r4
/* 80073578 000704D8  41 82 00 84 */	beq lbl_800735FC
/* 8007357C 000704DC  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80073580 000704E0  C0 0D 83 A0 */	lfs f0, lbl_805A6F60@sda21(r13)
/* 80073584 000704E4  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80073588 000704E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007358C 000704EC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80073590 000704F0  40 80 00 0C */	bge lbl_8007359C
/* 80073594 000704F4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80073598 000704F8  48 00 00 08 */	b lbl_800735A0
lbl_8007359C:
/* 8007359C 000704FC  38 8D 83 A0 */	addi r4, r13, lbl_805A6F60@sda21
lbl_800735A0:
/* 800735A0 00070500  C0 04 00 00 */	lfs f0, 0(r4)
/* 800735A4 00070504  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 800735A8 00070508  80 63 00 04 */	lwz r3, 4(r3)
/* 800735AC 0007050C  28 03 00 00 */	cmplwi r3, 0
/* 800735B0 00070510  41 82 00 1C */	beq lbl_800735CC
/* 800735B4 00070514  81 83 00 00 */	lwz r12, 0(r3)
/* 800735B8 00070518  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800735BC 0007051C  7D 89 03 A6 */	mtctr r12
/* 800735C0 00070520  4E 80 04 21 */	bctrl 
/* 800735C4 00070524  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800735C8 00070528  40 82 00 34 */	bne lbl_800735FC
lbl_800735CC:
/* 800735CC 0007052C  80 7B 00 04 */	lwz r3, 4(r27)
/* 800735D0 00070530  28 03 00 00 */	cmplwi r3, 0
/* 800735D4 00070534  41 82 00 10 */	beq lbl_800735E4
/* 800735D8 00070538  4B FF E1 E1 */	bl IsReady__16CPauseScreenBaseFv
/* 800735DC 0007053C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800735E0 00070540  41 82 00 1C */	beq lbl_800735FC
lbl_800735E4:
/* 800735E4 00070544  C0 22 88 30 */	lfs f1, lbl_805AA550@sda21(r2)
/* 800735E8 00070548  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 800735EC 0007054C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800735F0 00070550  40 82 00 0C */	bne lbl_800735FC
/* 800735F4 00070554  7F 83 E3 78 */	mr r3, r28
/* 800735F8 00070558  4B FF FD 39 */	bl TransitionComplete__12CPauseScreenFv
lbl_800735FC:
/* 800735FC 0007055C  80 1C 00 78 */	lwz r0, 0x78(r28)
/* 80073600 00070560  54 00 18 38 */	slwi r0, r0, 3
/* 80073604 00070564  7F 7F 02 14 */	add r27, r31, r0
/* 80073608 00070568  80 7B 00 04 */	lwz r3, 4(r27)
/* 8007360C 0007056C  28 03 00 00 */	cmplwi r3, 0
/* 80073610 00070570  41 82 00 C0 */	beq lbl_800736D0
/* 80073614 00070574  81 83 00 00 */	lwz r12, 0(r3)
/* 80073618 00070578  FC 20 E8 90 */	fmr f1, f29
/* 8007361C 0007057C  7F A4 EB 78 */	mr r4, r29
/* 80073620 00070580  7F C5 F3 78 */	mr r5, r30
/* 80073624 00070584  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80073628 00070588  7D 89 03 A6 */	mtctr r12
/* 8007362C 0007058C  4E 80 04 21 */	bctrl 
/* 80073630 00070590  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80073634 00070594  C0 02 88 50 */	lfs f0, lbl_805AA570@sda21(r2)
/* 80073638 00070598  80 7C 00 08 */	lwz r3, 8(r28)
/* 8007363C 0007059C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80073640 000705A0  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80073644 000705A4  7C 03 00 00 */	cmpw r3, r0
/* 80073648 000705A8  41 82 00 08 */	beq lbl_80073650
/* 8007364C 000705AC  48 00 00 08 */	b lbl_80073654
lbl_80073650:
/* 80073650 000705B0  C0 02 88 44 */	lfs f0, lbl_805AA564@sda21(r2)
lbl_80073654:
/* 80073654 000705B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80073658 000705B8  80 7B 00 04 */	lwz r3, 4(r27)
/* 8007365C 000705BC  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80073660 000705C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80073664 000705C4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80073668 000705C8  40 80 00 0C */	bge lbl_80073674
/* 8007366C 000705CC  38 61 00 14 */	addi r3, r1, 0x14
/* 80073670 000705D0  48 00 00 08 */	b lbl_80073678
lbl_80073674:
/* 80073674 000705D4  38 61 00 18 */	addi r3, r1, 0x18
lbl_80073678:
/* 80073678 000705D8  C3 A3 00 00 */	lfs f29, 0(r3)
/* 8007367C 000705DC  48 2D 69 31 */	bl White__6CColorFv
/* 80073680 000705E0  C0 02 88 40 */	lfs f0, lbl_805AA560@sda21(r2)
/* 80073684 000705E4  EF C0 07 72 */	fmuls f30, f0, f29
/* 80073688 000705E8  FF E0 F0 90 */	fmr f31, f30
/* 8007368C 000705EC  F3 E1 A0 09 */	psq_st f31, 9(r1), 1, qr2
/* 80073690 000705F0  38 81 00 10 */	addi r4, r1, 0x10
/* 80073694 000705F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80073698 000705F8  88 01 00 09 */	lbz r0, 9(r1)
/* 8007369C 000705FC  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 800736A0 00070600  90 01 00 10 */	stw r0, 0x10(r1)
/* 800736A4 00070604  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 800736A8 00070608  48 25 71 C5 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 800736AC 0007060C  48 2D 69 01 */	bl White__6CColorFv
/* 800736B0 00070610  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 800736B4 00070614  38 81 00 0C */	addi r4, r1, 0xc
/* 800736B8 00070618  80 63 00 00 */	lwz r3, 0(r3)
/* 800736BC 0007061C  88 01 00 08 */	lbz r0, 8(r1)
/* 800736C0 00070620  50 60 00 2E */	rlwimi r0, r3, 0, 0, 0x17
/* 800736C4 00070624  90 01 00 0C */	stw r0, 0xc(r1)
/* 800736C8 00070628  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 800736CC 0007062C  48 25 71 A1 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_800736D0:
/* 800736D0 00070630  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 800736D4 00070634  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800736D8 00070638  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 800736DC 0007063C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 800736E0 00070640  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 800736E4 00070644  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800736E8 00070648  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 800736EC 0007064C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800736F0 00070650  7C 08 03 A6 */	mtlr r0
/* 800736F4 00070654  38 21 00 70 */	addi r1, r1, 0x70
/* 800736F8 00070658  4E 80 00 20 */	blr 

.global StartTransition__12CPauseScreenFfRC13CStateManagerQ212CPauseScreen10ESubScreeni
StartTransition__12CPauseScreenFfRC13CStateManagerQ212CPauseScreen10ESubScreeni:
/* 800736FC 0007065C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073700 00070660  7C 08 02 A6 */	mflr r0
/* 80073704 00070664  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073708 00070668  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007370C 0007066C  7C 7F 1B 78 */	mr r31, r3
/* 80073710 00070670  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80073714 00070674  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80073718 00070678  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8007371C 0007067C  7C 05 00 00 */	cmpw r5, r0
/* 80073720 00070680  41 82 00 F4 */	beq lbl_80073814
/* 80073724 00070684  90 BF 00 0C */	stw r5, 0xc(r31)
/* 80073728 00070688  39 1F 00 80 */	addi r8, r31, 0x80
/* 8007372C 0007068C  7C 85 23 78 */	mr r5, r4
/* 80073730 00070690  90 DF 00 04 */	stw r6, 4(r31)
/* 80073734 00070694  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 80073738 00070698  80 DF 00 78 */	lwz r6, 0x78(r31)
/* 8007373C 0007069C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80073740 000706A0  20 06 00 01 */	subfic r0, r6, 1
/* 80073744 000706A4  54 C7 18 38 */	slwi r7, r6, 3
/* 80073748 000706A8  54 00 18 38 */	slwi r0, r0, 3
/* 8007374C 000706AC  7C DF 02 14 */	add r6, r31, r0
/* 80073750 000706B0  7F C8 3A 14 */	add r30, r8, r7
/* 80073754 000706B4  80 C6 00 6C */	lwz r6, 0x6c(r6)
/* 80073758 000706B8  7F A8 02 14 */	add r29, r8, r0
/* 8007375C 000706BC  48 00 00 D5 */	bl BuildPauseSubScreen__12CPauseScreenFQ212CPauseScreen10ESubScreenRC13CStateManagerRC9CGuiFrame
/* 80073760 000706C0  7C 83 00 D0 */	neg r4, r3
/* 80073764 000706C4  38 01 00 08 */	addi r0, r1, 8
/* 80073768 000706C8  7C 84 1B 78 */	or r4, r4, r3
/* 8007376C 000706CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80073770 000706D0  54 83 0F FE */	srwi r3, r4, 0x1f
/* 80073774 000706D4  7C 00 E8 40 */	cmplw r0, r29
/* 80073778 000706D8  98 61 00 08 */	stb r3, 8(r1)
/* 8007377C 000706DC  41 82 00 48 */	beq lbl_800737C4
/* 80073780 000706E0  88 1D 00 00 */	lbz r0, 0(r29)
/* 80073784 000706E4  28 00 00 00 */	cmplwi r0, 0
/* 80073788 000706E8  41 82 00 24 */	beq lbl_800737AC
/* 8007378C 000706EC  80 7D 00 04 */	lwz r3, 4(r29)
/* 80073790 000706F0  28 03 00 00 */	cmplwi r3, 0
/* 80073794 000706F4  41 82 00 18 */	beq lbl_800737AC
/* 80073798 000706F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8007379C 000706FC  38 80 00 01 */	li r4, 1
/* 800737A0 00070700  81 8C 00 08 */	lwz r12, 8(r12)
/* 800737A4 00070704  7D 89 03 A6 */	mtctr r12
/* 800737A8 00070708  4E 80 04 21 */	bctrl 
lbl_800737AC:
/* 800737AC 0007070C  88 61 00 08 */	lbz r3, 8(r1)
/* 800737B0 00070710  38 00 00 00 */	li r0, 0
/* 800737B4 00070714  98 7D 00 00 */	stb r3, 0(r29)
/* 800737B8 00070718  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800737BC 0007071C  90 7D 00 04 */	stw r3, 4(r29)
/* 800737C0 00070720  98 01 00 08 */	stb r0, 8(r1)
lbl_800737C4:
/* 800737C4 00070724  88 01 00 08 */	lbz r0, 8(r1)
/* 800737C8 00070728  28 00 00 00 */	cmplwi r0, 0
/* 800737CC 0007072C  41 82 00 24 */	beq lbl_800737F0
/* 800737D0 00070730  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800737D4 00070734  28 03 00 00 */	cmplwi r3, 0
/* 800737D8 00070738  41 82 00 18 */	beq lbl_800737F0
/* 800737DC 0007073C  81 83 00 00 */	lwz r12, 0(r3)
/* 800737E0 00070740  38 80 00 01 */	li r4, 1
/* 800737E4 00070744  81 8C 00 08 */	lwz r12, 8(r12)
/* 800737E8 00070748  7D 89 03 A6 */	mtctr r12
/* 800737EC 0007074C  4E 80 04 21 */	bctrl 
lbl_800737F0:
/* 800737F0 00070750  80 7E 00 04 */	lwz r3, 4(r30)
/* 800737F4 00070754  28 03 00 00 */	cmplwi r3, 0
/* 800737F8 00070758  41 82 00 14 */	beq lbl_8007380C
/* 800737FC 0007075C  81 83 00 00 */	lwz r12, 0(r3)
/* 80073800 00070760  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80073804 00070764  7D 89 03 A6 */	mtctr r12
/* 80073808 00070768  4E 80 04 21 */	bctrl 
lbl_8007380C:
/* 8007380C 0007076C  38 00 00 00 */	li r0, 0
/* 80073810 00070770  98 1F 00 91 */	stb r0, 0x91(r31)
lbl_80073814:
/* 80073814 00070774  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80073818 00070778  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007381C 0007077C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80073820 00070780  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80073824 00070784  7C 08 03 A6 */	mtlr r0
/* 80073828 00070788  38 21 00 20 */	addi r1, r1, 0x20
/* 8007382C 0007078C  4E 80 00 20 */	blr 

.global BuildPauseSubScreen__12CPauseScreenFQ212CPauseScreen10ESubScreenRC13CStateManagerRC9CGuiFrame
BuildPauseSubScreen__12CPauseScreenFQ212CPauseScreen10ESubScreenRC13CStateManagerRC9CGuiFrame:
/* 80073830 00070790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073834 00070794  7C 08 02 A6 */	mflr r0
/* 80073838 00070798  2C 04 00 02 */	cmpwi r4, 2
/* 8007383C 0007079C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073840 000707A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80073844 000707A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80073848 000707A8  7C DE 33 78 */	mr r30, r6
/* 8007384C 000707AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80073850 000707B0  7C BD 2B 78 */	mr r29, r5
/* 80073854 000707B4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80073858 000707B8  7C 7C 1B 78 */	mr r28, r3
/* 8007385C 000707BC  83 E3 00 1C */	lwz r31, 0x1c(r3)
/* 80073860 000707C0  41 82 00 94 */	beq lbl_800738F4
/* 80073864 000707C4  40 80 00 D4 */	bge lbl_80073938
/* 80073868 000707C8  2C 04 00 00 */	cmpwi r4, 0
/* 8007386C 000707CC  41 82 00 10 */	beq lbl_8007387C
/* 80073870 000707D0  40 80 00 48 */	bge lbl_800738B8
/* 80073874 000707D4  48 00 00 C4 */	b lbl_80073938
/* 80073878 000707D8  48 00 00 C0 */	b lbl_80073938
lbl_8007387C:
/* 8007387C 000707DC  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 80073880 000707E0  38 60 02 64 */	li r3, 0x264
/* 80073884 000707E4  38 84 D2 D8 */	addi r4, r4, lbl_803CD2D8@l
/* 80073888 000707E8  38 A0 00 00 */	li r5, 0
/* 8007388C 000707EC  38 84 02 60 */	addi r4, r4, 0x260
/* 80073890 000707F0  48 2A 1F DD */	bl __nw__FUlPCcPCc
/* 80073894 000707F4  7C 60 1B 79 */	or. r0, r3, r3
/* 80073898 000707F8  41 82 00 18 */	beq lbl_800738B0
/* 8007389C 000707FC  7F A4 EB 78 */	mr r4, r29
/* 800738A0 00070800  7F C5 F3 78 */	mr r5, r30
/* 800738A4 00070804  7F E6 FB 78 */	mr r6, r31
/* 800738A8 00070808  48 1D 43 05 */	bl __ct__14CLogBookScreenFRC13CStateManagerRC9CGuiFrameRC12CStringTable
/* 800738AC 0007080C  7C 60 1B 78 */	mr r0, r3
lbl_800738B0:
/* 800738B0 00070810  7C 03 03 78 */	mr r3, r0
/* 800738B4 00070814  48 00 00 88 */	b lbl_8007393C
lbl_800738B8:
/* 800738B8 00070818  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 800738BC 0007081C  38 60 02 A4 */	li r3, 0x2a4
/* 800738C0 00070820  38 84 D2 D8 */	addi r4, r4, lbl_803CD2D8@l
/* 800738C4 00070824  38 A0 00 00 */	li r5, 0
/* 800738C8 00070828  38 84 02 60 */	addi r4, r4, 0x260
/* 800738CC 0007082C  48 2A 1F A1 */	bl __nw__FUlPCcPCc
/* 800738D0 00070830  7C 60 1B 79 */	or. r0, r3, r3
/* 800738D4 00070834  41 82 00 18 */	beq lbl_800738EC
/* 800738D8 00070838  7F A4 EB 78 */	mr r4, r29
/* 800738DC 0007083C  7F C5 F3 78 */	mr r5, r30
/* 800738E0 00070840  7F E6 FB 78 */	mr r6, r31
/* 800738E4 00070844  48 1D 06 4D */	bl __ct__14COptionsScreenFRC13CStateManagerRC9CGuiFrameRC12CStringTable
/* 800738E8 00070848  7C 60 1B 78 */	mr r0, r3
lbl_800738EC:
/* 800738EC 0007084C  7C 03 03 78 */	mr r3, r0
/* 800738F0 00070850  48 00 00 4C */	b lbl_8007393C
lbl_800738F4:
/* 800738F4 00070854  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 800738F8 00070858  38 60 01 B0 */	li r3, 0x1b0
/* 800738FC 0007085C  38 84 D2 D8 */	addi r4, r4, lbl_803CD2D8@l
/* 80073900 00070860  38 A0 00 00 */	li r5, 0
/* 80073904 00070864  38 84 02 60 */	addi r4, r4, 0x260
/* 80073908 00070868  48 2A 1F 65 */	bl __nw__FUlPCcPCc
/* 8007390C 0007086C  7C 60 1B 79 */	or. r0, r3, r3
/* 80073910 00070870  41 82 00 20 */	beq lbl_80073930
/* 80073914 00070874  80 FC 00 20 */	lwz r7, 0x20(r28)
/* 80073918 00070878  7F A4 EB 78 */	mr r4, r29
/* 8007391C 0007087C  81 1C 00 24 */	lwz r8, 0x24(r28)
/* 80073920 00070880  7F C5 F3 78 */	mr r5, r30
/* 80073924 00070884  7F E6 FB 78 */	mr r6, r31
/* 80073928 00070888  48 19 3B F5 */	bl __ct__16CInventoryScreenFRC13CStateManagerRC9CGuiFrameRC12CStringTableRC16CDependencyGroupRC16CDependencyGroup
/* 8007392C 0007088C  7C 60 1B 78 */	mr r0, r3
lbl_80073930:
/* 80073930 00070890  7C 03 03 78 */	mr r3, r0
/* 80073934 00070894  48 00 00 08 */	b lbl_8007393C
lbl_80073938:
/* 80073938 00070898  38 60 00 00 */	li r3, 0
lbl_8007393C:
/* 8007393C 0007089C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80073940 000708A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80073944 000708A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80073948 000708A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8007394C 000708AC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80073950 000708B0  7C 08 03 A6 */	mtlr r0
/* 80073954 000708B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80073958 000708B8  4E 80 00 20 */	blr 

.global CheckLoadComplete__12CPauseScreenFRC13CStateManager
CheckLoadComplete__12CPauseScreenFRC13CStateManager:
/* 8007395C 000708BC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80073960 000708C0  7C 08 02 A6 */	mflr r0
/* 80073964 000708C4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80073968 000708C8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8007396C 000708CC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80073970 000708D0  7C 9E 23 78 */	mr r30, r4
/* 80073974 000708D4  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80073978 000708D8  7C 7D 1B 78 */	mr r29, r3
/* 8007397C 000708DC  88 03 00 90 */	lbz r0, 0x90(r3)
/* 80073980 000708E0  28 00 00 00 */	cmplwi r0, 0
/* 80073984 000708E4  41 82 00 0C */	beq lbl_80073990
/* 80073988 000708E8  38 60 00 01 */	li r3, 1
/* 8007398C 000708EC  48 00 02 DC */	b lbl_80073C68
lbl_80073990:
/* 80073990 000708F0  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80073994 000708F4  28 00 00 00 */	cmplwi r0, 0
/* 80073998 000708F8  41 82 00 0C */	beq lbl_800739A4
/* 8007399C 000708FC  38 60 00 01 */	li r3, 1
/* 800739A0 00070900  48 00 00 3C */	b lbl_800739DC
lbl_800739A4:
/* 800739A4 00070904  88 1D 00 18 */	lbz r0, 0x18(r29)
/* 800739A8 00070908  28 00 00 00 */	cmplwi r0, 0
/* 800739AC 0007090C  41 82 00 2C */	beq lbl_800739D8
/* 800739B0 00070910  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 800739B4 00070914  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800739B8 00070918  28 00 00 00 */	cmplwi r0, 0
/* 800739BC 0007091C  41 82 00 1C */	beq lbl_800739D8
/* 800739C0 00070920  38 7D 00 14 */	addi r3, r29, 0x14
/* 800739C4 00070924  48 2C D4 49 */	bl GetObj__6CTokenFv
/* 800739C8 00070928  80 03 00 04 */	lwz r0, 4(r3)
/* 800739CC 0007092C  38 60 00 01 */	li r3, 1
/* 800739D0 00070930  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 800739D4 00070934  48 00 00 08 */	b lbl_800739DC
lbl_800739D8:
/* 800739D8 00070938  38 60 00 00 */	li r3, 0
lbl_800739DC:
/* 800739DC 0007093C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800739E0 00070940  40 82 00 0C */	bne lbl_800739EC
/* 800739E4 00070944  38 60 00 00 */	li r3, 0
/* 800739E8 00070948  48 00 02 80 */	b lbl_80073C68
lbl_800739EC:
/* 800739EC 0007094C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 800739F0 00070950  28 00 00 00 */	cmplwi r0, 0
/* 800739F4 00070954  40 82 00 88 */	bne lbl_80073A7C
/* 800739F8 00070958  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 800739FC 0007095C  28 00 00 00 */	cmplwi r0, 0
/* 80073A00 00070960  41 82 00 0C */	beq lbl_80073A0C
/* 80073A04 00070964  38 60 00 01 */	li r3, 1
/* 80073A08 00070968  48 00 00 3C */	b lbl_80073A44
lbl_80073A0C:
/* 80073A0C 0007096C  88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 80073A10 00070970  28 00 00 00 */	cmplwi r0, 0
/* 80073A14 00070974  41 82 00 2C */	beq lbl_80073A40
/* 80073A18 00070978  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80073A1C 0007097C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80073A20 00070980  28 00 00 00 */	cmplwi r0, 0
/* 80073A24 00070984  41 82 00 1C */	beq lbl_80073A40
/* 80073A28 00070988  38 7D 00 28 */	addi r3, r29, 0x28
/* 80073A2C 0007098C  48 2C D3 E1 */	bl GetObj__6CTokenFv
/* 80073A30 00070990  80 03 00 04 */	lwz r0, 4(r3)
/* 80073A34 00070994  38 60 00 01 */	li r3, 1
/* 80073A38 00070998  90 1D 00 30 */	stw r0, 0x30(r29)
/* 80073A3C 0007099C  48 00 00 08 */	b lbl_80073A44
lbl_80073A40:
/* 80073A40 000709A0  38 60 00 00 */	li r3, 0
lbl_80073A44:
/* 80073A44 000709A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80073A48 000709A8  40 82 00 0C */	bne lbl_80073A54
/* 80073A4C 000709AC  38 60 00 00 */	li r3, 0
/* 80073A50 000709B0  48 00 02 18 */	b lbl_80073C68
lbl_80073A54:
/* 80073A54 000709B4  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 80073A58 000709B8  48 24 EA F9 */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 80073A5C 000709BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80073A60 000709C0  40 82 00 0C */	bne lbl_80073A6C
/* 80073A64 000709C4  38 60 00 00 */	li r3, 0
/* 80073A68 000709C8  48 00 02 00 */	b lbl_80073C68
lbl_80073A6C:
/* 80073A6C 000709CC  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80073A70 000709D0  7F A3 EB 78 */	mr r3, r29
/* 80073A74 000709D4  90 1D 00 34 */	stw r0, 0x34(r29)
/* 80073A78 000709D8  48 00 02 0D */	bl InitializeFrameGlue__12CPauseScreenFv
lbl_80073A7C:
/* 80073A7C 000709DC  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80073A80 000709E0  28 03 00 00 */	cmplwi r3, 0
/* 80073A84 000709E4  41 82 01 90 */	beq lbl_80073C14
/* 80073A88 000709E8  81 83 00 00 */	lwz r12, 0(r3)
/* 80073A8C 000709EC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80073A90 000709F0  7D 89 03 A6 */	mtctr r12
/* 80073A94 000709F4  4E 80 04 21 */	bctrl 
/* 80073A98 000709F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80073A9C 000709FC  41 82 01 70 */	beq lbl_80073C0C
/* 80073AA0 00070A00  80 9D 00 5C */	lwz r4, 0x5c(r29)
/* 80073AA4 00070A04  38 61 00 3C */	addi r3, r1, 0x3c
/* 80073AA8 00070A08  80 BD 00 58 */	lwz r5, 0x58(r29)
/* 80073AAC 00070A0C  48 2C B7 21 */	bl __ct__15CMemoryInStreamFPCvUl
/* 80073AB0 00070A10  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 80073AB4 00070A14  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80073AB8 00070A18  80 8D A0 70 */	lwz r4, gGuiSystem@sda21(r13)
/* 80073ABC 00070A1C  80 CD A0 64 */	lwz r6, gpSimplePool@sda21(r13)
/* 80073AC0 00070A20  48 24 EE FD */	bl CreateFrame__9CGuiFrameFUiR7CGuiSysR12CInputStreami
/* 80073AC4 00070A24  80 1D 00 64 */	lwz r0, 0x64(r29)
/* 80073AC8 00070A28  7C 83 00 D0 */	neg r4, r3
/* 80073ACC 00070A2C  7C 84 1B 78 */	or r4, r4, r3
/* 80073AD0 00070A30  3B FD 00 68 */	addi r31, r29, 0x68
/* 80073AD4 00070A34  54 00 18 38 */	slwi r0, r0, 3
/* 80073AD8 00070A38  90 61 00 14 */	stw r3, 0x14(r1)
/* 80073ADC 00070A3C  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80073AE0 00070A40  7C BF 02 15 */	add. r5, r31, r0
/* 80073AE4 00070A44  98 81 00 10 */	stb r4, 0x10(r1)
/* 80073AE8 00070A48  41 82 00 14 */	beq lbl_80073AFC
/* 80073AEC 00070A4C  98 85 00 00 */	stb r4, 0(r5)
/* 80073AF0 00070A50  38 00 00 00 */	li r0, 0
/* 80073AF4 00070A54  90 65 00 04 */	stw r3, 4(r5)
/* 80073AF8 00070A58  98 01 00 10 */	stb r0, 0x10(r1)
lbl_80073AFC:
/* 80073AFC 00070A5C  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80073B00 00070A60  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80073B04 00070A64  38 63 00 01 */	addi r3, r3, 1
/* 80073B08 00070A68  28 00 00 00 */	cmplwi r0, 0
/* 80073B0C 00070A6C  90 7D 00 64 */	stw r3, 0x64(r29)
/* 80073B10 00070A70  41 82 00 10 */	beq lbl_80073B20
/* 80073B14 00070A74  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80073B18 00070A78  38 80 00 01 */	li r4, 1
/* 80073B1C 00070A7C  48 24 EF 61 */	bl __dt__9CGuiFrameFv
lbl_80073B20:
/* 80073B20 00070A80  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 80073B24 00070A84  38 61 00 3C */	addi r3, r1, 0x3c
/* 80073B28 00070A88  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 80073B2C 00070A8C  38 80 00 00 */	li r4, 0
/* 80073B30 00070A90  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80073B34 00070A94  48 2C B5 79 */	bl __dt__12CInputStreamFv
/* 80073B38 00070A98  80 9D 00 5C */	lwz r4, 0x5c(r29)
/* 80073B3C 00070A9C  38 61 00 18 */	addi r3, r1, 0x18
/* 80073B40 00070AA0  80 BD 00 58 */	lwz r5, 0x58(r29)
/* 80073B44 00070AA4  48 2C B6 89 */	bl __ct__15CMemoryInStreamFPCvUl
/* 80073B48 00070AA8  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 80073B4C 00070AAC  38 A1 00 18 */	addi r5, r1, 0x18
/* 80073B50 00070AB0  80 8D A0 70 */	lwz r4, gGuiSystem@sda21(r13)
/* 80073B54 00070AB4  80 CD A0 64 */	lwz r6, gpSimplePool@sda21(r13)
/* 80073B58 00070AB8  48 24 EE 65 */	bl CreateFrame__9CGuiFrameFUiR7CGuiSysR12CInputStreami
/* 80073B5C 00070ABC  80 1D 00 64 */	lwz r0, 0x64(r29)
/* 80073B60 00070AC0  7C 83 00 D0 */	neg r4, r3
/* 80073B64 00070AC4  7C 84 1B 78 */	or r4, r4, r3
/* 80073B68 00070AC8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80073B6C 00070ACC  54 00 18 38 */	slwi r0, r0, 3
/* 80073B70 00070AD0  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80073B74 00070AD4  7C BF 02 15 */	add. r5, r31, r0
/* 80073B78 00070AD8  98 81 00 08 */	stb r4, 8(r1)
/* 80073B7C 00070ADC  41 82 00 14 */	beq lbl_80073B90
/* 80073B80 00070AE0  98 85 00 00 */	stb r4, 0(r5)
/* 80073B84 00070AE4  38 00 00 00 */	li r0, 0
/* 80073B88 00070AE8  90 65 00 04 */	stw r3, 4(r5)
/* 80073B8C 00070AEC  98 01 00 08 */	stb r0, 8(r1)
lbl_80073B90:
/* 80073B90 00070AF0  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80073B94 00070AF4  88 01 00 08 */	lbz r0, 8(r1)
/* 80073B98 00070AF8  38 63 00 01 */	addi r3, r3, 1
/* 80073B9C 00070AFC  28 00 00 00 */	cmplwi r0, 0
/* 80073BA0 00070B00  90 7D 00 64 */	stw r3, 0x64(r29)
/* 80073BA4 00070B04  41 82 00 10 */	beq lbl_80073BB4
/* 80073BA8 00070B08  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80073BAC 00070B0C  38 80 00 01 */	li r4, 1
/* 80073BB0 00070B10  48 24 EE CD */	bl __dt__9CGuiFrameFv
lbl_80073BB4:
/* 80073BB4 00070B14  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 80073BB8 00070B18  38 61 00 18 */	addi r3, r1, 0x18
/* 80073BBC 00070B1C  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 80073BC0 00070B20  38 80 00 00 */	li r4, 0
/* 80073BC4 00070B24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80073BC8 00070B28  48 2C B4 E5 */	bl __dt__12CInputStreamFv
/* 80073BCC 00070B2C  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80073BD0 00070B30  28 03 00 00 */	cmplwi r3, 0
/* 80073BD4 00070B34  41 82 00 18 */	beq lbl_80073BEC
/* 80073BD8 00070B38  81 83 00 00 */	lwz r12, 0(r3)
/* 80073BDC 00070B3C  38 80 00 01 */	li r4, 1
/* 80073BE0 00070B40  81 8C 00 08 */	lwz r12, 8(r12)
/* 80073BE4 00070B44  7D 89 03 A6 */	mtctr r12
/* 80073BE8 00070B48  4E 80 04 21 */	bctrl 
lbl_80073BEC:
/* 80073BEC 00070B4C  38 00 00 00 */	li r0, 0
/* 80073BF0 00070B50  90 1D 00 60 */	stw r0, 0x60(r29)
/* 80073BF4 00070B54  80 7D 00 5C */	lwz r3, 0x5c(r29)
/* 80073BF8 00070B58  48 2A 1D 39 */	bl Free__7CMemoryFPCv
/* 80073BFC 00070B5C  38 00 00 00 */	li r0, 0
/* 80073C00 00070B60  90 1D 00 5C */	stw r0, 0x5c(r29)
/* 80073C04 00070B64  90 1D 00 58 */	stw r0, 0x58(r29)
/* 80073C08 00070B68  48 00 00 0C */	b lbl_80073C14
lbl_80073C0C:
/* 80073C0C 00070B6C  38 60 00 00 */	li r3, 0
/* 80073C10 00070B70  48 00 00 58 */	b lbl_80073C68
lbl_80073C14:
/* 80073C14 00070B74  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 80073C18 00070B78  48 24 E9 39 */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 80073C1C 00070B7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80073C20 00070B80  41 82 00 14 */	beq lbl_80073C34
/* 80073C24 00070B84  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 80073C28 00070B88  48 24 E9 29 */	bl GetIsFinishedLoading__9CGuiFrameCFv
/* 80073C2C 00070B8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80073C30 00070B90  40 82 00 0C */	bne lbl_80073C3C
lbl_80073C34:
/* 80073C34 00070B94  38 60 00 00 */	li r3, 0
/* 80073C38 00070B98  48 00 00 30 */	b lbl_80073C68
lbl_80073C3C:
/* 80073C3C 00070B9C  38 00 00 01 */	li r0, 1
/* 80073C40 00070BA0  C0 22 88 60 */	lfs f1, lbl_805AA580@sda21(r2)
/* 80073C44 00070BA4  98 1D 00 90 */	stb r0, 0x90(r29)
/* 80073C48 00070BA8  7F A3 EB 78 */	mr r3, r29
/* 80073C4C 00070BAC  7F C4 F3 78 */	mr r4, r30
/* 80073C50 00070BB0  38 C0 00 02 */	li r6, 2
/* 80073C54 00070BB4  80 BD 00 00 */	lwz r5, 0(r29)
/* 80073C58 00070BB8  4B FF FA A5 */	bl StartTransition__12CPauseScreenFfRC13CStateManagerQ212CPauseScreen10ESubScreeni
/* 80073C5C 00070BBC  38 00 00 01 */	li r0, 1
/* 80073C60 00070BC0  38 60 00 01 */	li r3, 1
/* 80073C64 00070BC4  98 1D 00 91 */	stb r0, 0x91(r29)
lbl_80073C68:
/* 80073C68 00070BC8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80073C6C 00070BCC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80073C70 00070BD0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80073C74 00070BD4  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80073C78 00070BD8  7C 08 03 A6 */	mtlr r0
/* 80073C7C 00070BDC  38 21 00 70 */	addi r1, r1, 0x70
/* 80073C80 00070BE0  4E 80 00 20 */	blr 

.global InitializeFrameGlue__12CPauseScreenFv
InitializeFrameGlue__12CPauseScreenFv:
/* 80073C84 00070BE4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80073C88 00070BE8  7C 08 02 A6 */	mflr r0
/* 80073C8C 00070BEC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80073C90 00070BF0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80073C94 00070BF4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80073C98 00070BF8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80073C9C 00070BFC  7C 7F 1B 78 */	mr r31, r3
/* 80073CA0 00070C00  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80073CA4 00070C04  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80073CA8 00070C08  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073CAC 00070C0C  38 84 02 67 */	addi r4, r4, 0x267
/* 80073CB0 00070C10  48 24 E4 A5 */	bl FindWidget__9CGuiFrameCFPCc
/* 80073CB4 00070C14  90 7F 00 38 */	stw r3, 0x38(r31)
/* 80073CB8 00070C18  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80073CBC 00070C1C  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80073CC0 00070C20  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073CC4 00070C24  38 84 02 73 */	addi r4, r4, 0x273
/* 80073CC8 00070C28  48 24 E4 8D */	bl FindWidget__9CGuiFrameCFPCc
/* 80073CCC 00070C2C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80073CD0 00070C30  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80073CD4 00070C34  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80073CD8 00070C38  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073CDC 00070C3C  38 84 02 7E */	addi r4, r4, 0x27e
/* 80073CE0 00070C40  48 24 E4 75 */	bl FindWidget__9CGuiFrameCFPCc
/* 80073CE4 00070C44  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80073CE8 00070C48  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80073CEC 00070C4C  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80073CF0 00070C50  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073CF4 00070C54  38 84 02 89 */	addi r4, r4, 0x289
/* 80073CF8 00070C58  48 24 E4 5D */	bl FindWidget__9CGuiFrameCFPCc
/* 80073CFC 00070C5C  90 7F 00 44 */	stw r3, 0x44(r31)
/* 80073D00 00070C60  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80073D04 00070C64  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80073D08 00070C68  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073D0C 00070C6C  38 84 02 94 */	addi r4, r4, 0x294
/* 80073D10 00070C70  48 24 E4 45 */	bl FindWidget__9CGuiFrameCFPCc
/* 80073D14 00070C74  90 7F 00 48 */	stw r3, 0x48(r31)
/* 80073D18 00070C78  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80073D1C 00070C7C  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80073D20 00070C80  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073D24 00070C84  38 84 02 A4 */	addi r4, r4, 0x2a4
/* 80073D28 00070C88  48 24 E4 2D */	bl FindWidget__9CGuiFrameCFPCc
/* 80073D2C 00070C8C  90 7F 00 4C */	stw r3, 0x4c(r31)
/* 80073D30 00070C90  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80073D34 00070C94  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80073D38 00070C98  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073D3C 00070C9C  38 84 02 B2 */	addi r4, r4, 0x2b2
/* 80073D40 00070CA0  48 24 E4 15 */	bl FindWidget__9CGuiFrameCFPCc
/* 80073D44 00070CA4  90 7F 00 50 */	stw r3, 0x50(r31)
/* 80073D48 00070CA8  38 80 00 07 */	li r4, 7
/* 80073D4C 00070CAC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80073D50 00070CB0  48 2E 29 AD */	bl GetString__12CStringTableCFi
/* 80073D54 00070CB4  7C 64 1B 78 */	mr r4, r3
/* 80073D58 00070CB8  38 61 00 30 */	addi r3, r1, 0x30
/* 80073D5C 00070CBC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80073D60 00070CC0  38 A0 FF FF */	li r5, -1
/* 80073D64 00070CC4  48 2C 9A 59 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80073D68 00070CC8  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80073D6C 00070CCC  38 81 00 30 */	addi r4, r1, 0x30
/* 80073D70 00070CD0  38 A0 00 00 */	li r5, 0
/* 80073D74 00070CD4  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073D78 00070CD8  48 25 5B 0D */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073D7C 00070CDC  38 61 00 30 */	addi r3, r1, 0x30
/* 80073D80 00070CE0  48 2C 93 B5 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80073D84 00070CE4  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80073D88 00070CE8  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80073D8C 00070CEC  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073D90 00070CF0  38 84 01 BC */	addi r4, r4, 0x1bc
/* 80073D94 00070CF4  48 25 58 D5 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80073D98 00070CF8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 80073D9C 00070CFC  38 80 00 06 */	li r4, 6
/* 80073DA0 00070D00  48 2E 29 5D */	bl GetString__12CStringTableCFi
/* 80073DA4 00070D04  7C 64 1B 78 */	mr r4, r3
/* 80073DA8 00070D08  38 61 00 20 */	addi r3, r1, 0x20
/* 80073DAC 00070D0C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80073DB0 00070D10  38 A0 FF FF */	li r5, -1
/* 80073DB4 00070D14  48 2C 9A 09 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FPCwiRCQ24rstl17rmemory_allocator"
/* 80073DB8 00070D18  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80073DBC 00070D1C  38 81 00 20 */	addi r4, r1, 0x20
/* 80073DC0 00070D20  38 A0 00 00 */	li r5, 0
/* 80073DC4 00070D24  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073DC8 00070D28  48 25 5A BD */	bl "SetText__15CGuiTextSupportFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 80073DCC 00070D2C  38 61 00 20 */	addi r3, r1, 0x20
/* 80073DD0 00070D30  48 2C 93 65 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 80073DD4 00070D34  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80073DD8 00070D38  80 8D A1 3C */	lwz r4, gpTweakGuiColors@sda21(r13)
/* 80073DDC 00070D3C  38 63 00 D4 */	addi r3, r3, 0xd4
/* 80073DE0 00070D40  38 84 01 BC */	addi r4, r4, 0x1bc
/* 80073DE4 00070D44  48 25 58 85 */	bl SetFontColor__15CGuiTextSupportFRC6CColor
/* 80073DE8 00070D48  38 00 00 00 */	li r0, 0
/* 80073DEC 00070D4C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80073DF0 00070D50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80073DF4 00070D54  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80073DF8 00070D58  48 25 6A 75 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80073DFC 00070D5C  38 00 00 00 */	li r0, 0
/* 80073E00 00070D60  38 81 00 18 */	addi r4, r1, 0x18
/* 80073E04 00070D64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80073E08 00070D68  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80073E0C 00070D6C  48 25 6A 61 */	bl SetColor__10CGuiWidgetFRC6CColor
/* 80073E10 00070D70  3C 80 80 3D */	lis r4, lbl_803CD2D8@ha
/* 80073E14 00070D74  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80073E18 00070D78  38 84 D2 D8 */	addi r4, r4, lbl_803CD2D8@l
/* 80073E1C 00070D7C  38 84 02 C0 */	addi r4, r4, 0x2c0
/* 80073E20 00070D80  48 24 E3 35 */	bl FindWidget__9CGuiFrameCFPCc
/* 80073E24 00070D84  28 03 00 00 */	cmplwi r3, 0
/* 80073E28 00070D88  41 82 00 48 */	beq lbl_80073E70
/* 80073E2C 00070D8C  80 AD A1 3C */	lwz r5, gpTweakGuiColors@sda21(r13)
/* 80073E30 00070D90  3C 00 43 30 */	lis r0, 0x4330
/* 80073E34 00070D94  90 01 00 40 */	stw r0, 0x40(r1)
/* 80073E38 00070D98  88 05 01 BF */	lbz r0, 0x1bf(r5)
/* 80073E3C 00070D9C  C8 22 88 68 */	lfd f1, lbl_805AA588@sda21(r2)
/* 80073E40 00070DA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80073E44 00070DA4  C0 42 88 64 */	lfs f2, lbl_805AA584@sda21(r2)
/* 80073E48 00070DA8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80073E4C 00070DAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80073E50 00070DB0  EF E2 00 32 */	fmuls f31, f2, f0
/* 80073E54 00070DB4  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80073E58 00070DB8  38 81 00 14 */	addi r4, r1, 0x14
/* 80073E5C 00070DBC  80 A5 01 BC */	lwz r5, 0x1bc(r5)
/* 80073E60 00070DC0  88 01 00 08 */	lbz r0, 8(r1)
/* 80073E64 00070DC4  50 A0 00 2E */	rlwimi r0, r5, 0, 0, 0x17
/* 80073E68 00070DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80073E6C 00070DCC  48 25 6A 01 */	bl SetColor__10CGuiWidgetFRC6CColor
lbl_80073E70:
/* 80073E70 00070DD0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80073E74 00070DD4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80073E78 00070DD8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80073E7C 00070DDC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80073E80 00070DE0  7C 08 03 A6 */	mtlr r0
/* 80073E84 00070DE4  38 21 00 60 */	addi r1, r1, 0x60
/* 80073E88 00070DE8  4E 80 00 20 */	blr 

.global __dt__12CPauseScreenFv
__dt__12CPauseScreenFv:
/* 80073E8C 00070DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80073E90 00070DF0  7C 08 02 A6 */	mflr r0
/* 80073E94 00070DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80073E98 00070DF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80073E9C 00070DFC  7C 9F 23 78 */	mr r31, r4
/* 80073EA0 00070E00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80073EA4 00070E04  7C 7E 1B 79 */	or. r30, r3, r3
/* 80073EA8 00070E08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80073EAC 00070E0C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80073EB0 00070E10  41 82 01 3C */	beq lbl_80073FEC
/* 80073EB4 00070E14  48 2F 8E 49 */	bl sub_8036ccfc
/* 80073EB8 00070E18  34 1E 00 7C */	addic. r0, r30, 0x7c
/* 80073EBC 00070E1C  41 82 00 60 */	beq lbl_80073F1C
/* 80073EC0 00070E20  3B 9E 00 80 */	addi r28, r30, 0x80
/* 80073EC4 00070E24  3B A0 00 00 */	li r29, 0
/* 80073EC8 00070E28  48 00 00 40 */	b lbl_80073F08
lbl_80073ECC:
/* 80073ECC 00070E2C  28 1C 00 00 */	cmplwi r28, 0
/* 80073ED0 00070E30  41 82 00 30 */	beq lbl_80073F00
/* 80073ED4 00070E34  88 1C 00 00 */	lbz r0, 0(r28)
/* 80073ED8 00070E38  28 00 00 00 */	cmplwi r0, 0
/* 80073EDC 00070E3C  41 82 00 24 */	beq lbl_80073F00
/* 80073EE0 00070E40  80 7C 00 04 */	lwz r3, 4(r28)
/* 80073EE4 00070E44  28 03 00 00 */	cmplwi r3, 0
/* 80073EE8 00070E48  41 82 00 18 */	beq lbl_80073F00
/* 80073EEC 00070E4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80073EF0 00070E50  38 80 00 01 */	li r4, 1
/* 80073EF4 00070E54  81 8C 00 08 */	lwz r12, 8(r12)
/* 80073EF8 00070E58  7D 89 03 A6 */	mtctr r12
/* 80073EFC 00070E5C  4E 80 04 21 */	bctrl 
lbl_80073F00:
/* 80073F00 00070E60  3B 9C 00 08 */	addi r28, r28, 8
/* 80073F04 00070E64  3B BD 00 01 */	addi r29, r29, 1
lbl_80073F08:
/* 80073F08 00070E68  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 80073F0C 00070E6C  7C 1D 00 00 */	cmpw r29, r0
/* 80073F10 00070E70  41 80 FF BC */	blt lbl_80073ECC
/* 80073F14 00070E74  38 00 00 00 */	li r0, 0
/* 80073F18 00070E78  90 1E 00 7C */	stw r0, 0x7c(r30)
lbl_80073F1C:
/* 80073F1C 00070E7C  34 1E 00 64 */	addic. r0, r30, 0x64
/* 80073F20 00070E80  41 82 00 4C */	beq lbl_80073F6C
/* 80073F24 00070E84  3B 9E 00 68 */	addi r28, r30, 0x68
/* 80073F28 00070E88  3B A0 00 00 */	li r29, 0
/* 80073F2C 00070E8C  48 00 00 2C */	b lbl_80073F58
lbl_80073F30:
/* 80073F30 00070E90  28 1C 00 00 */	cmplwi r28, 0
/* 80073F34 00070E94  41 82 00 1C */	beq lbl_80073F50
/* 80073F38 00070E98  88 1C 00 00 */	lbz r0, 0(r28)
/* 80073F3C 00070E9C  28 00 00 00 */	cmplwi r0, 0
/* 80073F40 00070EA0  41 82 00 10 */	beq lbl_80073F50
/* 80073F44 00070EA4  80 7C 00 04 */	lwz r3, 4(r28)
/* 80073F48 00070EA8  38 80 00 01 */	li r4, 1
/* 80073F4C 00070EAC  48 24 EB 31 */	bl __dt__9CGuiFrameFv
lbl_80073F50:
/* 80073F50 00070EB0  3B 9C 00 08 */	addi r28, r28, 8
/* 80073F54 00070EB4  3B BD 00 01 */	addi r29, r29, 1
lbl_80073F58:
/* 80073F58 00070EB8  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 80073F5C 00070EBC  7C 1D 00 00 */	cmpw r29, r0
/* 80073F60 00070EC0  41 80 FF D0 */	blt lbl_80073F30
/* 80073F64 00070EC4  38 00 00 00 */	li r0, 0
/* 80073F68 00070EC8  90 1E 00 64 */	stw r0, 0x64(r30)
lbl_80073F6C:
/* 80073F6C 00070ECC  34 1E 00 60 */	addic. r0, r30, 0x60
/* 80073F70 00070ED0  41 82 00 24 */	beq lbl_80073F94
/* 80073F74 00070ED4  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80073F78 00070ED8  28 03 00 00 */	cmplwi r3, 0
/* 80073F7C 00070EDC  41 82 00 18 */	beq lbl_80073F94
/* 80073F80 00070EE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80073F84 00070EE4  38 80 00 01 */	li r4, 1
/* 80073F88 00070EE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80073F8C 00070EEC  7D 89 03 A6 */	mtctr r12
/* 80073F90 00070EF0  4E 80 04 21 */	bctrl 
lbl_80073F94:
/* 80073F94 00070EF4  34 1E 00 5C */	addic. r0, r30, 0x5c
/* 80073F98 00070EF8  41 82 00 0C */	beq lbl_80073FA4
/* 80073F9C 00070EFC  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 80073FA0 00070F00  48 2A 19 91 */	bl Free__7CMemoryFPCv
lbl_80073FA4:
/* 80073FA4 00070F04  34 1E 00 28 */	addic. r0, r30, 0x28
/* 80073FA8 00070F08  41 82 00 18 */	beq lbl_80073FC0
/* 80073FAC 00070F0C  34 1E 00 28 */	addic. r0, r30, 0x28
/* 80073FB0 00070F10  41 82 00 10 */	beq lbl_80073FC0
/* 80073FB4 00070F14  38 7E 00 28 */	addi r3, r30, 0x28
/* 80073FB8 00070F18  38 80 00 00 */	li r4, 0
/* 80073FBC 00070F1C  48 2C CE 85 */	bl __dt__6CTokenFv
lbl_80073FC0:
/* 80073FC0 00070F20  34 1E 00 14 */	addic. r0, r30, 0x14
/* 80073FC4 00070F24  41 82 00 18 */	beq lbl_80073FDC
/* 80073FC8 00070F28  34 1E 00 14 */	addic. r0, r30, 0x14
/* 80073FCC 00070F2C  41 82 00 10 */	beq lbl_80073FDC
/* 80073FD0 00070F30  38 7E 00 14 */	addi r3, r30, 0x14
/* 80073FD4 00070F34  38 80 00 00 */	li r4, 0
/* 80073FD8 00070F38  48 2C CE 69 */	bl __dt__6CTokenFv
lbl_80073FDC:
/* 80073FDC 00070F3C  7F E0 07 35 */	extsh. r0, r31
/* 80073FE0 00070F40  40 81 00 0C */	ble lbl_80073FEC
/* 80073FE4 00070F44  7F C3 F3 78 */	mr r3, r30
/* 80073FE8 00070F48  48 2A 19 49 */	bl Free__7CMemoryFPCv
lbl_80073FEC:
/* 80073FEC 00070F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80073FF0 00070F50  7F C3 F3 78 */	mr r3, r30
/* 80073FF4 00070F54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80073FF8 00070F58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80073FFC 00070F5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80074000 00070F60  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80074004 00070F64  7C 08 03 A6 */	mtlr r0
/* 80074008 00070F68  38 21 00 20 */	addi r1, r1, 0x20
/* 8007400C 00070F6C  4E 80 00 20 */	blr 

.global __ct__12CPauseScreenFiRC16CDependencyGroupRC16CDependencyGroup
__ct__12CPauseScreenFiRC16CDependencyGroupRC16CDependencyGroup:
/* 80074010 00070F70  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80074014 00070F74  7C 08 02 A6 */	mflr r0
/* 80074018 00070F78  C0 02 88 30 */	lfs f0, lbl_805AA550@sda21(r2)
/* 8007401C 00070F7C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80074020 00070F80  38 00 00 03 */	li r0, 3
/* 80074024 00070F84  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80074028 00070F88  7C 7F 1B 78 */	mr r31, r3
/* 8007402C 00070F8C  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 80074030 00070F90  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80074034 00070F94  7C DE 33 78 */	mr r30, r6
/* 80074038 00070F98  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8007403C 00070F9C  7C BD 2B 78 */	mr r29, r5
/* 80074040 00070FA0  93 81 00 40 */	stw r28, 0x40(r1)
/* 80074044 00070FA4  90 9F 00 00 */	stw r4, 0(r31)
/* 80074048 00070FA8  38 80 00 02 */	li r4, 2
/* 8007404C 00070FAC  90 9F 00 04 */	stw r4, 4(r31)
/* 80074050 00070FB0  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 80074054 00070FB4  38 A4 02 D0 */	addi r5, r4, 0x2d0
/* 80074058 00070FB8  38 61 00 34 */	addi r3, r1, 0x34
/* 8007405C 00070FBC  90 1F 00 08 */	stw r0, 8(r31)
/* 80074060 00070FC0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80074064 00070FC4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80074068 00070FC8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8007406C 00070FCC  81 84 00 00 */	lwz r12, 0(r4)
/* 80074070 00070FD0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80074074 00070FD4  7D 89 03 A6 */	mtctr r12
/* 80074078 00070FD8  4E 80 04 21 */	bctrl 
/* 8007407C 00070FDC  3B 9F 00 14 */	addi r28, r31, 0x14
/* 80074080 00070FE0  38 81 00 34 */	addi r4, r1, 0x34
/* 80074084 00070FE4  7F 83 E3 78 */	mr r3, r28
/* 80074088 00070FE8  48 2C CE 21 */	bl __ct__6CTokenFRC6CToken
/* 8007408C 00070FEC  38 00 00 00 */	li r0, 0
/* 80074090 00070FF0  38 61 00 34 */	addi r3, r1, 0x34
/* 80074094 00070FF4  90 1C 00 08 */	stw r0, 8(r28)
/* 80074098 00070FF8  38 80 FF FF */	li r4, -1
/* 8007409C 00070FFC  48 2C CD A5 */	bl __dt__6CTokenFv
/* 800740A0 00071000  93 BF 00 20 */	stw r29, 0x20(r31)
/* 800740A4 00071004  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 800740A8 00071008  38 83 D2 D8 */	addi r4, r3, lbl_803CD2D8@l
/* 800740AC 0007100C  38 61 00 2C */	addi r3, r1, 0x2c
/* 800740B0 00071010  93 DF 00 24 */	stw r30, 0x24(r31)
/* 800740B4 00071014  38 A4 02 E1 */	addi r5, r4, 0x2e1
/* 800740B8 00071018  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800740BC 0007101C  81 84 00 00 */	lwz r12, 0(r4)
/* 800740C0 00071020  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800740C4 00071024  7D 89 03 A6 */	mtctr r12
/* 800740C8 00071028  4E 80 04 21 */	bctrl 
/* 800740CC 0007102C  3B 9F 00 28 */	addi r28, r31, 0x28
/* 800740D0 00071030  38 81 00 2C */	addi r4, r1, 0x2c
/* 800740D4 00071034  7F 83 E3 78 */	mr r3, r28
/* 800740D8 00071038  48 2C CD D1 */	bl __ct__6CTokenFRC6CToken
/* 800740DC 0007103C  38 00 00 00 */	li r0, 0
/* 800740E0 00071040  38 61 00 2C */	addi r3, r1, 0x2c
/* 800740E4 00071044  90 1C 00 08 */	stw r0, 8(r28)
/* 800740E8 00071048  38 80 FF FF */	li r4, -1
/* 800740EC 0007104C  48 2C CD 55 */	bl __dt__6CTokenFv
/* 800740F0 00071050  38 00 00 00 */	li r0, 0
/* 800740F4 00071054  3C 60 80 3D */	lis r3, lbl_803CD2D8@ha
/* 800740F8 00071058  90 1F 00 34 */	stw r0, 0x34(r31)
/* 800740FC 0007105C  38 63 D2 D8 */	addi r3, r3, lbl_803CD2D8@l
/* 80074100 00071060  38 83 02 FE */	addi r4, r3, 0x2fe
/* 80074104 00071064  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80074108 00071068  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8007410C 0007106C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80074110 00071070  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80074114 00071074  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80074118 00071078  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8007411C 0007107C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80074120 00071080  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80074124 00071084  81 83 00 00 */	lwz r12, 0(r3)
/* 80074128 00071088  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8007412C 0007108C  7D 89 03 A6 */	mtctr r12
/* 80074130 00071090  4E 80 04 21 */	bctrl 
/* 80074134 00071094  80 A3 00 04 */	lwz r5, 4(r3)
/* 80074138 00071098  3C 60 46 52 */	lis r3, 0x46524D45@ha
/* 8007413C 0007109C  38 03 4D 45 */	addi r0, r3, 0x46524D45@l
/* 80074140 000710A0  38 81 00 24 */	addi r4, r1, 0x24
/* 80074144 000710A4  90 BF 00 54 */	stw r5, 0x54(r31)
/* 80074148 000710A8  80 BF 00 54 */	lwz r5, 0x54(r31)
/* 8007414C 000710AC  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 80074150 000710B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80074154 000710B4  38 63 00 04 */	addi r3, r3, 4
/* 80074158 000710B8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8007415C 000710BC  48 2C 7A F5 */	bl ResourceSize__10CResLoaderCFRC10SObjectTag
/* 80074160 000710C0  3C A0 80 3D */	lis r5, lbl_803CD2D8@ha
/* 80074164 000710C4  3C 80 80 3D */	lis r4, lbl_803D6AA8@ha
/* 80074168 000710C8  90 7F 00 58 */	stw r3, 0x58(r31)
/* 8007416C 000710CC  38 A5 D2 D8 */	addi r5, r5, lbl_803CD2D8@l
/* 80074170 000710D0  38 C4 6A A8 */	addi r6, r4, lbl_803D6AA8@l
/* 80074174 000710D4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80074178 000710D8  38 A5 02 60 */	addi r5, r5, 0x260
/* 8007417C 000710DC  38 80 FF FF */	li r4, -1
/* 80074180 000710E0  48 26 22 55 */	bl __ct__10CCallStackFUiPCcPCc
/* 80074184 000710E4  7C 67 1B 78 */	mr r7, r3
/* 80074188 000710E8  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 8007418C 000710EC  38 80 00 02 */	li r4, 2
/* 80074190 000710F0  38 A0 00 01 */	li r5, 1
/* 80074194 000710F4  38 C0 00 00 */	li r6, 0
/* 80074198 000710F8  48 2A 17 FD */	bl Alloc__7CMemoryFUlQ210IAllocator5EHintQ210IAllocator6EScopeQ210IAllocator5ETypeRC10CCallStack
/* 8007419C 000710FC  90 7F 00 5C */	stw r3, 0x5c(r31)
/* 800741A0 00071100  3C 60 46 52 */	lis r3, 0x46524D45@ha
/* 800741A4 00071104  38 03 4D 45 */	addi r0, r3, 0x46524D45@l
/* 800741A8 00071108  38 81 00 14 */	addi r4, r1, 0x14
/* 800741AC 0007110C  80 BF 00 5C */	lwz r5, 0x5c(r31)
/* 800741B0 00071110  80 DF 00 54 */	lwz r6, 0x54(r31)
/* 800741B4 00071114  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 800741B8 00071118  90 01 00 14 */	stw r0, 0x14(r1)
/* 800741BC 0007111C  38 63 00 04 */	addi r3, r3, 4
/* 800741C0 00071120  90 C1 00 18 */	stw r6, 0x18(r1)
/* 800741C4 00071124  48 2C 79 B5 */	bl LoadResourceAsync__10CResLoaderFRC10SObjectTagPc
/* 800741C8 00071128  90 7F 00 60 */	stw r3, 0x60(r31)
/* 800741CC 0007112C  38 60 00 00 */	li r3, 0
/* 800741D0 00071130  34 9F 00 80 */	addic. r4, r31, 0x80
/* 800741D4 00071134  38 00 00 02 */	li r0, 2
/* 800741D8 00071138  90 7F 00 64 */	stw r3, 0x64(r31)
/* 800741DC 0007113C  90 7F 00 78 */	stw r3, 0x78(r31)
/* 800741E0 00071140  98 61 00 0C */	stb r3, 0xc(r1)
/* 800741E4 00071144  90 61 00 10 */	stw r3, 0x10(r1)
/* 800741E8 00071148  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 800741EC 0007114C  41 82 00 10 */	beq lbl_800741FC
/* 800741F0 00071150  98 64 00 00 */	stb r3, 0(r4)
/* 800741F4 00071154  98 61 00 0C */	stb r3, 0xc(r1)
/* 800741F8 00071158  90 64 00 04 */	stw r3, 4(r4)
lbl_800741FC:
/* 800741FC 0007115C  34 84 00 08 */	addic. r4, r4, 8
/* 80074200 00071160  41 82 00 14 */	beq lbl_80074214
/* 80074204 00071164  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80074208 00071168  98 04 00 00 */	stb r0, 0(r4)
/* 8007420C 0007116C  90 64 00 04 */	stw r3, 4(r4)
/* 80074210 00071170  98 61 00 0C */	stb r3, 0xc(r1)
lbl_80074214:
/* 80074214 00071174  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80074218 00071178  28 00 00 00 */	cmplwi r0, 0
/* 8007421C 0007117C  41 82 00 24 */	beq lbl_80074240
/* 80074220 00071180  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80074224 00071184  28 03 00 00 */	cmplwi r3, 0
/* 80074228 00071188  41 82 00 18 */	beq lbl_80074240
/* 8007422C 0007118C  81 83 00 00 */	lwz r12, 0(r3)
/* 80074230 00071190  38 80 00 01 */	li r4, 1
/* 80074234 00071194  81 8C 00 08 */	lwz r12, 8(r12)
/* 80074238 00071198  7D 89 03 A6 */	mtctr r12
/* 8007423C 0007119C  4E 80 04 21 */	bctrl 
lbl_80074240:
/* 80074240 000711A0  38 60 00 00 */	li r3, 0
/* 80074244 000711A4  38 00 00 01 */	li r0, 1
/* 80074248 000711A8  98 7F 00 90 */	stb r3, 0x90(r31)
/* 8007424C 000711AC  38 7F 00 14 */	addi r3, r31, 0x14
/* 80074250 000711B0  98 1F 00 91 */	stb r0, 0x91(r31)
/* 80074254 000711B4  48 2C CB 31 */	bl Lock__6CTokenFv
/* 80074258 000711B8  38 7F 00 28 */	addi r3, r31, 0x28
/* 8007425C 000711BC  48 2C CB 29 */	bl Lock__6CTokenFv
/* 80074260 000711C0  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 80074264 000711C4  38 61 00 08 */	addi r3, r1, 8
/* 80074268 000711C8  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8007426C 000711CC  38 80 05 9B */	li r4, 0x59b
/* 80074270 000711D0  38 A0 00 7F */	li r5, 0x7f
/* 80074274 000711D4  38 C0 00 40 */	li r6, 0x40
/* 80074278 000711D8  38 E0 00 00 */	li r7, 0
/* 8007427C 000711DC  39 20 00 00 */	li r9, 0
/* 80074280 000711E0  48 27 5A F5 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 80074284 000711E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80074288 000711E8  7F E3 FB 78 */	mr r3, r31
/* 8007428C 000711EC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80074290 000711F0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80074294 000711F4  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80074298 000711F8  83 81 00 40 */	lwz r28, 0x40(r1)
/* 8007429C 000711FC  7C 08 03 A6 */	mtlr r0
/* 800742A0 00071200  38 21 00 50 */	addi r1, r1, 0x50
/* 800742A4 00071204  4E 80 00 20 */	blr 

.global GetNextSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen
GetNextSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen:
/* 800742A8 00071208  2C 03 00 02 */	cmpwi r3, 2
/* 800742AC 0007120C  40 82 00 0C */	bne lbl_800742B8
/* 800742B0 00071210  38 60 00 00 */	li r3, 0
/* 800742B4 00071214  4E 80 00 20 */	blr 
lbl_800742B8:
/* 800742B8 00071218  2C 03 00 01 */	cmpwi r3, 1
/* 800742BC 0007121C  40 82 00 0C */	bne lbl_800742C8
/* 800742C0 00071220  38 60 00 02 */	li r3, 2
/* 800742C4 00071224  4E 80 00 20 */	blr 
lbl_800742C8:
/* 800742C8 00071228  2C 03 00 00 */	cmpwi r3, 0
/* 800742CC 0007122C  38 60 00 03 */	li r3, 3
/* 800742D0 00071230  4C 82 00 20 */	bnelr 
/* 800742D4 00071234  38 60 00 01 */	li r3, 1
/* 800742D8 00071238  4E 80 00 20 */	blr 

.global GetPreviousSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen
GetPreviousSubscreen__12CPauseScreenFQ212CPauseScreen10ESubScreen:
/* 800742DC 0007123C  2C 03 00 02 */	cmpwi r3, 2
/* 800742E0 00071240  40 82 00 0C */	bne lbl_800742EC
/* 800742E4 00071244  38 60 00 01 */	li r3, 1
/* 800742E8 00071248  4E 80 00 20 */	blr 
lbl_800742EC:
/* 800742EC 0007124C  2C 03 00 01 */	cmpwi r3, 1
/* 800742F0 00071250  40 82 00 0C */	bne lbl_800742FC
/* 800742F4 00071254  38 60 00 00 */	li r3, 0
/* 800742F8 00071258  4E 80 00 20 */	blr 
lbl_800742FC:
/* 800742FC 0007125C  2C 03 00 00 */	cmpwi r3, 0
/* 80074300 00071260  38 60 00 03 */	li r3, 3
/* 80074304 00071264  4C 82 00 20 */	bnelr 
/* 80074308 00071268  38 60 00 02 */	li r3, 2
/* 8007430C 0007126C  4E 80 00 20 */	blr 

.include "macros.inc"

.section .data
.balign 8

.global __vt__23CScriptControllerAction
__vt__23CScriptControllerAction:
	# ROM: 0x3E2C20
	.4byte 0
	.4byte 0
	.4byte __dt__23CScriptControllerActionFv
	.4byte Accept__23CScriptControllerActionFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__23CScriptControllerActionFfR13CStateManager
	.4byte AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .text, "ax"

.global __dt__23CScriptControllerActionFv
__dt__23CScriptControllerActionFv:
/* 801D8CF4 001D5C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8CF8 001D5C58  7C 08 02 A6 */	mflr r0
/* 801D8CFC 001D5C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8D00 001D5C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D8D04 001D5C64  7C 9F 23 78 */	mr r31, r4
/* 801D8D08 001D5C68  93 C1 00 08 */	stw r30, 8(r1)
/* 801D8D0C 001D5C6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801D8D10 001D5C70  41 82 00 28 */	beq lbl_801D8D38
/* 801D8D14 001D5C74  3C A0 80 3E */	lis r5, __vt__23CScriptControllerAction@ha
/* 801D8D18 001D5C78  38 80 00 00 */	li r4, 0
/* 801D8D1C 001D5C7C  38 05 5C 20 */	addi r0, r5, __vt__23CScriptControllerAction@l
/* 801D8D20 001D5C80  90 1E 00 00 */	stw r0, 0(r30)
/* 801D8D24 001D5C84  4B E7 85 51 */	bl __dt__7CEntityFv
/* 801D8D28 001D5C88  7F E0 07 35 */	extsh. r0, r31
/* 801D8D2C 001D5C8C  40 81 00 0C */	ble lbl_801D8D38
/* 801D8D30 001D5C90  7F C3 F3 78 */	mr r3, r30
/* 801D8D34 001D5C94  48 13 CB FD */	bl Free__7CMemoryFPCv
lbl_801D8D38:
/* 801D8D38 001D5C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8D3C 001D5C9C  7F C3 F3 78 */	mr r3, r30
/* 801D8D40 001D5CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D8D44 001D5CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D8D48 001D5CA8  7C 08 03 A6 */	mtlr r0
/* 801D8D4C 001D5CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8D50 001D5CB0  4E 80 00 20 */	blr

.global GetCommand__23CScriptControllerActionFQ223CScriptControllerAction9ECommands
GetCommand__23CScriptControllerActionFQ223CScriptControllerAction9ECommands:
/* 801D8D54 001D5CB4  4E 80 00 20 */	blr

.global Think__23CScriptControllerActionFfR13CStateManager
Think__23CScriptControllerActionFfR13CStateManager:
/* 801D8D58 001D5CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D8D5C 001D5CBC  7C 08 02 A6 */	mflr r0
/* 801D8D60 001D5CC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D8D64 001D5CC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D8D68 001D5CC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D8D6C 001D5CCC  7C 9E 23 78 */	mr r30, r4
/* 801D8D70 001D5CD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D8D74 001D5CD4  7C 7D 1B 78 */	mr r29, r3
/* 801D8D78 001D5CD8  88 63 00 3C */	lbz r3, 0x3c(r3)
/* 801D8D7C 001D5CDC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801D8D80 001D5CE0  54 7F DF FE */	rlwinm r31, r3, 0x1b, 0x1f, 0x1f
/* 801D8D84 001D5CE4  41 82 00 40 */	beq lbl_801D8DC4
/* 801D8D88 001D5CE8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 801D8D8C 001D5CEC  2C 00 00 00 */	cmpwi r0, 0
/* 801D8D90 001D5CF0  41 82 00 08 */	beq lbl_801D8D98
/* 801D8D94 001D5CF4  48 00 00 6C */	b lbl_801D8E00
lbl_801D8D98:
/* 801D8D98 001D5CF8  88 1E 0F 94 */	lbz r0, 0xf94(r30)
/* 801D8D9C 001D5CFC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801D8DA0 001D5D00  41 82 00 14 */	beq lbl_801D8DB4
/* 801D8DA4 001D5D04  38 00 00 01 */	li r0, 1
/* 801D8DA8 001D5D08  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 801D8DAC 001D5D0C  98 7D 00 3C */	stb r3, 0x3c(r29)
/* 801D8DB0 001D5D10  48 00 00 50 */	b lbl_801D8E00
lbl_801D8DB4:
/* 801D8DB4 001D5D14  38 00 00 00 */	li r0, 0
/* 801D8DB8 001D5D18  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 801D8DBC 001D5D1C  98 7D 00 3C */	stb r3, 0x3c(r29)
/* 801D8DC0 001D5D20  48 00 00 40 */	b lbl_801D8E00
lbl_801D8DC4:
/* 801D8DC4 001D5D24  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 801D8DC8 001D5D28  4B FF FF 8D */	bl GetCommand__23CScriptControllerActionFQ223CScriptControllerAction9ECommands
/* 801D8DCC 001D5D2C  38 9E 0B 54 */	addi r4, r30, 0xb54
/* 801D8DD0 001D5D30  4B E3 3A A5 */	bl GetDigitalInput__13ControlMapperFQ213ControlMapper9ECommandsRC11CFinalInput
/* 801D8DD4 001D5D34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801D8DD8 001D5D38  41 82 00 18 */	beq lbl_801D8DF0
/* 801D8DDC 001D5D3C  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 801D8DE0 001D5D40  38 60 00 01 */	li r3, 1
/* 801D8DE4 001D5D44  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801D8DE8 001D5D48  98 1D 00 3C */	stb r0, 0x3c(r29)
/* 801D8DEC 001D5D4C  48 00 00 14 */	b lbl_801D8E00
lbl_801D8DF0:
/* 801D8DF0 001D5D50  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 801D8DF4 001D5D54  38 60 00 00 */	li r3, 0
/* 801D8DF8 001D5D58  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801D8DFC 001D5D5C  98 1D 00 3C */	stb r0, 0x3c(r29)
lbl_801D8E00:
/* 801D8E00 001D5D60  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 801D8E04 001D5D64  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801D8E08 001D5D68  41 82 00 80 */	beq lbl_801D8E88
/* 801D8E0C 001D5D6C  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 801D8E10 001D5D70  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 801D8E14 001D5D74  7C 00 F8 40 */	cmplw r0, r31
/* 801D8E18 001D5D78  41 82 00 70 */	beq lbl_801D8E88
/* 801D8E1C 001D5D7C  28 00 00 00 */	cmplwi r0, 0
/* 801D8E20 001D5D80  41 82 00 1C */	beq lbl_801D8E3C
/* 801D8E24 001D5D84  7F A3 EB 78 */	mr r3, r29
/* 801D8E28 001D5D88  7F C5 F3 78 */	mr r5, r30
/* 801D8E2C 001D5D8C  38 80 00 08 */	li r4, 8
/* 801D8E30 001D5D90  38 C0 FF FF */	li r6, -1
/* 801D8E34 001D5D94  4B E7 82 8D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801D8E38 001D5D98  48 00 00 50 */	b lbl_801D8E88
lbl_801D8E3C:
/* 801D8E3C 001D5D9C  7F A3 EB 78 */	mr r3, r29
/* 801D8E40 001D5DA0  7F C5 F3 78 */	mr r5, r30
/* 801D8E44 001D5DA4  38 80 00 02 */	li r4, 2
/* 801D8E48 001D5DA8  38 C0 FF FF */	li r6, -1
/* 801D8E4C 001D5DAC  4B E7 82 75 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801D8E50 001D5DB0  88 1D 00 3C */	lbz r0, 0x3c(r29)
/* 801D8E54 001D5DB4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801D8E58 001D5DB8  41 82 00 30 */	beq lbl_801D8E88
/* 801D8E5C 001D5DBC  7F A3 EB 78 */	mr r3, r29
/* 801D8E60 001D5DC0  38 80 00 00 */	li r4, 0
/* 801D8E64 001D5DC4  81 9D 00 00 */	lwz r12, 0(r29)
/* 801D8E68 001D5DC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801D8E6C 001D5DCC  7D 89 03 A6 */	mtctr r12
/* 801D8E70 001D5DD0  4E 80 04 21 */	bctrl
/* 801D8E74 001D5DD4  7F A3 EB 78 */	mr r3, r29
/* 801D8E78 001D5DD8  7F C5 F3 78 */	mr r5, r30
/* 801D8E7C 001D5DDC  38 80 00 05 */	li r4, 5
/* 801D8E80 001D5DE0  38 C0 FF FF */	li r6, -1
/* 801D8E84 001D5DE4  4B E7 82 3D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_801D8E88:
/* 801D8E88 001D5DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D8E8C 001D5DEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D8E90 001D5DF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D8E94 001D5DF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D8E98 001D5DF8  7C 08 03 A6 */	mtlr r0
/* 801D8E9C 001D5DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 801D8EA0 001D5E00  4E 80 00 20 */	blr

.global Accept__23CScriptControllerActionFR8IVisitor
Accept__23CScriptControllerActionFR8IVisitor:
/* 801D8EA4 001D5E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D8EA8 001D5E08  7C 08 02 A6 */	mflr r0
/* 801D8EAC 001D5E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D8EB0 001D5E10  7C 60 1B 78 */	mr r0, r3
/* 801D8EB4 001D5E14  7C 83 23 78 */	mr r3, r4
/* 801D8EB8 001D5E18  81 84 00 00 */	lwz r12, 0(r4)
/* 801D8EBC 001D5E1C  7C 04 03 78 */	mr r4, r0
/* 801D8EC0 001D5E20  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D8EC4 001D5E24  7D 89 03 A6 */	mtctr r12
/* 801D8EC8 001D5E28  4E 80 04 21 */	bctrl
/* 801D8ECC 001D5E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D8ED0 001D5E30  7C 08 03 A6 */	mtlr r0
/* 801D8ED4 001D5E34  38 21 00 10 */	addi r1, r1, 0x10
/* 801D8ED8 001D5E38  4E 80 00 20 */	blr

.global "__ct__23CScriptControllerActionF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobQ223CScriptControllerAction9ECommandsbUib"
"__ct__23CScriptControllerActionF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobQ223CScriptControllerAction9ECommandsbUib":
/* 801D8EDC 001D5E3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D8EE0 001D5E40  7C 08 02 A6 */	mflr r0
/* 801D8EE4 001D5E44  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D8EE8 001D5E48  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801D8EEC 001D5E4C  7C 7B 1B 78 */	mr r27, r3
/* 801D8EF0 001D5E50  8B E1 00 3B */	lbz r31, 0x3b(r1)
/* 801D8EF4 001D5E54  7D 1C 43 78 */	mr r28, r8
/* 801D8EF8 001D5E58  7D 3D 4B 78 */	mr r29, r9
/* 801D8EFC 001D5E5C  7D 5E 53 78 */	mr r30, r10
/* 801D8F00 001D5E60  A0 04 00 00 */	lhz r0, 0(r4)
/* 801D8F04 001D5E64  7C A4 2B 78 */	mr r4, r5
/* 801D8F08 001D5E68  7C C5 33 78 */	mr r5, r6
/* 801D8F0C 001D5E6C  7C E6 3B 78 */	mr r6, r7
/* 801D8F10 001D5E70  B0 01 00 08 */	sth r0, 8(r1)
/* 801D8F14 001D5E74  7C 87 23 78 */	mr r7, r4
/* 801D8F18 001D5E78  38 81 00 08 */	addi r4, r1, 8
/* 801D8F1C 001D5E7C  4B E7 84 09 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801D8F20 001D5E80  3C 60 80 3E */	lis r3, __vt__23CScriptControllerAction@ha
/* 801D8F24 001D5E84  38 80 00 00 */	li r4, 0
/* 801D8F28 001D5E88  38 03 5C 20 */	addi r0, r3, __vt__23CScriptControllerAction@l
/* 801D8F2C 001D5E8C  90 1B 00 00 */	stw r0, 0(r27)
/* 801D8F30 001D5E90  7F 63 DB 78 */	mr r3, r27
/* 801D8F34 001D5E94  93 9B 00 34 */	stw r28, 0x34(r27)
/* 801D8F38 001D5E98  93 DB 00 38 */	stw r30, 0x38(r27)
/* 801D8F3C 001D5E9C  88 1B 00 3C */	lbz r0, 0x3c(r27)
/* 801D8F40 001D5EA0  53 A0 3E 30 */	rlwimi r0, r29, 7, 0x18, 0x18
/* 801D8F44 001D5EA4  98 1B 00 3C */	stb r0, 0x3c(r27)
/* 801D8F48 001D5EA8  88 1B 00 3C */	lbz r0, 0x3c(r27)
/* 801D8F4C 001D5EAC  53 E0 36 72 */	rlwimi r0, r31, 6, 0x19, 0x19
/* 801D8F50 001D5EB0  98 1B 00 3C */	stb r0, 0x3c(r27)
/* 801D8F54 001D5EB4  88 1B 00 3C */	lbz r0, 0x3c(r27)
/* 801D8F58 001D5EB8  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801D8F5C 001D5EBC  98 1B 00 3C */	stb r0, 0x3c(r27)
/* 801D8F60 001D5EC0  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801D8F64 001D5EC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D8F68 001D5EC8  7C 08 03 A6 */	mtlr r0
/* 801D8F6C 001D5ECC  38 21 00 30 */	addi r1, r1, 0x30
/* 801D8F70 001D5ED0  4E 80 00 20 */	blr

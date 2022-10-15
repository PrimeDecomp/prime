.include "macros.inc"

.section .data
.balign 8

.global __vt__18CScriptMemoryRelay
__vt__18CScriptMemoryRelay:
	# ROM: 0x3E56E8
	.4byte 0
	.4byte 0
	.4byte __dt__18CScriptMemoryRelayFv
	.4byte Accept__18CScriptMemoryRelayFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__18CScriptMemoryRelayF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .text, "ax"

.global Accept__18CScriptMemoryRelayFR8IVisitor
Accept__18CScriptMemoryRelayFR8IVisitor:
/* 802418F0 0023E850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802418F4 0023E854  7C 08 02 A6 */	mflr r0
/* 802418F8 0023E858  90 01 00 14 */	stw r0, 0x14(r1)
/* 802418FC 0023E85C  7C 60 1B 78 */	mr r0, r3
/* 80241900 0023E860  7C 83 23 78 */	mr r3, r4
/* 80241904 0023E864  81 84 00 00 */	lwz r12, 0(r4)
/* 80241908 0023E868  7C 04 03 78 */	mr r4, r0
/* 8024190C 0023E86C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80241910 0023E870  7D 89 03 A6 */	mtctr r12
/* 80241914 0023E874  4E 80 04 21 */	bctrl
/* 80241918 0023E878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024191C 0023E87C  7C 08 03 A6 */	mtlr r0
/* 80241920 0023E880  38 21 00 10 */	addi r1, r1, 0x10
/* 80241924 0023E884  4E 80 00 20 */	blr

.global AcceptScriptMsg__18CScriptMemoryRelayF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__18CScriptMemoryRelayF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80241928 0023E888  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8024192C 0023E88C  7C 08 02 A6 */	mflr r0
/* 80241930 0023E890  90 01 00 34 */	stw r0, 0x34(r1)
/* 80241934 0023E894  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80241938 0023E898  7C DF 33 78 */	mr r31, r6
/* 8024193C 0023E89C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80241940 0023E8A0  7C 7E 1B 78 */	mr r30, r3
/* 80241944 0023E8A4  88 03 00 34 */	lbz r0, 0x34(r3)
/* 80241948 0023E8A8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8024194C 0023E8AC  40 82 00 94 */	bne lbl_802419E0
/* 80241950 0023E8B0  2C 04 00 04 */	cmpwi r4, 4
/* 80241954 0023E8B4  41 82 00 54 */	beq lbl_802419A8
/* 80241958 0023E8B8  40 80 00 70 */	bge lbl_802419C8
/* 8024195C 0023E8BC  2C 04 00 01 */	cmpwi r4, 1
/* 80241960 0023E8C0  41 82 00 08 */	beq lbl_80241968
/* 80241964 0023E8C4  48 00 00 64 */	b lbl_802419C8
lbl_80241968:
/* 80241968 0023E8C8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8024196C 0023E8CC  38 81 00 18 */	addi r4, r1, 0x18
/* 80241970 0023E8D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80241974 0023E8D4  80 7F 08 BC */	lwz r3, 0x8bc(r31)
/* 80241978 0023E8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024197C 0023E8DC  80 63 00 00 */	lwz r3, 0(r3)
/* 80241980 0023E8E0  4B EA 01 8D */	bl AddRelay__14CScriptMailboxF9TEditorId
/* 80241984 0023E8E4  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 80241988 0023E8E8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8024198C 0023E8EC  40 82 00 54 */	bne lbl_802419E0
/* 80241990 0023E8F0  7F C3 F3 78 */	mr r3, r30
/* 80241994 0023E8F4  7F E5 FB 78 */	mr r5, r31
/* 80241998 0023E8F8  38 80 00 00 */	li r4, 0
/* 8024199C 0023E8FC  38 C0 FF FF */	li r6, -1
/* 802419A0 0023E900  4B E0 F7 21 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 802419A4 0023E904  48 00 00 3C */	b lbl_802419E0
lbl_802419A8:
/* 802419A8 0023E908  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802419AC 0023E90C  38 81 00 10 */	addi r4, r1, 0x10
/* 802419B0 0023E910  90 01 00 10 */	stw r0, 0x10(r1)
/* 802419B4 0023E914  80 7F 08 BC */	lwz r3, 0x8bc(r31)
/* 802419B8 0023E918  90 01 00 0C */	stw r0, 0xc(r1)
/* 802419BC 0023E91C  80 63 00 00 */	lwz r3, 0(r3)
/* 802419C0 0023E920  4B EA 00 C5 */	bl RemoveRelay__14CScriptMailboxF9TEditorId
/* 802419C4 0023E924  48 00 00 1C */	b lbl_802419E0
lbl_802419C8:
/* 802419C8 0023E928  A0 05 00 00 */	lhz r0, 0(r5)
/* 802419CC 0023E92C  7F C3 F3 78 */	mr r3, r30
/* 802419D0 0023E930  7F E6 FB 78 */	mr r6, r31
/* 802419D4 0023E934  38 A1 00 08 */	addi r5, r1, 8
/* 802419D8 0023E938  B0 01 00 08 */	sth r0, 8(r1)
/* 802419DC 0023E93C  4B E0 F7 81 */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
lbl_802419E0:
/* 802419E0 0023E940  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802419E4 0023E944  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802419E8 0023E948  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802419EC 0023E94C  7C 08 03 A6 */	mtlr r0
/* 802419F0 0023E950  38 21 00 30 */	addi r1, r1, 0x30
/* 802419F4 0023E954  4E 80 00 20 */	blr

.global __dt__18CScriptMemoryRelayFv
__dt__18CScriptMemoryRelayFv:
/* 802419F8 0023E958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802419FC 0023E95C  7C 08 02 A6 */	mflr r0
/* 80241A00 0023E960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80241A04 0023E964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80241A08 0023E968  7C 9F 23 78 */	mr r31, r4
/* 80241A0C 0023E96C  93 C1 00 08 */	stw r30, 8(r1)
/* 80241A10 0023E970  7C 7E 1B 79 */	or. r30, r3, r3
/* 80241A14 0023E974  41 82 00 28 */	beq lbl_80241A3C
/* 80241A18 0023E978  3C A0 80 3F */	lis r5, __vt__18CScriptMemoryRelay@ha
/* 80241A1C 0023E97C  38 80 00 00 */	li r4, 0
/* 80241A20 0023E980  38 05 86 E8 */	addi r0, r5, __vt__18CScriptMemoryRelay@l
/* 80241A24 0023E984  90 1E 00 00 */	stw r0, 0(r30)
/* 80241A28 0023E988  4B E0 F8 4D */	bl __dt__7CEntityFv
/* 80241A2C 0023E98C  7F E0 07 35 */	extsh. r0, r31
/* 80241A30 0023E990  40 81 00 0C */	ble lbl_80241A3C
/* 80241A34 0023E994  7F C3 F3 78 */	mr r3, r30
/* 80241A38 0023E998  48 0D 3E F9 */	bl Free__7CMemoryFPCv
lbl_80241A3C:
/* 80241A3C 0023E99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80241A40 0023E9A0  7F C3 F3 78 */	mr r3, r30
/* 80241A44 0023E9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80241A48 0023E9A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80241A4C 0023E9AC  7C 08 03 A6 */	mtlr r0
/* 80241A50 0023E9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80241A54 0023E9B4  4E 80 00 20 */	blr

.global "__ct__18CScriptMemoryRelayF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobbb"
"__ct__18CScriptMemoryRelayF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobbb":
/* 80241A58 0023E9B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80241A5C 0023E9BC  7C 08 02 A6 */	mflr r0
/* 80241A60 0023E9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80241A64 0023E9C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80241A68 0023E9C8  7D 3F 4B 78 */	mr r31, r9
/* 80241A6C 0023E9CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80241A70 0023E9D0  7D 1E 43 78 */	mr r30, r8
/* 80241A74 0023E9D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80241A78 0023E9D8  7C FD 3B 78 */	mr r29, r7
/* 80241A7C 0023E9DC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80241A80 0023E9E0  7C 7C 1B 78 */	mr r28, r3
/* 80241A84 0023E9E4  A0 04 00 00 */	lhz r0, 0(r4)
/* 80241A88 0023E9E8  7C A4 2B 78 */	mr r4, r5
/* 80241A8C 0023E9EC  7C C5 33 78 */	mr r5, r6
/* 80241A90 0023E9F0  38 C0 00 01 */	li r6, 1
/* 80241A94 0023E9F4  B0 01 00 08 */	sth r0, 8(r1)
/* 80241A98 0023E9F8  7C 87 23 78 */	mr r7, r4
/* 80241A9C 0023E9FC  38 81 00 08 */	addi r4, r1, 8
/* 80241AA0 0023EA00  4B E0 F8 85 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80241AA4 0023EA04  3C 60 80 3F */	lis r3, __vt__18CScriptMemoryRelay@ha
/* 80241AA8 0023EA08  38 03 86 E8 */	addi r0, r3, __vt__18CScriptMemoryRelay@l
/* 80241AAC 0023EA0C  90 1C 00 00 */	stw r0, 0(r28)
/* 80241AB0 0023EA10  7F 83 E3 78 */	mr r3, r28
/* 80241AB4 0023EA14  88 1C 00 34 */	lbz r0, 0x34(r28)
/* 80241AB8 0023EA18  53 A0 3E 30 */	rlwimi r0, r29, 7, 0x18, 0x18
/* 80241ABC 0023EA1C  98 1C 00 34 */	stb r0, 0x34(r28)
/* 80241AC0 0023EA20  88 1C 00 34 */	lbz r0, 0x34(r28)
/* 80241AC4 0023EA24  53 C0 36 72 */	rlwimi r0, r30, 6, 0x19, 0x19
/* 80241AC8 0023EA28  98 1C 00 34 */	stb r0, 0x34(r28)
/* 80241ACC 0023EA2C  88 1C 00 34 */	lbz r0, 0x34(r28)
/* 80241AD0 0023EA30  53 E0 2E B4 */	rlwimi r0, r31, 5, 0x1a, 0x1a
/* 80241AD4 0023EA34  98 1C 00 34 */	stb r0, 0x34(r28)
/* 80241AD8 0023EA38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80241ADC 0023EA3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80241AE0 0023EA40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80241AE4 0023EA44  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80241AE8 0023EA48  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80241AEC 0023EA4C  7C 08 03 A6 */	mtlr r0
/* 80241AF0 0023EA50  38 21 00 20 */	addi r1, r1, 0x20
/* 80241AF4 0023EA54  4E 80 00 20 */	blr

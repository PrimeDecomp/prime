.include "macros.inc"

.section .data
.balign 8

.global __vt__22CScriptWorldTeleporter
__vt__22CScriptWorldTeleporter:
	# ROM: 0x3E28A0
	.4byte 0
	.4byte 0
	.4byte __dt__22CScriptWorldTeleporterFv
	.4byte Accept__22CScriptWorldTeleporterFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__22CScriptWorldTeleporterF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFUc

.section .text, "ax"

.global StartTransition__22CScriptWorldTeleporterFR13CStateManager
StartTransition__22CScriptWorldTeleporterFR13CStateManager:
/* 801D689C 001D37FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D68A0 001D3800  7C 08 02 A6 */	mflr r0
/* 801D68A4 001D3804  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D68A8 001D3808  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801D68AC 001D380C  7C 7F 1B 78 */	mr r31, r3
/* 801D68B0 001D3810  88 A3 00 40 */	lbz r5, 0x40(r3)
/* 801D68B4 001D3814  54 A0 D7 FF */	rlwinm. r0, r5, 0x1a, 0x1f, 0x1f
/* 801D68B8 001D3818  40 82 00 DC */	bne lbl_801D6994
/* 801D68BC 001D381C  80 FF 00 3C */	lwz r7, 0x3c(r31)
/* 801D68C0 001D3820  80 64 08 C4 */	lwz r3, 0x8c4(r4)
/* 801D68C4 001D3824  2C 07 00 01 */	cmpwi r7, 1
/* 801D68C8 001D3828  80 63 00 00 */	lwz r3, 0(r3)
/* 801D68CC 001D382C  40 82 00 84 */	bne lbl_801D6950
/* 801D68D0 001D3830  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 801D68D4 001D3834  3C 06 00 01 */	addis r0, r6, 1
/* 801D68D8 001D3838  28 00 FF FF */	cmplwi r0, 0xffff
/* 801D68DC 001D383C  41 82 00 74 */	beq lbl_801D6950
/* 801D68E0 001D3840  81 5F 00 54 */	lwz r10, 0x54(r31)
/* 801D68E4 001D3844  3C 0A 00 01 */	addis r0, r10, 1
/* 801D68E8 001D3848  28 00 FF FF */	cmplwi r0, 0xffff
/* 801D68EC 001D384C  41 82 00 64 */	beq lbl_801D6950
/* 801D68F0 001D3850  80 FF 00 58 */	lwz r7, 0x58(r31)
/* 801D68F4 001D3854  38 00 00 01 */	li r0, 1
/* 801D68F8 001D3858  54 A9 CF FE */	rlwinm r9, r5, 0x19, 0x1f, 0x1f
/* 801D68FC 001D385C  38 81 00 08 */	addi r4, r1, 8
/* 801D6900 001D3860  90 C1 00 08 */	stw r6, 8(r1)
/* 801D6904 001D3864  38 DF 00 6C */	addi r6, r31, 0x6c
/* 801D6908 001D3868  39 1F 00 7C */	addi r8, r31, 0x7c
/* 801D690C 001D386C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801D6910 001D3870  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 801D6914 001D3874  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801D6918 001D3878  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801D691C 001D387C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801D6920 001D3880  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 801D6924 001D3884  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801D6928 001D3888  98 01 00 1C */	stb r0, 0x1c(r1)
/* 801D692C 001D388C  91 41 00 20 */	stw r10, 0x20(r1)
/* 801D6930 001D3890  80 BF 00 68 */	lwz r5, 0x68(r31)
/* 801D6934 001D3894  80 FF 00 78 */	lwz r7, 0x78(r31)
/* 801D6938 001D3898  48 03 42 71 */	bl EnableTransition__18CWorldTransManagerFRC8CAnimResUiRC9CVector3fUiRC9CVector3fb
/* 801D693C 001D389C  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 801D6940 001D38A0  38 60 00 01 */	li r3, 1
/* 801D6944 001D38A4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D6948 001D38A8  98 1F 00 40 */	stb r0, 0x40(r31)
/* 801D694C 001D38AC  48 00 00 48 */	b lbl_801D6994
lbl_801D6950:
/* 801D6950 001D38B0  2C 07 00 02 */	cmpwi r7, 2
/* 801D6954 001D38B4  40 82 00 3C */	bne lbl_801D6990
/* 801D6958 001D38B8  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 801D695C 001D38BC  38 C0 00 00 */	li r6, 0
/* 801D6960 001D38C0  80 9F 00 8C */	lwz r4, 0x8c(r31)
/* 801D6964 001D38C4  80 BF 00 90 */	lwz r5, 0x90(r31)
/* 801D6968 001D38C8  54 07 E7 FE */	rlwinm r7, r0, 0x1c, 0x1f, 0x1f
/* 801D696C 001D38CC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 801D6970 001D38D0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801D6974 001D38D4  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 801D6978 001D38D8  48 03 2C 79 */	bl EnableTransition__18CWorldTransManagerFiiibfff
/* 801D697C 001D38DC  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 801D6980 001D38E0  38 60 00 01 */	li r3, 1
/* 801D6984 001D38E4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D6988 001D38E8  98 1F 00 40 */	stb r0, 0x40(r31)
/* 801D698C 001D38EC  48 00 00 08 */	b lbl_801D6994
lbl_801D6990:
/* 801D6990 001D38F0  48 03 4A F9 */	bl DisableTransition__18CWorldTransManagerFv
lbl_801D6994:
/* 801D6994 001D38F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D6998 001D38F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801D699C 001D38FC  7C 08 03 A6 */	mtlr r0
/* 801D69A0 001D3900  38 21 00 30 */	addi r1, r1, 0x30
/* 801D69A4 001D3904  4E 80 00 20 */	blr

.global AcceptScriptMsg__22CScriptWorldTeleporterF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__22CScriptWorldTeleporterF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801D69A8 001D3908  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D69AC 001D390C  7C 08 02 A6 */	mflr r0
/* 801D69B0 001D3910  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D69B4 001D3914  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 801D69B8 001D3918  7C 7C 1B 78 */	mr r28, r3
/* 801D69BC 001D391C  7C 9D 23 78 */	mr r29, r4
/* 801D69C0 001D3920  7C BE 2B 78 */	mr r30, r5
/* 801D69C4 001D3924  7C DF 33 78 */	mr r31, r6
/* 801D69C8 001D3928  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801D69CC 001D392C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801D69D0 001D3930  41 82 01 2C */	beq lbl_801D6AFC
/* 801D69D4 001D3934  80 9F 08 C4 */	lwz r4, 0x8c4(r31)
/* 801D69D8 001D3938  2C 1D 00 0F */	cmpwi r29, 0xf
/* 801D69DC 001D393C  83 64 00 00 */	lwz r27, 0(r4)
/* 801D69E0 001D3940  41 82 00 FC */	beq lbl_801D6ADC
/* 801D69E4 001D3944  40 80 00 10 */	bge lbl_801D69F4
/* 801D69E8 001D3948  2C 1D 00 0D */	cmpwi r29, 0xd
/* 801D69EC 001D394C  41 82 00 14 */	beq lbl_801D6A00
/* 801D69F0 001D3950  48 00 01 0C */	b lbl_801D6AFC
lbl_801D69F4:
/* 801D69F4 001D3954  2C 1D 00 14 */	cmpwi r29, 0x14
/* 801D69F8 001D3958  41 82 00 BC */	beq lbl_801D6AB4
/* 801D69FC 001D395C  48 00 01 00 */	b lbl_801D6AFC
lbl_801D6A00:
/* 801D6A00 001D3960  80 7F 08 50 */	lwz r3, 0x850(r31)
/* 801D6A04 001D3964  38 80 00 01 */	li r4, 1
/* 801D6A08 001D3968  4B E7 F5 ED */	bl SetLoadPauseState__6CWorldFb
/* 801D6A0C 001D396C  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 801D6A10 001D3970  4B FF CF C1 */	bl CurrentWorldAssetId__10CGameStateCFv
/* 801D6A14 001D3974  7C 60 1B 78 */	mr r0, r3
/* 801D6A18 001D3978  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 801D6A1C 001D397C  80 9C 00 34 */	lwz r4, 0x34(r28)
/* 801D6A20 001D3980  7C 1A 03 78 */	mr r26, r0
/* 801D6A24 001D3984  4B FF CF 21 */	bl SetCurrentWorldId__10CGameStateFUi
/* 801D6A28 001D3988  80 6D A0 60 */	lwz r3, gpResourceFactory@sda21(r13)
/* 801D6A2C 001D398C  80 9C 00 34 */	lwz r4, 0x34(r28)
/* 801D6A30 001D3990  38 63 00 04 */	addi r3, r3, 4
/* 801D6A34 001D3994  48 16 52 99 */	bl GetResourceTypeById__10CResLoaderCFUi
/* 801D6A38 001D3998  3C 03 B2 B4 */	addis r0, r3, 0xb2b4
/* 801D6A3C 001D399C  28 00 56 4C */	cmplwi r0, 0x564c
/* 801D6A40 001D39A0  40 82 00 4C */	bne lbl_801D6A8C
/* 801D6A44 001D39A4  7F 83 E3 78 */	mr r3, r28
/* 801D6A48 001D39A8  7F E4 FB 78 */	mr r4, r31
/* 801D6A4C 001D39AC  4B FF FE 51 */	bl StartTransition__22CScriptWorldTeleporterFR13CStateManager
/* 801D6A50 001D39B0  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 801D6A54 001D39B4  80 9C 00 34 */	lwz r4, 0x34(r28)
/* 801D6A58 001D39B8  4B FF CE ED */	bl SetCurrentWorldId__10CGameStateFUi
/* 801D6A5C 001D39BC  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 801D6A60 001D39C0  4B FF CF 4D */	bl CurrentWorldState__10CGameStateFv
/* 801D6A64 001D39C4  80 9C 00 38 */	lwz r4, 0x38(r28)
/* 801D6A68 001D39C8  4B FF E2 D5 */	bl SetDesiredAreaAssetId__11CWorldStateFUi
/* 801D6A6C 001D39CC  80 8D A0 78 */	lwz r4, gpMain@sda21(r13)
/* 801D6A70 001D39D0  38 00 00 00 */	li r0, 0
/* 801D6A74 001D39D4  38 60 00 01 */	li r3, 1
/* 801D6A78 001D39D8  90 04 01 2C */	stw r0, 0x12c(r4)
/* 801D6A7C 001D39DC  88 1F 0F 94 */	lbz r0, 0xf94(r31)
/* 801D6A80 001D39E0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D6A84 001D39E4  98 1F 0F 94 */	stb r0, 0xf94(r31)
/* 801D6A88 001D39E8  48 00 00 74 */	b lbl_801D6AFC
lbl_801D6A8C:
/* 801D6A8C 001D39EC  88 1C 00 40 */	lbz r0, 0x40(r28)
/* 801D6A90 001D39F0  38 60 00 00 */	li r3, 0
/* 801D6A94 001D39F4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D6A98 001D39F8  7F 63 DB 78 */	mr r3, r27
/* 801D6A9C 001D39FC  98 1C 00 40 */	stb r0, 0x40(r28)
/* 801D6AA0 001D3A00  48 03 49 E9 */	bl DisableTransition__18CWorldTransManagerFv
/* 801D6AA4 001D3A04  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 801D6AA8 001D3A08  7F 44 D3 78 */	mr r4, r26
/* 801D6AAC 001D3A0C  4B FF CE 99 */	bl SetCurrentWorldId__10CGameStateFUi
/* 801D6AB0 001D3A10  48 00 00 4C */	b lbl_801D6AFC
lbl_801D6AB4:
/* 801D6AB4 001D3A14  7F E4 FB 78 */	mr r4, r31
/* 801D6AB8 001D3A18  4B FF FD E5 */	bl StartTransition__22CScriptWorldTeleporterFR13CStateManager
/* 801D6ABC 001D3A1C  A0 9C 00 88 */	lhz r4, 0x88(r28)
/* 801D6AC0 001D3A20  7F 63 DB 78 */	mr r3, r27
/* 801D6AC4 001D3A24  88 BC 00 8A */	lbz r5, 0x8a(r28)
/* 801D6AC8 001D3A28  88 DC 00 8B */	lbz r6, 0x8b(r28)
/* 801D6ACC 001D3A2C  48 03 2E 99 */	bl SetSfx__18CWorldTransManagerFUsUcUc
/* 801D6AD0 001D3A30  7F 63 DB 78 */	mr r3, r27
/* 801D6AD4 001D3A34  48 03 2E ED */	bl SfxStart__18CWorldTransManagerFv
/* 801D6AD8 001D3A38  48 00 00 24 */	b lbl_801D6AFC
lbl_801D6ADC:
/* 801D6ADC 001D3A3C  88 1C 00 40 */	lbz r0, 0x40(r28)
/* 801D6AE0 001D3A40  38 60 00 00 */	li r3, 0
/* 801D6AE4 001D3A44  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801D6AE8 001D3A48  7F 63 DB 78 */	mr r3, r27
/* 801D6AEC 001D3A4C  98 1C 00 40 */	stb r0, 0x40(r28)
/* 801D6AF0 001D3A50  48 03 49 99 */	bl DisableTransition__18CWorldTransManagerFv
/* 801D6AF4 001D3A54  7F 63 DB 78 */	mr r3, r27
/* 801D6AF8 001D3A58  48 03 2E 7D */	bl SfxStop__18CWorldTransManagerFv
lbl_801D6AFC:
/* 801D6AFC 001D3A5C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801D6B00 001D3A60  7F 83 E3 78 */	mr r3, r28
/* 801D6B04 001D3A64  7F A4 EB 78 */	mr r4, r29
/* 801D6B08 001D3A68  7F E6 FB 78 */	mr r6, r31
/* 801D6B0C 001D3A6C  B0 01 00 08 */	sth r0, 8(r1)
/* 801D6B10 001D3A70  38 A1 00 08 */	addi r5, r1, 8
/* 801D6B14 001D3A74  4B E7 A6 49 */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801D6B18 001D3A78  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801D6B1C 001D3A7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D6B20 001D3A80  7C 08 03 A6 */	mtlr r0
/* 801D6B24 001D3A84  38 21 00 30 */	addi r1, r1, 0x30
/* 801D6B28 001D3A88  4E 80 00 20 */	blr

.global Accept__22CScriptWorldTeleporterFR8IVisitor
Accept__22CScriptWorldTeleporterFR8IVisitor:
/* 801D6B2C 001D3A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D6B30 001D3A90  7C 08 02 A6 */	mflr r0
/* 801D6B34 001D3A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D6B38 001D3A98  7C 60 1B 78 */	mr r0, r3
/* 801D6B3C 001D3A9C  7C 83 23 78 */	mr r3, r4
/* 801D6B40 001D3AA0  81 84 00 00 */	lwz r12, 0(r4)
/* 801D6B44 001D3AA4  7C 04 03 78 */	mr r4, r0
/* 801D6B48 001D3AA8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D6B4C 001D3AAC  7D 89 03 A6 */	mtctr r12
/* 801D6B50 001D3AB0  4E 80 04 21 */	bctrl
/* 801D6B54 001D3AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D6B58 001D3AB8  7C 08 03 A6 */	mtlr r0
/* 801D6B5C 001D3ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 801D6B60 001D3AC0  4E 80 00 20 */	blr

.global __dt__22CScriptWorldTeleporterFv
__dt__22CScriptWorldTeleporterFv:
/* 801D6B64 001D3AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D6B68 001D3AC8  7C 08 02 A6 */	mflr r0
/* 801D6B6C 001D3ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D6B70 001D3AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D6B74 001D3AD4  7C 9F 23 78 */	mr r31, r4
/* 801D6B78 001D3AD8  93 C1 00 08 */	stw r30, 8(r1)
/* 801D6B7C 001D3ADC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801D6B80 001D3AE0  41 82 00 28 */	beq lbl_801D6BA8
/* 801D6B84 001D3AE4  3C A0 80 3E */	lis r5, __vt__22CScriptWorldTeleporter@ha
/* 801D6B88 001D3AE8  38 80 00 00 */	li r4, 0
/* 801D6B8C 001D3AEC  38 05 58 A0 */	addi r0, r5, __vt__22CScriptWorldTeleporter@l
/* 801D6B90 001D3AF0  90 1E 00 00 */	stw r0, 0(r30)
/* 801D6B94 001D3AF4  4B E7 A6 E1 */	bl __dt__7CEntityFv
/* 801D6B98 001D3AF8  7F E0 07 35 */	extsh. r0, r31
/* 801D6B9C 001D3AFC  40 81 00 0C */	ble lbl_801D6BA8
/* 801D6BA0 001D3B00  7F C3 F3 78 */	mr r3, r30
/* 801D6BA4 001D3B04  48 13 ED 8D */	bl Free__7CMemoryFPCv
lbl_801D6BA8:
/* 801D6BA8 001D3B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D6BAC 001D3B0C  7F C3 F3 78 */	mr r3, r30
/* 801D6BB0 001D3B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D6BB4 001D3B14  83 C1 00 08 */	lwz r30, 8(r1)
/* 801D6BB8 001D3B18  7C 08 03 A6 */	mtlr r0
/* 801D6BBC 001D3B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 801D6BC0 001D3B20  4E 80 00 20 */	blr

.global "__ct__22CScriptWorldTeleporterF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobUiUiUsUcUcUiUibfff"
"__ct__22CScriptWorldTeleporterF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobUiUiUsUcUcUiUibfff":
/* 801D6BC4 001D3B24  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801D6BC8 001D3B28  7C 08 02 A6 */	mflr r0
/* 801D6BCC 001D3B2C  90 01 00 74 */	stw r0, 0x74(r1)
/* 801D6BD0 001D3B30  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801D6BD4 001D3B34  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801D6BD8 001D3B38  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801D6BDC 001D3B3C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801D6BE0 001D3B40  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801D6BE4 001D3B44  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 801D6BE8 001D3B48  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 801D6BEC 001D3B4C  A0 04 00 00 */	lhz r0, 0(r4)
/* 801D6BF0 001D3B50  7C A4 2B 78 */	mr r4, r5
/* 801D6BF4 001D3B54  FF A0 08 90 */	fmr f29, f1
/* 801D6BF8 001D3B58  7C C5 33 78 */	mr r5, r6
/* 801D6BFC 001D3B5C  FF C0 10 90 */	fmr f30, f2
/* 801D6C00 001D3B60  B0 01 00 08 */	sth r0, 8(r1)
/* 801D6C04 001D3B64  7C E6 3B 78 */	mr r6, r7
/* 801D6C08 001D3B68  7C 87 23 78 */	mr r7, r4
/* 801D6C0C 001D3B6C  FF E0 18 90 */	fmr f31, f3
/* 801D6C10 001D3B70  8B 61 00 7B */	lbz r27, 0x7b(r1)
/* 801D6C14 001D3B74  8B 81 00 7F */	lbz r28, 0x7f(r1)
/* 801D6C18 001D3B78  7C 77 1B 78 */	mr r23, r3
/* 801D6C1C 001D3B7C  83 A1 00 80 */	lwz r29, 0x80(r1)
/* 801D6C20 001D3B80  7D 18 43 78 */	mr r24, r8
/* 801D6C24 001D3B84  83 C1 00 84 */	lwz r30, 0x84(r1)
/* 801D6C28 001D3B88  7D 39 4B 78 */	mr r25, r9
/* 801D6C2C 001D3B8C  8B E1 00 8B */	lbz r31, 0x8b(r1)
/* 801D6C30 001D3B90  7D 5A 53 78 */	mr r26, r10
/* 801D6C34 001D3B94  38 81 00 08 */	addi r4, r1, 8
/* 801D6C38 001D3B98  4B E7 A6 ED */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801D6C3C 001D3B9C  3C 80 80 3E */	lis r4, __vt__22CScriptWorldTeleporter@ha
/* 801D6C40 001D3BA0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801D6C44 001D3BA4  38 04 58 A0 */	addi r0, r4, __vt__22CScriptWorldTeleporter@l
/* 801D6C48 001D3BA8  38 A0 00 02 */	li r5, 2
/* 801D6C4C 001D3BAC  90 17 00 00 */	stw r0, 0(r23)
/* 801D6C50 001D3BB0  38 C0 00 00 */	li r6, 0
/* 801D6C54 001D3BB4  38 00 FF FF */	li r0, -1
/* 801D6C58 001D3BB8  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 801D6C5C 001D3BBC  93 17 00 34 */	stw r24, 0x34(r23)
/* 801D6C60 001D3BC0  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 801D6C64 001D3BC4  93 37 00 38 */	stw r25, 0x38(r23)
/* 801D6C68 001D3BC8  90 B7 00 3C */	stw r5, 0x3c(r23)
/* 801D6C6C 001D3BCC  88 B7 00 40 */	lbz r5, 0x40(r23)
/* 801D6C70 001D3BD0  50 C5 3E 30 */	rlwimi r5, r6, 7, 0x18, 0x18
/* 801D6C74 001D3BD4  98 B7 00 40 */	stb r5, 0x40(r23)
/* 801D6C78 001D3BD8  88 B7 00 40 */	lbz r5, 0x40(r23)
/* 801D6C7C 001D3BDC  50 C5 36 72 */	rlwimi r5, r6, 6, 0x19, 0x19
/* 801D6C80 001D3BE0  98 B7 00 40 */	stb r5, 0x40(r23)
/* 801D6C84 001D3BE4  88 B7 00 40 */	lbz r5, 0x40(r23)
/* 801D6C88 001D3BE8  53 E5 26 F6 */	rlwimi r5, r31, 4, 0x1b, 0x1b
/* 801D6C8C 001D3BEC  98 B7 00 40 */	stb r5, 0x40(r23)
/* 801D6C90 001D3BF0  D3 B7 00 44 */	stfs f29, 0x44(r23)
/* 801D6C94 001D3BF4  D3 D7 00 48 */	stfs f30, 0x48(r23)
/* 801D6C98 001D3BF8  D3 F7 00 4C */	stfs f31, 0x4c(r23)
/* 801D6C9C 001D3BFC  90 17 00 50 */	stw r0, 0x50(r23)
/* 801D6CA0 001D3C00  90 17 00 54 */	stw r0, 0x54(r23)
/* 801D6CA4 001D3C04  90 D7 00 58 */	stw r6, 0x58(r23)
/* 801D6CA8 001D3C08  C0 04 00 00 */	lfs f0, 0(r4)
/* 801D6CAC 001D3C0C  D0 17 00 5C */	stfs f0, 0x5c(r23)
/* 801D6CB0 001D3C10  C0 04 00 04 */	lfs f0, 4(r4)
/* 801D6CB4 001D3C14  D0 17 00 60 */	stfs f0, 0x60(r23)
/* 801D6CB8 001D3C18  C0 04 00 08 */	lfs f0, 8(r4)
/* 801D6CBC 001D3C1C  D0 17 00 64 */	stfs f0, 0x64(r23)
/* 801D6CC0 001D3C20  90 17 00 68 */	stw r0, 0x68(r23)
/* 801D6CC4 001D3C24  C0 04 00 00 */	lfs f0, 0(r4)
/* 801D6CC8 001D3C28  D0 17 00 6C */	stfs f0, 0x6c(r23)
/* 801D6CCC 001D3C2C  C0 04 00 04 */	lfs f0, 4(r4)
/* 801D6CD0 001D3C30  D0 17 00 70 */	stfs f0, 0x70(r23)
/* 801D6CD4 001D3C34  C0 04 00 08 */	lfs f0, 8(r4)
/* 801D6CD8 001D3C38  D0 17 00 74 */	stfs f0, 0x74(r23)
/* 801D6CDC 001D3C3C  90 17 00 78 */	stw r0, 0x78(r23)
/* 801D6CE0 001D3C40  C0 04 00 00 */	lfs f0, 0(r4)
/* 801D6CE4 001D3C44  D0 17 00 7C */	stfs f0, 0x7c(r23)
/* 801D6CE8 001D3C48  C0 04 00 04 */	lfs f0, 4(r4)
/* 801D6CEC 001D3C4C  D0 17 00 80 */	stfs f0, 0x80(r23)
/* 801D6CF0 001D3C50  C0 04 00 08 */	lfs f0, 8(r4)
/* 801D6CF4 001D3C54  D0 17 00 84 */	stfs f0, 0x84(r23)
/* 801D6CF8 001D3C58  48 11 1C B9 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801D6CFC 001D3C5C  B0 77 00 88 */	sth r3, 0x88(r23)
/* 801D6D00 001D3C60  7E E3 BB 78 */	mr r3, r23
/* 801D6D04 001D3C64  9B 77 00 8A */	stb r27, 0x8a(r23)
/* 801D6D08 001D3C68  9B 97 00 8B */	stb r28, 0x8b(r23)
/* 801D6D0C 001D3C6C  93 B7 00 8C */	stw r29, 0x8c(r23)
/* 801D6D10 001D3C70  93 D7 00 90 */	stw r30, 0x90(r23)
/* 801D6D14 001D3C74  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801D6D18 001D3C78  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801D6D1C 001D3C7C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801D6D20 001D3C80  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801D6D24 001D3C84  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 801D6D28 001D3C88  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801D6D2C 001D3C8C  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 801D6D30 001D3C90  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801D6D34 001D3C94  7C 08 03 A6 */	mtlr r0
/* 801D6D38 001D3C98  38 21 00 70 */	addi r1, r1, 0x70
/* 801D6D3C 001D3C9C  4E 80 00 20 */	blr

.global "__ct__22CScriptWorldTeleporterF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobUiUiUiUiUiRC9CVector3fUiRC9CVector3fUiRC9CVector3fbUsUcUc"
"__ct__22CScriptWorldTeleporterF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobUiUiUiUiUiRC9CVector3fUiRC9CVector3fUiRC9CVector3fbUsUcUc":
/* 801D6D40 001D3CA0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801D6D44 001D3CA4  7C 08 02 A6 */	mflr r0
/* 801D6D48 001D3CA8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801D6D4C 001D3CAC  BE 21 00 14 */	stmw r17, 0x14(r1)
/* 801D6D50 001D3CB0  7C 78 1B 78 */	mr r24, r3
/* 801D6D54 001D3CB4  83 81 00 58 */	lwz r28, 0x58(r1)
/* 801D6D58 001D3CB8  7D 19 43 78 */	mr r25, r8
/* 801D6D5C 001D3CBC  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 801D6D60 001D3CC0  7D 3A 4B 78 */	mr r26, r9
/* 801D6D64 001D3CC4  83 C1 00 60 */	lwz r30, 0x60(r1)
/* 801D6D68 001D3CC8  7D 5B 53 78 */	mr r27, r10
/* 801D6D6C 001D3CCC  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 801D6D70 001D3CD0  82 21 00 68 */	lwz r17, 0x68(r1)
/* 801D6D74 001D3CD4  82 41 00 6C */	lwz r18, 0x6c(r1)
/* 801D6D78 001D3CD8  82 61 00 70 */	lwz r19, 0x70(r1)
/* 801D6D7C 001D3CDC  8A 81 00 77 */	lbz r20, 0x77(r1)
/* 801D6D80 001D3CE0  A2 A1 00 7A */	lhz r21, 0x7a(r1)
/* 801D6D84 001D3CE4  8A C1 00 7F */	lbz r22, 0x7f(r1)
/* 801D6D88 001D3CE8  8A E1 00 83 */	lbz r23, 0x83(r1)
/* 801D6D8C 001D3CEC  A0 04 00 00 */	lhz r0, 0(r4)
/* 801D6D90 001D3CF0  7C A4 2B 78 */	mr r4, r5
/* 801D6D94 001D3CF4  7C C5 33 78 */	mr r5, r6
/* 801D6D98 001D3CF8  7C E6 3B 78 */	mr r6, r7
/* 801D6D9C 001D3CFC  B0 01 00 08 */	sth r0, 8(r1)
/* 801D6DA0 001D3D00  7C 87 23 78 */	mr r7, r4
/* 801D6DA4 001D3D04  38 81 00 08 */	addi r4, r1, 8
/* 801D6DA8 001D3D08  4B E7 A5 7D */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801D6DAC 001D3D0C  3C 60 80 3E */	lis r3, __vt__22CScriptWorldTeleporter@ha
/* 801D6DB0 001D3D10  38 00 00 01 */	li r0, 1
/* 801D6DB4 001D3D14  38 63 58 A0 */	addi r3, r3, __vt__22CScriptWorldTeleporter@l
/* 801D6DB8 001D3D18  38 80 00 00 */	li r4, 0
/* 801D6DBC 001D3D1C  90 78 00 00 */	stw r3, 0(r24)
/* 801D6DC0 001D3D20  7E A3 AB 78 */	mr r3, r21
/* 801D6DC4 001D3D24  C0 42 AC 40 */	lfs f2, lbl_805AC960@sda21(r2)
/* 801D6DC8 001D3D28  93 38 00 34 */	stw r25, 0x34(r24)
/* 801D6DCC 001D3D2C  C0 22 AC 44 */	lfs f1, lbl_805AC964@sda21(r2)
/* 801D6DD0 001D3D30  93 58 00 38 */	stw r26, 0x38(r24)
/* 801D6DD4 001D3D34  C0 02 AC 48 */	lfs f0, lbl_805AC968@sda21(r2)
/* 801D6DD8 001D3D38  90 18 00 3C */	stw r0, 0x3c(r24)
/* 801D6DDC 001D3D3C  88 18 00 40 */	lbz r0, 0x40(r24)
/* 801D6DE0 001D3D40  52 80 3E 30 */	rlwimi r0, r20, 7, 0x18, 0x18
/* 801D6DE4 001D3D44  98 18 00 40 */	stb r0, 0x40(r24)
/* 801D6DE8 001D3D48  88 18 00 40 */	lbz r0, 0x40(r24)
/* 801D6DEC 001D3D4C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801D6DF0 001D3D50  98 18 00 40 */	stb r0, 0x40(r24)
/* 801D6DF4 001D3D54  88 18 00 40 */	lbz r0, 0x40(r24)
/* 801D6DF8 001D3D58  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 801D6DFC 001D3D5C  98 18 00 40 */	stb r0, 0x40(r24)
/* 801D6E00 001D3D60  D0 58 00 44 */	stfs f2, 0x44(r24)
/* 801D6E04 001D3D64  D0 38 00 48 */	stfs f1, 0x48(r24)
/* 801D6E08 001D3D68  D0 18 00 4C */	stfs f0, 0x4c(r24)
/* 801D6E0C 001D3D6C  93 78 00 50 */	stw r27, 0x50(r24)
/* 801D6E10 001D3D70  93 98 00 54 */	stw r28, 0x54(r24)
/* 801D6E14 001D3D74  93 B8 00 58 */	stw r29, 0x58(r24)
/* 801D6E18 001D3D78  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801D6E1C 001D3D7C  D0 18 00 5C */	stfs f0, 0x5c(r24)
/* 801D6E20 001D3D80  C0 1E 00 04 */	lfs f0, 4(r30)
/* 801D6E24 001D3D84  D0 18 00 60 */	stfs f0, 0x60(r24)
/* 801D6E28 001D3D88  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801D6E2C 001D3D8C  D0 18 00 64 */	stfs f0, 0x64(r24)
/* 801D6E30 001D3D90  93 F8 00 68 */	stw r31, 0x68(r24)
/* 801D6E34 001D3D94  C0 11 00 00 */	lfs f0, 0(r17)
/* 801D6E38 001D3D98  D0 18 00 6C */	stfs f0, 0x6c(r24)
/* 801D6E3C 001D3D9C  C0 11 00 04 */	lfs f0, 4(r17)
/* 801D6E40 001D3DA0  D0 18 00 70 */	stfs f0, 0x70(r24)
/* 801D6E44 001D3DA4  C0 11 00 08 */	lfs f0, 8(r17)
/* 801D6E48 001D3DA8  D0 18 00 74 */	stfs f0, 0x74(r24)
/* 801D6E4C 001D3DAC  92 58 00 78 */	stw r18, 0x78(r24)
/* 801D6E50 001D3DB0  C0 13 00 00 */	lfs f0, 0(r19)
/* 801D6E54 001D3DB4  D0 18 00 7C */	stfs f0, 0x7c(r24)
/* 801D6E58 001D3DB8  C0 13 00 04 */	lfs f0, 4(r19)
/* 801D6E5C 001D3DBC  D0 18 00 80 */	stfs f0, 0x80(r24)
/* 801D6E60 001D3DC0  C0 13 00 08 */	lfs f0, 8(r19)
/* 801D6E64 001D3DC4  D0 18 00 84 */	stfs f0, 0x84(r24)
/* 801D6E68 001D3DC8  48 11 1B 49 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801D6E6C 001D3DCC  B0 78 00 88 */	sth r3, 0x88(r24)
/* 801D6E70 001D3DD0  7F 03 C3 78 */	mr r3, r24
/* 801D6E74 001D3DD4  9A D8 00 8A */	stb r22, 0x8a(r24)
/* 801D6E78 001D3DD8  9A F8 00 8B */	stb r23, 0x8b(r24)
/* 801D6E7C 001D3DDC  BA 21 00 14 */	lmw r17, 0x14(r1)
/* 801D6E80 001D3DE0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801D6E84 001D3DE4  7C 08 03 A6 */	mtlr r0
/* 801D6E88 001D3DE8  38 21 00 50 */	addi r1, r1, 0x50
/* 801D6E8C 001D3DEC  4E 80 00 20 */	blr

.global "__ct__22CScriptWorldTeleporterF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobUiUi"
"__ct__22CScriptWorldTeleporterF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobUiUi":
/* 801D6E90 001D3DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D6E94 001D3DF4  7C 08 02 A6 */	mflr r0
/* 801D6E98 001D3DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D6E9C 001D3DFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D6EA0 001D3E00  7D 3F 4B 78 */	mr r31, r9
/* 801D6EA4 001D3E04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D6EA8 001D3E08  7D 1E 43 78 */	mr r30, r8
/* 801D6EAC 001D3E0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801D6EB0 001D3E10  7C 7D 1B 78 */	mr r29, r3
/* 801D6EB4 001D3E14  A0 04 00 00 */	lhz r0, 0(r4)
/* 801D6EB8 001D3E18  7C A4 2B 78 */	mr r4, r5
/* 801D6EBC 001D3E1C  7C C5 33 78 */	mr r5, r6
/* 801D6EC0 001D3E20  7C E6 3B 78 */	mr r6, r7
/* 801D6EC4 001D3E24  B0 01 00 08 */	sth r0, 8(r1)
/* 801D6EC8 001D3E28  7C 87 23 78 */	mr r7, r4
/* 801D6ECC 001D3E2C  38 81 00 08 */	addi r4, r1, 8
/* 801D6ED0 001D3E30  4B E7 A4 55 */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801D6ED4 001D3E34  3C 80 80 3E */	lis r4, __vt__22CScriptWorldTeleporter@ha
/* 801D6ED8 001D3E38  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801D6EDC 001D3E3C  38 04 58 A0 */	addi r0, r4, __vt__22CScriptWorldTeleporter@l
/* 801D6EE0 001D3E40  38 E0 00 00 */	li r7, 0
/* 801D6EE4 001D3E44  90 1D 00 00 */	stw r0, 0(r29)
/* 801D6EE8 001D3E48  38 A0 FF FF */	li r5, -1
/* 801D6EEC 001D3E4C  C0 42 AC 40 */	lfs f2, lbl_805AC960@sda21(r2)
/* 801D6EF0 001D3E50  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 801D6EF4 001D3E54  93 DD 00 34 */	stw r30, 0x34(r29)
/* 801D6EF8 001D3E58  7F A3 EB 78 */	mr r3, r29
/* 801D6EFC 001D3E5C  C0 22 AC 44 */	lfs f1, lbl_805AC964@sda21(r2)
/* 801D6F00 001D3E60  93 FD 00 38 */	stw r31, 0x38(r29)
/* 801D6F04 001D3E64  C0 02 AC 48 */	lfs f0, lbl_805AC968@sda21(r2)
/* 801D6F08 001D3E68  90 FD 00 3C */	stw r7, 0x3c(r29)
/* 801D6F0C 001D3E6C  A0 02 C5 FC */	lhz r0, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 801D6F10 001D3E70  88 DD 00 40 */	lbz r6, 0x40(r29)
/* 801D6F14 001D3E74  50 E6 3E 30 */	rlwimi r6, r7, 7, 0x18, 0x18
/* 801D6F18 001D3E78  98 DD 00 40 */	stb r6, 0x40(r29)
/* 801D6F1C 001D3E7C  88 DD 00 40 */	lbz r6, 0x40(r29)
/* 801D6F20 001D3E80  50 E6 36 72 */	rlwimi r6, r7, 6, 0x19, 0x19
/* 801D6F24 001D3E84  98 DD 00 40 */	stb r6, 0x40(r29)
/* 801D6F28 001D3E88  88 DD 00 40 */	lbz r6, 0x40(r29)
/* 801D6F2C 001D3E8C  50 E6 26 F6 */	rlwimi r6, r7, 4, 0x1b, 0x1b
/* 801D6F30 001D3E90  98 DD 00 40 */	stb r6, 0x40(r29)
/* 801D6F34 001D3E94  D0 5D 00 44 */	stfs f2, 0x44(r29)
/* 801D6F38 001D3E98  D0 3D 00 48 */	stfs f1, 0x48(r29)
/* 801D6F3C 001D3E9C  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 801D6F40 001D3EA0  90 BD 00 50 */	stw r5, 0x50(r29)
/* 801D6F44 001D3EA4  90 BD 00 54 */	stw r5, 0x54(r29)
/* 801D6F48 001D3EA8  90 FD 00 58 */	stw r7, 0x58(r29)
/* 801D6F4C 001D3EAC  C0 04 00 00 */	lfs f0, 0(r4)
/* 801D6F50 001D3EB0  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 801D6F54 001D3EB4  C0 04 00 04 */	lfs f0, 4(r4)
/* 801D6F58 001D3EB8  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 801D6F5C 001D3EBC  C0 04 00 08 */	lfs f0, 8(r4)
/* 801D6F60 001D3EC0  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 801D6F64 001D3EC4  90 BD 00 68 */	stw r5, 0x68(r29)
/* 801D6F68 001D3EC8  C0 04 00 00 */	lfs f0, 0(r4)
/* 801D6F6C 001D3ECC  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 801D6F70 001D3ED0  C0 04 00 04 */	lfs f0, 4(r4)
/* 801D6F74 001D3ED4  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 801D6F78 001D3ED8  C0 04 00 08 */	lfs f0, 8(r4)
/* 801D6F7C 001D3EDC  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 801D6F80 001D3EE0  90 BD 00 78 */	stw r5, 0x78(r29)
/* 801D6F84 001D3EE4  C0 04 00 00 */	lfs f0, 0(r4)
/* 801D6F88 001D3EE8  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 801D6F8C 001D3EEC  C0 04 00 04 */	lfs f0, 4(r4)
/* 801D6F90 001D3EF0  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 801D6F94 001D3EF4  C0 04 00 08 */	lfs f0, 8(r4)
/* 801D6F98 001D3EF8  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 801D6F9C 001D3EFC  B0 1D 00 88 */	sth r0, 0x88(r29)
/* 801D6FA0 001D3F00  98 FD 00 8A */	stb r7, 0x8a(r29)
/* 801D6FA4 001D3F04  98 FD 00 8B */	stb r7, 0x8b(r29)
/* 801D6FA8 001D3F08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D6FAC 001D3F0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D6FB0 001D3F10  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801D6FB4 001D3F14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D6FB8 001D3F18  7C 08 03 A6 */	mtlr r0
/* 801D6FBC 001D3F1C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D6FC0 001D3F20  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AC960
lbl_805AC960:
	# ROM: 0x3F9200
	.float 0.1

.global lbl_805AC964
lbl_805AC964:
	# ROM: 0x3F9204
	.float 8.0

.global lbl_805AC968
lbl_805AC968:
	# ROM: 0x3F9208
	.4byte 0
	.4byte 0

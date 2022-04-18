.include "macros.inc"

.section .data

.global lbl_803ED240
lbl_803ED240:
	# ROM: 0x3EA240
	.4byte 0
	.4byte 0
	.4byte __dt__20CAnimTreeSingleChildFv
	.4byte IsCAnimTreeNode__13CAnimTreeNodeCFv
	.4byte VAdvanceView__20CAnimTreeSingleChildFRC13CCharAnimTime
	.4byte VGetTimeRemaining__20CAnimTreeSingleChildCFv
	.4byte 0
	.4byte VHasOffset__20CAnimTreeSingleChildCFRC6CSegId
	.4byte VGetOffset__20CAnimTreeSingleChildCFRC6CSegId
	.4byte VGetRotation__20CAnimTreeSingleChildCFRC6CSegId
	.4byte VGetBoolPOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
	.4byte VGetInt32POIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP13CInt32POINodeUiUii
	.4byte VGetParticlePOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
	.4byte VGetSoundPOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
	.4byte VGetBoolPOIState__20CAnimTreeSingleChildCFPCc
	.4byte VGetInt32POIState__20CAnimTreeSingleChildCFPCc
	.4byte VGetParticlePOIState__20CAnimTreeSingleChildCFPCc
	.4byte VGetSegStatementSet__20CAnimTreeSingleChildCFRC10CSegIdListR16CSegStatementSet
	.4byte VGetSegStatementSet__20CAnimTreeSingleChildCFRC10CSegIdListR16CSegStatementSetRC13CCharAnimTime
	.4byte 0
	.4byte VSimplified__11IAnimReaderFv
	.4byte VSetPhase__20CAnimTreeSingleChildFf
	.4byte VGetAdvancementResults__20CAnimTreeSingleChildCFRC13CCharAnimTimeRC13CCharAnimTime
	.4byte Depth__20CAnimTreeSingleChildCFv
	.4byte 0
	.4byte VGetNumChildren__20CAnimTreeSingleChildCFv
	.4byte 0
	.4byte "VGetWeightedReaders__20CAnimTreeSingleChildFfRQ24rstl48reserved_vector<Q24rstl22pair<f,P11IAnimReader>>"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global "VGetWeightedReaders__20CAnimTreeSingleChildFfRQ24rstl48reserved_vector<Q24rstl22pair<f,P11IAnimReader>>"
"VGetWeightedReaders__20CAnimTreeSingleChildFfRQ24rstl48reserved_vector<Q24rstl22pair<f,P11IAnimReader>>":
/* 802F3D1C 002F0C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3D20 002F0C80  7C 08 02 A6 */	mflr r0
/* 802F3D24 002F0C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3D28 002F0C88  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3D2C 002F0C8C  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3D30 002F0C90  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3D34 002F0C94  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 802F3D38 002F0C98  7D 89 03 A6 */	mtctr r12
/* 802F3D3C 002F0C9C  4E 80 04 21 */	bctrl 
/* 802F3D40 002F0CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3D44 002F0CA4  7C 08 03 A6 */	mtlr r0
/* 802F3D48 002F0CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3D4C 002F0CAC  4E 80 00 20 */	blr 

.global VGetAdvancementResults__20CAnimTreeSingleChildCFRC13CCharAnimTimeRC13CCharAnimTime
VGetAdvancementResults__20CAnimTreeSingleChildCFRC13CCharAnimTimeRC13CCharAnimTime:
/* 802F3D50 002F0CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3D54 002F0CB4  7C 08 02 A6 */	mflr r0
/* 802F3D58 002F0CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3D5C 002F0CBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3D60 002F0CC0  7C 7F 1B 78 */	mr r31, r3
/* 802F3D64 002F0CC4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F3D68 002F0CC8  80 84 00 00 */	lwz r4, 0(r4)
/* 802F3D6C 002F0CCC  81 84 00 00 */	lwz r12, 0(r4)
/* 802F3D70 002F0CD0  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802F3D74 002F0CD4  7D 89 03 A6 */	mtctr r12
/* 802F3D78 002F0CD8  4E 80 04 21 */	bctrl 
/* 802F3D7C 002F0CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3D80 002F0CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F3D84 002F0CE4  7C 08 03 A6 */	mtlr r0
/* 802F3D88 002F0CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3D8C 002F0CEC  4E 80 00 20 */	blr 

.global VSetPhase__20CAnimTreeSingleChildFf
VSetPhase__20CAnimTreeSingleChildFf:
/* 802F3D90 002F0CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3D94 002F0CF4  7C 08 02 A6 */	mflr r0
/* 802F3D98 002F0CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3D9C 002F0CFC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3DA0 002F0D00  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3DA4 002F0D04  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3DA8 002F0D08  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 802F3DAC 002F0D0C  7D 89 03 A6 */	mtctr r12
/* 802F3DB0 002F0D10  4E 80 04 21 */	bctrl 
/* 802F3DB4 002F0D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3DB8 002F0D18  7C 08 03 A6 */	mtlr r0
/* 802F3DBC 002F0D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3DC0 002F0D20  4E 80 00 20 */	blr 

.global VGetNumChildren__20CAnimTreeSingleChildCFv
VGetNumChildren__20CAnimTreeSingleChildCFv:
/* 802F3DC4 002F0D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3DC8 002F0D28  7C 08 02 A6 */	mflr r0
/* 802F3DCC 002F0D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3DD0 002F0D30  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3DD4 002F0D34  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3DD8 002F0D38  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3DDC 002F0D3C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 802F3DE0 002F0D40  7D 89 03 A6 */	mtctr r12
/* 802F3DE4 002F0D44  4E 80 04 21 */	bctrl 
/* 802F3DE8 002F0D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3DEC 002F0D4C  38 63 00 01 */	addi r3, r3, 1
/* 802F3DF0 002F0D50  7C 08 03 A6 */	mtlr r0
/* 802F3DF4 002F0D54  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3DF8 002F0D58  4E 80 00 20 */	blr 

.global VGetParticlePOIState__20CAnimTreeSingleChildCFPCc
VGetParticlePOIState__20CAnimTreeSingleChildCFPCc:
/* 802F3DFC 002F0D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3E00 002F0D60  7C 08 02 A6 */	mflr r0
/* 802F3E04 002F0D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3E08 002F0D68  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3E0C 002F0D6C  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3E10 002F0D70  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3E14 002F0D74  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802F3E18 002F0D78  7D 89 03 A6 */	mtctr r12
/* 802F3E1C 002F0D7C  4E 80 04 21 */	bctrl 
/* 802F3E20 002F0D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3E24 002F0D84  7C 08 03 A6 */	mtlr r0
/* 802F3E28 002F0D88  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3E2C 002F0D8C  4E 80 00 20 */	blr 

.global VGetInt32POIState__20CAnimTreeSingleChildCFPCc
VGetInt32POIState__20CAnimTreeSingleChildCFPCc:
/* 802F3E30 002F0D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3E34 002F0D94  7C 08 02 A6 */	mflr r0
/* 802F3E38 002F0D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3E3C 002F0D9C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3E40 002F0DA0  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3E44 002F0DA4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3E48 002F0DA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802F3E4C 002F0DAC  7D 89 03 A6 */	mtctr r12
/* 802F3E50 002F0DB0  4E 80 04 21 */	bctrl 
/* 802F3E54 002F0DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3E58 002F0DB8  7C 08 03 A6 */	mtlr r0
/* 802F3E5C 002F0DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3E60 002F0DC0  4E 80 00 20 */	blr 

.global VGetBoolPOIState__20CAnimTreeSingleChildCFPCc
VGetBoolPOIState__20CAnimTreeSingleChildCFPCc:
/* 802F3E64 002F0DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3E68 002F0DC8  7C 08 02 A6 */	mflr r0
/* 802F3E6C 002F0DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3E70 002F0DD0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3E74 002F0DD4  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3E78 002F0DD8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3E7C 002F0DDC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802F3E80 002F0DE0  7D 89 03 A6 */	mtctr r12
/* 802F3E84 002F0DE4  4E 80 04 21 */	bctrl 
/* 802F3E88 002F0DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3E8C 002F0DEC  7C 08 03 A6 */	mtlr r0
/* 802F3E90 002F0DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3E94 002F0DF4  4E 80 00 20 */	blr 

.global VGetSoundPOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
VGetSoundPOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP13CSoundPOINodeUiUii:
/* 802F3E98 002F0DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3E9C 002F0DFC  7C 08 02 A6 */	mflr r0
/* 802F3EA0 002F0E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3EA4 002F0E04  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3EA8 002F0E08  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3EAC 002F0E0C  48 00 9D D9 */	bl GetSoundPOIList__11IAnimReaderCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
/* 802F3EB0 002F0E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3EB4 002F0E14  7C 08 03 A6 */	mtlr r0
/* 802F3EB8 002F0E18  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3EBC 002F0E1C  4E 80 00 20 */	blr 

.global VGetParticlePOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
VGetParticlePOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP16CParticlePOINodeUiUii:
/* 802F3EC0 002F0E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3EC4 002F0E24  7C 08 02 A6 */	mflr r0
/* 802F3EC8 002F0E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3ECC 002F0E2C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3ED0 002F0E30  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3ED4 002F0E34  48 00 9E 2D */	bl GetParticlePOIList__11IAnimReaderCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
/* 802F3ED8 002F0E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3EDC 002F0E3C  7C 08 03 A6 */	mtlr r0
/* 802F3EE0 002F0E40  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3EE4 002F0E44  4E 80 00 20 */	blr 

.global VGetInt32POIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP13CInt32POINodeUiUii
VGetInt32POIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP13CInt32POINodeUiUii:
/* 802F3EE8 002F0E48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3EEC 002F0E4C  7C 08 02 A6 */	mflr r0
/* 802F3EF0 002F0E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3EF4 002F0E54  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3EF8 002F0E58  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3EFC 002F0E5C  48 00 9E 81 */	bl GetInt32POIList__11IAnimReaderCFRC13CCharAnimTimeP13CInt32POINodeUiUii
/* 802F3F00 002F0E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3F04 002F0E64  7C 08 03 A6 */	mtlr r0
/* 802F3F08 002F0E68  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3F0C 002F0E6C  4E 80 00 20 */	blr 

.global VGetBoolPOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
VGetBoolPOIList__20CAnimTreeSingleChildCFRC13CCharAnimTimeP12CBoolPOINodeUiUii:
/* 802F3F10 002F0E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3F14 002F0E74  7C 08 02 A6 */	mflr r0
/* 802F3F18 002F0E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3F1C 002F0E7C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3F20 002F0E80  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3F24 002F0E84  48 00 9E D5 */	bl GetBoolPOIList__11IAnimReaderCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
/* 802F3F28 002F0E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3F2C 002F0E8C  7C 08 03 A6 */	mtlr r0
/* 802F3F30 002F0E90  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3F34 002F0E94  4E 80 00 20 */	blr 

.global VGetSegStatementSet__20CAnimTreeSingleChildCFRC10CSegIdListR16CSegStatementSetRC13CCharAnimTime
VGetSegStatementSet__20CAnimTreeSingleChildCFRC10CSegIdListR16CSegStatementSetRC13CCharAnimTime:
/* 802F3F38 002F0E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3F3C 002F0E9C  7C 08 02 A6 */	mflr r0
/* 802F3F40 002F0EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3F44 002F0EA4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3F48 002F0EA8  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3F4C 002F0EAC  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3F50 002F0EB0  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802F3F54 002F0EB4  7D 89 03 A6 */	mtctr r12
/* 802F3F58 002F0EB8  4E 80 04 21 */	bctrl 
/* 802F3F5C 002F0EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3F60 002F0EC0  7C 08 03 A6 */	mtlr r0
/* 802F3F64 002F0EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3F68 002F0EC8  4E 80 00 20 */	blr 

.global VGetSegStatementSet__20CAnimTreeSingleChildCFRC10CSegIdListR16CSegStatementSet
VGetSegStatementSet__20CAnimTreeSingleChildCFRC10CSegIdListR16CSegStatementSet:
/* 802F3F6C 002F0ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3F70 002F0ED0  7C 08 02 A6 */	mflr r0
/* 802F3F74 002F0ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3F78 002F0ED8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F3F7C 002F0EDC  80 63 00 00 */	lwz r3, 0(r3)
/* 802F3F80 002F0EE0  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3F84 002F0EE4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802F3F88 002F0EE8  7D 89 03 A6 */	mtctr r12
/* 802F3F8C 002F0EEC  4E 80 04 21 */	bctrl 
/* 802F3F90 002F0EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3F94 002F0EF4  7C 08 03 A6 */	mtlr r0
/* 802F3F98 002F0EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3F9C 002F0EFC  4E 80 00 20 */	blr 

.global VGetRotation__20CAnimTreeSingleChildCFRC6CSegId
VGetRotation__20CAnimTreeSingleChildCFRC6CSegId:
/* 802F3FA0 002F0F00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3FA4 002F0F04  7C 08 02 A6 */	mflr r0
/* 802F3FA8 002F0F08  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3FAC 002F0F0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3FB0 002F0F10  7C 7F 1B 78 */	mr r31, r3
/* 802F3FB4 002F0F14  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F3FB8 002F0F18  80 84 00 00 */	lwz r4, 0(r4)
/* 802F3FBC 002F0F1C  81 84 00 00 */	lwz r12, 0(r4)
/* 802F3FC0 002F0F20  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802F3FC4 002F0F24  7D 89 03 A6 */	mtctr r12
/* 802F3FC8 002F0F28  4E 80 04 21 */	bctrl 
/* 802F3FCC 002F0F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3FD0 002F0F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F3FD4 002F0F34  7C 08 03 A6 */	mtlr r0
/* 802F3FD8 002F0F38  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3FDC 002F0F3C  4E 80 00 20 */	blr 

.global VGetOffset__20CAnimTreeSingleChildCFRC6CSegId
VGetOffset__20CAnimTreeSingleChildCFRC6CSegId:
/* 802F3FE0 002F0F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3FE4 002F0F44  7C 08 02 A6 */	mflr r0
/* 802F3FE8 002F0F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3FEC 002F0F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3FF0 002F0F50  7C 7F 1B 78 */	mr r31, r3
/* 802F3FF4 002F0F54  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F3FF8 002F0F58  80 84 00 00 */	lwz r4, 0(r4)
/* 802F3FFC 002F0F5C  81 84 00 00 */	lwz r12, 0(r4)
/* 802F4000 002F0F60  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802F4004 002F0F64  7D 89 03 A6 */	mtctr r12
/* 802F4008 002F0F68  4E 80 04 21 */	bctrl 
/* 802F400C 002F0F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F4010 002F0F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F4014 002F0F74  7C 08 03 A6 */	mtlr r0
/* 802F4018 002F0F78  38 21 00 10 */	addi r1, r1, 0x10
/* 802F401C 002F0F7C  4E 80 00 20 */	blr 

.global VHasOffset__20CAnimTreeSingleChildCFRC6CSegId
VHasOffset__20CAnimTreeSingleChildCFRC6CSegId:
/* 802F4020 002F0F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F4024 002F0F84  7C 08 02 A6 */	mflr r0
/* 802F4028 002F0F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F402C 002F0F8C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802F4030 002F0F90  80 63 00 00 */	lwz r3, 0(r3)
/* 802F4034 002F0F94  81 83 00 00 */	lwz r12, 0(r3)
/* 802F4038 002F0F98  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F403C 002F0F9C  7D 89 03 A6 */	mtctr r12
/* 802F4040 002F0FA0  4E 80 04 21 */	bctrl 
/* 802F4044 002F0FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F4048 002F0FA8  7C 08 03 A6 */	mtlr r0
/* 802F404C 002F0FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F4050 002F0FB0  4E 80 00 20 */	blr 

.global VGetTimeRemaining__20CAnimTreeSingleChildCFv
VGetTimeRemaining__20CAnimTreeSingleChildCFv:
/* 802F4054 002F0FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F4058 002F0FB8  7C 08 02 A6 */	mflr r0
/* 802F405C 002F0FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F4060 002F0FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F4064 002F0FC4  7C 7F 1B 78 */	mr r31, r3
/* 802F4068 002F0FC8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F406C 002F0FCC  80 84 00 00 */	lwz r4, 0(r4)
/* 802F4070 002F0FD0  81 84 00 00 */	lwz r12, 0(r4)
/* 802F4074 002F0FD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F4078 002F0FD8  7D 89 03 A6 */	mtctr r12
/* 802F407C 002F0FDC  4E 80 04 21 */	bctrl 
/* 802F4080 002F0FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F4084 002F0FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F4088 002F0FE8  7C 08 03 A6 */	mtlr r0
/* 802F408C 002F0FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F4090 002F0FF0  4E 80 00 20 */	blr 

.global VAdvanceView__20CAnimTreeSingleChildFRC13CCharAnimTime
VAdvanceView__20CAnimTreeSingleChildFRC13CCharAnimTime:
/* 802F4094 002F0FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F4098 002F0FF8  7C 08 02 A6 */	mflr r0
/* 802F409C 002F0FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F40A0 002F1000  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F40A4 002F1004  7C 7F 1B 78 */	mr r31, r3
/* 802F40A8 002F1008  80 84 00 14 */	lwz r4, 0x14(r4)
/* 802F40AC 002F100C  80 84 00 00 */	lwz r4, 0(r4)
/* 802F40B0 002F1010  81 84 00 00 */	lwz r12, 0(r4)
/* 802F40B4 002F1014  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F40B8 002F1018  7D 89 03 A6 */	mtctr r12
/* 802F40BC 002F101C  4E 80 04 21 */	bctrl 
/* 802F40C0 002F1020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F40C4 002F1024  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F40C8 002F1028  7C 08 03 A6 */	mtlr r0
/* 802F40CC 002F102C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F40D0 002F1030  4E 80 00 20 */	blr

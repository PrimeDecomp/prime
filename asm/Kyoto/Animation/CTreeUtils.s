.include "macros.inc"

.section .text, "ax"

.global "GetTransitionTree__10CTreeUtilsFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
"GetTransitionTree__10CTreeUtilsFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext":
/* 802E6EEC 002E3E4C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802E6EF0 002E3E50  7C 08 02 A6 */	mflr r0
/* 802E6EF4 002E3E54  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E6EF8 002E3E58  BF 01 00 F0 */	stmw r24, 0xf0(r1)
/* 802E6EFC 002E3E5C  7C 9C 23 78 */	mr r28, r4
/* 802E6F00 002E3E60  7C 7B 1B 78 */	mr r27, r3
/* 802E6F04 002E3E64  7C BD 2B 78 */	mr r29, r5
/* 802E6F08 002E3E68  7C DE 33 78 */	mr r30, r6
/* 802E6F0C 002E3E6C  38 61 00 48 */	addi r3, r1, 0x48
/* 802E6F10 002E3E70  80 84 00 00 */	lwz r4, 0(r4)
/* 802E6F14 002E3E74  80 84 00 00 */	lwz r4, 0(r4)
/* 802E6F18 002E3E78  4B D4 7C 71 */	bl GetContributionOfHighestInfluence__13CAnimTreeNodeCFv
/* 802E6F1C 002E3E7C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 802E6F20 002E3E80  3B E1 00 BC */	addi r31, r1, 0xbc
/* 802E6F24 002E3E84  3B 21 00 4C */	addi r25, r1, 0x4c
/* 802E6F28 002E3E88  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 802E6F2C 002E3E8C  7F E3 FB 78 */	mr r3, r31
/* 802E6F30 002E3E90  7F 24 CB 78 */	mr r4, r25
/* 802E6F34 002E3E94  48 05 72 2D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E6F38 002E3E98  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 802E6F3C 002E3E9C  28 19 00 00 */	cmplwi r25, 0
/* 802E6F40 002E3EA0  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 802E6F44 002E3EA4  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 802E6F48 002E3EA8  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 802E6F4C 002E3EAC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 802E6F50 002E3EB0  88 81 00 70 */	lbz r4, 0x70(r1)
/* 802E6F54 002E3EB4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 802E6F58 002E3EB8  80 61 00 78 */	lwz r3, 0x78(r1)
/* 802E6F5C 002E3EBC  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 802E6F60 002E3EC0  D0 81 00 CC */	stfs f4, 0xcc(r1)
/* 802E6F64 002E3EC4  90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 802E6F68 002E3EC8  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 802E6F6C 002E3ECC  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 802E6F70 002E3ED0  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 802E6F74 002E3ED4  98 81 00 E0 */	stb r4, 0xe0(r1)
/* 802E6F78 002E3ED8  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 802E6F7C 002E3EDC  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 802E6F80 002E3EE0  90 01 00 EC */	stw r0, 0xec(r1)
/* 802E6F84 002E3EE4  41 82 00 0C */	beq lbl_802E6F90
/* 802E6F88 002E3EE8  7F 23 CB 78 */	mr r3, r25
/* 802E6F8C 002E3EEC  48 05 6B 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E6F90:
/* 802E6F90 002E3EF0  80 9D 00 00 */	lwz r4, 0(r29)
/* 802E6F94 002E3EF4  38 61 00 10 */	addi r3, r1, 0x10
/* 802E6F98 002E3EF8  80 84 00 00 */	lwz r4, 0(r4)
/* 802E6F9C 002E3EFC  4B D4 7B ED */	bl GetContributionOfHighestInfluence__13CAnimTreeNodeCFv
/* 802E6FA0 002E3F00  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802E6FA4 002E3F04  3B 01 00 84 */	addi r24, r1, 0x84
/* 802E6FA8 002E3F08  3B 21 00 14 */	addi r25, r1, 0x14
/* 802E6FAC 002E3F0C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 802E6FB0 002E3F10  7F 03 C3 78 */	mr r3, r24
/* 802E6FB4 002E3F14  7F 24 CB 78 */	mr r4, r25
/* 802E6FB8 002E3F18  48 05 71 A9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E6FBC 002E3F1C  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 802E6FC0 002E3F20  28 19 00 00 */	cmplwi r25, 0
/* 802E6FC4 002E3F24  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 802E6FC8 002E3F28  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 802E6FCC 002E3F2C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 802E6FD0 002E3F30  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 802E6FD4 002E3F34  88 81 00 38 */	lbz r4, 0x38(r1)
/* 802E6FD8 002E3F38  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 802E6FDC 002E3F3C  80 61 00 40 */	lwz r3, 0x40(r1)
/* 802E6FE0 002E3F40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E6FE4 002E3F44  D0 81 00 94 */	stfs f4, 0x94(r1)
/* 802E6FE8 002E3F48  90 A1 00 98 */	stw r5, 0x98(r1)
/* 802E6FEC 002E3F4C  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 802E6FF0 002E3F50  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 802E6FF4 002E3F54  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 802E6FF8 002E3F58  98 81 00 A8 */	stb r4, 0xa8(r1)
/* 802E6FFC 002E3F5C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 802E7000 002E3F60  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 802E7004 002E3F64  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802E7008 002E3F68  41 82 00 0C */	beq lbl_802E7014
/* 802E700C 002E3F6C  7F 23 CB 78 */	mr r3, r25
/* 802E7010 002E3F70  48 05 6A D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E7014:
/* 802E7014 002E3F74  7F C4 F3 78 */	mr r4, r30
/* 802E7018 002E3F78  38 61 00 08 */	addi r3, r1, 8
/* 802E701C 002E3F7C  48 00 00 C9 */	bl "NonConstCopy__29TToken<19CTransitionDatabase>CFv"
/* 802E7020 002E3F80  83 41 00 B4 */	lwz r26, 0xb4(r1)
/* 802E7024 002E3F84  38 61 00 08 */	addi r3, r1, 8
/* 802E7028 002E3F88  83 21 00 EC */	lwz r25, 0xec(r1)
/* 802E702C 002E3F8C  48 05 9D E1 */	bl GetObj__6CTokenFv
/* 802E7030 002E3F90  80 63 00 04 */	lwz r3, 4(r3)
/* 802E7034 002E3F94  7F 24 CB 78 */	mr r4, r25
/* 802E7038 002E3F98  7F 45 D3 78 */	mr r5, r26
/* 802E703C 002E3F9C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E7040 002E3FA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E7044 002E3FA4  7D 89 03 A6 */	mtctr r12
/* 802E7048 002E3FA8  4E 80 04 21 */	bctrl 
/* 802E704C 002E3FAC  7C 7A 1B 78 */	mr r26, r3
/* 802E7050 002E3FB0  38 61 00 08 */	addi r3, r1, 8
/* 802E7054 002E3FB4  38 80 00 00 */	li r4, 0
/* 802E7058 002E3FB8  48 05 9D E9 */	bl __dt__6CTokenFv
/* 802E705C 002E3FBC  80 9A 00 00 */	lwz r4, 0(r26)
/* 802E7060 002E3FC0  7F 63 DB 78 */	mr r3, r27
/* 802E7064 002E3FC4  7F 85 E3 78 */	mr r5, r28
/* 802E7068 002E3FC8  7F A6 EB 78 */	mr r6, r29
/* 802E706C 002E3FCC  80 84 00 00 */	lwz r4, 0(r4)
/* 802E7070 002E3FD0  7F C7 F3 78 */	mr r7, r30
/* 802E7074 002E3FD4  48 00 00 39 */	bl "GetTransitionTree__10IMetaTransCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
/* 802E7078 002E3FD8  28 18 00 00 */	cmplwi r24, 0
/* 802E707C 002E3FDC  41 82 00 0C */	beq lbl_802E7088
/* 802E7080 002E3FE0  7F 03 C3 78 */	mr r3, r24
/* 802E7084 002E3FE4  48 05 6A 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E7088:
/* 802E7088 002E3FE8  28 1F 00 00 */	cmplwi r31, 0
/* 802E708C 002E3FEC  41 82 00 0C */	beq lbl_802E7098
/* 802E7090 002E3FF0  7F E3 FB 78 */	mr r3, r31
/* 802E7094 002E3FF4  48 05 6A 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E7098:
/* 802E7098 002E3FF8  BB 01 00 F0 */	lmw r24, 0xf0(r1)
/* 802E709C 002E3FFC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802E70A0 002E4000  7C 08 03 A6 */	mtlr r0
/* 802E70A4 002E4004  38 21 01 10 */	addi r1, r1, 0x110
/* 802E70A8 002E4008  4E 80 00 20 */	blr 

.global "GetTransitionTree__10IMetaTransCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
"GetTransitionTree__10IMetaTransCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext":
/* 802E70AC 002E400C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E70B0 002E4010  7C 08 02 A6 */	mflr r0
/* 802E70B4 002E4014  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E70B8 002E4018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E70BC 002E401C  7C 7F 1B 78 */	mr r31, r3
/* 802E70C0 002E4020  81 84 00 00 */	lwz r12, 0(r4)
/* 802E70C4 002E4024  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E70C8 002E4028  7D 89 03 A6 */	mtctr r12
/* 802E70CC 002E402C  4E 80 04 21 */	bctrl 
/* 802E70D0 002E4030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E70D4 002E4034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E70D8 002E4038  7C 08 03 A6 */	mtlr r0
/* 802E70DC 002E403C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E70E0 002E4040  4E 80 00 20 */	blr 

.global "NonConstCopy__29TToken<19CTransitionDatabase>CFv"
"NonConstCopy__29TToken<19CTransitionDatabase>CFv":
/* 802E70E4 002E4044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E70E8 002E4048  7C 08 02 A6 */	mflr r0
/* 802E70EC 002E404C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E70F0 002E4050  48 05 9D B9 */	bl __ct__6CTokenFRC6CToken
/* 802E70F4 002E4054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E70F8 002E4058  7C 08 03 A6 */	mtlr r0
/* 802E70FC 002E405C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E7100 002E4060  4E 80 00 20 */	blr

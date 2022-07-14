.include "macros.inc"

.section .data

.global lbl_803ED1D0
lbl_803ED1D0:
	# ROM: 0x3EA1D0
	.4byte 0
	.4byte 0
	.4byte __dt__13CAnimTreeNodeFv
	.4byte IsCAnimTreeNode__13CAnimTreeNodeCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte VSimplified__11IAnimReaderFv
	.4byte 0
	.4byte VGetAdvancementResults__11IAnimReaderCFRC13CCharAnimTimeRC13CCharAnimTime
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .text, "ax"

.global IsCAnimTreeNode__13CAnimTreeNodeCFv
IsCAnimTreeNode__13CAnimTreeNodeCFv:
/* 802F3BF0 002F0B50  38 60 00 01 */	li r3, 1
/* 802F3BF4 002F0B54  4E 80 00 20 */	blr 

.global "Cast__FRCQ24rstl33ownership_transfer<11IAnimReader>"
"Cast__FRCQ24rstl33ownership_transfer<11IAnimReader>":
/* 802F3BF8 002F0B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F3BFC 002F0B5C  7C 08 02 A6 */	mflr r0
/* 802F3C00 002F0B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F3C04 002F0B64  38 00 00 00 */	li r0, 0
/* 802F3C08 002F0B68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F3C0C 002F0B6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F3C10 002F0B70  7C 7E 1B 78 */	mr r30, r3
/* 802F3C14 002F0B74  98 04 00 00 */	stb r0, 0(r4)
/* 802F3C18 002F0B78  83 E4 00 04 */	lwz r31, 4(r4)
/* 802F3C1C 002F0B7C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F3C20 002F0B80  7F E3 FB 78 */	mr r3, r31
/* 802F3C24 002F0B84  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F3C28 002F0B88  7D 89 03 A6 */	mtctr r12
/* 802F3C2C 002F0B8C  4E 80 04 21 */	bctrl 
/* 802F3C30 002F0B90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F3C34 002F0B94  41 82 00 34 */	beq lbl_802F3C68
/* 802F3C38 002F0B98  3C 80 80 3D */	lis r4, lbl_803D6E00@ha
/* 802F3C3C 002F0B9C  38 60 00 08 */	li r3, 8
/* 802F3C40 002F0BA0  38 84 6E 00 */	addi r4, r4, lbl_803D6E00@l
/* 802F3C44 002F0BA4  38 A0 00 00 */	li r5, 0
/* 802F3C48 002F0BA8  48 02 1C 25 */	bl __nw__FUlPCcPCc
/* 802F3C4C 002F0BAC  28 03 00 00 */	cmplwi r3, 0
/* 802F3C50 002F0BB0  41 82 00 10 */	beq lbl_802F3C60
/* 802F3C54 002F0BB4  93 E3 00 00 */	stw r31, 0(r3)
/* 802F3C58 002F0BB8  38 00 00 01 */	li r0, 1
/* 802F3C5C 002F0BBC  90 03 00 04 */	stw r0, 4(r3)
lbl_802F3C60:
/* 802F3C60 002F0BC0  90 7E 00 00 */	stw r3, 0(r30)
/* 802F3C64 002F0BC4  48 00 00 54 */	b lbl_802F3CB8
lbl_802F3C68:
/* 802F3C68 002F0BC8  38 0D A9 28 */	addi r0, r13, lbl_805A94E8@sda21
/* 802F3C6C 002F0BCC  7C 7F 00 D0 */	neg r3, r31
/* 802F3C70 002F0BD0  90 1E 00 00 */	stw r0, 0(r30)
/* 802F3C74 002F0BD4  7C 60 FB 78 */	or r0, r3, r31
/* 802F3C78 002F0BD8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802F3C7C 002F0BDC  80 9E 00 00 */	lwz r4, 0(r30)
/* 802F3C80 002F0BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3C84 002F0BE4  80 64 00 04 */	lwz r3, 4(r4)
/* 802F3C88 002F0BE8  98 01 00 08 */	stb r0, 8(r1)
/* 802F3C8C 002F0BEC  38 03 00 01 */	addi r0, r3, 1
/* 802F3C90 002F0BF0  90 04 00 04 */	stw r0, 4(r4)
/* 802F3C94 002F0BF4  41 82 00 24 */	beq lbl_802F3CB8
/* 802F3C98 002F0BF8  28 1F 00 00 */	cmplwi r31, 0
/* 802F3C9C 002F0BFC  41 82 00 1C */	beq lbl_802F3CB8
/* 802F3CA0 002F0C00  7F E3 FB 78 */	mr r3, r31
/* 802F3CA4 002F0C04  38 80 00 01 */	li r4, 1
/* 802F3CA8 002F0C08  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F3CAC 002F0C0C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F3CB0 002F0C10  7D 89 03 A6 */	mtctr r12
/* 802F3CB4 002F0C14  4E 80 04 21 */	bctrl 
lbl_802F3CB8:
/* 802F3CB8 002F0C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F3CBC 002F0C1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F3CC0 002F0C20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F3CC4 002F0C24  7C 08 03 A6 */	mtlr r0
/* 802F3CC8 002F0C28  38 21 00 20 */	addi r1, r1, 0x20
/* 802F3CCC 002F0C2C  4E 80 00 20 */	blr 

.global "__ct__13CAnimTreeNodeFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"__ct__13CAnimTreeNodeFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 802F3CD0 002F0C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F3CD4 002F0C34  7C 08 02 A6 */	mflr r0
/* 802F3CD8 002F0C38  3C A0 80 3F */	lis r5, lbl_803ED508@ha
/* 802F3CDC 002F0C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F3CE0 002F0C40  38 05 D5 08 */	addi r0, r5, lbl_803ED508@l
/* 802F3CE4 002F0C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F3CE8 002F0C48  7C 7F 1B 78 */	mr r31, r3
/* 802F3CEC 002F0C4C  3C 60 80 3F */	lis r3, lbl_803ED1D0@ha
/* 802F3CF0 002F0C50  90 1F 00 00 */	stw r0, 0(r31)
/* 802F3CF4 002F0C54  38 03 D1 D0 */	addi r0, r3, lbl_803ED1D0@l
/* 802F3CF8 002F0C58  38 7F 00 04 */	addi r3, r31, 4
/* 802F3CFC 002F0C5C  90 1F 00 00 */	stw r0, 0(r31)
/* 802F3D00 002F0C60  48 04 A4 61 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F3D04 002F0C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3D08 002F0C68  7F E3 FB 78 */	mr r3, r31
/* 802F3D0C 002F0C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F3D10 002F0C70  7C 08 03 A6 */	mtlr r0
/* 802F3D14 002F0C74  38 21 00 10 */	addi r1, r1, 0x10
/* 802F3D18 002F0C78  4E 80 00 20 */	blr

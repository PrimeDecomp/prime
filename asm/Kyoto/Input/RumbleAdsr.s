.include "macros.inc"

.section .text, "ax"

.global __ct__9SAdsrDataFffffffbb
__ct__9SAdsrDataFffffffbb:
/* 80369BD8 00366B38  D0 23 00 00 */	stfs f1, 0(r3)
/* 80369BDC 00366B3C  D0 43 00 04 */	stfs f2, 4(r3)
/* 80369BE0 00366B40  D0 63 00 08 */	stfs f3, 8(r3)
/* 80369BE4 00366B44  D0 83 00 0C */	stfs f4, 0xc(r3)
/* 80369BE8 00366B48  D0 A3 00 10 */	stfs f5, 0x10(r3)
/* 80369BEC 00366B4C  D0 C3 00 14 */	stfs f6, 0x14(r3)
/* 80369BF0 00366B50  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80369BF4 00366B54  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80369BF8 00366B58  98 03 00 18 */	stb r0, 0x18(r3)
/* 80369BFC 00366B5C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80369C00 00366B60  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80369C04 00366B64  98 03 00 18 */	stb r0, 0x18(r3)
/* 80369C08 00366B68  4E 80 00 20 */	blr

.global __ct__9SAdsrDataFv
__ct__9SAdsrDataFv:
/* 80369C0C 00366B6C  C0 02 CD E8 */	lfs f0, lbl_805AEB08@sda21(r2)
/* 80369C10 00366B70  38 80 00 00 */	li r4, 0
/* 80369C14 00366B74  D0 03 00 00 */	stfs f0, 0(r3)
/* 80369C18 00366B78  D0 03 00 04 */	stfs f0, 4(r3)
/* 80369C1C 00366B7C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80369C20 00366B80  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80369C24 00366B84  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80369C28 00366B88  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80369C2C 00366B8C  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80369C30 00366B90  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80369C34 00366B94  98 03 00 18 */	stb r0, 0x18(r3)
/* 80369C38 00366B98  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80369C3C 00366B9C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80369C40 00366BA0  98 03 00 18 */	stb r0, 0x18(r3)
/* 80369C44 00366BA4  4E 80 00 20 */	blr

.global __ct__10SAdsrDeltaFQ210SAdsrDelta6EPhase15ERumblePriority
__ct__10SAdsrDeltaFQ210SAdsrDelta6EPhase15ERumblePriority:
/* 80369C48 00366BA8  2C 04 00 01 */	cmpwi r4, 1
/* 80369C4C 00366BAC  40 82 00 0C */	bne lbl_80369C58
/* 80369C50 00366BB0  C0 02 CD EC */	lfs f0, lbl_805AEB0C@sda21(r2)
/* 80369C54 00366BB4  48 00 00 08 */	b lbl_80369C5C
lbl_80369C58:
/* 80369C58 00366BB8  C0 02 CD E8 */	lfs f0, lbl_805AEB08@sda21(r2)
lbl_80369C5C:
/* 80369C5C 00366BBC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80369C60 00366BC0  C0 02 CD E8 */	lfs f0, lbl_805AEB08@sda21(r2)
/* 80369C64 00366BC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80369C68 00366BC8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80369C6C 00366BCC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80369C70 00366BD0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80369C74 00366BD4  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80369C78 00366BD8  90 83 00 20 */	stw r4, 0x20(r3)
/* 80369C7C 00366BDC  4E 80 00 20 */	blr

.global __ct__10SAdsrDeltaFQ210SAdsrDelta6EPhase
__ct__10SAdsrDeltaFQ210SAdsrDelta6EPhase:
/* 80369C80 00366BE0  C0 02 CD E8 */	lfs f0, lbl_805AEB08@sda21(r2)
/* 80369C84 00366BE4  38 00 00 00 */	li r0, 0
/* 80369C88 00366BE8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80369C8C 00366BEC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80369C90 00366BF0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80369C94 00366BF4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80369C98 00366BF8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80369C9C 00366BFC  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80369CA0 00366C00  90 83 00 20 */	stw r4, 0x20(r3)
/* 80369CA4 00366C04  4E 80 00 20 */	blr

.global Stopped__10SAdsrDeltaFv
Stopped__10SAdsrDeltaFv:
/* 80369CA8 00366C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80369CAC 00366C0C  7C 08 02 A6 */	mflr r0
/* 80369CB0 00366C10  38 80 00 00 */	li r4, 0
/* 80369CB4 00366C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80369CB8 00366C18  4B FF FF C9 */	bl __ct__10SAdsrDeltaFQ210SAdsrDelta6EPhase
/* 80369CBC 00366C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80369CC0 00366C20  7C 08 03 A6 */	mtlr r0
/* 80369CC4 00366C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80369CC8 00366C28  4E 80 00 20 */	blr

.global Start__10SAdsrDeltaF15ERumblePriorityb
Start__10SAdsrDeltaF15ERumblePriorityb:
/* 80369CCC 00366C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80369CD0 00366C30  7C 08 02 A6 */	mflr r0
/* 80369CD4 00366C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80369CD8 00366C38  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80369CDC 00366C3C  7C 85 23 78 */	mr r5, r4
/* 80369CE0 00366C40  38 80 00 02 */	li r4, 2
/* 80369CE4 00366C44  41 82 00 08 */	beq lbl_80369CEC
/* 80369CE8 00366C48  38 80 00 01 */	li r4, 1
lbl_80369CEC:
/* 80369CEC 00366C4C  4B FF FF 5D */	bl __ct__10SAdsrDeltaFQ210SAdsrDelta6EPhase15ERumblePriority
/* 80369CF0 00366C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80369CF4 00366C54  7C 08 03 A6 */	mtlr r0
/* 80369CF8 00366C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80369CFC 00366C5C  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AEB08
lbl_805AEB08:
	# ROM: 0x3FB3A8
	.4byte 0

.global lbl_805AEB0C
lbl_805AEB0C:
	# ROM: 0x3FB3AC
	.float 2.0


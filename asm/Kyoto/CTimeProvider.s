.include "macros.inc"

.section .sbss, "wa"
.balign 8

.global gCurrentTimeProvider__13CTimeProvider
gCurrentTimeProvider__13CTimeProvider:
	.skip 0x8

.section .text, "ax"

.global __dt__13CTimeProviderFv
__dt__13CTimeProviderFv:
/* 8035825C 003551BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80358260 003551C0  7C 08 02 A6 */	mflr r0
/* 80358264 003551C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80358268 003551C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035826C 003551CC  7C 9F 23 78 */	mr r31, r4
/* 80358270 003551D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80358274 003551D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80358278 003551D8  41 82 00 40 */	beq lbl_803582B8
/* 8035827C 003551DC  80 7E 00 08 */	lwz r3, 8(r30)
/* 80358280 003551E0  28 03 00 00 */	cmplwi r3, 0
/* 80358284 003551E4  90 6D AA 98 */	stw r3, gCurrentTimeProvider__13CTimeProvider@sda21(r13)
/* 80358288 003551E8  41 82 00 18 */	beq lbl_803582A0
/* 8035828C 003551EC  38 00 00 01 */	li r0, 1
/* 80358290 003551F0  98 03 00 04 */	stb r0, 4(r3)
/* 80358294 003551F4  80 6D AA 98 */	lwz r3, gCurrentTimeProvider__13CTimeProvider@sda21(r13)
/* 80358298 003551F8  4B FB 1C 41 */	bl SetExternalTimeProvider__9CGraphicsFP13CTimeProvider
/* 8035829C 003551FC  48 00 00 0C */	b lbl_803582A8
lbl_803582A0:
/* 803582A0 00355200  38 60 00 00 */	li r3, 0
/* 803582A4 00355204  4B FB 1C 35 */	bl SetExternalTimeProvider__9CGraphicsFP13CTimeProvider
lbl_803582A8:
/* 803582A8 00355208  7F E0 07 35 */	extsh. r0, r31
/* 803582AC 0035520C  40 81 00 0C */	ble lbl_803582B8
/* 803582B0 00355210  7F C3 F3 78 */	mr r3, r30
/* 803582B4 00355214  4B FB D6 7D */	bl Free__7CMemoryFPCv
lbl_803582B8:
/* 803582B8 00355218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803582BC 0035521C  7F C3 F3 78 */	mr r3, r30
/* 803582C0 00355220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803582C4 00355224  83 C1 00 08 */	lwz r30, 8(r1)
/* 803582C8 00355228  7C 08 03 A6 */	mtlr r0
/* 803582CC 0035522C  38 21 00 10 */	addi r1, r1, 0x10
/* 803582D0 00355230  4E 80 00 20 */	blr

.global __ct__13CTimeProviderFRCf
__ct__13CTimeProviderFRCf:
/* 803582D4 00355234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803582D8 00355238  7C 08 02 A6 */	mflr r0
/* 803582DC 0035523C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803582E0 00355240  38 00 00 01 */	li r0, 1
/* 803582E4 00355244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803582E8 00355248  7C 7F 1B 78 */	mr r31, r3
/* 803582EC 0035524C  90 83 00 00 */	stw r4, 0(r3)
/* 803582F0 00355250  98 03 00 04 */	stb r0, 4(r3)
/* 803582F4 00355254  80 0D AA 98 */	lwz r0, gCurrentTimeProvider__13CTimeProvider@sda21(r13)
/* 803582F8 00355258  90 03 00 08 */	stw r0, 8(r3)
/* 803582FC 0035525C  80 63 00 08 */	lwz r3, 8(r3)
/* 80358300 00355260  28 03 00 00 */	cmplwi r3, 0
/* 80358304 00355264  41 82 00 0C */	beq lbl_80358310
/* 80358308 00355268  38 00 00 00 */	li r0, 0
/* 8035830C 0035526C  98 03 00 04 */	stb r0, 4(r3)
lbl_80358310:
/* 80358310 00355270  93 ED AA 98 */	stw r31, gCurrentTimeProvider__13CTimeProvider@sda21(r13)
/* 80358314 00355274  7F E3 FB 78 */	mr r3, r31
/* 80358318 00355278  4B FB 1B C1 */	bl SetExternalTimeProvider__9CGraphicsFP13CTimeProvider
/* 8035831C 0035527C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80358320 00355280  7F E3 FB 78 */	mr r3, r31
/* 80358324 00355284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80358328 00355288  7C 08 03 A6 */	mtlr r0
/* 8035832C 0035528C  38 21 00 10 */	addi r1, r1, 0x10
/* 80358330 00355290  4E 80 00 20 */	blr

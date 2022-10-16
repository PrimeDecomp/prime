.include "macros.inc"

.section .data
.balign 8

.global __vt__15CTweakSlideShow
__vt__15CTweakSlideShow:
	# ROM: 0x3E9000
	.4byte 0
	.4byte 0
	.4byte __dt__15CTweakSlideShowFv
	.4byte 0

.section .text, "ax"

.global __ct__15CTweakSlideShowFR12CInputStream
__ct__15CTweakSlideShowFR12CInputStream:
/* 8029C5F8 00299558  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8029C5FC 0029955C  7C 08 02 A6 */	mflr r0
/* 8029C600 00299560  3C A0 80 3F */	lis r5, __vt__15CTweakSlideShow@ha
/* 8029C604 00299564  3C C0 80 3E */	lis r6, __vt__12ITweakObject@ha
/* 8029C608 00299568  90 01 00 54 */	stw r0, 0x54(r1)
/* 8029C60C 0029956C  38 06 9C C4 */	addi r0, r6, __vt__12ITweakObject@l
/* 8029C610 00299570  38 A5 C0 00 */	addi r5, r5, __vt__15CTweakSlideShow@l
/* 8029C614 00299574  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8029C618 00299578  7C 9F 23 78 */	mr r31, r4
/* 8029C61C 0029957C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8029C620 00299580  7C 7E 1B 78 */	mr r30, r3
/* 8029C624 00299584  38 6D A9 18 */	addi r3, r13, "mNull__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 8029C628 00299588  90 1E 00 00 */	stw r0, 0(r30)
/* 8029C62C 0029958C  38 00 00 00 */	li r0, 0
/* 8029C630 00299590  90 BE 00 00 */	stw r5, 0(r30)
/* 8029C634 00299594  90 7E 00 04 */	stw r3, 4(r30)
/* 8029C638 00299598  90 1E 00 08 */	stw r0, 8(r30)
/* 8029C63C 0029959C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8029C640 002995A0  90 7E 00 14 */	stw r3, 0x14(r30)
/* 8029C644 002995A4  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8029C648 002995A8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8029C64C 002995AC  48 0A D9 61 */	bl White__6CColorFv
/* 8029C650 002995B0  80 03 00 00 */	lwz r0, 0(r3)
/* 8029C654 002995B4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8029C658 002995B8  48 0A D9 55 */	bl White__6CColorFv
/* 8029C65C 002995BC  80 03 00 00 */	lwz r0, 0(r3)
/* 8029C660 002995C0  C0 02 C0 38 */	lfs f0, lbl_805ADD58@sda21(r2)
/* 8029C664 002995C4  90 1E 00 28 */	stw r0, 0x28(r30)
/* 8029C668 002995C8  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8029C66C 002995CC  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8029C670 002995D0  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 8029C674 002995D4  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 8029C678 002995D8  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 8029C67C 002995DC  48 0A D9 31 */	bl White__6CColorFv
/* 8029C680 002995E0  80 03 00 00 */	lwz r0, 0(r3)
/* 8029C684 002995E4  7F E4 FB 78 */	mr r4, r31
/* 8029C688 002995E8  C0 22 C0 38 */	lfs f1, lbl_805ADD58@sda21(r2)
/* 8029C68C 002995EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8029C690 002995F0  90 1E 00 40 */	stw r0, 0x40(r30)
/* 8029C694 002995F4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8029C698 002995F8  C0 02 C0 3C */	lfs f0, lbl_805ADD5C@sda21(r2)
/* 8029C69C 002995FC  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 8029C6A0 00299600  D0 3E 00 48 */	stfs f1, 0x48(r30)
/* 8029C6A4 00299604  D0 3E 00 4C */	stfs f1, 0x4c(r30)
/* 8029C6A8 00299608  D0 3E 00 50 */	stfs f1, 0x50(r30)
/* 8029C6AC 0029960C  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 8029C6B0 00299610  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8029C6B4 00299614  48 0A 1C 45 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 8029C6B8 00299618  38 7E 00 04 */	addi r3, r30, 4
/* 8029C6BC 0029961C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8029C6C0 00299620  48 0A 16 9D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8029C6C4 00299624  38 61 00 2C */	addi r3, r1, 0x2c
/* 8029C6C8 00299628  48 0A 14 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8029C6CC 0029962C  7F E4 FB 78 */	mr r4, r31
/* 8029C6D0 00299630  38 61 00 1C */	addi r3, r1, 0x1c
/* 8029C6D4 00299634  38 A1 00 08 */	addi r5, r1, 8
/* 8029C6D8 00299638  48 0A 1C 21 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 8029C6DC 0029963C  38 7E 00 14 */	addi r3, r30, 0x14
/* 8029C6E0 00299640  38 81 00 1C */	addi r4, r1, 0x1c
/* 8029C6E4 00299644  48 0A 16 79 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8029C6E8 00299648  38 61 00 1C */	addi r3, r1, 0x1c
/* 8029C6EC 0029964C  48 0A 13 F5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8029C6F0 00299650  7F E4 FB 78 */	mr r4, r31
/* 8029C6F4 00299654  38 61 00 18 */	addi r3, r1, 0x18
/* 8029C6F8 00299658  48 0C 6D 55 */	bl __ct__6CColorFR12CInputStream
/* 8029C6FC 0029965C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8029C700 00299660  7F E4 FB 78 */	mr r4, r31
/* 8029C704 00299664  38 61 00 14 */	addi r3, r1, 0x14
/* 8029C708 00299668  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8029C70C 0029966C  48 0C 6D 41 */	bl __ct__6CColorFR12CInputStream
/* 8029C710 00299670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C714 00299674  7F E3 FB 78 */	mr r3, r31
/* 8029C718 00299678  90 1E 00 28 */	stw r0, 0x28(r30)
/* 8029C71C 0029967C  48 0A 25 0D */	bl ReadFloat__12CInputStreamFv
/* 8029C720 00299680  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 8029C724 00299684  7F E3 FB 78 */	mr r3, r31
/* 8029C728 00299688  48 0A 25 01 */	bl ReadFloat__12CInputStreamFv
/* 8029C72C 0029968C  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 8029C730 00299690  7F E3 FB 78 */	mr r3, r31
/* 8029C734 00299694  48 0A 24 F5 */	bl ReadFloat__12CInputStreamFv
/* 8029C738 00299698  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 8029C73C 0029969C  7F E3 FB 78 */	mr r3, r31
/* 8029C740 002996A0  48 0A 24 E9 */	bl ReadFloat__12CInputStreamFv
/* 8029C744 002996A4  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 8029C748 002996A8  7F E3 FB 78 */	mr r3, r31
/* 8029C74C 002996AC  48 0A 24 DD */	bl ReadFloat__12CInputStreamFv
/* 8029C750 002996B0  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 8029C754 002996B4  7F E4 FB 78 */	mr r4, r31
/* 8029C758 002996B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8029C75C 002996BC  48 0C 6C F1 */	bl __ct__6CColorFR12CInputStream
/* 8029C760 002996C0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8029C764 002996C4  7F E3 FB 78 */	mr r3, r31
/* 8029C768 002996C8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 8029C76C 002996CC  48 0A 24 BD */	bl ReadFloat__12CInputStreamFv
/* 8029C770 002996D0  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 8029C774 002996D4  7F E3 FB 78 */	mr r3, r31
/* 8029C778 002996D8  48 0A 24 B1 */	bl ReadFloat__12CInputStreamFv
/* 8029C77C 002996DC  D0 3E 00 48 */	stfs f1, 0x48(r30)
/* 8029C780 002996E0  7F E3 FB 78 */	mr r3, r31
/* 8029C784 002996E4  48 0A 24 A5 */	bl ReadFloat__12CInputStreamFv
/* 8029C788 002996E8  D0 3E 00 4C */	stfs f1, 0x4c(r30)
/* 8029C78C 002996EC  7F E3 FB 78 */	mr r3, r31
/* 8029C790 002996F0  48 0A 24 99 */	bl ReadFloat__12CInputStreamFv
/* 8029C794 002996F4  D0 3E 00 50 */	stfs f1, 0x50(r30)
/* 8029C798 002996F8  7F E3 FB 78 */	mr r3, r31
/* 8029C79C 002996FC  48 0A 24 8D */	bl ReadFloat__12CInputStreamFv
/* 8029C7A0 00299700  D0 3E 00 54 */	stfs f1, 0x54(r30)
/* 8029C7A4 00299704  7F E3 FB 78 */	mr r3, r31
/* 8029C7A8 00299708  48 0A 24 81 */	bl ReadFloat__12CInputStreamFv
/* 8029C7AC 0029970C  D0 3E 00 58 */	stfs f1, 0x58(r30)
/* 8029C7B0 00299710  7F C3 F3 78 */	mr r3, r30
/* 8029C7B4 00299714  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8029C7B8 00299718  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8029C7BC 0029971C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8029C7C0 00299720  7C 08 03 A6 */	mtlr r0
/* 8029C7C4 00299724  38 21 00 50 */	addi r1, r1, 0x50
/* 8029C7C8 00299728  4E 80 00 20 */	blr

.global __dt__15CTweakSlideShowFv
__dt__15CTweakSlideShowFv:
/* 8029C7CC 0029972C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C7D0 00299730  7C 08 02 A6 */	mflr r0
/* 8029C7D4 00299734  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C7D8 00299738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029C7DC 0029973C  7C 9F 23 78 */	mr r31, r4
/* 8029C7E0 00299740  93 C1 00 08 */	stw r30, 8(r1)
/* 8029C7E4 00299744  7C 7E 1B 79 */	or. r30, r3, r3
/* 8029C7E8 00299748  41 82 00 54 */	beq lbl_8029C83C
/* 8029C7EC 0029974C  3C 60 80 3F */	lis r3, __vt__15CTweakSlideShow@ha
/* 8029C7F0 00299750  34 1E 00 14 */	addic. r0, r30, 0x14
/* 8029C7F4 00299754  38 03 C0 00 */	addi r0, r3, __vt__15CTweakSlideShow@l
/* 8029C7F8 00299758  90 1E 00 00 */	stw r0, 0(r30)
/* 8029C7FC 0029975C  41 82 00 0C */	beq lbl_8029C808
/* 8029C800 00299760  38 7E 00 14 */	addi r3, r30, 0x14
/* 8029C804 00299764  48 0A 12 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8029C808:
/* 8029C808 00299768  34 1E 00 04 */	addic. r0, r30, 4
/* 8029C80C 0029976C  41 82 00 0C */	beq lbl_8029C818
/* 8029C810 00299770  38 7E 00 04 */	addi r3, r30, 4
/* 8029C814 00299774  48 0A 12 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8029C818:
/* 8029C818 00299778  28 1E 00 00 */	cmplwi r30, 0
/* 8029C81C 0029977C  41 82 00 10 */	beq lbl_8029C82C
/* 8029C820 00299780  3C 60 80 3E */	lis r3, __vt__12ITweakObject@ha
/* 8029C824 00299784  38 03 9C C4 */	addi r0, r3, __vt__12ITweakObject@l
/* 8029C828 00299788  90 1E 00 00 */	stw r0, 0(r30)
lbl_8029C82C:
/* 8029C82C 0029978C  7F E0 07 35 */	extsh. r0, r31
/* 8029C830 00299790  40 81 00 0C */	ble lbl_8029C83C
/* 8029C834 00299794  7F C3 F3 78 */	mr r3, r30
/* 8029C838 00299798  48 00 00 21 */	bl "__dl__29TOneStatic<15CTweakSlideShow>FPv"
lbl_8029C83C:
/* 8029C83C 0029979C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C840 002997A0  7F C3 F3 78 */	mr r3, r30
/* 8029C844 002997A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029C848 002997A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029C84C 002997AC  7C 08 03 A6 */	mtlr r0
/* 8029C850 002997B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C854 002997B4  4E 80 00 20 */	blr

.global "__dl__29TOneStatic<15CTweakSlideShow>FPv"
"__dl__29TOneStatic<15CTweakSlideShow>FPv":
/* 8029C858 002997B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C85C 002997BC  7C 08 02 A6 */	mflr r0
/* 8029C860 002997C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C864 002997C4  4B D9 A5 61 */	bl "ReferenceCount__29TOneStatic<15CTweakSlideShow>Fv"
/* 8029C868 002997C8  80 83 00 00 */	lwz r4, 0(r3)
/* 8029C86C 002997CC  38 04 FF FF */	addi r0, r4, -1
/* 8029C870 002997D0  90 03 00 00 */	stw r0, 0(r3)
/* 8029C874 002997D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C878 002997D8  7C 08 03 A6 */	mtlr r0
/* 8029C87C 002997DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C880 002997E0  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ADD58
lbl_805ADD58:
	# ROM: 0x3FA5F8
	.4byte 0

.global lbl_805ADD5C
lbl_805ADD5C:
	# ROM: 0x3FA5FC
	.float 0.001

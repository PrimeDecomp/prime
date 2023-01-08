.include "macros.inc"

.section .sbss, "wa"
.balign 8

.global lbl_805A9650
lbl_805A9650:
	.skip 0x4
.global lbl_805A9654
lbl_805A9654:
	.skip 0x4

.section .text, "ax"

.global __ct__13CParticleDataFR12CInputStream
__ct__13CParticleDataFR12CInputStream:
/* 80357404 00354364  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80357408 00354368  7C 08 02 A6 */	mflr r0
/* 8035740C 0035436C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80357410 00354370  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80357414 00354374  7C 9F 23 78 */	mr r31, r4
/* 80357418 00354378  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8035741C 0035437C  7C 7E 1B 78 */	mr r30, r3
/* 80357420 00354380  7F E3 FB 78 */	mr r3, r31
/* 80357424 00354384  4B FE 78 61 */	bl ReadLong__12CInputStreamFv
/* 80357428 00354388  90 7E 00 00 */	stw r3, 0(r30)
/* 8035742C 0035438C  7F E3 FB 78 */	mr r3, r31
/* 80357430 00354390  4B FE 78 55 */	bl ReadLong__12CInputStreamFv
/* 80357434 00354394  90 7E 00 04 */	stw r3, 4(r30)
/* 80357438 00354398  7F E3 FB 78 */	mr r3, r31
/* 8035743C 0035439C  4B FE 78 49 */	bl ReadLong__12CInputStreamFv
/* 80357440 003543A0  90 7E 00 08 */	stw r3, 8(r30)
/* 80357444 003543A4  7F E4 FB 78 */	mr r4, r31
/* 80357448 003543A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8035744C 003543AC  38 A1 00 08 */	addi r5, r1, 8
/* 80357450 003543B0  88 0D AA 90 */	lbz r0, lbl_805A9650@sda21(r13)
/* 80357454 003543B4  98 01 00 08 */	stb r0, 8(r1)
/* 80357458 003543B8  48 00 00 4D */	bl "Get<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>__12CInputStreamFRC82TType<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>"
/* 8035745C 003543BC  38 7E 00 0C */	addi r3, r30, 0xc
/* 80357460 003543C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80357464 003543C4  4B FE 6C FD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80357468 003543C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8035746C 003543CC  4B FE 66 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80357470 003543D0  7F E3 FB 78 */	mr r3, r31
/* 80357474 003543D4  4B FE 77 B5 */	bl ReadFloat__12CInputStreamFv
/* 80357478 003543D8  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 8035747C 003543DC  7F E3 FB 78 */	mr r3, r31
/* 80357480 003543E0  4B FE 78 05 */	bl ReadLong__12CInputStreamFv
/* 80357484 003543E4  90 7E 00 20 */	stw r3, 0x20(r30)
/* 80357488 003543E8  7F C3 F3 78 */	mr r3, r30
/* 8035748C 003543EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80357490 003543F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80357494 003543F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80357498 003543F8  7C 08 03 A6 */	mtlr r0
/* 8035749C 003543FC  38 21 00 30 */	addi r1, r1, 0x30
/* 803574A0 00354400  4E 80 00 20 */	blr

.global "Get<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>__12CInputStreamFRC82TType<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>"
"Get<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>__12CInputStreamFRC82TType<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>":
/* 803574A4 00354404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803574A8 00354408  7C 08 02 A6 */	mflr r0
/* 803574AC 0035440C  7C 85 23 78 */	mr r5, r4
/* 803574B0 00354410  90 01 00 24 */	stw r0, 0x24(r1)
/* 803574B4 00354414  38 81 00 08 */	addi r4, r1, 8
/* 803574B8 00354418  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803574BC 0035441C  7C 7F 1B 78 */	mr r31, r3
/* 803574C0 00354420  88 0D AA 94 */	lbz r0, lbl_805A9654@sda21(r13)
/* 803574C4 00354424  98 01 00 08 */	stb r0, 8(r1)
/* 803574C8 00354428  4B D0 20 31 */	bl "cinput_stream_helper<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>__FRC82TType<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>R12CInputStream"
/* 803574CC 0035442C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803574D0 00354430  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803574D4 00354434  7C 08 03 A6 */	mtlr r0
/* 803574D8 00354438  38 21 00 20 */	addi r1, r1, 0x20
/* 803574DC 0035443C  4E 80 00 20 */	blr

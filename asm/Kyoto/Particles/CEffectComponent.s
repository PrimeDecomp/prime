.include "macros.inc"

.section .text, "ax"

.global GetSObjectTagFromStream__16CEffectComponentFR12CInputStream
GetSObjectTagFromStream__16CEffectComponentFR12CInputStream:
/* 80357318 00354278  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035731C 0035427C  7C 08 02 A6 */	mflr r0
/* 80357320 00354280  90 01 00 24 */	stw r0, 0x24(r1)
/* 80357324 00354284  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80357328 00354288  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035732C 0035428C  7C BE 2B 78 */	mr r30, r5
/* 80357330 00354290  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80357334 00354294  7C 7D 1B 78 */	mr r29, r3
/* 80357338 00354298  7F C3 F3 78 */	mr r3, r30
/* 8035733C 0035429C  4B FE 79 49 */	bl ReadLong__12CInputStreamFv
/* 80357340 003542A0  7C 7F 1B 78 */	mr r31, r3
/* 80357344 003542A4  7F C3 F3 78 */	mr r3, r30
/* 80357348 003542A8  4B FE 79 3D */	bl ReadLong__12CInputStreamFv
/* 8035734C 003542AC  93 FD 00 00 */	stw r31, 0(r29)
/* 80357350 003542B0  90 7D 00 04 */	stw r3, 4(r29)
/* 80357354 003542B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80357358 003542B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035735C 003542BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80357360 003542C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80357364 003542C4  7C 08 03 A6 */	mtlr r0
/* 80357368 003542C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8035736C 003542CC  4E 80 00 20 */	blr

.global __ct__16CEffectComponentFR12CInputStream
__ct__16CEffectComponentFR12CInputStream:
/* 80357370 003542D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80357374 003542D4  7C 08 02 A6 */	mflr r0
/* 80357378 003542D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8035737C 003542DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80357380 003542E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80357384 003542E4  7C 9F 23 78 */	mr r31, r4
/* 80357388 003542E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035738C 003542EC  7C 7E 1B 78 */	mr r30, r3
/* 80357390 003542F0  4B FE 6F 69 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 80357394 003542F4  7F C4 F3 78 */	mr r4, r30
/* 80357398 003542F8  7F E5 FB 78 */	mr r5, r31
/* 8035739C 003542FC  38 61 00 10 */	addi r3, r1, 0x10
/* 803573A0 00354300  4B FF FF 79 */	bl GetSObjectTagFromStream__16CEffectComponentFR12CInputStream
/* 803573A4 00354304  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803573A8 00354308  7F E4 FB 78 */	mr r4, r31
/* 803573AC 0035430C  38 7E 00 18 */	addi r3, r30, 0x18
/* 803573B0 00354310  38 A1 00 08 */	addi r5, r1, 8
/* 803573B4 00354314  90 1E 00 10 */	stw r0, 0x10(r30)
/* 803573B8 00354318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803573BC 0035431C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 803573C0 00354320  4B FE 6F 39 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 803573C4 00354324  7F E3 FB 78 */	mr r3, r31
/* 803573C8 00354328  4B FE 78 61 */	bl ReadFloat__12CInputStreamFv
/* 803573CC 0035432C  D0 3E 00 28 */	stfs f1, 0x28(r30)
/* 803573D0 00354330  7F E3 FB 78 */	mr r3, r31
/* 803573D4 00354334  4B FE 78 B1 */	bl ReadLong__12CInputStreamFv
/* 803573D8 00354338  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 803573DC 0035433C  7F E3 FB 78 */	mr r3, r31
/* 803573E0 00354340  4B FE 78 A5 */	bl ReadLong__12CInputStreamFv
/* 803573E4 00354344  90 7E 00 30 */	stw r3, 0x30(r30)
/* 803573E8 00354348  7F C3 F3 78 */	mr r3, r30
/* 803573EC 0035434C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803573F0 00354350  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803573F4 00354354  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803573F8 00354358  7C 08 03 A6 */	mtlr r0
/* 803573FC 0035435C  38 21 00 20 */	addi r1, r1, 0x20
/* 80357400 00354360  4E 80 00 20 */	blr

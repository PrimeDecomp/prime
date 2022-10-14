.include "macros.inc"

.section .data
.balign 8
.global lbl_803D9CD0
lbl_803D9CD0:
	# ROM: 0x3D6CD0
	.4byte 0
	.4byte 0
	.4byte __dt__10CTweakGameFv
	.4byte 0

.section .text, "ax"

.global __ct__10CTweakGameFR12CInputStream
__ct__10CTweakGameFR12CInputStream:
/* 800371E4 00034144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800371E8 00034148  7C 08 02 A6 */	mflr r0
/* 800371EC 0003414C  3C A0 80 3E */	lis r5, __vt__12ITweakObject@ha
/* 800371F0 00034150  90 01 00 24 */	stw r0, 0x24(r1)
/* 800371F4 00034154  38 05 9C C4 */	addi r0, r5, __vt__12ITweakObject@l
/* 800371F8 00034158  38 A1 00 0C */	addi r5, r1, 0xc
/* 800371FC 0003415C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037200 00034160  7C 9F 23 78 */	mr r31, r4
/* 80037204 00034164  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80037208 00034168  7C 7E 1B 78 */	mr r30, r3
/* 8003720C 0003416C  3C 60 80 3E */	lis r3, lbl_803D9CD0@ha
/* 80037210 00034170  90 1E 00 00 */	stw r0, 0(r30)
/* 80037214 00034174  38 03 9C D0 */	addi r0, r3, lbl_803D9CD0@l
/* 80037218 00034178  38 7E 00 04 */	addi r3, r30, 4
/* 8003721C 0003417C  90 1E 00 00 */	stw r0, 0(r30)
/* 80037220 00034180  48 30 70 D9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 80037224 00034184  7F E4 FB 78 */	mr r4, r31
/* 80037228 00034188  38 7E 00 14 */	addi r3, r30, 0x14
/* 8003722C 0003418C  38 A1 00 08 */	addi r5, r1, 8
/* 80037230 00034190  48 30 70 C9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 80037234 00034194  7F E3 FB 78 */	mr r3, r31
/* 80037238 00034198  48 30 79 F1 */	bl ReadFloat__12CInputStreamFv
/* 8003723C 0003419C  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 80037240 000341A0  7F E3 FB 78 */	mr r3, r31
/* 80037244 000341A4  48 30 7A 99 */	bl ReadBool__12CInputStreamFv
/* 80037248 000341A8  98 7E 00 28 */	stb r3, 0x28(r30)
/* 8003724C 000341AC  7F E3 FB 78 */	mr r3, r31
/* 80037250 000341B0  48 30 7A 8D */	bl ReadBool__12CInputStreamFv
/* 80037254 000341B4  98 7E 00 29 */	stb r3, 0x29(r30)
/* 80037258 000341B8  7F E3 FB 78 */	mr r3, r31
/* 8003725C 000341BC  48 30 7A 81 */	bl ReadBool__12CInputStreamFv
/* 80037260 000341C0  98 7E 00 2A */	stb r3, 0x2a(r30)
/* 80037264 000341C4  7F E3 FB 78 */	mr r3, r31
/* 80037268 000341C8  48 30 7A 75 */	bl ReadBool__12CInputStreamFv
/* 8003726C 000341CC  98 7E 00 2B */	stb r3, 0x2b(r30)
/* 80037270 000341D0  7F E3 FB 78 */	mr r3, r31
/* 80037274 000341D4  48 30 79 B5 */	bl ReadFloat__12CInputStreamFv
/* 80037278 000341D8  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 8003727C 000341DC  7F E3 FB 78 */	mr r3, r31
/* 80037280 000341E0  48 30 79 A9 */	bl ReadFloat__12CInputStreamFv
/* 80037284 000341E4  D0 3E 00 30 */	stfs f1, 0x30(r30)
/* 80037288 000341E8  7F E3 FB 78 */	mr r3, r31
/* 8003728C 000341EC  48 30 79 9D */	bl ReadFloat__12CInputStreamFv
/* 80037290 000341F0  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 80037294 000341F4  7F E3 FB 78 */	mr r3, r31
/* 80037298 000341F8  48 30 79 91 */	bl ReadFloat__12CInputStreamFv
/* 8003729C 000341FC  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 800372A0 00034200  7F E3 FB 78 */	mr r3, r31
/* 800372A4 00034204  48 30 79 85 */	bl ReadFloat__12CInputStreamFv
/* 800372A8 00034208  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 800372AC 0003420C  7F E3 FB 78 */	mr r3, r31
/* 800372B0 00034210  48 30 79 79 */	bl ReadFloat__12CInputStreamFv
/* 800372B4 00034214  D0 3E 00 40 */	stfs f1, 0x40(r30)
/* 800372B8 00034218  7F E3 FB 78 */	mr r3, r31
/* 800372BC 0003421C  48 30 79 6D */	bl ReadFloat__12CInputStreamFv
/* 800372C0 00034220  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 800372C4 00034224  7F E3 FB 78 */	mr r3, r31
/* 800372C8 00034228  48 30 79 61 */	bl ReadFloat__12CInputStreamFv
/* 800372CC 0003422C  D0 3E 00 48 */	stfs f1, 0x48(r30)
/* 800372D0 00034230  7F E3 FB 78 */	mr r3, r31
/* 800372D4 00034234  48 30 79 55 */	bl ReadFloat__12CInputStreamFv
/* 800372D8 00034238  D0 3E 00 4C */	stfs f1, 0x4c(r30)
/* 800372DC 0003423C  7F E3 FB 78 */	mr r3, r31
/* 800372E0 00034240  48 30 79 49 */	bl ReadFloat__12CInputStreamFv
/* 800372E4 00034244  D0 3E 00 50 */	stfs f1, 0x50(r30)
/* 800372E8 00034248  7F E3 FB 78 */	mr r3, r31
/* 800372EC 0003424C  48 30 79 3D */	bl ReadFloat__12CInputStreamFv
/* 800372F0 00034250  D0 3E 00 54 */	stfs f1, 0x54(r30)
/* 800372F4 00034254  7F E3 FB 78 */	mr r3, r31
/* 800372F8 00034258  48 30 79 31 */	bl ReadFloat__12CInputStreamFv
/* 800372FC 0003425C  D0 3E 00 58 */	stfs f1, 0x58(r30)
/* 80037300 00034260  7F E3 FB 78 */	mr r3, r31
/* 80037304 00034264  48 30 79 25 */	bl ReadFloat__12CInputStreamFv
/* 80037308 00034268  D0 3E 00 5C */	stfs f1, 0x5c(r30)
/* 8003730C 0003426C  7F E3 FB 78 */	mr r3, r31
/* 80037310 00034270  48 30 79 19 */	bl ReadFloat__12CInputStreamFv
/* 80037314 00034274  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 80037318 00034278  7F E3 FB 78 */	mr r3, r31
/* 8003731C 0003427C  48 30 79 0D */	bl ReadFloat__12CInputStreamFv
/* 80037320 00034280  D0 3E 00 64 */	stfs f1, 0x64(r30)
/* 80037324 00034284  38 00 00 00 */	li r0, 0
/* 80037328 00034288  7F C3 F3 78 */	mr r3, r30
/* 8003732C 0003428C  98 1E 00 2B */	stb r0, 0x2b(r30)
/* 80037330 00034290  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037334 00034294  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80037338 00034298  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003733C 0003429C  7C 08 03 A6 */	mtlr r0
/* 80037340 000342A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80037344 000342A4  4E 80 00 20 */	blr

.global __dt__10CTweakGameFv
__dt__10CTweakGameFv:
/* 80037348 000342A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003734C 000342AC  7C 08 02 A6 */	mflr r0
/* 80037350 000342B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037354 000342B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80037358 000342B8  7C 9F 23 78 */	mr r31, r4
/* 8003735C 000342BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80037360 000342C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80037364 000342C4  41 82 00 54 */	beq lbl_800373B8
/* 80037368 000342C8  3C 60 80 3E */	lis r3, lbl_803D9CD0@ha
/* 8003736C 000342CC  34 1E 00 14 */	addic. r0, r30, 0x14
/* 80037370 000342D0  38 03 9C D0 */	addi r0, r3, lbl_803D9CD0@l
/* 80037374 000342D4  90 1E 00 00 */	stw r0, 0(r30)
/* 80037378 000342D8  41 82 00 0C */	beq lbl_80037384
/* 8003737C 000342DC  38 7E 00 14 */	addi r3, r30, 0x14
/* 80037380 000342E0  48 30 67 61 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80037384:
/* 80037384 000342E4  34 1E 00 04 */	addic. r0, r30, 4
/* 80037388 000342E8  41 82 00 0C */	beq lbl_80037394
/* 8003738C 000342EC  38 7E 00 04 */	addi r3, r30, 4
/* 80037390 000342F0  48 30 67 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80037394:
/* 80037394 000342F4  28 1E 00 00 */	cmplwi r30, 0
/* 80037398 000342F8  41 82 00 10 */	beq lbl_800373A8
/* 8003739C 000342FC  3C 60 80 3E */	lis r3, __vt__12ITweakObject@ha
/* 800373A0 00034300  38 03 9C C4 */	addi r0, r3, __vt__12ITweakObject@l
/* 800373A4 00034304  90 1E 00 00 */	stw r0, 0(r30)
lbl_800373A8:
/* 800373A8 00034308  7F E0 07 35 */	extsh. r0, r31
/* 800373AC 0003430C  40 81 00 0C */	ble lbl_800373B8
/* 800373B0 00034310  7F C3 F3 78 */	mr r3, r30
/* 800373B4 00034314  48 00 00 21 */	bl "__dl__24TOneStatic<10CTweakGame>FPv"
lbl_800373B8:
/* 800373B8 00034318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800373BC 0003431C  7F C3 F3 78 */	mr r3, r30
/* 800373C0 00034320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800373C4 00034324  83 C1 00 08 */	lwz r30, 8(r1)
/* 800373C8 00034328  7C 08 03 A6 */	mtlr r0
/* 800373CC 0003432C  38 21 00 10 */	addi r1, r1, 0x10
/* 800373D0 00034330  4E 80 00 20 */	blr

.global "__dl__24TOneStatic<10CTweakGame>FPv"
"__dl__24TOneStatic<10CTweakGame>FPv":
/* 800373D4 00034334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800373D8 00034338  7C 08 02 A6 */	mflr r0
/* 800373DC 0003433C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800373E0 00034340  4B FF FD 45 */	bl "ReferenceCount__24TOneStatic<10CTweakGame>Fv"
/* 800373E4 00034344  80 83 00 00 */	lwz r4, 0(r3)
/* 800373E8 00034348  38 04 FF FF */	addi r0, r4, -1
/* 800373EC 0003434C  90 03 00 00 */	stw r0, 0(r3)
/* 800373F0 00034350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800373F4 00034354  7C 08 03 A6 */	mtlr r0
/* 800373F8 00034358  38 21 00 10 */	addi r1, r1, 0x10
/* 800373FC 0003435C  4E 80 00 20 */	blr

.include "macros.inc"

.section .data
.balign 8

.global __vt__14CTweakParticle
__vt__14CTweakParticle:
	# ROM: 0x3D7088
	.4byte 0
	.4byte 0
	.4byte __dt__14CTweakParticleFv
	.4byte 0

.section .text, "ax"

.global __ct__14CTweakParticleFR12CInputStream
__ct__14CTweakParticleFR12CInputStream:
/* 80059F20 00056E80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80059F24 00056E84  7C 08 02 A6 */	mflr r0
/* 80059F28 00056E88  3C A0 80 3E */	lis r5, __vt__12ITweakObject@ha
/* 80059F2C 00056E8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80059F30 00056E90  38 05 9C C4 */	addi r0, r5, __vt__12ITweakObject@l
/* 80059F34 00056E94  38 A1 00 10 */	addi r5, r1, 0x10
/* 80059F38 00056E98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80059F3C 00056E9C  7C 9F 23 78 */	mr r31, r4
/* 80059F40 00056EA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80059F44 00056EA4  7C 7E 1B 78 */	mr r30, r3
/* 80059F48 00056EA8  3C 60 80 3E */	lis r3, __vt__14CTweakParticle@ha
/* 80059F4C 00056EAC  90 1E 00 00 */	stw r0, 0(r30)
/* 80059F50 00056EB0  38 03 A0 88 */	addi r0, r3, __vt__14CTweakParticle@l
/* 80059F54 00056EB4  38 7E 00 04 */	addi r3, r30, 4
/* 80059F58 00056EB8  90 1E 00 00 */	stw r0, 0(r30)
/* 80059F5C 00056EBC  48 2E 43 9D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 80059F60 00056EC0  7F E4 FB 78 */	mr r4, r31
/* 80059F64 00056EC4  38 7E 00 14 */	addi r3, r30, 0x14
/* 80059F68 00056EC8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80059F6C 00056ECC  48 2E 43 8D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 80059F70 00056ED0  7F E4 FB 78 */	mr r4, r31
/* 80059F74 00056ED4  38 7E 00 24 */	addi r3, r30, 0x24
/* 80059F78 00056ED8  38 A1 00 08 */	addi r5, r1, 8
/* 80059F7C 00056EDC  48 2E 43 7D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 80059F80 00056EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80059F84 00056EE4  7F C3 F3 78 */	mr r3, r30
/* 80059F88 00056EE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80059F8C 00056EEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80059F90 00056EF0  7C 08 03 A6 */	mtlr r0
/* 80059F94 00056EF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80059F98 00056EF8  4E 80 00 20 */	blr

.global __dt__14CTweakParticleFv
__dt__14CTweakParticleFv:
/* 80059F9C 00056EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80059FA0 00056F00  7C 08 02 A6 */	mflr r0
/* 80059FA4 00056F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80059FA8 00056F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80059FAC 00056F0C  7C 9F 23 78 */	mr r31, r4
/* 80059FB0 00056F10  93 C1 00 08 */	stw r30, 8(r1)
/* 80059FB4 00056F14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80059FB8 00056F18  41 82 00 64 */	beq lbl_8005A01C
/* 80059FBC 00056F1C  3C 60 80 3E */	lis r3, __vt__14CTweakParticle@ha
/* 80059FC0 00056F20  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80059FC4 00056F24  38 03 A0 88 */	addi r0, r3, __vt__14CTweakParticle@l
/* 80059FC8 00056F28  90 1E 00 00 */	stw r0, 0(r30)
/* 80059FCC 00056F2C  41 82 00 0C */	beq lbl_80059FD8
/* 80059FD0 00056F30  38 7E 00 24 */	addi r3, r30, 0x24
/* 80059FD4 00056F34  48 2E 3B 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80059FD8:
/* 80059FD8 00056F38  34 1E 00 14 */	addic. r0, r30, 0x14
/* 80059FDC 00056F3C  41 82 00 0C */	beq lbl_80059FE8
/* 80059FE0 00056F40  38 7E 00 14 */	addi r3, r30, 0x14
/* 80059FE4 00056F44  48 2E 3A FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80059FE8:
/* 80059FE8 00056F48  34 1E 00 04 */	addic. r0, r30, 4
/* 80059FEC 00056F4C  41 82 00 0C */	beq lbl_80059FF8
/* 80059FF0 00056F50  38 7E 00 04 */	addi r3, r30, 4
/* 80059FF4 00056F54  48 2E 3A ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80059FF8:
/* 80059FF8 00056F58  28 1E 00 00 */	cmplwi r30, 0
/* 80059FFC 00056F5C  41 82 00 10 */	beq lbl_8005A00C
/* 8005A000 00056F60  3C 60 80 3E */	lis r3, __vt__12ITweakObject@ha
/* 8005A004 00056F64  38 03 9C C4 */	addi r0, r3, __vt__12ITweakObject@l
/* 8005A008 00056F68  90 1E 00 00 */	stw r0, 0(r30)
lbl_8005A00C:
/* 8005A00C 00056F6C  7F E0 07 35 */	extsh. r0, r31
/* 8005A010 00056F70  40 81 00 0C */	ble lbl_8005A01C
/* 8005A014 00056F74  7F C3 F3 78 */	mr r3, r30
/* 8005A018 00056F78  48 00 00 21 */	bl "__dl__28TOneStatic<14CTweakParticle>FPv"
lbl_8005A01C:
/* 8005A01C 00056F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A020 00056F80  7F C3 F3 78 */	mr r3, r30
/* 8005A024 00056F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A028 00056F88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005A02C 00056F8C  7C 08 03 A6 */	mtlr r0
/* 8005A030 00056F90  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A034 00056F94  4E 80 00 20 */	blr

.global "__dl__28TOneStatic<14CTweakParticle>FPv"
"__dl__28TOneStatic<14CTweakParticle>FPv":
/* 8005A038 00056F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A03C 00056F9C  7C 08 02 A6 */	mflr r0
/* 8005A040 00056FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A044 00056FA4  4B FD D0 81 */	bl "ReferenceCount__28TOneStatic<14CTweakParticle>Fv"
/* 8005A048 00056FA8  80 83 00 00 */	lwz r4, 0(r3)
/* 8005A04C 00056FAC  38 04 FF FF */	addi r0, r4, -1
/* 8005A050 00056FB0  90 03 00 00 */	stw r0, 0(r3)
/* 8005A054 00056FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A058 00056FB8  7C 08 03 A6 */	mtlr r0
/* 8005A05C 00056FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A060 00056FC0  4E 80 00 20 */	blr

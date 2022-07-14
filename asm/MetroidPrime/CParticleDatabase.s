.include "macros.inc"

.section .sdata

.global lbl_805A7220
lbl_805A7220:
	# ROM: 0x3F4BC0
	.byte 0x01

.global lbl_805A7221
lbl_805A7221:
	# ROM: 0x3F4BC1
	.byte 0x00

.global lbl_805A7222
lbl_805A7222:
	# ROM: 0x3F4BC2
	.byte 0x01

.global lbl_805A7223
lbl_805A7223:
	# ROM: 0x3F4BC3
	.byte 0x01

.global lbl_805A7224
lbl_805A7224:
	# ROM: 0x3F4BC4
	.byte 0x00

.global lbl_805A7225
lbl_805A7225:
	# ROM: 0x3F4BC5
	.byte 0x01

.global lbl_805A7226
lbl_805A7226:
	# ROM: 0x3F4BC6
	.byte 0x01

.global lbl_805A7227
lbl_805A7227:
	# ROM: 0x3F4BC7
	.byte 0x00

.global lbl_805A7228
lbl_805A7228:
	# ROM: 0x3F4BC8
	.byte 0x01

.global lbl_805A7229
lbl_805A7229:
	# ROM: 0x3F4BC9
	.byte 0x01

.global lbl_805A722A
lbl_805A722A:
	# ROM: 0x3F4BCA
	.byte 0x00

.global lbl_805A722B
lbl_805A722B:
	# ROM: 0x3F4BCB
	.byte 0x01
	.4byte 0

.section .text, "ax"

.global "SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
"SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>":
/* 800B7A70 000B49D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B7A74 000B49D4  7C 08 02 A6 */	mflr r0
/* 800B7A78 000B49D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7A7C 000B49DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B7A80 000B49E0  3B E0 00 00 */	li r31, 0
/* 800B7A84 000B49E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B7A88 000B49E8  3B C4 00 08 */	addi r30, r4, 8
/* 800B7A8C 000B49EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B7A90 000B49F0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B7A94 000B49F4  7C 7C 1B 78 */	mr r28, r3
/* 800B7A98 000B49F8  93 C1 00 0C */	stw r30, 0xc(r1)
/* 800B7A9C 000B49FC  83 A4 00 08 */	lwz r29, 8(r4)
/* 800B7AA0 000B4A00  93 E1 00 08 */	stw r31, 8(r1)
/* 800B7AA4 000B4A04  48 00 00 34 */	b lbl_800B7AD8
lbl_800B7AA8:
/* 800B7AA8 000B4A08  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 800B7AAC 000B4A0C  28 03 00 00 */	cmplwi r3, 0
/* 800B7AB0 000B4A10  41 82 00 18 */	beq lbl_800B7AC8
/* 800B7AB4 000B4A14  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7AB8 000B4A18  7F 84 E3 78 */	mr r4, r28
/* 800B7ABC 000B4A1C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 800B7AC0 000B4A20  7D 89 03 A6 */	mtctr r12
/* 800B7AC4 000B4A24  4E 80 04 21 */	bctrl
lbl_800B7AC8:
/* 800B7AC8 000B4A28  7F C3 F3 78 */	mr r3, r30
/* 800B7ACC 000B4A2C  7F A4 EB 78 */	mr r4, r29
/* 800B7AD0 000B4A30  48 28 4B 11 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B7AD4 000B4A34  7C 7D 1B 78 */	mr r29, r3
lbl_800B7AD8:
/* 800B7AD8 000B4A38  7C 1D F8 40 */	cmplw r29, r31
/* 800B7ADC 000B4A3C  38 00 00 00 */	li r0, 0
/* 800B7AE0 000B4A40  40 82 00 0C */	bne lbl_800B7AEC
/* 800B7AE4 000B4A44  7C 1E F0 40 */	cmplw r30, r30
/* 800B7AE8 000B4A48  41 82 00 08 */	beq lbl_800B7AF0
lbl_800B7AEC:
/* 800B7AEC 000B4A4C  38 00 00 01 */	li r0, 1
lbl_800B7AF0:
/* 800B7AF0 000B4A50  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B7AF4 000B4A54  40 82 FF B4 */	bne lbl_800B7AA8
/* 800B7AF8 000B4A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7AFC 000B4A5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B7B00 000B4A60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B7B04 000B4A64  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B7B08 000B4A68  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B7B0C 000B4A6C  7C 08 03 A6 */	mtlr r0
/* 800B7B10 000B4A70  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7B14 000B4A74  4E 80 00 20 */	blr

.global SetModulationColorAllActiveEffects__17CParticleDatabaseFRC6CColor
SetModulationColorAllActiveEffects__17CParticleDatabaseFRC6CColor:
/* 800B7B18 000B4A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7B1C 000B4A7C  7C 08 02 A6 */	mflr r0
/* 800B7B20 000B4A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7B24 000B4A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7B28 000B4A88  7C 9F 23 78 */	mr r31, r4
/* 800B7B2C 000B4A8C  93 C1 00 08 */	stw r30, 8(r1)
/* 800B7B30 000B4A90  7C 7E 1B 78 */	mr r30, r3
/* 800B7B34 000B4A94  7F E3 FB 78 */	mr r3, r31
/* 800B7B38 000B4A98  38 9E 00 3C */	addi r4, r30, 0x3c
/* 800B7B3C 000B4A9C  4B FF FF 35 */	bl "SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7B40 000B4AA0  7F E3 FB 78 */	mr r3, r31
/* 800B7B44 000B4AA4  38 9E 00 50 */	addi r4, r30, 0x50
/* 800B7B48 000B4AA8  4B FF FF 29 */	bl "SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7B4C 000B4AAC  7F E3 FB 78 */	mr r3, r31
/* 800B7B50 000B4AB0  38 9E 00 64 */	addi r4, r30, 0x64
/* 800B7B54 000B4AB4  4B FF FF 1D */	bl "SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7B58 000B4AB8  7F E3 FB 78 */	mr r3, r31
/* 800B7B5C 000B4ABC  38 9E 00 78 */	addi r4, r30, 0x78
/* 800B7B60 000B4AC0  4B FF FF 11 */	bl "SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7B64 000B4AC4  7F E3 FB 78 */	mr r3, r31
/* 800B7B68 000B4AC8  38 9E 00 8C */	addi r4, r30, 0x8c
/* 800B7B6C 000B4ACC  4B FF FF 05 */	bl "SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7B70 000B4AD0  7F E3 FB 78 */	mr r3, r31
/* 800B7B74 000B4AD4  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 800B7B78 000B4AD8  4B FF FE F9 */	bl "SetModulationColorAllActiveEffectsForParticleDB__17CParticleDatabaseFRC6CColorRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7B7C 000B4ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7B80 000B4AE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7B84 000B4AE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B7B88 000B4AE8  7C 08 03 A6 */	mtlr r0
/* 800B7B8C 000B4AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7B90 000B4AF0  4E 80 00 20 */	blr

.global "SuspendAllActiveEffectsForParticleDB__17CParticleDatabaseFR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
"SuspendAllActiveEffectsForParticleDB__17CParticleDatabaseFR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>":
/* 800B7B94 000B4AF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B7B98 000B4AF8  7C 08 02 A6 */	mflr r0
/* 800B7B9C 000B4AFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7BA0 000B4B00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B7BA4 000B4B04  3B E0 00 00 */	li r31, 0
/* 800B7BA8 000B4B08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B7BAC 000B4B0C  3B C4 00 08 */	addi r30, r4, 8
/* 800B7BB0 000B4B10  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B7BB4 000B4B14  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B7BB8 000B4B18  7C 7C 1B 78 */	mr r28, r3
/* 800B7BBC 000B4B1C  93 E1 00 08 */	stw r31, 8(r1)
/* 800B7BC0 000B4B20  83 A4 00 08 */	lwz r29, 8(r4)
/* 800B7BC4 000B4B24  93 C1 00 0C */	stw r30, 0xc(r1)
/* 800B7BC8 000B4B28  48 00 00 30 */	b lbl_800B7BF8
lbl_800B7BCC:
/* 800B7BCC 000B4B2C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 800B7BD0 000B4B30  7F 85 E3 78 */	mr r5, r28
/* 800B7BD4 000B4B34  38 80 00 00 */	li r4, 0
/* 800B7BD8 000B4B38  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7BDC 000B4B3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800B7BE0 000B4B40  7D 89 03 A6 */	mtctr r12
/* 800B7BE4 000B4B44  4E 80 04 21 */	bctrl
/* 800B7BE8 000B4B48  7F C3 F3 78 */	mr r3, r30
/* 800B7BEC 000B4B4C  7F A4 EB 78 */	mr r4, r29
/* 800B7BF0 000B4B50  48 28 49 F1 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B7BF4 000B4B54  7C 7D 1B 78 */	mr r29, r3
lbl_800B7BF8:
/* 800B7BF8 000B4B58  7C 1D F8 40 */	cmplw r29, r31
/* 800B7BFC 000B4B5C  38 00 00 00 */	li r0, 0
/* 800B7C00 000B4B60  40 82 00 0C */	bne lbl_800B7C0C
/* 800B7C04 000B4B64  7C 1E F0 40 */	cmplw r30, r30
/* 800B7C08 000B4B68  41 82 00 08 */	beq lbl_800B7C10
lbl_800B7C0C:
/* 800B7C0C 000B4B6C  38 00 00 01 */	li r0, 1
lbl_800B7C10:
/* 800B7C10 000B4B70  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B7C14 000B4B74  40 82 FF B8 */	bne lbl_800B7BCC
/* 800B7C18 000B4B78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7C1C 000B4B7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B7C20 000B4B80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B7C24 000B4B84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B7C28 000B4B88  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B7C2C 000B4B8C  7C 08 03 A6 */	mtlr r0
/* 800B7C30 000B4B90  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7C34 000B4B94  4E 80 00 20 */	blr

.global SuspendAllActiveEffects__17CParticleDatabaseFR13CStateManager
SuspendAllActiveEffects__17CParticleDatabaseFR13CStateManager:
/* 800B7C38 000B4B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7C3C 000B4B9C  7C 08 02 A6 */	mflr r0
/* 800B7C40 000B4BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7C44 000B4BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7C48 000B4BA8  7C 9F 23 78 */	mr r31, r4
/* 800B7C4C 000B4BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 800B7C50 000B4BB0  7C 7E 1B 78 */	mr r30, r3
/* 800B7C54 000B4BB4  7F E3 FB 78 */	mr r3, r31
/* 800B7C58 000B4BB8  38 9E 00 3C */	addi r4, r30, 0x3c
/* 800B7C5C 000B4BBC  4B FF FF 39 */	bl "SuspendAllActiveEffectsForParticleDB__17CParticleDatabaseFR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7C60 000B4BC0  7F E3 FB 78 */	mr r3, r31
/* 800B7C64 000B4BC4  38 9E 00 50 */	addi r4, r30, 0x50
/* 800B7C68 000B4BC8  4B FF FF 2D */	bl "SuspendAllActiveEffectsForParticleDB__17CParticleDatabaseFR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7C6C 000B4BCC  7F E3 FB 78 */	mr r3, r31
/* 800B7C70 000B4BD0  38 9E 00 64 */	addi r4, r30, 0x64
/* 800B7C74 000B4BD4  4B FF FF 21 */	bl "SuspendAllActiveEffectsForParticleDB__17CParticleDatabaseFR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7C78 000B4BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7C7C 000B4BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7C80 000B4BE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B7C84 000B4BE4  7C 08 03 A6 */	mtlr r0
/* 800B7C88 000B4BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7C8C 000B4BEC  4E 80 00 20 */	blr

.global DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager
DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager:
/* 800B7C90 000B4BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B7C94 000B4BF4  7C 08 02 A6 */	mflr r0
/* 800B7C98 000B4BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7C9C 000B4BFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B7CA0 000B4C00  3B E0 00 00 */	li r31, 0
/* 800B7CA4 000B4C04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B7CA8 000B4C08  3B C4 00 08 */	addi r30, r4, 8
/* 800B7CAC 000B4C0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B7CB0 000B4C10  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B7CB4 000B4C14  7C 7C 1B 78 */	mr r28, r3
/* 800B7CB8 000B4C18  93 E1 00 08 */	stw r31, 8(r1)
/* 800B7CBC 000B4C1C  83 A4 00 08 */	lwz r29, 8(r4)
/* 800B7CC0 000B4C20  93 C1 00 0C */	stw r30, 0xc(r1)
/* 800B7CC4 000B4C24  48 00 00 2C */	b lbl_800B7CF0
lbl_800B7CC8:
/* 800B7CC8 000B4C28  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 800B7CCC 000B4C2C  7F 84 E3 78 */	mr r4, r28
/* 800B7CD0 000B4C30  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7CD4 000B4C34  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 800B7CD8 000B4C38  7D 89 03 A6 */	mtctr r12
/* 800B7CDC 000B4C3C  4E 80 04 21 */	bctrl
/* 800B7CE0 000B4C40  7F C3 F3 78 */	mr r3, r30
/* 800B7CE4 000B4C44  7F A4 EB 78 */	mr r4, r29
/* 800B7CE8 000B4C48  48 28 48 F9 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B7CEC 000B4C4C  7C 7D 1B 78 */	mr r29, r3
lbl_800B7CF0:
/* 800B7CF0 000B4C50  7C 1D F8 40 */	cmplw r29, r31
/* 800B7CF4 000B4C54  38 00 00 00 */	li r0, 0
/* 800B7CF8 000B4C58  40 82 00 0C */	bne lbl_800B7D04
/* 800B7CFC 000B4C5C  7C 1E F0 40 */	cmplw r30, r30
/* 800B7D00 000B4C60  41 82 00 08 */	beq lbl_800B7D08
lbl_800B7D04:
/* 800B7D04 000B4C64  38 00 00 01 */	li r0, 1
lbl_800B7D08:
/* 800B7D08 000B4C68  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B7D0C 000B4C6C  40 82 FF BC */	bne lbl_800B7CC8
/* 800B7D10 000B4C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7D14 000B4C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B7D18 000B4C78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B7D1C 000B4C7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B7D20 000B4C80  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B7D24 000B4C84  7C 08 03 A6 */	mtlr r0
/* 800B7D28 000B4C88  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7D2C 000B4C8C  4E 80 00 20 */	blr

.global DeleteAllLights__17CParticleDatabaseCFR13CStateManager
DeleteAllLights__17CParticleDatabaseCFR13CStateManager:
/* 800B7D30 000B4C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7D34 000B4C94  7C 08 02 A6 */	mflr r0
/* 800B7D38 000B4C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7D3C 000B4C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7D40 000B4CA0  7C 9F 23 78 */	mr r31, r4
/* 800B7D44 000B4CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 800B7D48 000B4CA8  7C 7E 1B 78 */	mr r30, r3
/* 800B7D4C 000B4CAC  7F E3 FB 78 */	mr r3, r31
/* 800B7D50 000B4CB0  38 9E 00 3C */	addi r4, r30, 0x3c
/* 800B7D54 000B4CB4  4B FF FF 3D */	bl DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager
/* 800B7D58 000B4CB8  7F E3 FB 78 */	mr r3, r31
/* 800B7D5C 000B4CBC  38 9E 00 50 */	addi r4, r30, 0x50
/* 800B7D60 000B4CC0  4B FF FF 31 */	bl DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager
/* 800B7D64 000B4CC4  7F E3 FB 78 */	mr r3, r31
/* 800B7D68 000B4CC8  38 9E 00 64 */	addi r4, r30, 0x64
/* 800B7D6C 000B4CCC  4B FF FF 25 */	bl DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager
/* 800B7D70 000B4CD0  7F E3 FB 78 */	mr r3, r31
/* 800B7D74 000B4CD4  38 9E 00 78 */	addi r4, r30, 0x78
/* 800B7D78 000B4CD8  4B FF FF 19 */	bl DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager
/* 800B7D7C 000B4CDC  7F E3 FB 78 */	mr r3, r31
/* 800B7D80 000B4CE0  38 9E 00 8C */	addi r4, r30, 0x8c
/* 800B7D84 000B4CE4  4B FF FF 0D */	bl DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager
/* 800B7D88 000B4CE8  7F E3 FB 78 */	mr r3, r31
/* 800B7D8C 000B4CEC  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 800B7D90 000B4CF0  4B FF FF 01 */	bl DeleteAllLightsForParticleDB__17CParticleDatabaseFR13CStateManager
/* 800B7D94 000B4CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7D98 000B4CF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7D9C 000B4CFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B7DA0 000B4D00  7C 08 03 A6 */	mtlr r0
/* 800B7DA4 000B4D04  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7DA8 000B4D08  4E 80 00 20 */	blr

.global "RenderParticleGenMapMasked__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>ii"
"RenderParticleGenMapMasked__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>ii":
/* 800B7DAC 000B4D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B7DB0 000B4D10  7C 08 02 A6 */	mflr r0
/* 800B7DB4 000B4D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7DB8 000B4D18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B7DBC 000B4D1C  3B E3 00 08 */	addi r31, r3, 8
/* 800B7DC0 000B4D20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B7DC4 000B4D24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B7DC8 000B4D28  7C BD 2B 78 */	mr r29, r5
/* 800B7DCC 000B4D2C  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B7DD0 000B4D30  7C 9C 23 78 */	mr r28, r4
/* 800B7DD4 000B4D34  83 C3 00 08 */	lwz r30, 8(r3)
/* 800B7DD8 000B4D38  48 00 00 38 */	b lbl_800B7E10
lbl_800B7DDC:
/* 800B7DDC 000B4D3C  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 800B7DE0 000B4D40  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 800B7DE4 000B4D44  7F 80 00 38 */	and r0, r28, r0
/* 800B7DE8 000B4D48  7C 1D 00 40 */	cmplw r29, r0
/* 800B7DEC 000B4D4C  40 82 00 14 */	bne lbl_800B7E00
/* 800B7DF0 000B4D50  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7DF4 000B4D54  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800B7DF8 000B4D58  7D 89 03 A6 */	mtctr r12
/* 800B7DFC 000B4D5C  4E 80 04 21 */	bctrl
lbl_800B7E00:
/* 800B7E00 000B4D60  7F E3 FB 78 */	mr r3, r31
/* 800B7E04 000B4D64  7F C4 F3 78 */	mr r4, r30
/* 800B7E08 000B4D68  48 28 47 D9 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B7E0C 000B4D6C  7C 7E 1B 78 */	mr r30, r3
lbl_800B7E10:
/* 800B7E10 000B4D70  28 1E 00 00 */	cmplwi r30, 0
/* 800B7E14 000B4D74  38 00 00 00 */	li r0, 0
/* 800B7E18 000B4D78  40 82 00 0C */	bne lbl_800B7E24
/* 800B7E1C 000B4D7C  7C 1F F8 40 */	cmplw r31, r31
/* 800B7E20 000B4D80  41 82 00 08 */	beq lbl_800B7E28
lbl_800B7E24:
/* 800B7E24 000B4D84  38 00 00 01 */	li r0, 1
lbl_800B7E28:
/* 800B7E28 000B4D88  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B7E2C 000B4D8C  40 82 FF B0 */	bne lbl_800B7DDC
/* 800B7E30 000B4D90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7E34 000B4D94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B7E38 000B4D98  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B7E3C 000B4D9C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B7E40 000B4DA0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B7E44 000B4DA4  7C 08 03 A6 */	mtlr r0
/* 800B7E48 000B4DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7E4C 000B4DAC  4E 80 00 20 */	blr

.global "RenderParticleGenMap__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
"RenderParticleGenMap__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>":
/* 800B7E50 000B4DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7E54 000B4DB4  7C 08 02 A6 */	mflr r0
/* 800B7E58 000B4DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7E5C 000B4DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7E60 000B4DC0  3B E3 00 08 */	addi r31, r3, 8
/* 800B7E64 000B4DC4  93 C1 00 08 */	stw r30, 8(r1)
/* 800B7E68 000B4DC8  83 C3 00 08 */	lwz r30, 8(r3)
/* 800B7E6C 000B4DCC  48 00 00 28 */	b lbl_800B7E94
lbl_800B7E70:
/* 800B7E70 000B4DD0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 800B7E74 000B4DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7E78 000B4DD8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800B7E7C 000B4DDC  7D 89 03 A6 */	mtctr r12
/* 800B7E80 000B4DE0  4E 80 04 21 */	bctrl
/* 800B7E84 000B4DE4  7F E3 FB 78 */	mr r3, r31
/* 800B7E88 000B4DE8  7F C4 F3 78 */	mr r4, r30
/* 800B7E8C 000B4DEC  48 28 47 55 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B7E90 000B4DF0  7C 7E 1B 78 */	mr r30, r3
lbl_800B7E94:
/* 800B7E94 000B4DF4  28 1E 00 00 */	cmplwi r30, 0
/* 800B7E98 000B4DF8  38 00 00 00 */	li r0, 0
/* 800B7E9C 000B4DFC  40 82 00 0C */	bne lbl_800B7EA8
/* 800B7EA0 000B4E00  7C 1F F8 40 */	cmplw r31, r31
/* 800B7EA4 000B4E04  41 82 00 08 */	beq lbl_800B7EAC
lbl_800B7EA8:
/* 800B7EA8 000B4E08  38 00 00 01 */	li r0, 1
lbl_800B7EAC:
/* 800B7EAC 000B4E0C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B7EB0 000B4E10  40 82 FF C0 */	bne lbl_800B7E70
/* 800B7EB4 000B4E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7EB8 000B4E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7EBC 000B4E1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B7EC0 000B4E20  7C 08 03 A6 */	mtlr r0
/* 800B7EC4 000B4E24  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7EC8 000B4E28  4E 80 00 20 */	blr

.global RenderSystemsToBeDrawnLastMasked__17CParticleDatabaseCFii
RenderSystemsToBeDrawnLastMasked__17CParticleDatabaseCFii:
/* 800B7ECC 000B4E2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B7ED0 000B4E30  7C 08 02 A6 */	mflr r0
/* 800B7ED4 000B4E34  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7ED8 000B4E38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B7EDC 000B4E3C  7C BF 2B 78 */	mr r31, r5
/* 800B7EE0 000B4E40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B7EE4 000B4E44  7C 9E 23 78 */	mr r30, r4
/* 800B7EE8 000B4E48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B7EEC 000B4E4C  7C 7D 1B 78 */	mr r29, r3
/* 800B7EF0 000B4E50  38 7D 00 A0 */	addi r3, r29, 0xa0
/* 800B7EF4 000B4E54  4B FF FE B9 */	bl "RenderParticleGenMapMasked__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>ii"
/* 800B7EF8 000B4E58  7F C4 F3 78 */	mr r4, r30
/* 800B7EFC 000B4E5C  7F E5 FB 78 */	mr r5, r31
/* 800B7F00 000B4E60  38 7D 00 64 */	addi r3, r29, 0x64
/* 800B7F04 000B4E64  4B FF FE A9 */	bl "RenderParticleGenMapMasked__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>ii"
/* 800B7F08 000B4E68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7F0C 000B4E6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B7F10 000B4E70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B7F14 000B4E74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B7F18 000B4E78  7C 08 03 A6 */	mtlr r0
/* 800B7F1C 000B4E7C  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7F20 000B4E80  4E 80 00 20 */	blr

.global RenderSystemsToBeDrawnLast__17CParticleDatabaseCFv
RenderSystemsToBeDrawnLast__17CParticleDatabaseCFv:
/* 800B7F24 000B4E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7F28 000B4E88  7C 08 02 A6 */	mflr r0
/* 800B7F2C 000B4E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7F30 000B4E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7F34 000B4E94  7C 7F 1B 78 */	mr r31, r3
/* 800B7F38 000B4E98  38 7F 00 A0 */	addi r3, r31, 0xa0
/* 800B7F3C 000B4E9C  4B FF FF 15 */	bl "RenderParticleGenMap__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7F40 000B4EA0  38 7F 00 64 */	addi r3, r31, 0x64
/* 800B7F44 000B4EA4  4B FF FF 0D */	bl "RenderParticleGenMap__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7F48 000B4EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7F4C 000B4EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7F50 000B4EB0  7C 08 03 A6 */	mtlr r0
/* 800B7F54 000B4EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7F58 000B4EB8  4E 80 00 20 */	blr

.global RenderSystemsToBeDrawnFirstMasked__17CParticleDatabaseCFii
RenderSystemsToBeDrawnFirstMasked__17CParticleDatabaseCFii:
/* 800B7F5C 000B4EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B7F60 000B4EC0  7C 08 02 A6 */	mflr r0
/* 800B7F64 000B4EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7F68 000B4EC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B7F6C 000B4ECC  7C BF 2B 78 */	mr r31, r5
/* 800B7F70 000B4ED0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B7F74 000B4ED4  7C 9E 23 78 */	mr r30, r4
/* 800B7F78 000B4ED8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B7F7C 000B4EDC  7C 7D 1B 78 */	mr r29, r3
/* 800B7F80 000B4EE0  38 7D 00 8C */	addi r3, r29, 0x8c
/* 800B7F84 000B4EE4  4B FF FE 29 */	bl "RenderParticleGenMapMasked__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>ii"
/* 800B7F88 000B4EE8  7F C4 F3 78 */	mr r4, r30
/* 800B7F8C 000B4EEC  7F E5 FB 78 */	mr r5, r31
/* 800B7F90 000B4EF0  38 7D 00 50 */	addi r3, r29, 0x50
/* 800B7F94 000B4EF4  4B FF FE 19 */	bl "RenderParticleGenMapMasked__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>ii"
/* 800B7F98 000B4EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7F9C 000B4EFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B7FA0 000B4F00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B7FA4 000B4F04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B7FA8 000B4F08  7C 08 03 A6 */	mtlr r0
/* 800B7FAC 000B4F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7FB0 000B4F10  4E 80 00 20 */	blr

.global RenderSystemsToBeDrawnFirst__17CParticleDatabaseCFv
RenderSystemsToBeDrawnFirst__17CParticleDatabaseCFv:
/* 800B7FB4 000B4F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7FB8 000B4F18  7C 08 02 A6 */	mflr r0
/* 800B7FBC 000B4F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7FC0 000B4F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7FC4 000B4F24  7C 7F 1B 78 */	mr r31, r3
/* 800B7FC8 000B4F28  38 7F 00 8C */	addi r3, r31, 0x8c
/* 800B7FCC 000B4F2C  4B FF FE 85 */	bl "RenderParticleGenMap__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7FD0 000B4F30  38 7F 00 50 */	addi r3, r31, 0x50
/* 800B7FD4 000B4F34  4B FF FE 7D */	bl "RenderParticleGenMap__17CParticleDatabaseFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>"
/* 800B7FD8 000B4F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7FDC 000B4F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7FE0 000B4F40  7C 08 03 A6 */	mtlr r0
/* 800B7FE4 000B4F44  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7FE8 000B4F48  4E 80 00 20 */	blr

.global "AddToRendererClippedParticleGenMapMasked__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanesii"
"AddToRendererClippedParticleGenMapMasked__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanesii":
/* 800B7FEC 000B4F4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800B7FF0 000B4F50  7C 08 02 A6 */	mflr r0
/* 800B7FF4 000B4F54  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B7FF8 000B4F58  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800B7FFC 000B4F5C  7C BA 2B 78 */	mr r26, r5
/* 800B8000 000B4F60  7C DB 33 78 */	mr r27, r6
/* 800B8004 000B4F64  7C FC 3B 78 */	mr r28, r7
/* 800B8008 000B4F68  3B E4 00 08 */	addi r31, r4, 8
/* 800B800C 000B4F6C  83 C4 00 08 */	lwz r30, 8(r4)
/* 800B8010 000B4F70  48 00 00 7C */	b lbl_800B808C
lbl_800B8014:
/* 800B8014 000B4F74  83 BE 00 24 */	lwz r29, 0x24(r30)
/* 800B8018 000B4F78  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 800B801C 000B4F7C  7F 60 00 38 */	and r0, r27, r0
/* 800B8020 000B4F80  7C 1C 00 40 */	cmplw r28, r0
/* 800B8024 000B4F84  40 82 00 58 */	bne lbl_800B807C
/* 800B8028 000B4F88  7F A4 EB 78 */	mr r4, r29
/* 800B802C 000B4F8C  38 61 00 08 */	addi r3, r1, 8
/* 800B8030 000B4F90  81 9D 00 00 */	lwz r12, 0(r29)
/* 800B8034 000B4F94  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800B8038 000B4F98  7D 89 03 A6 */	mtctr r12
/* 800B803C 000B4F9C  4E 80 04 21 */	bctrl
/* 800B8040 000B4FA0  7F 43 D3 78 */	mr r3, r26
/* 800B8044 000B4FA4  38 81 00 08 */	addi r4, r1, 8
/* 800B8048 000B4FA8  48 28 D1 41 */	bl "BoxInFrustumPlanes__14CFrustumPlanesCFRCQ24rstl24optional_object<6CAABox>"
/* 800B804C 000B4FAC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800B8050 000B4FB0  38 00 00 00 */	li r0, 0
/* 800B8054 000B4FB4  20 63 00 01 */	subfic r3, r3, 1
/* 800B8058 000B4FB8  98 01 00 20 */	stb r0, 0x20(r1)
/* 800B805C 000B4FBC  7C 60 00 34 */	cntlzw r0, r3
/* 800B8060 000B4FC0  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 800B8064 000B4FC4  41 82 00 18 */	beq lbl_800B807C
/* 800B8068 000B4FC8  7F A3 EB 78 */	mr r3, r29
/* 800B806C 000B4FCC  81 9D 00 00 */	lwz r12, 0(r29)
/* 800B8070 000B4FD0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800B8074 000B4FD4  7D 89 03 A6 */	mtctr r12
/* 800B8078 000B4FD8  4E 80 04 21 */	bctrl
lbl_800B807C:
/* 800B807C 000B4FDC  7F E3 FB 78 */	mr r3, r31
/* 800B8080 000B4FE0  7F C4 F3 78 */	mr r4, r30
/* 800B8084 000B4FE4  48 28 45 5D */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B8088 000B4FE8  7C 7E 1B 78 */	mr r30, r3
lbl_800B808C:
/* 800B808C 000B4FEC  28 1E 00 00 */	cmplwi r30, 0
/* 800B8090 000B4FF0  38 00 00 00 */	li r0, 0
/* 800B8094 000B4FF4  40 82 00 0C */	bne lbl_800B80A0
/* 800B8098 000B4FF8  7C 1F F8 40 */	cmplw r31, r31
/* 800B809C 000B4FFC  41 82 00 08 */	beq lbl_800B80A4
lbl_800B80A0:
/* 800B80A0 000B5000  38 00 00 01 */	li r0, 1
lbl_800B80A4:
/* 800B80A4 000B5004  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B80A8 000B5008  40 82 FF 6C */	bne lbl_800B8014
/* 800B80AC 000B500C  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800B80B0 000B5010  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800B80B4 000B5014  7C 08 03 A6 */	mtlr r0
/* 800B80B8 000B5018  38 21 00 40 */	addi r1, r1, 0x40
/* 800B80BC 000B501C  4E 80 00 20 */	blr

.global "AddToRendererClippedParticleGenMap__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanes"
"AddToRendererClippedParticleGenMap__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanes":
/* 800B80C0 000B5020  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800B80C4 000B5024  7C 08 02 A6 */	mflr r0
/* 800B80C8 000B5028  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B80CC 000B502C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800B80D0 000B5030  3B E4 00 08 */	addi r31, r4, 8
/* 800B80D4 000B5034  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800B80D8 000B5038  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800B80DC 000B503C  93 81 00 30 */	stw r28, 0x30(r1)
/* 800B80E0 000B5040  7C BC 2B 78 */	mr r28, r5
/* 800B80E4 000B5044  83 C4 00 08 */	lwz r30, 8(r4)
/* 800B80E8 000B5048  48 00 00 6C */	b lbl_800B8154
lbl_800B80EC:
/* 800B80EC 000B504C  83 BE 00 24 */	lwz r29, 0x24(r30)
/* 800B80F0 000B5050  38 61 00 08 */	addi r3, r1, 8
/* 800B80F4 000B5054  7F A4 EB 78 */	mr r4, r29
/* 800B80F8 000B5058  81 9D 00 00 */	lwz r12, 0(r29)
/* 800B80FC 000B505C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800B8100 000B5060  7D 89 03 A6 */	mtctr r12
/* 800B8104 000B5064  4E 80 04 21 */	bctrl
/* 800B8108 000B5068  7F 83 E3 78 */	mr r3, r28
/* 800B810C 000B506C  38 81 00 08 */	addi r4, r1, 8
/* 800B8110 000B5070  48 28 D0 79 */	bl "BoxInFrustumPlanes__14CFrustumPlanesCFRCQ24rstl24optional_object<6CAABox>"
/* 800B8114 000B5074  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800B8118 000B5078  38 00 00 00 */	li r0, 0
/* 800B811C 000B507C  20 63 00 01 */	subfic r3, r3, 1
/* 800B8120 000B5080  98 01 00 20 */	stb r0, 0x20(r1)
/* 800B8124 000B5084  7C 60 00 34 */	cntlzw r0, r3
/* 800B8128 000B5088  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 800B812C 000B508C  41 82 00 18 */	beq lbl_800B8144
/* 800B8130 000B5090  7F A3 EB 78 */	mr r3, r29
/* 800B8134 000B5094  81 9D 00 00 */	lwz r12, 0(r29)
/* 800B8138 000B5098  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800B813C 000B509C  7D 89 03 A6 */	mtctr r12
/* 800B8140 000B50A0  4E 80 04 21 */	bctrl
lbl_800B8144:
/* 800B8144 000B50A4  7F E3 FB 78 */	mr r3, r31
/* 800B8148 000B50A8  7F C4 F3 78 */	mr r4, r30
/* 800B814C 000B50AC  48 28 44 95 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B8150 000B50B0  7C 7E 1B 78 */	mr r30, r3
lbl_800B8154:
/* 800B8154 000B50B4  28 1E 00 00 */	cmplwi r30, 0
/* 800B8158 000B50B8  38 00 00 00 */	li r0, 0
/* 800B815C 000B50BC  40 82 00 0C */	bne lbl_800B8168
/* 800B8160 000B50C0  7C 1F F8 40 */	cmplw r31, r31
/* 800B8164 000B50C4  41 82 00 08 */	beq lbl_800B816C
lbl_800B8168:
/* 800B8168 000B50C8  38 00 00 01 */	li r0, 1
lbl_800B816C:
/* 800B816C 000B50CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B8170 000B50D0  40 82 FF 7C */	bne lbl_800B80EC
/* 800B8174 000B50D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800B8178 000B50D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800B817C 000B50DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800B8180 000B50E0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 800B8184 000B50E4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 800B8188 000B50E8  7C 08 03 A6 */	mtlr r0
/* 800B818C 000B50EC  38 21 00 40 */	addi r1, r1, 0x40
/* 800B8190 000B50F0  4E 80 00 20 */	blr

.global AddToRendererClippedMasked__17CParticleDatabaseCFRC14CFrustumPlanesii
AddToRendererClippedMasked__17CParticleDatabaseCFRC14CFrustumPlanesii:
/* 800B8194 000B50F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B8198 000B50F8  7C 08 02 A6 */	mflr r0
/* 800B819C 000B50FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B81A0 000B5100  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B81A4 000B5104  7C DF 33 78 */	mr r31, r6
/* 800B81A8 000B5108  7F E7 FB 78 */	mr r7, r31
/* 800B81AC 000B510C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B81B0 000B5110  7C BE 2B 78 */	mr r30, r5
/* 800B81B4 000B5114  7F C6 F3 78 */	mr r6, r30
/* 800B81B8 000B5118  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B81BC 000B511C  7C 9D 23 78 */	mr r29, r4
/* 800B81C0 000B5120  7F A5 EB 78 */	mr r5, r29
/* 800B81C4 000B5124  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B81C8 000B5128  7C 7C 1B 78 */	mr r28, r3
/* 800B81CC 000B512C  38 9C 00 78 */	addi r4, r28, 0x78
/* 800B81D0 000B5130  4B FF FE 1D */	bl "AddToRendererClippedParticleGenMapMasked__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanesii"
/* 800B81D4 000B5134  7F 83 E3 78 */	mr r3, r28
/* 800B81D8 000B5138  7F A5 EB 78 */	mr r5, r29
/* 800B81DC 000B513C  7F C6 F3 78 */	mr r6, r30
/* 800B81E0 000B5140  7F E7 FB 78 */	mr r7, r31
/* 800B81E4 000B5144  38 9C 00 3C */	addi r4, r28, 0x3c
/* 800B81E8 000B5148  4B FF FE 05 */	bl "AddToRendererClippedParticleGenMapMasked__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanesii"
/* 800B81EC 000B514C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B81F0 000B5150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B81F4 000B5154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B81F8 000B5158  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B81FC 000B515C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B8200 000B5160  7C 08 03 A6 */	mtlr r0
/* 800B8204 000B5164  38 21 00 20 */	addi r1, r1, 0x20
/* 800B8208 000B5168  4E 80 00 20 */	blr

.global AddToRendererClipped__17CParticleDatabaseCFRC14CFrustumPlanes
AddToRendererClipped__17CParticleDatabaseCFRC14CFrustumPlanes:
/* 800B820C 000B516C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B8210 000B5170  7C 08 02 A6 */	mflr r0
/* 800B8214 000B5174  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B8218 000B5178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B821C 000B517C  7C 9F 23 78 */	mr r31, r4
/* 800B8220 000B5180  7F E5 FB 78 */	mr r5, r31
/* 800B8224 000B5184  93 C1 00 08 */	stw r30, 8(r1)
/* 800B8228 000B5188  7C 7E 1B 78 */	mr r30, r3
/* 800B822C 000B518C  38 9E 00 78 */	addi r4, r30, 0x78
/* 800B8230 000B5190  4B FF FE 91 */	bl "AddToRendererClippedParticleGenMap__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanes"
/* 800B8234 000B5194  7F C3 F3 78 */	mr r3, r30
/* 800B8238 000B5198  7F E5 FB 78 */	mr r5, r31
/* 800B823C 000B519C  38 9E 00 3C */	addi r4, r30, 0x3c
/* 800B8240 000B51A0  4B FF FE 81 */	bl "AddToRendererClippedParticleGenMap__17CParticleDatabaseCFRCQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>RC14CFrustumPlanes"
/* 800B8244 000B51A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B8248 000B51A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B824C 000B51AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B8250 000B51B0  7C 08 03 A6 */	mtlr r0
/* 800B8254 000B51B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B8258 000B51B8  4E 80 00 20 */	blr

.global "UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b"
"UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b":
/* 800B825C 000B51BC  94 21 FD 40 */	stwu r1, -0x2c0(r1)
/* 800B8260 000B51C0  7C 08 02 A6 */	mflr r0
/* 800B8264 000B51C4  90 01 02 C4 */	stw r0, 0x2c4(r1)
/* 800B8268 000B51C8  DB E1 02 B0 */	stfd f31, 0x2b0(r1)
/* 800B826C 000B51CC  F3 E1 02 B8 */	psq_st f31, 696(r1), 0, qr0
/* 800B8270 000B51D0  BE C1 02 88 */	stmw r22, 0x288(r1)
/* 800B8274 000B51D4  7D 1F 43 78 */	mr r31, r8
/* 800B8278 000B51D8  FF E0 08 90 */	fmr f31, f1
/* 800B827C 000B51DC  80 08 00 08 */	lwz r0, 8(r8)
/* 800B8280 000B51E0  3B 5F 00 08 */	addi r26, r31, 8
/* 800B8284 000B51E4  93 41 00 2C */	stw r26, 0x2c(r1)
/* 800B8288 000B51E8  7C 7C 1B 78 */	mr r28, r3
/* 800B828C 000B51EC  7C 99 23 78 */	mr r25, r4
/* 800B8290 000B51F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 800B8294 000B51F4  7C BB 2B 78 */	mr r27, r5
/* 800B8298 000B51F8  7C DD 33 78 */	mr r29, r6
/* 800B829C 000B51FC  7C FE 3B 78 */	mr r30, r7
/* 800B82A0 000B5200  93 41 00 14 */	stw r26, 0x14(r1)
/* 800B82A4 000B5204  7D 38 4B 78 */	mr r24, r9
/* 800B82A8 000B5208  48 00 06 DC */	b lbl_800B8984
lbl_800B82AC:
/* 800B82AC 000B520C  82 E4 00 24 */	lwz r23, 0x24(r4)
/* 800B82B0 000B5210  88 17 00 24 */	lbz r0, 0x24(r23)
/* 800B82B4 000B5214  28 00 00 00 */	cmplwi r0, 0
/* 800B82B8 000B5218  41 82 04 A8 */	beq lbl_800B8760
/* 800B82BC 000B521C  80 17 00 80 */	lwz r0, 0x80(r23)
/* 800B82C0 000B5220  2C 00 00 01 */	cmpwi r0, 1
/* 800B82C4 000B5224  41 82 04 30 */	beq lbl_800B86F4
/* 800B82C8 000B5228  40 80 04 2C */	bge lbl_800B86F4
/* 800B82CC 000B522C  2C 00 00 00 */	cmpwi r0, 0
/* 800B82D0 000B5230  40 80 00 08 */	bge lbl_800B82D8
/* 800B82D4 000B5234  48 00 04 20 */	b lbl_800B86F4
lbl_800B82D8:
/* 800B82D8 000B5238  82 D7 00 28 */	lwz r22, 0x28(r23)
/* 800B82DC 000B523C  7F 24 CB 78 */	mr r4, r25
/* 800B82E0 000B5240  38 61 00 08 */	addi r3, r1, 8
/* 800B82E4 000B5244  38 B7 00 10 */	addi r5, r23, 0x10
/* 800B82E8 000B5248  48 23 F9 7D */	bl "GetSegIdFromString__15CCharLayoutInfoCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800B82EC 000B524C  88 01 00 08 */	lbz r0, 8(r1)
/* 800B82F0 000B5250  28 00 00 FF */	cmplwi r0, 0xff
/* 800B82F4 000B5254  98 01 00 0C */	stb r0, 0xc(r1)
/* 800B82F8 000B5258  40 82 00 18 */	bne lbl_800B8310
/* 800B82FC 000B525C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800B8300 000B5260  80 81 00 28 */	lwz r4, 0x28(r1)
/* 800B8304 000B5264  48 28 42 DD */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B8308 000B5268  90 61 00 28 */	stw r3, 0x28(r1)
/* 800B830C 000B526C  48 00 06 78 */	b lbl_800B8984
lbl_800B8310:
/* 800B8310 000B5270  7F 83 E3 78 */	mr r3, r28
/* 800B8314 000B5274  38 81 00 0C */	addi r4, r1, 0xc
/* 800B8318 000B5278  48 2B 0B AD */	bl ContainsDataFor__17CPoseAsTransformsCFRC6CSegId
/* 800B831C 000B527C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8320 000B5280  40 82 00 18 */	bne lbl_800B8338
/* 800B8324 000B5284  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800B8328 000B5288  80 81 00 28 */	lwz r4, 0x28(r1)
/* 800B832C 000B528C  48 28 42 B5 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B8330 000B5290  90 61 00 28 */	stw r3, 0x28(r1)
/* 800B8334 000B5294  48 00 06 50 */	b lbl_800B8984
lbl_800B8338:
/* 800B8338 000B5298  7F 83 E3 78 */	mr r3, r28
/* 800B833C 000B529C  38 81 00 0C */	addi r4, r1, 0xc
/* 800B8340 000B52A0  48 2B 0C 19 */	bl GetOffset__17CPoseAsTransformsCFRC6CSegId
/* 800B8344 000B52A4  2C 16 00 00 */	cmpwi r22, 0
/* 800B8348 000B52A8  C0 63 00 00 */	lfs f3, 0(r3)
/* 800B834C 000B52AC  C0 83 00 04 */	lfs f4, 4(r3)
/* 800B8350 000B52B0  C0 A3 00 08 */	lfs f5, 8(r3)
/* 800B8354 000B52B4  41 82 00 14 */	beq lbl_800B8368
/* 800B8358 000B52B8  41 80 03 9C */	blt lbl_800B86F4
/* 800B835C 000B52BC  2C 16 00 03 */	cmpwi r22, 3
/* 800B8360 000B52C0  40 80 03 94 */	bge lbl_800B86F4
/* 800B8364 000B52C4  48 00 01 74 */	b lbl_800B84D8
lbl_800B8368:
/* 800B8368 000B52C8  88 17 00 40 */	lbz r0, 0x40(r23)
/* 800B836C 000B52CC  28 00 00 00 */	cmplwi r0, 0
/* 800B8370 000B52D0  41 82 00 BC */	beq lbl_800B842C
/* 800B8374 000B52D4  C0 5D 00 08 */	lfs f2, 8(r29)
/* 800B8378 000B52D8  3A C1 00 6C */	addi r22, r1, 0x6c
/* 800B837C 000B52DC  C0 3D 00 04 */	lfs f1, 4(r29)
/* 800B8380 000B52E0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800B8384 000B52E4  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800B8388 000B52E8  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 800B838C 000B52EC  EC 24 00 72 */	fmuls f1, f4, f1
/* 800B8390 000B52F0  EC 03 00 32 */	fmuls f0, f3, f0
/* 800B8394 000B52F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B8398 000B52F8  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 800B839C 000B52FC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800B83A0 000B5300  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 800B83A4 000B5304  41 82 00 10 */	beq lbl_800B83B4
/* 800B83A8 000B5308  3C 60 80 5A */	lis r3, lbl_805A65FC@ha
/* 800B83AC 000B530C  38 63 65 FC */	addi r3, r3, lbl_805A65FC@l
/* 800B83B0 000B5310  48 00 00 10 */	b lbl_800B83C0
lbl_800B83B4:
/* 800B83B4 000B5314  7F 83 E3 78 */	mr r3, r28
/* 800B83B8 000B5318  38 81 00 0C */	addi r4, r1, 0xc
/* 800B83BC 000B531C  48 2B 0B C1 */	bl GetTransformMinusOffset__17CPoseAsTransformsCFRC6CSegId
lbl_800B83C0:
/* 800B83C0 000B5320  7C 64 1B 78 */	mr r4, r3
/* 800B83C4 000B5324  7E C5 B3 78 */	mr r5, r22
/* 800B83C8 000B5328  38 61 02 58 */	addi r3, r1, 0x258
/* 800B83CC 000B532C  48 25 AE AD */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 800B83D0 000B5330  7F 64 DB 78 */	mr r4, r27
/* 800B83D4 000B5334  38 61 01 98 */	addi r3, r1, 0x198
/* 800B83D8 000B5338  38 A1 02 58 */	addi r5, r1, 0x258
/* 800B83DC 000B533C  48 25 A5 75 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 800B83E0 000B5340  38 61 02 28 */	addi r3, r1, 0x228
/* 800B83E4 000B5344  38 81 01 98 */	addi r4, r1, 0x198
/* 800B83E8 000B5348  48 25 A7 8D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800B83EC 000B534C  38 61 01 68 */	addi r3, r1, 0x168
/* 800B83F0 000B5350  38 81 02 28 */	addi r4, r1, 0x228
/* 800B83F4 000B5354  48 25 A8 4D */	bl GetRotation__12CTransform4fCFv
/* 800B83F8 000B5358  38 77 00 44 */	addi r3, r23, 0x44
/* 800B83FC 000B535C  38 81 01 68 */	addi r4, r1, 0x168
/* 800B8400 000B5360  48 25 A7 41 */	bl __as__12CTransform4fFRC12CTransform4f
/* 800B8404 000B5364  C0 61 02 54 */	lfs f3, 0x254(r1)
/* 800B8408 000B5368  38 00 00 00 */	li r0, 0
/* 800B840C 000B536C  C0 41 02 44 */	lfs f2, 0x244(r1)
/* 800B8410 000B5370  C0 21 02 34 */	lfs f1, 0x234(r1)
/* 800B8414 000B5374  C0 02 8D 20 */	lfs f0, lbl_805AAA40@sda21(r2)
/* 800B8418 000B5378  D0 37 00 74 */	stfs f1, 0x74(r23)
/* 800B841C 000B537C  D0 57 00 78 */	stfs f2, 0x78(r23)
/* 800B8420 000B5380  D0 77 00 7C */	stfs f3, 0x7c(r23)
/* 800B8424 000B5384  D0 17 00 20 */	stfs f0, 0x20(r23)
/* 800B8428 000B5388  98 17 00 40 */	stb r0, 0x40(r23)
lbl_800B842C:
/* 800B842C 000B538C  7E E3 BB 78 */	mr r3, r23
/* 800B8430 000B5390  7F C5 F3 78 */	mr r5, r30
/* 800B8434 000B5394  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8438 000B5398  38 97 00 44 */	addi r4, r23, 0x44
/* 800B843C 000B539C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800B8440 000B53A0  7D 89 03 A6 */	mtctr r12
/* 800B8444 000B53A4  4E 80 04 21 */	bctrl
/* 800B8448 000B53A8  7E E3 BB 78 */	mr r3, r23
/* 800B844C 000B53AC  7F C5 F3 78 */	mr r5, r30
/* 800B8450 000B53B0  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8454 000B53B4  38 97 00 74 */	addi r4, r23, 0x74
/* 800B8458 000B53B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800B845C 000B53BC  7D 89 03 A6 */	mtctr r12
/* 800B8460 000B53C0  4E 80 04 21 */	bctrl
/* 800B8464 000B53C4  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 800B8468 000B53C8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800B846C 000B53CC  41 82 00 50 */	beq lbl_800B84BC
/* 800B8470 000B53D0  C0 37 00 38 */	lfs f1, 0x38(r23)
/* 800B8474 000B53D4  7E E3 BB 78 */	mr r3, r23
/* 800B8478 000B53D8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 800B847C 000B53DC  38 81 00 60 */	addi r4, r1, 0x60
/* 800B8480 000B53E0  C0 77 00 34 */	lfs f3, 0x34(r23)
/* 800B8484 000B53E4  C0 5D 00 04 */	lfs f2, 4(r29)
/* 800B8488 000B53E8  EC 81 00 32 */	fmuls f4, f1, f0
/* 800B848C 000B53EC  C0 37 00 30 */	lfs f1, 0x30(r23)
/* 800B8490 000B53F0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800B8494 000B53F4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800B8498 000B53F8  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 800B849C 000B53FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B84A0 000B5400  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 800B84A4 000B5404  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800B84A8 000B5408  81 97 00 00 */	lwz r12, 0(r23)
/* 800B84AC 000B540C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800B84B0 000B5410  7D 89 03 A6 */	mtctr r12
/* 800B84B4 000B5414  4E 80 04 21 */	bctrl
/* 800B84B8 000B5418  48 00 02 3C */	b lbl_800B86F4
lbl_800B84BC:
/* 800B84BC 000B541C  7E E3 BB 78 */	mr r3, r23
/* 800B84C0 000B5420  38 97 00 30 */	addi r4, r23, 0x30
/* 800B84C4 000B5424  81 97 00 00 */	lwz r12, 0(r23)
/* 800B84C8 000B5428  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800B84CC 000B542C  7D 89 03 A6 */	mtctr r12
/* 800B84D0 000B5430  4E 80 04 21 */	bctrl
/* 800B84D4 000B5434  48 00 02 20 */	b lbl_800B86F4
lbl_800B84D8:
/* 800B84D8 000B5438  88 17 00 40 */	lbz r0, 0x40(r23)
/* 800B84DC 000B543C  28 00 00 00 */	cmplwi r0, 0
/* 800B84E0 000B5440  41 82 00 14 */	beq lbl_800B84F4
/* 800B84E4 000B5444  C0 02 8D 20 */	lfs f0, lbl_805AAA40@sda21(r2)
/* 800B84E8 000B5448  38 00 00 00 */	li r0, 0
/* 800B84EC 000B544C  D0 17 00 20 */	stfs f0, 0x20(r23)
/* 800B84F0 000B5450  98 17 00 40 */	stb r0, 0x40(r23)
lbl_800B84F4:
/* 800B84F4 000B5454  C0 5D 00 08 */	lfs f2, 8(r29)
/* 800B84F8 000B5458  7F 83 E3 78 */	mr r3, r28
/* 800B84FC 000B545C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 800B8500 000B5460  38 81 00 0C */	addi r4, r1, 0xc
/* 800B8504 000B5464  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800B8508 000B5468  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800B850C 000B546C  EC 24 00 72 */	fmuls f1, f4, f1
/* 800B8510 000B5470  EC 03 00 32 */	fmuls f0, f3, f0
/* 800B8514 000B5474  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 800B8518 000B5478  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800B851C 000B547C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 800B8520 000B5480  48 2B 0A 5D */	bl GetTransformMinusOffset__17CPoseAsTransformsCFRC6CSegId
/* 800B8524 000B5484  7C 64 1B 78 */	mr r4, r3
/* 800B8528 000B5488  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 800B852C 000B548C  38 A1 00 54 */	addi r5, r1, 0x54
/* 800B8530 000B5490  48 25 AD 49 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 800B8534 000B5494  7F 64 DB 78 */	mr r4, r27
/* 800B8538 000B5498  38 61 01 38 */	addi r3, r1, 0x138
/* 800B853C 000B549C  38 A1 01 F8 */	addi r5, r1, 0x1f8
/* 800B8540 000B54A0  48 25 A4 11 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 800B8544 000B54A4  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 800B8548 000B54A8  38 81 01 38 */	addi r4, r1, 0x138
/* 800B854C 000B54AC  48 25 A6 29 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800B8550 000B54B0  2C 16 00 01 */	cmpwi r22, 1
/* 800B8554 000B54B4  40 82 00 9C */	bne lbl_800B85F0
/* 800B8558 000B54B8  C0 41 01 D4 */	lfs f2, 0x1d4(r1)
/* 800B855C 000B54BC  7E E3 BB 78 */	mr r3, r23
/* 800B8560 000B54C0  C0 21 01 E4 */	lfs f1, 0x1e4(r1)
/* 800B8564 000B54C4  7F C5 F3 78 */	mr r5, r30
/* 800B8568 000B54C8  C0 01 01 F4 */	lfs f0, 0x1f4(r1)
/* 800B856C 000B54CC  38 81 00 48 */	addi r4, r1, 0x48
/* 800B8570 000B54D0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 800B8574 000B54D4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 800B8578 000B54D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800B857C 000B54DC  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8580 000B54E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800B8584 000B54E4  7D 89 03 A6 */	mtctr r12
/* 800B8588 000B54E8  4E 80 04 21 */	bctrl
/* 800B858C 000B54EC  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 800B8590 000B54F0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B8594 000B54F4  41 82 00 30 */	beq lbl_800B85C4
/* 800B8598 000B54F8  7F 64 DB 78 */	mr r4, r27
/* 800B859C 000B54FC  38 61 01 08 */	addi r3, r1, 0x108
/* 800B85A0 000B5500  48 25 A6 A1 */	bl GetRotation__12CTransform4fCFv
/* 800B85A4 000B5504  7E E3 BB 78 */	mr r3, r23
/* 800B85A8 000B5508  7F C5 F3 78 */	mr r5, r30
/* 800B85AC 000B550C  81 97 00 00 */	lwz r12, 0(r23)
/* 800B85B0 000B5510  38 81 01 08 */	addi r4, r1, 0x108
/* 800B85B4 000B5514  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800B85B8 000B5518  7D 89 03 A6 */	mtctr r12
/* 800B85BC 000B551C  4E 80 04 21 */	bctrl
/* 800B85C0 000B5520  48 00 00 C4 */	b lbl_800B8684
lbl_800B85C4:
/* 800B85C4 000B5524  38 61 00 D8 */	addi r3, r1, 0xd8
/* 800B85C8 000B5528  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 800B85CC 000B552C  48 25 A6 75 */	bl GetRotation__12CTransform4fCFv
/* 800B85D0 000B5530  7E E3 BB 78 */	mr r3, r23
/* 800B85D4 000B5534  7F C5 F3 78 */	mr r5, r30
/* 800B85D8 000B5538  81 97 00 00 */	lwz r12, 0(r23)
/* 800B85DC 000B553C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 800B85E0 000B5540  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800B85E4 000B5544  7D 89 03 A6 */	mtctr r12
/* 800B85E8 000B5548  4E 80 04 21 */	bctrl
/* 800B85EC 000B554C  48 00 00 98 */	b lbl_800B8684
lbl_800B85F0:
/* 800B85F0 000B5550  C0 41 01 D4 */	lfs f2, 0x1d4(r1)
/* 800B85F4 000B5554  7E E3 BB 78 */	mr r3, r23
/* 800B85F8 000B5558  C0 21 01 E4 */	lfs f1, 0x1e4(r1)
/* 800B85FC 000B555C  7F C5 F3 78 */	mr r5, r30
/* 800B8600 000B5560  C0 01 01 F4 */	lfs f0, 0x1f4(r1)
/* 800B8604 000B5564  38 81 00 3C */	addi r4, r1, 0x3c
/* 800B8608 000B5568  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 800B860C 000B556C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 800B8610 000B5570  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800B8614 000B5574  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8618 000B5578  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800B861C 000B557C  7D 89 03 A6 */	mtctr r12
/* 800B8620 000B5580  4E 80 04 21 */	bctrl
/* 800B8624 000B5584  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 800B8628 000B5588  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B862C 000B558C  41 82 00 30 */	beq lbl_800B865C
/* 800B8630 000B5590  7F 64 DB 78 */	mr r4, r27
/* 800B8634 000B5594  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800B8638 000B5598  48 25 A6 09 */	bl GetRotation__12CTransform4fCFv
/* 800B863C 000B559C  7E E3 BB 78 */	mr r3, r23
/* 800B8640 000B55A0  7F C5 F3 78 */	mr r5, r30
/* 800B8644 000B55A4  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8648 000B55A8  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800B864C 000B55AC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800B8650 000B55B0  7D 89 03 A6 */	mtctr r12
/* 800B8654 000B55B4  4E 80 04 21 */	bctrl
/* 800B8658 000B55B8  48 00 00 2C */	b lbl_800B8684
lbl_800B865C:
/* 800B865C 000B55BC  38 61 00 78 */	addi r3, r1, 0x78
/* 800B8660 000B55C0  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 800B8664 000B55C4  48 25 A5 DD */	bl GetRotation__12CTransform4fCFv
/* 800B8668 000B55C8  7E E3 BB 78 */	mr r3, r23
/* 800B866C 000B55CC  7F C5 F3 78 */	mr r5, r30
/* 800B8670 000B55D0  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8674 000B55D4  38 81 00 78 */	addi r4, r1, 0x78
/* 800B8678 000B55D8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800B867C 000B55DC  7D 89 03 A6 */	mtctr r12
/* 800B8680 000B55E0  4E 80 04 21 */	bctrl
lbl_800B8684:
/* 800B8684 000B55E4  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 800B8688 000B55E8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800B868C 000B55EC  41 82 00 50 */	beq lbl_800B86DC
/* 800B8690 000B55F0  C0 37 00 38 */	lfs f1, 0x38(r23)
/* 800B8694 000B55F4  7E E3 BB 78 */	mr r3, r23
/* 800B8698 000B55F8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 800B869C 000B55FC  38 81 00 30 */	addi r4, r1, 0x30
/* 800B86A0 000B5600  C0 77 00 34 */	lfs f3, 0x34(r23)
/* 800B86A4 000B5604  C0 5D 00 04 */	lfs f2, 4(r29)
/* 800B86A8 000B5608  EC 81 00 32 */	fmuls f4, f1, f0
/* 800B86AC 000B560C  C0 37 00 30 */	lfs f1, 0x30(r23)
/* 800B86B0 000B5610  C0 1D 00 00 */	lfs f0, 0(r29)
/* 800B86B4 000B5614  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800B86B8 000B5618  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 800B86BC 000B561C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800B86C0 000B5620  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800B86C4 000B5624  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800B86C8 000B5628  81 97 00 00 */	lwz r12, 0(r23)
/* 800B86CC 000B562C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800B86D0 000B5630  7D 89 03 A6 */	mtctr r12
/* 800B86D4 000B5634  4E 80 04 21 */	bctrl
/* 800B86D8 000B5638  48 00 00 1C */	b lbl_800B86F4
lbl_800B86DC:
/* 800B86DC 000B563C  7E E3 BB 78 */	mr r3, r23
/* 800B86E0 000B5640  38 97 00 30 */	addi r4, r23, 0x30
/* 800B86E4 000B5644  81 97 00 00 */	lwz r12, 0(r23)
/* 800B86E8 000B5648  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800B86EC 000B564C  7D 89 03 A6 */	mtctr r12
/* 800B86F0 000B5650  4E 80 04 21 */	bctrl
lbl_800B86F4:
/* 800B86F4 000B5654  C0 02 8D 20 */	lfs f0, lbl_805AAA40@sda21(r2)
/* 800B86F8 000B5658  C0 37 00 0C */	lfs f1, 0xc(r23)
/* 800B86FC 000B565C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 800B8700 000B5660  40 82 00 08 */	bne lbl_800B8708
/* 800B8704 000B5664  C0 22 8D 24 */	lfs f1, lbl_805AAA44@sda21(r2)
lbl_800B8708:
/* 800B8708 000B5668  C0 17 00 20 */	lfs f0, 0x20(r23)
/* 800B870C 000B566C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B8710 000B5670  40 81 00 50 */	ble lbl_800B8760
/* 800B8714 000B5674  38 00 00 00 */	li r0, 0
/* 800B8718 000B5678  7E E3 BB 78 */	mr r3, r23
/* 800B871C 000B567C  98 17 00 24 */	stb r0, 0x24(r23)
/* 800B8720 000B5680  7F C5 F3 78 */	mr r5, r30
/* 800B8724 000B5684  38 80 00 00 */	li r4, 0
/* 800B8728 000B5688  81 97 00 00 */	lwz r12, 0(r23)
/* 800B872C 000B568C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800B8730 000B5690  7D 89 03 A6 */	mtctr r12
/* 800B8734 000B5694  4E 80 04 21 */	bctrl
/* 800B8738 000B5698  C0 17 00 20 */	lfs f0, 0x20(r23)
/* 800B873C 000B569C  D0 17 00 3C */	stfs f0, 0x3c(r23)
/* 800B8740 000B56A0  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 800B8744 000B56A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800B8748 000B56A8  41 82 00 18 */	beq lbl_800B8760
/* 800B874C 000B56AC  7E E3 BB 78 */	mr r3, r23
/* 800B8750 000B56B0  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8754 000B56B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800B8758 000B56B8  7D 89 03 A6 */	mtctr r12
/* 800B875C 000B56BC  4E 80 04 21 */	bctrl
lbl_800B8760:
/* 800B8760 000B56C0  7E E3 BB 78 */	mr r3, r23
/* 800B8764 000B56C4  FC 20 F8 90 */	fmr f1, f31
/* 800B8768 000B56C8  81 97 00 00 */	lwz r12, 0(r23)
/* 800B876C 000B56CC  7F C4 F3 78 */	mr r4, r30
/* 800B8770 000B56D0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800B8774 000B56D4  7D 89 03 A6 */	mtctr r12
/* 800B8778 000B56D8  4E 80 04 21 */	bctrl
/* 800B877C 000B56DC  88 17 00 24 */	lbz r0, 0x24(r23)
/* 800B8780 000B56E0  28 00 00 00 */	cmplwi r0, 0
/* 800B8784 000B56E4  40 82 01 04 */	bne lbl_800B8888
/* 800B8788 000B56E8  7E E3 BB 78 */	mr r3, r23
/* 800B878C 000B56EC  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8790 000B56F0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800B8794 000B56F4  7D 89 03 A6 */	mtctr r12
/* 800B8798 000B56F8  4E 80 04 21 */	bctrl
/* 800B879C 000B56FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B87A0 000B5700  40 82 01 C8 */	bne lbl_800B8968
/* 800B87A4 000B5704  C0 57 00 20 */	lfs f2, 0x20(r23)
/* 800B87A8 000B5708  C0 37 00 3C */	lfs f1, 0x3c(r23)
/* 800B87AC 000B570C  C0 02 8D 28 */	lfs f0, lbl_805AAA48@sda21(r2)
/* 800B87B0 000B5710  EC 22 08 28 */	fsubs f1, f2, f1
/* 800B87B4 000B5714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B87B8 000B5718  40 81 01 B0 */	ble lbl_800B8968
/* 800B87BC 000B571C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 800B87C0 000B5720  41 82 01 A8 */	beq lbl_800B8968
/* 800B87C4 000B5724  7E E3 BB 78 */	mr r3, r23
/* 800B87C8 000B5728  7F C4 F3 78 */	mr r4, r30
/* 800B87CC 000B572C  81 97 00 00 */	lwz r12, 0(r23)
/* 800B87D0 000B5730  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 800B87D4 000B5734  7D 89 03 A6 */	mtctr r12
/* 800B87D8 000B5738  4E 80 04 21 */	bctrl
/* 800B87DC 000B573C  82 C1 00 28 */	lwz r22, 0x28(r1)
/* 800B87E0 000B5740  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800B87E4 000B5744  92 C1 00 20 */	stw r22, 0x20(r1)
/* 800B87E8 000B5748  7E C4 B3 78 */	mr r4, r22
/* 800B87EC 000B574C  90 61 00 24 */	stw r3, 0x24(r1)
/* 800B87F0 000B5750  48 28 3D F1 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B87F4 000B5754  90 61 00 20 */	stw r3, 0x20(r1)
/* 800B87F8 000B5758  7E C4 B3 78 */	mr r4, r22
/* 800B87FC 000B575C  38 7F 00 08 */	addi r3, r31, 8
/* 800B8800 000B5760  48 28 3E 7D */	bl rbtree_rebalance_for_erase__4rstlFPvPv
/* 800B8804 000B5764  7C 76 1B 79 */	or. r22, r3, r3
/* 800B8808 000B5768  41 82 00 50 */	beq lbl_800B8858
/* 800B880C 000B576C  34 16 00 10 */	addic. r0, r22, 0x10
/* 800B8810 000B5770  41 82 00 48 */	beq lbl_800B8858
/* 800B8814 000B5774  34 76 00 20 */	addic. r3, r22, 0x20
/* 800B8818 000B5778  41 82 00 30 */	beq lbl_800B8848
/* 800B881C 000B577C  88 03 00 00 */	lbz r0, 0(r3)
/* 800B8820 000B5780  28 00 00 00 */	cmplwi r0, 0
/* 800B8824 000B5784  41 82 00 24 */	beq lbl_800B8848
/* 800B8828 000B5788  80 76 00 24 */	lwz r3, 0x24(r22)
/* 800B882C 000B578C  28 03 00 00 */	cmplwi r3, 0
/* 800B8830 000B5790  41 82 00 18 */	beq lbl_800B8848
/* 800B8834 000B5794  81 83 00 00 */	lwz r12, 0(r3)
/* 800B8838 000B5798  38 80 00 01 */	li r4, 1
/* 800B883C 000B579C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B8840 000B57A0  7D 89 03 A6 */	mtctr r12
/* 800B8844 000B57A4  4E 80 04 21 */	bctrl
lbl_800B8848:
/* 800B8848 000B57A8  34 16 00 10 */	addic. r0, r22, 0x10
/* 800B884C 000B57AC  41 82 00 0C */	beq lbl_800B8858
/* 800B8850 000B57B0  38 76 00 10 */	addi r3, r22, 0x10
/* 800B8854 000B57B4  48 28 52 8D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800B8858:
/* 800B8858 000B57B8  28 16 00 00 */	cmplwi r22, 0
/* 800B885C 000B57BC  41 82 00 0C */	beq lbl_800B8868
/* 800B8860 000B57C0  7E C3 B3 78 */	mr r3, r22
/* 800B8864 000B57C4  48 25 D0 CD */	bl Free__7CMemoryFPCv
lbl_800B8868:
/* 800B8868 000B57C8  80 9F 00 04 */	lwz r4, 4(r31)
/* 800B886C 000B57CC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800B8870 000B57D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B8874 000B57D4  38 84 FF FF */	addi r4, r4, -1
/* 800B8878 000B57D8  90 9F 00 04 */	stw r4, 4(r31)
/* 800B887C 000B57DC  90 61 00 28 */	stw r3, 0x28(r1)
/* 800B8880 000B57E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800B8884 000B57E4  48 00 01 00 */	b lbl_800B8984
lbl_800B8888:
/* 800B8888 000B57E8  7E E3 BB 78 */	mr r3, r23
/* 800B888C 000B57EC  81 97 00 00 */	lwz r12, 0(r23)
/* 800B8890 000B57F0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800B8894 000B57F4  7D 89 03 A6 */	mtctr r12
/* 800B8898 000B57F8  4E 80 04 21 */	bctrl
/* 800B889C 000B57FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B88A0 000B5800  41 82 00 C8 */	beq lbl_800B8968
/* 800B88A4 000B5804  7E E3 BB 78 */	mr r3, r23
/* 800B88A8 000B5808  7F C4 F3 78 */	mr r4, r30
/* 800B88AC 000B580C  81 97 00 00 */	lwz r12, 0(r23)
/* 800B88B0 000B5810  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 800B88B4 000B5814  7D 89 03 A6 */	mtctr r12
/* 800B88B8 000B5818  4E 80 04 21 */	bctrl
/* 800B88BC 000B581C  82 C1 00 28 */	lwz r22, 0x28(r1)
/* 800B88C0 000B5820  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800B88C4 000B5824  92 C1 00 18 */	stw r22, 0x18(r1)
/* 800B88C8 000B5828  7E C4 B3 78 */	mr r4, r22
/* 800B88CC 000B582C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800B88D0 000B5830  48 28 3D 11 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B88D4 000B5834  90 61 00 18 */	stw r3, 0x18(r1)
/* 800B88D8 000B5838  7E C4 B3 78 */	mr r4, r22
/* 800B88DC 000B583C  38 7F 00 08 */	addi r3, r31, 8
/* 800B88E0 000B5840  48 28 3D 9D */	bl rbtree_rebalance_for_erase__4rstlFPvPv
/* 800B88E4 000B5844  7C 76 1B 79 */	or. r22, r3, r3
/* 800B88E8 000B5848  41 82 00 50 */	beq lbl_800B8938
/* 800B88EC 000B584C  34 16 00 10 */	addic. r0, r22, 0x10
/* 800B88F0 000B5850  41 82 00 48 */	beq lbl_800B8938
/* 800B88F4 000B5854  34 76 00 20 */	addic. r3, r22, 0x20
/* 800B88F8 000B5858  41 82 00 30 */	beq lbl_800B8928
/* 800B88FC 000B585C  88 03 00 00 */	lbz r0, 0(r3)
/* 800B8900 000B5860  28 00 00 00 */	cmplwi r0, 0
/* 800B8904 000B5864  41 82 00 24 */	beq lbl_800B8928
/* 800B8908 000B5868  80 76 00 24 */	lwz r3, 0x24(r22)
/* 800B890C 000B586C  28 03 00 00 */	cmplwi r3, 0
/* 800B8910 000B5870  41 82 00 18 */	beq lbl_800B8928
/* 800B8914 000B5874  81 83 00 00 */	lwz r12, 0(r3)
/* 800B8918 000B5878  38 80 00 01 */	li r4, 1
/* 800B891C 000B587C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B8920 000B5880  7D 89 03 A6 */	mtctr r12
/* 800B8924 000B5884  4E 80 04 21 */	bctrl
lbl_800B8928:
/* 800B8928 000B5888  34 16 00 10 */	addic. r0, r22, 0x10
/* 800B892C 000B588C  41 82 00 0C */	beq lbl_800B8938
/* 800B8930 000B5890  38 76 00 10 */	addi r3, r22, 0x10
/* 800B8934 000B5894  48 28 51 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800B8938:
/* 800B8938 000B5898  28 16 00 00 */	cmplwi r22, 0
/* 800B893C 000B589C  41 82 00 0C */	beq lbl_800B8948
/* 800B8940 000B58A0  7E C3 B3 78 */	mr r3, r22
/* 800B8944 000B58A4  48 25 CF ED */	bl Free__7CMemoryFPCv
lbl_800B8948:
/* 800B8948 000B58A8  80 9F 00 04 */	lwz r4, 4(r31)
/* 800B894C 000B58AC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800B8950 000B58B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800B8954 000B58B4  38 84 FF FF */	addi r4, r4, -1
/* 800B8958 000B58B8  90 9F 00 04 */	stw r4, 4(r31)
/* 800B895C 000B58BC  90 61 00 28 */	stw r3, 0x28(r1)
/* 800B8960 000B58C0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800B8964 000B58C4  48 00 00 20 */	b lbl_800B8984
lbl_800B8968:
/* 800B8968 000B58C8  C0 17 00 20 */	lfs f0, 0x20(r23)
/* 800B896C 000B58CC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800B8970 000B58D0  EC 00 F8 2A */	fadds f0, f0, f31
/* 800B8974 000B58D4  80 81 00 28 */	lwz r4, 0x28(r1)
/* 800B8978 000B58D8  D0 17 00 20 */	stfs f0, 0x20(r23)
/* 800B897C 000B58DC  48 28 3C 65 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 800B8980 000B58E0  90 61 00 28 */	stw r3, 0x28(r1)
lbl_800B8984:
/* 800B8984 000B58E4  80 81 00 28 */	lwz r4, 0x28(r1)
/* 800B8988 000B58E8  38 60 00 00 */	li r3, 0
/* 800B898C 000B58EC  90 61 00 10 */	stw r3, 0x10(r1)
/* 800B8990 000B58F0  7C 04 18 40 */	cmplw r4, r3
/* 800B8994 000B58F4  40 82 00 10 */	bne lbl_800B89A4
/* 800B8998 000B58F8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800B899C 000B58FC  7C 00 D0 40 */	cmplw r0, r26
/* 800B89A0 000B5900  41 82 00 08 */	beq lbl_800B89A8
lbl_800B89A4:
/* 800B89A4 000B5904  38 60 00 01 */	li r3, 1
lbl_800B89A8:
/* 800B89A8 000B5908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B89AC 000B590C  40 82 F9 00 */	bne lbl_800B82AC
/* 800B89B0 000B5910  E3 E1 02 B8 */	psq_l f31, 696(r1), 0, qr0
/* 800B89B4 000B5914  CB E1 02 B0 */	lfd f31, 0x2b0(r1)
/* 800B89B8 000B5918  BA C1 02 88 */	lmw r22, 0x288(r1)
/* 800B89BC 000B591C  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 800B89C0 000B5920  7C 08 03 A6 */	mtlr r0
/* 800B89C4 000B5924  38 21 02 C0 */	addi r1, r1, 0x2c0
/* 800B89C8 000B5928  4E 80 00 20 */	blr

.global Update__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManager
Update__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManager:
/* 800B89CC 000B592C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B89D0 000B5930  7C 08 02 A6 */	mflr r0
/* 800B89D4 000B5934  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B89D8 000B5938  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 800B89DC 000B593C  FF E0 08 90 */	fmr f31, f1
/* 800B89E0 000B5940  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 800B89E4 000B5944  7C 7A 1B 78 */	mr r26, r3
/* 800B89E8 000B5948  7C 9B 23 78 */	mr r27, r4
/* 800B89EC 000B594C  7C BC 2B 78 */	mr r28, r5
/* 800B89F0 000B5950  7C DD 33 78 */	mr r29, r6
/* 800B89F4 000B5954  7C FE 3B 78 */	mr r30, r7
/* 800B89F8 000B5958  7D 1F 43 78 */	mr r31, r8
/* 800B89FC 000B595C  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 800B8A00 000B5960  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800B8A04 000B5964  41 82 01 1C */	beq lbl_800B8B20
/* 800B8A08 000B5968  7F 63 DB 78 */	mr r3, r27
/* 800B8A0C 000B596C  7F 84 E3 78 */	mr r4, r28
/* 800B8A10 000B5970  7F A5 EB 78 */	mr r5, r29
/* 800B8A14 000B5974  7F C6 F3 78 */	mr r6, r30
/* 800B8A18 000B5978  7F E7 FB 78 */	mr r7, r31
/* 800B8A1C 000B597C  39 1A 00 3C */	addi r8, r26, 0x3c
/* 800B8A20 000B5980  39 20 00 01 */	li r9, 1
/* 800B8A24 000B5984  4B FF F8 39 */	bl "UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b"
/* 800B8A28 000B5988  FC 20 F8 90 */	fmr f1, f31
/* 800B8A2C 000B598C  7F 63 DB 78 */	mr r3, r27
/* 800B8A30 000B5990  7F 84 E3 78 */	mr r4, r28
/* 800B8A34 000B5994  7F A5 EB 78 */	mr r5, r29
/* 800B8A38 000B5998  7F C6 F3 78 */	mr r6, r30
/* 800B8A3C 000B599C  7F E7 FB 78 */	mr r7, r31
/* 800B8A40 000B59A0  39 1A 00 50 */	addi r8, r26, 0x50
/* 800B8A44 000B59A4  39 20 00 01 */	li r9, 1
/* 800B8A48 000B59A8  4B FF F8 15 */	bl "UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b"
/* 800B8A4C 000B59AC  FC 20 F8 90 */	fmr f1, f31
/* 800B8A50 000B59B0  7F 63 DB 78 */	mr r3, r27
/* 800B8A54 000B59B4  7F 84 E3 78 */	mr r4, r28
/* 800B8A58 000B59B8  7F A5 EB 78 */	mr r5, r29
/* 800B8A5C 000B59BC  7F C6 F3 78 */	mr r6, r30
/* 800B8A60 000B59C0  7F E7 FB 78 */	mr r7, r31
/* 800B8A64 000B59C4  39 1A 00 64 */	addi r8, r26, 0x64
/* 800B8A68 000B59C8  39 20 00 01 */	li r9, 1
/* 800B8A6C 000B59CC  4B FF F7 F1 */	bl "UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b"
/* 800B8A70 000B59D0  FC 20 F8 90 */	fmr f1, f31
/* 800B8A74 000B59D4  7F 63 DB 78 */	mr r3, r27
/* 800B8A78 000B59D8  7F 84 E3 78 */	mr r4, r28
/* 800B8A7C 000B59DC  7F A5 EB 78 */	mr r5, r29
/* 800B8A80 000B59E0  7F C6 F3 78 */	mr r6, r30
/* 800B8A84 000B59E4  7F E7 FB 78 */	mr r7, r31
/* 800B8A88 000B59E8  39 1A 00 78 */	addi r8, r26, 0x78
/* 800B8A8C 000B59EC  39 20 00 00 */	li r9, 0
/* 800B8A90 000B59F0  4B FF F7 CD */	bl "UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b"
/* 800B8A94 000B59F4  FC 20 F8 90 */	fmr f1, f31
/* 800B8A98 000B59F8  7F 63 DB 78 */	mr r3, r27
/* 800B8A9C 000B59FC  7F 84 E3 78 */	mr r4, r28
/* 800B8AA0 000B5A00  7F A5 EB 78 */	mr r5, r29
/* 800B8AA4 000B5A04  7F C6 F3 78 */	mr r6, r30
/* 800B8AA8 000B5A08  7F E7 FB 78 */	mr r7, r31
/* 800B8AAC 000B5A0C  39 1A 00 8C */	addi r8, r26, 0x8c
/* 800B8AB0 000B5A10  39 20 00 00 */	li r9, 0
/* 800B8AB4 000B5A14  4B FF F7 A9 */	bl "UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b"
/* 800B8AB8 000B5A18  FC 20 F8 90 */	fmr f1, f31
/* 800B8ABC 000B5A1C  7F 63 DB 78 */	mr r3, r27
/* 800B8AC0 000B5A20  7F 84 E3 78 */	mr r4, r28
/* 800B8AC4 000B5A24  7F A5 EB 78 */	mr r5, r29
/* 800B8AC8 000B5A28  7F C6 F3 78 */	mr r6, r30
/* 800B8ACC 000B5A2C  7F E7 FB 78 */	mr r7, r31
/* 800B8AD0 000B5A30  39 1A 00 A0 */	addi r8, r26, 0xa0
/* 800B8AD4 000B5A34  39 20 00 00 */	li r9, 0
/* 800B8AD8 000B5A38  4B FF F7 85 */	bl "UpdateParticleGenDB__17CParticleDatabaseFfRC17CPoseAsTransformsRC15CCharLayoutInfoRC12CTransform4fRC9CVector3fR13CStateManagerRQ24rstl236map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>b"
/* 800B8ADC 000B5A3C  80 1A 00 54 */	lwz r0, 0x54(r26)
/* 800B8AE0 000B5A40  38 60 00 00 */	li r3, 0
/* 800B8AE4 000B5A44  2C 00 00 00 */	cmpwi r0, 0
/* 800B8AE8 000B5A48  40 82 00 28 */	bne lbl_800B8B10
/* 800B8AEC 000B5A4C  80 1A 00 68 */	lwz r0, 0x68(r26)
/* 800B8AF0 000B5A50  2C 00 00 00 */	cmpwi r0, 0
/* 800B8AF4 000B5A54  40 82 00 1C */	bne lbl_800B8B10
/* 800B8AF8 000B5A58  80 1A 00 90 */	lwz r0, 0x90(r26)
/* 800B8AFC 000B5A5C  2C 00 00 00 */	cmpwi r0, 0
/* 800B8B00 000B5A60  40 82 00 10 */	bne lbl_800B8B10
/* 800B8B04 000B5A64  80 1A 00 A4 */	lwz r0, 0xa4(r26)
/* 800B8B08 000B5A68  2C 00 00 00 */	cmpwi r0, 0
/* 800B8B0C 000B5A6C  41 82 00 08 */	beq lbl_800B8B14
lbl_800B8B10:
/* 800B8B10 000B5A70  38 60 00 01 */	li r3, 1
lbl_800B8B14:
/* 800B8B14 000B5A74  88 1A 00 B4 */	lbz r0, 0xb4(r26)
/* 800B8B18 000B5A78  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800B8B1C 000B5A7C  98 1A 00 B4 */	stb r0, 0xb4(r26)
lbl_800B8B20:
/* 800B8B20 000B5A80  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800B8B24 000B5A84  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 800B8B28 000B5A88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B8B2C 000B5A8C  7C 08 03 A6 */	mtlr r0
/* 800B8B30 000B5A90  38 21 00 30 */	addi r1, r1, 0x30
/* 800B8B34 000B5A94  4E 80 00 20 */	blr

.global GetParticleSystem__23CParticleGenInfoGenericCFv
GetParticleSystem__23CParticleGenInfoGenericCFv:
/* 800B8B38 000B5A98  80 04 00 84 */	lwz r0, 0x84(r4)
/* 800B8B3C 000B5A9C  90 03 00 00 */	stw r0, 0(r3)
/* 800B8B40 000B5AA0  80 83 00 00 */	lwz r4, 0(r3)
/* 800B8B44 000B5AA4  80 64 00 04 */	lwz r3, 4(r4)
/* 800B8B48 000B5AA8  38 03 00 01 */	addi r0, r3, 1
/* 800B8B4C 000B5AAC  90 04 00 04 */	stw r0, 4(r4)
/* 800B8B50 000B5AB0  4E 80 00 20 */	blr

.global "SetCEXTValue__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>if"
"SetCEXTValue__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>if":
/* 800B8B54 000B5AB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B8B58 000B5AB8  7C 08 02 A6 */	mflr r0
/* 800B8B5C 000B5ABC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B8B60 000B5AC0  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 800B8B64 000B5AC4  FF E0 08 90 */	fmr f31, f1
/* 800B8B68 000B5AC8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800B8B6C 000B5ACC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800B8B70 000B5AD0  7C BE 2B 78 */	mr r30, r5
/* 800B8B74 000B5AD4  48 00 00 E9 */	bl "GetParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800B8B78 000B5AD8  28 03 00 00 */	cmplwi r3, 0
/* 800B8B7C 000B5ADC  41 82 00 30 */	beq lbl_800B8BAC
/* 800B8B80 000B5AE0  7C 64 1B 78 */	mr r4, r3
/* 800B8B84 000B5AE4  38 61 00 08 */	addi r3, r1, 8
/* 800B8B88 000B5AE8  4B FF FF B1 */	bl GetParticleSystem__23CParticleGenInfoGenericCFv
/* 800B8B8C 000B5AEC  80 81 00 08 */	lwz r4, 8(r1)
/* 800B8B90 000B5AF0  38 61 00 08 */	addi r3, r1, 8
/* 800B8B94 000B5AF4  83 E4 00 00 */	lwz r31, 0(r4)
/* 800B8B98 000B5AF8  4B FF EE 69 */	bl sub_800b7a00
/* 800B8B9C 000B5AFC  FC 20 F8 90 */	fmr f1, f31
/* 800B8BA0 000B5B00  7F E3 FB 78 */	mr r3, r31
/* 800B8BA4 000B5B04  7F C4 F3 78 */	mr r4, r30
/* 800B8BA8 000B5B08  48 25 EA D5 */	bl SetCEXTValue__11CElementGenFif
lbl_800B8BAC:
/* 800B8BAC 000B5B0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B8BB0 000B5B10  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 800B8BB4 000B5B14  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800B8BB8 000B5B18  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800B8BBC 000B5B1C  7C 08 03 A6 */	mtlr r0
/* 800B8BC0 000B5B20  38 21 00 20 */	addi r1, r1, 0x20
/* 800B8BC4 000B5B24  4E 80 00 20 */	blr

.global "SetParticleEffectState__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bR13CStateManager"
"SetParticleEffectState__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bR13CStateManager":
/* 800B8BC8 000B5B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B8BCC 000B5B2C  7C 08 02 A6 */	mflr r0
/* 800B8BD0 000B5B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B8BD4 000B5B34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B8BD8 000B5B38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B8BDC 000B5B3C  7C DE 33 78 */	mr r30, r6
/* 800B8BE0 000B5B40  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B8BE4 000B5B44  7C BD 2B 78 */	mr r29, r5
/* 800B8BE8 000B5B48  48 00 00 75 */	bl "GetParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800B8BEC 000B5B4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800B8BF0 000B5B50  41 82 00 50 */	beq lbl_800B8C40
/* 800B8BF4 000B5B54  81 83 00 00 */	lwz r12, 0(r3)
/* 800B8BF8 000B5B58  7F A4 EB 78 */	mr r4, r29
/* 800B8BFC 000B5B5C  7F C5 F3 78 */	mr r5, r30
/* 800B8C00 000B5B60  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800B8C04 000B5B64  7D 89 03 A6 */	mtctr r12
/* 800B8C08 000B5B68  4E 80 04 21 */	bctrl
/* 800B8C0C 000B5B6C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800B8C10 000B5B70  9B BF 00 24 */	stb r29, 0x24(r31)
/* 800B8C14 000B5B74  40 82 00 24 */	bne lbl_800B8C38
/* 800B8C18 000B5B78  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 800B8C1C 000B5B7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800B8C20 000B5B80  41 82 00 18 */	beq lbl_800B8C38
/* 800B8C24 000B5B84  7F E3 FB 78 */	mr r3, r31
/* 800B8C28 000B5B88  81 9F 00 00 */	lwz r12, 0(r31)
/* 800B8C2C 000B5B8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800B8C30 000B5B90  7D 89 03 A6 */	mtctr r12
/* 800B8C34 000B5B94  4E 80 04 21 */	bctrl
lbl_800B8C38:
/* 800B8C38 000B5B98  38 00 00 01 */	li r0, 1
/* 800B8C3C 000B5B9C  98 1F 00 40 */	stb r0, 0x40(r31)
lbl_800B8C40:
/* 800B8C40 000B5BA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B8C44 000B5BA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B8C48 000B5BA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B8C4C 000B5BAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B8C50 000B5BB0  7C 08 03 A6 */	mtlr r0
/* 800B8C54 000B5BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 800B8C58 000B5BB8  4E 80 00 20 */	blr

.global "GetParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"GetParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 800B8C5C 000B5BBC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800B8C60 000B5BC0  7C 08 02 A6 */	mflr r0
/* 800B8C64 000B5BC4  90 01 00 74 */	stw r0, 0x74(r1)
/* 800B8C68 000B5BC8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800B8C6C 000B5BCC  7C 9F 23 78 */	mr r31, r4
/* 800B8C70 000B5BD0  7F E5 FB 78 */	mr r5, r31
/* 800B8C74 000B5BD4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800B8C78 000B5BD8  7C 7E 1B 78 */	mr r30, r3
/* 800B8C7C 000B5BDC  38 61 00 60 */	addi r3, r1, 0x60
/* 800B8C80 000B5BE0  38 9E 00 3C */	addi r4, r30, 0x3c
/* 800B8C84 000B5BE4  48 00 01 D9 */	bl "find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR"
/* 800B8C88 000B5BE8  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 800B8C8C 000B5BEC  38 60 00 00 */	li r3, 0
/* 800B8C90 000B5BF0  38 1E 00 44 */	addi r0, r30, 0x44
/* 800B8C94 000B5BF4  90 61 00 58 */	stw r3, 0x58(r1)
/* 800B8C98 000B5BF8  7C 05 18 40 */	cmplw r5, r3
/* 800B8C9C 000B5BFC  80 81 00 64 */	lwz r4, 0x64(r1)
/* 800B8CA0 000B5C00  90 01 00 5C */	stw r0, 0x5c(r1)
/* 800B8CA4 000B5C04  40 82 00 0C */	bne lbl_800B8CB0
/* 800B8CA8 000B5C08  7C 04 00 40 */	cmplw r4, r0
/* 800B8CAC 000B5C0C  41 82 00 08 */	beq lbl_800B8CB4
lbl_800B8CB0:
/* 800B8CB0 000B5C10  38 60 00 01 */	li r3, 1
lbl_800B8CB4:
/* 800B8CB4 000B5C14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8CB8 000B5C18  41 82 00 0C */	beq lbl_800B8CC4
/* 800B8CBC 000B5C1C  80 65 00 24 */	lwz r3, 0x24(r5)
/* 800B8CC0 000B5C20  48 00 01 84 */	b lbl_800B8E44
lbl_800B8CC4:
/* 800B8CC4 000B5C24  7F E5 FB 78 */	mr r5, r31
/* 800B8CC8 000B5C28  38 61 00 50 */	addi r3, r1, 0x50
/* 800B8CCC 000B5C2C  38 9E 00 50 */	addi r4, r30, 0x50
/* 800B8CD0 000B5C30  48 00 01 8D */	bl "find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR"
/* 800B8CD4 000B5C34  80 81 00 50 */	lwz r4, 0x50(r1)
/* 800B8CD8 000B5C38  38 60 00 00 */	li r3, 0
/* 800B8CDC 000B5C3C  38 1E 00 58 */	addi r0, r30, 0x58
/* 800B8CE0 000B5C40  90 61 00 48 */	stw r3, 0x48(r1)
/* 800B8CE4 000B5C44  7C 04 18 40 */	cmplw r4, r3
/* 800B8CE8 000B5C48  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 800B8CEC 000B5C4C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800B8CF0 000B5C50  40 82 00 0C */	bne lbl_800B8CFC
/* 800B8CF4 000B5C54  7C 05 00 40 */	cmplw r5, r0
/* 800B8CF8 000B5C58  41 82 00 08 */	beq lbl_800B8D00
lbl_800B8CFC:
/* 800B8CFC 000B5C5C  38 60 00 01 */	li r3, 1
lbl_800B8D00:
/* 800B8D00 000B5C60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8D04 000B5C64  41 82 00 0C */	beq lbl_800B8D10
/* 800B8D08 000B5C68  80 64 00 24 */	lwz r3, 0x24(r4)
/* 800B8D0C 000B5C6C  48 00 01 38 */	b lbl_800B8E44
lbl_800B8D10:
/* 800B8D10 000B5C70  7F E5 FB 78 */	mr r5, r31
/* 800B8D14 000B5C74  38 61 00 40 */	addi r3, r1, 0x40
/* 800B8D18 000B5C78  38 9E 00 64 */	addi r4, r30, 0x64
/* 800B8D1C 000B5C7C  48 00 01 41 */	bl "find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR"
/* 800B8D20 000B5C80  80 81 00 40 */	lwz r4, 0x40(r1)
/* 800B8D24 000B5C84  38 60 00 00 */	li r3, 0
/* 800B8D28 000B5C88  38 1E 00 6C */	addi r0, r30, 0x6c
/* 800B8D2C 000B5C8C  90 61 00 38 */	stw r3, 0x38(r1)
/* 800B8D30 000B5C90  7C 04 18 40 */	cmplw r4, r3
/* 800B8D34 000B5C94  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 800B8D38 000B5C98  90 01 00 3C */	stw r0, 0x3c(r1)
/* 800B8D3C 000B5C9C  40 82 00 0C */	bne lbl_800B8D48
/* 800B8D40 000B5CA0  7C 05 00 40 */	cmplw r5, r0
/* 800B8D44 000B5CA4  41 82 00 08 */	beq lbl_800B8D4C
lbl_800B8D48:
/* 800B8D48 000B5CA8  38 60 00 01 */	li r3, 1
lbl_800B8D4C:
/* 800B8D4C 000B5CAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8D50 000B5CB0  41 82 00 0C */	beq lbl_800B8D5C
/* 800B8D54 000B5CB4  80 64 00 24 */	lwz r3, 0x24(r4)
/* 800B8D58 000B5CB8  48 00 00 EC */	b lbl_800B8E44
lbl_800B8D5C:
/* 800B8D5C 000B5CBC  7F E5 FB 78 */	mr r5, r31
/* 800B8D60 000B5CC0  38 61 00 30 */	addi r3, r1, 0x30
/* 800B8D64 000B5CC4  38 9E 00 78 */	addi r4, r30, 0x78
/* 800B8D68 000B5CC8  48 00 00 F5 */	bl "find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR"
/* 800B8D6C 000B5CCC  80 81 00 30 */	lwz r4, 0x30(r1)
/* 800B8D70 000B5CD0  38 60 00 00 */	li r3, 0
/* 800B8D74 000B5CD4  38 1E 00 80 */	addi r0, r30, 0x80
/* 800B8D78 000B5CD8  90 61 00 28 */	stw r3, 0x28(r1)
/* 800B8D7C 000B5CDC  7C 04 18 40 */	cmplw r4, r3
/* 800B8D80 000B5CE0  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 800B8D84 000B5CE4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800B8D88 000B5CE8  40 82 00 0C */	bne lbl_800B8D94
/* 800B8D8C 000B5CEC  7C 05 00 40 */	cmplw r5, r0
/* 800B8D90 000B5CF0  41 82 00 08 */	beq lbl_800B8D98
lbl_800B8D94:
/* 800B8D94 000B5CF4  38 60 00 01 */	li r3, 1
lbl_800B8D98:
/* 800B8D98 000B5CF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8D9C 000B5CFC  41 82 00 0C */	beq lbl_800B8DA8
/* 800B8DA0 000B5D00  80 64 00 24 */	lwz r3, 0x24(r4)
/* 800B8DA4 000B5D04  48 00 00 A0 */	b lbl_800B8E44
lbl_800B8DA8:
/* 800B8DA8 000B5D08  7F E5 FB 78 */	mr r5, r31
/* 800B8DAC 000B5D0C  38 61 00 20 */	addi r3, r1, 0x20
/* 800B8DB0 000B5D10  38 9E 00 8C */	addi r4, r30, 0x8c
/* 800B8DB4 000B5D14  48 00 00 A9 */	bl "find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR"
/* 800B8DB8 000B5D18  80 81 00 20 */	lwz r4, 0x20(r1)
/* 800B8DBC 000B5D1C  38 60 00 00 */	li r3, 0
/* 800B8DC0 000B5D20  38 1E 00 94 */	addi r0, r30, 0x94
/* 800B8DC4 000B5D24  90 61 00 18 */	stw r3, 0x18(r1)
/* 800B8DC8 000B5D28  7C 04 18 40 */	cmplw r4, r3
/* 800B8DCC 000B5D2C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 800B8DD0 000B5D30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800B8DD4 000B5D34  40 82 00 0C */	bne lbl_800B8DE0
/* 800B8DD8 000B5D38  7C 05 00 40 */	cmplw r5, r0
/* 800B8DDC 000B5D3C  41 82 00 08 */	beq lbl_800B8DE4
lbl_800B8DE0:
/* 800B8DE0 000B5D40  38 60 00 01 */	li r3, 1
lbl_800B8DE4:
/* 800B8DE4 000B5D44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8DE8 000B5D48  41 82 00 0C */	beq lbl_800B8DF4
/* 800B8DEC 000B5D4C  80 64 00 24 */	lwz r3, 0x24(r4)
/* 800B8DF0 000B5D50  48 00 00 54 */	b lbl_800B8E44
lbl_800B8DF4:
/* 800B8DF4 000B5D54  7F E5 FB 78 */	mr r5, r31
/* 800B8DF8 000B5D58  38 61 00 10 */	addi r3, r1, 0x10
/* 800B8DFC 000B5D5C  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 800B8E00 000B5D60  48 00 00 5D */	bl "find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR"
/* 800B8E04 000B5D64  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800B8E08 000B5D68  38 60 00 00 */	li r3, 0
/* 800B8E0C 000B5D6C  38 1E 00 A8 */	addi r0, r30, 0xa8
/* 800B8E10 000B5D70  90 61 00 08 */	stw r3, 8(r1)
/* 800B8E14 000B5D74  7C 04 18 40 */	cmplw r4, r3
/* 800B8E18 000B5D78  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 800B8E1C 000B5D7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B8E20 000B5D80  40 82 00 0C */	bne lbl_800B8E2C
/* 800B8E24 000B5D84  7C 05 00 40 */	cmplw r5, r0
/* 800B8E28 000B5D88  41 82 00 08 */	beq lbl_800B8E30
lbl_800B8E2C:
/* 800B8E2C 000B5D8C  38 60 00 01 */	li r3, 1
lbl_800B8E30:
/* 800B8E30 000B5D90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8E34 000B5D94  41 82 00 0C */	beq lbl_800B8E40
/* 800B8E38 000B5D98  80 64 00 24 */	lwz r3, 0x24(r4)
/* 800B8E3C 000B5D9C  48 00 00 08 */	b lbl_800B8E44
lbl_800B8E40:
/* 800B8E40 000B5DA0  38 60 00 00 */	li r3, 0
lbl_800B8E44:
/* 800B8E44 000B5DA4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800B8E48 000B5DA8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800B8E4C 000B5DAC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800B8E50 000B5DB0  7C 08 03 A6 */	mtlr r0
/* 800B8E54 000B5DB4  38 21 00 70 */	addi r1, r1, 0x70
/* 800B8E58 000B5DB8  4E 80 00 20 */	blr

.global "find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR"
"find__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR":
/* 800B8E5C 000B5DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B8E60 000B5DC0  7C 08 02 A6 */	mflr r0
/* 800B8E64 000B5DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B8E68 000B5DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B8E6C 000B5DCC  7C 9F 23 78 */	mr r31, r4
/* 800B8E70 000B5DD0  7C A4 2B 78 */	mr r4, r5
/* 800B8E74 000B5DD4  93 C1 00 08 */	stw r30, 8(r1)
/* 800B8E78 000B5DD8  7C 7E 1B 78 */	mr r30, r3
/* 800B8E7C 000B5DDC  7F E3 FB 78 */	mr r3, r31
/* 800B8E80 000B5DE0  48 00 00 29 */	bl "find_node__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocat"
/* 800B8E84 000B5DE4  90 7E 00 00 */	stw r3, 0(r30)
/* 800B8E88 000B5DE8  38 1F 00 08 */	addi r0, r31, 8
/* 800B8E8C 000B5DEC  90 1E 00 04 */	stw r0, 4(r30)
/* 800B8E90 000B5DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B8E94 000B5DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B8E98 000B5DF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B8E9C 000B5DFC  7C 08 03 A6 */	mtlr r0
/* 800B8EA0 000B5E00  38 21 00 10 */	addi r1, r1, 0x10
/* 800B8EA4 000B5E04  4E 80 00 20 */	blr

.global "find_node__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocat"
"find_node__Q24rstl492red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>,0,Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocat":
/* 800B8EA8 000B5E08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B8EAC 000B5E0C  7C 08 02 A6 */	mflr r0
/* 800B8EB0 000B5E10  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B8EB4 000B5E14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B8EB8 000B5E18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800B8EBC 000B5E1C  3B C0 00 00 */	li r30, 0
/* 800B8EC0 000B5E20  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800B8EC4 000B5E24  7C 9D 23 78 */	mr r29, r4
/* 800B8EC8 000B5E28  93 81 00 10 */	stw r28, 0x10(r1)
/* 800B8ECC 000B5E2C  7C 7C 1B 78 */	mr r28, r3
/* 800B8ED0 000B5E30  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 800B8ED4 000B5E34  48 00 00 2C */	b lbl_800B8F00
lbl_800B8ED8:
/* 800B8ED8 000B5E38  7F A5 EB 78 */	mr r5, r29
/* 800B8EDC 000B5E3C  38 7C 00 01 */	addi r3, r28, 1
/* 800B8EE0 000B5E40  38 9F 00 10 */	addi r4, r31, 0x10
/* 800B8EE4 000B5E44  4B F7 18 45 */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 800B8EE8 000B5E48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8EEC 000B5E4C  40 82 00 10 */	bne lbl_800B8EFC
/* 800B8EF0 000B5E50  7F FE FB 78 */	mr r30, r31
/* 800B8EF4 000B5E54  83 FF 00 00 */	lwz r31, 0(r31)
/* 800B8EF8 000B5E58  48 00 00 08 */	b lbl_800B8F00
lbl_800B8EFC:
/* 800B8EFC 000B5E5C  83 FF 00 04 */	lwz r31, 4(r31)
lbl_800B8F00:
/* 800B8F00 000B5E60  28 1F 00 00 */	cmplwi r31, 0
/* 800B8F04 000B5E64  40 82 FF D4 */	bne lbl_800B8ED8
/* 800B8F08 000B5E68  28 1E 00 00 */	cmplwi r30, 0
/* 800B8F0C 000B5E6C  3B E0 00 00 */	li r31, 0
/* 800B8F10 000B5E70  41 82 00 1C */	beq lbl_800B8F2C
/* 800B8F14 000B5E74  7F A4 EB 78 */	mr r4, r29
/* 800B8F18 000B5E78  38 7C 00 01 */	addi r3, r28, 1
/* 800B8F1C 000B5E7C  38 BE 00 10 */	addi r5, r30, 0x10
/* 800B8F20 000B5E80  4B F7 18 09 */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 800B8F24 000B5E84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B8F28 000B5E88  41 82 00 08 */	beq lbl_800B8F30
lbl_800B8F2C:
/* 800B8F2C 000B5E8C  3B E0 00 01 */	li r31, 1
lbl_800B8F30:
/* 800B8F30 000B5E90  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800B8F34 000B5E94  41 82 00 0C */	beq lbl_800B8F40
/* 800B8F38 000B5E98  38 60 00 00 */	li r3, 0
/* 800B8F3C 000B5E9C  48 00 00 08 */	b lbl_800B8F44
lbl_800B8F40:
/* 800B8F40 000B5EA0  7F C3 F3 78 */	mr r3, r30
lbl_800B8F44:
/* 800B8F44 000B5EA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B8F48 000B5EA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B8F4C 000B5EAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800B8F50 000B5EB0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800B8F54 000B5EB4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800B8F58 000B5EB8  7C 08 03 A6 */	mtlr r0
/* 800B8F5C 000B5EBC  38 21 00 20 */	addi r1, r1, 0x20
/* 800B8F60 000B5EC0  4E 80 00 20 */	blr

.global "AddAuxiliaryParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>iRC22CAuxiliaryParticleDataRC9CVector3fR13CStateManager7TAreaIdi"
"AddAuxiliaryParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>iRC22CAuxiliaryParticleDataRC9CVector3fR13CStateManager7TAreaIdi":
/* 800B8F64 000B5EC4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 800B8F68 000B5EC8  7C 08 02 A6 */	mflr r0
/* 800B8F6C 000B5ECC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800B8F70 000B5ED0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 800B8F74 000B5ED4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 800B8F78 000B5ED8  BE A1 00 84 */	stmw r21, 0x84(r1)
/* 800B8F7C 000B5EDC  7C DE 33 78 */	mr r30, r6
/* 800B8F80 000B5EE0  7C 7C 1B 78 */	mr r28, r3
/* 800B8F84 000B5EE4  80 C6 00 08 */	lwz r6, 8(r6)
/* 800B8F88 000B5EE8  7C 9B 23 78 */	mr r27, r4
/* 800B8F8C 000B5EEC  80 1E 00 04 */	lwz r0, 4(r30)
/* 800B8F90 000B5EF0  7C BD 2B 78 */	mr r29, r5
/* 800B8F94 000B5EF4  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 800B8F98 000B5EF8  7C F6 3B 78 */	mr r22, r7
/* 800B8F9C 000B5EFC  83 5E 00 00 */	lwz r26, 0(r30)
/* 800B8FA0 000B5F00  7D 1F 43 78 */	mr r31, r8
/* 800B8FA4 000B5F04  90 01 00 48 */	stw r0, 0x48(r1)
/* 800B8FA8 000B5F08  7D 39 4B 78 */	mr r25, r9
/* 800B8FAC 000B5F0C  C3 FE 00 18 */	lfs f31, 0x18(r30)
/* 800B8FB0 000B5F10  7D 57 53 78 */	mr r23, r10
/* 800B8FB4 000B5F14  4B FF FC A9 */	bl "GetParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800B8FB8 000B5F18  7C 75 1B 79 */	or. r21, r3, r3
/* 800B8FBC 000B5F1C  40 82 03 88 */	bne lbl_800B9344
/* 800B8FC0 000B5F20  C0 02 8D 2C */	lfs f0, lbl_805AAA4C@sda21(r2)
/* 800B8FC4 000B5F24  57 A0 07 BD */	rlwinm. r0, r29, 0, 0x1e, 0x1e
/* 800B8FC8 000B5F28  80 61 00 48 */	lwz r3, 0x48(r1)
/* 800B8FCC 000B5F2C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800B8FD0 000B5F30  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800B8FD4 000B5F34  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800B8FD8 000B5F38  41 82 00 18 */	beq lbl_800B8FF0
/* 800B8FDC 000B5F3C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800B8FE0 000B5F40  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800B8FE4 000B5F44  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800B8FE8 000B5F48  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800B8FEC 000B5F4C  48 00 00 28 */	b lbl_800B9014
lbl_800B8FF0:
/* 800B8FF0 000B5F50  C0 56 00 08 */	lfs f2, 8(r22)
/* 800B8FF4 000B5F54  C0 36 00 04 */	lfs f1, 4(r22)
/* 800B8FF8 000B5F58  C0 16 00 00 */	lfs f0, 0(r22)
/* 800B8FFC 000B5F5C  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 800B9000 000B5F60  EC 3F 00 72 */	fmuls f1, f31, f1
/* 800B9004 000B5F64  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800B9008 000B5F68  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 800B900C 000B5F6C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800B9010 000B5F70  D0 21 00 70 */	stfs f1, 0x70(r1)
lbl_800B9014:
/* 800B9014 000B5F74  3C 03 AF BF */	addis r0, r3, 0xafbf
/* 800B9018 000B5F78  3B 00 00 00 */	li r24, 0
/* 800B901C 000B5F7C  28 00 52 54 */	cmplwi r0, 0x5254
/* 800B9020 000B5F80  9B 01 00 40 */	stb r24, 0x40(r1)
/* 800B9024 000B5F84  93 01 00 44 */	stw r24, 0x44(r1)
/* 800B9028 000B5F88  40 82 02 EC */	bne lbl_800B9314
/* 800B902C 000B5F8C  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 800B9030 000B5F90  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 800B9034 000B5F94  48 00 00 20 */	b lbl_800B9054
lbl_800B9038:
/* 800B9038 000B5F98  80 85 00 10 */	lwz r4, 0x10(r5)
/* 800B903C 000B5F9C  7C 04 00 40 */	cmplw r4, r0
/* 800B9040 000B5FA0  41 80 00 10 */	blt lbl_800B9050
/* 800B9044 000B5FA4  7C B8 2B 78 */	mr r24, r5
/* 800B9048 000B5FA8  80 A5 00 00 */	lwz r5, 0(r5)
/* 800B904C 000B5FAC  48 00 00 08 */	b lbl_800B9054
lbl_800B9050:
/* 800B9050 000B5FB0  80 A5 00 04 */	lwz r5, 4(r5)
lbl_800B9054:
/* 800B9054 000B5FB4  28 05 00 00 */	cmplwi r5, 0
/* 800B9058 000B5FB8  40 82 FF E0 */	bne lbl_800B9038
/* 800B905C 000B5FBC  28 18 00 00 */	cmplwi r24, 0
/* 800B9060 000B5FC0  38 A0 00 00 */	li r5, 0
/* 800B9064 000B5FC4  41 82 00 14 */	beq lbl_800B9078
/* 800B9068 000B5FC8  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 800B906C 000B5FCC  80 18 00 10 */	lwz r0, 0x10(r24)
/* 800B9070 000B5FD0  7C 04 00 40 */	cmplw r4, r0
/* 800B9074 000B5FD4  40 80 00 08 */	bge lbl_800B907C
lbl_800B9078:
/* 800B9078 000B5FD8  38 A0 00 01 */	li r5, 1
lbl_800B907C:
/* 800B907C 000B5FDC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800B9080 000B5FE0  41 82 00 08 */	beq lbl_800B9088
/* 800B9084 000B5FE4  3B 00 00 00 */	li r24, 0
lbl_800B9088:
/* 800B9088 000B5FE8  38 00 00 00 */	li r0, 0
/* 800B908C 000B5FEC  38 9C 00 08 */	addi r4, r28, 8
/* 800B9090 000B5FF0  7C 18 00 40 */	cmplw r24, r0
/* 800B9094 000B5FF4  90 01 00 38 */	stw r0, 0x38(r1)
/* 800B9098 000B5FF8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 800B909C 000B5FFC  40 82 00 0C */	bne lbl_800B90A8
/* 800B90A0 000B6000  7C 04 20 40 */	cmplw r4, r4
/* 800B90A4 000B6004  41 82 00 08 */	beq lbl_800B90AC
lbl_800B90A8:
/* 800B90A8 000B6008  38 00 00 01 */	li r0, 1
lbl_800B90AC:
/* 800B90AC 000B600C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B90B0 000B6010  41 82 02 60 */	beq lbl_800B9310
/* 800B90B4 000B6014  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800B90B8 000B6018  3A C0 00 00 */	li r22, 0
/* 800B90BC 000B601C  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800B90C0 000B6020  38 A0 00 00 */	li r5, 0
/* 800B90C4 000B6024  38 60 03 40 */	li r3, 0x340
/* 800B90C8 000B6028  48 25 C7 A5 */	bl __nw__FUlPCcPCc
/* 800B90CC 000B602C  7C 75 1B 79 */	or. r21, r3, r3
/* 800B90D0 000B6030  41 82 00 30 */	beq lbl_800B9100
/* 800B90D4 000B6034  80 98 00 14 */	lwz r4, 0x14(r24)
/* 800B90D8 000B6038  38 61 00 30 */	addi r3, r1, 0x30
/* 800B90DC 000B603C  80 84 00 00 */	lwz r4, 0(r4)
/* 800B90E0 000B6040  48 28 7D C9 */	bl __ct__6CTokenFRC6CToken
/* 800B90E4 000B6044  7E A3 AB 78 */	mr r3, r21
/* 800B90E8 000B6048  38 81 00 30 */	addi r4, r1, 0x30
/* 800B90EC 000B604C  3A C0 00 01 */	li r22, 1
/* 800B90F0 000B6050  38 A0 00 00 */	li r5, 0
/* 800B90F4 000B6054  38 C0 00 01 */	li r6, 1
/* 800B90F8 000B6058  48 26 62 E9 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 800B90FC 000B605C  7C 75 1B 78 */	mr r21, r3
lbl_800B9100:
/* 800B9100 000B6060  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B9104 000B6064  38 60 00 08 */	li r3, 8
/* 800B9108 000B6068  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B910C 000B606C  38 A0 00 00 */	li r5, 0
/* 800B9110 000B6070  48 25 C7 5D */	bl __nw__FUlPCcPCc
/* 800B9114 000B6074  28 03 00 00 */	cmplwi r3, 0
/* 800B9118 000B6078  41 82 00 10 */	beq lbl_800B9128
/* 800B911C 000B607C  92 A3 00 00 */	stw r21, 0(r3)
/* 800B9120 000B6080  38 00 00 01 */	li r0, 1
/* 800B9124 000B6084  90 03 00 04 */	stw r0, 4(r3)
lbl_800B9128:
/* 800B9128 000B6088  7E C0 07 75 */	extsb. r0, r22
/* 800B912C 000B608C  90 61 00 24 */	stw r3, 0x24(r1)
/* 800B9130 000B6090  41 82 00 10 */	beq lbl_800B9140
/* 800B9134 000B6094  38 61 00 30 */	addi r3, r1, 0x30
/* 800B9138 000B6098  38 80 00 00 */	li r4, 0
/* 800B913C 000B609C  48 28 7D 05 */	bl __dt__6CTokenFv
lbl_800B9140:
/* 800B9140 000B60A0  80 98 00 14 */	lwz r4, 0x14(r24)
/* 800B9144 000B60A4  38 61 00 24 */	addi r3, r1, 0x24
/* 800B9148 000B60A8  80 84 00 00 */	lwz r4, 0(r4)
/* 800B914C 000B60AC  48 00 1B 09 */	bl "_getGraphicLightId<Q24rstl24ncrc_ptr<12CParticleGen>,25TToken<15CGenDescription>>__FRCQ24rstl24ncrc_ptr<12CParticleGen>RC25TToken<15CGenDescription>"
/* 800B9150 000B60B0  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B9154 000B60B4  7E F7 1A 14 */	add r23, r23, r3
/* 800B9158 000B60B8  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B915C 000B60BC  3A C0 00 00 */	li r22, 0
/* 800B9160 000B60C0  3A A0 00 00 */	li r21, 0
/* 800B9164 000B60C4  38 60 00 8C */	li r3, 0x8c
/* 800B9168 000B60C8  38 A0 00 00 */	li r5, 0
/* 800B916C 000B60CC  48 25 C7 01 */	bl __nw__FUlPCcPCc
/* 800B9170 000B60D0  7C 78 1B 79 */	or. r24, r3, r3
/* 800B9174 000B60D4  41 82 00 9C */	beq lbl_800B9210
/* 800B9178 000B60D8  81 01 00 24 */	lwz r8, 0x24(r1)
/* 800B917C 000B60DC  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800B9180 000B60E0  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800B9184 000B60E4  38 61 00 50 */	addi r3, r1, 0x50
/* 800B9188 000B60E8  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800B918C 000B60EC  38 84 00 07 */	addi r4, r4, 7
/* 800B9190 000B60F0  38 C1 00 18 */	addi r6, r1, 0x18
/* 800B9194 000B60F4  3A A0 00 01 */	li r21, 1
/* 800B9198 000B60F8  80 E8 00 04 */	lwz r7, 4(r8)
/* 800B919C 000B60FC  38 A0 FF FF */	li r5, -1
/* 800B91A0 000B6100  38 07 00 01 */	addi r0, r7, 1
/* 800B91A4 000B6104  90 08 00 04 */	stw r0, 4(r8)
/* 800B91A8 000B6108  48 28 4F ED */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 800B91AC 000B610C  80 81 00 6C */	lwz r4, 0x6c(r1)
/* 800B91B0 000B6110  39 61 00 20 */	addi r11, r1, 0x20
/* 800B91B4 000B6114  80 E1 00 70 */	lwz r7, 0x70(r1)
/* 800B91B8 000B6118  38 00 00 01 */	li r0, 1
/* 800B91BC 000B611C  81 21 00 74 */	lwz r9, 0x74(r1)
/* 800B91C0 000B6120  7F 03 C3 78 */	mr r3, r24
/* 800B91C4 000B6124  81 99 00 00 */	lwz r12, 0(r25)
/* 800B91C8 000B6128  7F 46 D3 78 */	mr r6, r26
/* 800B91CC 000B612C  90 81 00 60 */	stw r4, 0x60(r1)
/* 800B91D0 000B6130  7F AA EB 78 */	mr r10, r29
/* 800B91D4 000B6134  38 81 00 48 */	addi r4, r1, 0x48
/* 800B91D8 000B6138  38 A1 00 1C */	addi r5, r1, 0x1c
/* 800B91DC 000B613C  90 E1 00 64 */	stw r7, 0x64(r1)
/* 800B91E0 000B6140  38 E1 00 50 */	addi r7, r1, 0x50
/* 800B91E4 000B6144  39 01 00 60 */	addi r8, r1, 0x60
/* 800B91E8 000B6148  3A C0 00 01 */	li r22, 1
/* 800B91EC 000B614C  91 21 00 68 */	stw r9, 0x68(r1)
/* 800B91F0 000B6150  39 20 00 00 */	li r9, 0
/* 800B91F4 000B6154  91 81 00 20 */	stw r12, 0x20(r1)
/* 800B91F8 000B6158  93 E1 00 08 */	stw r31, 8(r1)
/* 800B91FC 000B615C  91 61 00 0C */	stw r11, 0xc(r1)
/* 800B9200 000B6160  92 E1 00 10 */	stw r23, 0x10(r1)
/* 800B9204 000B6164  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9208 000B6168  4B FF E4 59 */	bl "__ct__23CParticleGenInfoGenericFRC10SObjectTagQ24rstl24ncrc_ptr<12CParticleGen>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>9CVector3fQ213CParticleData13EParentedModeiR13CStateManageri"
/* 800B920C 000B616C  7C 78 1B 78 */	mr r24, r3
lbl_800B9210:
/* 800B9210 000B6170  7C 18 00 D0 */	neg r0, r24
/* 800B9214 000B6174  38 61 00 28 */	addi r3, r1, 0x28
/* 800B9218 000B6178  7C 04 C3 78 */	or r4, r0, r24
/* 800B921C 000B617C  38 01 00 40 */	addi r0, r1, 0x40
/* 800B9220 000B6180  54 84 0F FE */	srwi r4, r4, 0x1f
/* 800B9224 000B6184  93 01 00 2C */	stw r24, 0x2c(r1)
/* 800B9228 000B6188  7C 03 00 40 */	cmplw r3, r0
/* 800B922C 000B618C  98 81 00 28 */	stb r4, 0x28(r1)
/* 800B9230 000B6190  41 82 00 48 */	beq lbl_800B9278
/* 800B9234 000B6194  88 01 00 40 */	lbz r0, 0x40(r1)
/* 800B9238 000B6198  28 00 00 00 */	cmplwi r0, 0
/* 800B923C 000B619C  41 82 00 24 */	beq lbl_800B9260
/* 800B9240 000B61A0  80 61 00 44 */	lwz r3, 0x44(r1)
/* 800B9244 000B61A4  28 03 00 00 */	cmplwi r3, 0
/* 800B9248 000B61A8  41 82 00 18 */	beq lbl_800B9260
/* 800B924C 000B61AC  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9250 000B61B0  38 80 00 01 */	li r4, 1
/* 800B9254 000B61B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9258 000B61B8  7D 89 03 A6 */	mtctr r12
/* 800B925C 000B61BC  4E 80 04 21 */	bctrl
lbl_800B9260:
/* 800B9260 000B61C0  88 81 00 28 */	lbz r4, 0x28(r1)
/* 800B9264 000B61C4  38 00 00 00 */	li r0, 0
/* 800B9268 000B61C8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800B926C 000B61CC  98 81 00 40 */	stb r4, 0x40(r1)
/* 800B9270 000B61D0  90 61 00 44 */	stw r3, 0x44(r1)
/* 800B9274 000B61D4  98 01 00 28 */	stb r0, 0x28(r1)
lbl_800B9278:
/* 800B9278 000B61D8  88 01 00 28 */	lbz r0, 0x28(r1)
/* 800B927C 000B61DC  28 00 00 00 */	cmplwi r0, 0
/* 800B9280 000B61E0  41 82 00 24 */	beq lbl_800B92A4
/* 800B9284 000B61E4  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800B9288 000B61E8  28 03 00 00 */	cmplwi r3, 0
/* 800B928C 000B61EC  41 82 00 18 */	beq lbl_800B92A4
/* 800B9290 000B61F0  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9294 000B61F4  38 80 00 01 */	li r4, 1
/* 800B9298 000B61F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B929C 000B61FC  7D 89 03 A6 */	mtctr r12
/* 800B92A0 000B6200  4E 80 04 21 */	bctrl
lbl_800B92A4:
/* 800B92A4 000B6204  7E A0 07 75 */	extsb. r0, r21
/* 800B92A8 000B6208  41 82 00 0C */	beq lbl_800B92B4
/* 800B92AC 000B620C  38 61 00 1C */	addi r3, r1, 0x1c
/* 800B92B0 000B6210  4B FF E7 51 */	bl sub_800b7a00
lbl_800B92B4:
/* 800B92B4 000B6214  7E C0 07 75 */	extsb. r0, r22
/* 800B92B8 000B6218  41 82 00 0C */	beq lbl_800B92C4
/* 800B92BC 000B621C  38 61 00 50 */	addi r3, r1, 0x50
/* 800B92C0 000B6220  48 28 48 21 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800B92C4:
/* 800B92C4 000B6224  80 61 00 44 */	lwz r3, 0x44(r1)
/* 800B92C8 000B6228  7F E5 FB 78 */	mr r5, r31
/* 800B92CC 000B622C  38 9E 00 0C */	addi r4, r30, 0xc
/* 800B92D0 000B6230  81 83 00 00 */	lwz r12, 0(r3)
/* 800B92D4 000B6234  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800B92D8 000B6238  7D 89 03 A6 */	mtctr r12
/* 800B92DC 000B623C  4E 80 04 21 */	bctrl
/* 800B92E0 000B6240  80 81 00 44 */	lwz r4, 0x44(r1)
/* 800B92E4 000B6244  38 00 00 00 */	li r0, 0
/* 800B92E8 000B6248  7F 83 E3 78 */	mr r3, r28
/* 800B92EC 000B624C  7F A5 EB 78 */	mr r5, r29
/* 800B92F0 000B6250  98 04 00 40 */	stb r0, 0x40(r4)
/* 800B92F4 000B6254  7F 66 DB 78 */	mr r6, r27
/* 800B92F8 000B6258  38 E1 00 40 */	addi r7, r1, 0x40
/* 800B92FC 000B625C  38 80 00 00 */	li r4, 0
/* 800B9300 000B6260  48 00 09 75 */	bl "InsertParticleGen__17CParticleDatabaseFbiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl28auto_ptr<16CParticleGenInfo>"
/* 800B9304 000B6264  38 61 00 24 */	addi r3, r1, 0x24
/* 800B9308 000B6268  4B FF E6 F9 */	bl sub_800b7a00
/* 800B930C 000B626C  48 00 00 08 */	b lbl_800B9314
lbl_800B9310:
/* 800B9310 000B6270  48 28 7C F5 */	bl Type2Text__10SObjectTagFUi
lbl_800B9314:
/* 800B9314 000B6274  88 01 00 40 */	lbz r0, 0x40(r1)
/* 800B9318 000B6278  28 00 00 00 */	cmplwi r0, 0
/* 800B931C 000B627C  41 82 00 5C */	beq lbl_800B9378
/* 800B9320 000B6280  80 61 00 44 */	lwz r3, 0x44(r1)
/* 800B9324 000B6284  28 03 00 00 */	cmplwi r3, 0
/* 800B9328 000B6288  41 82 00 50 */	beq lbl_800B9378
/* 800B932C 000B628C  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9330 000B6290  38 80 00 01 */	li r4, 1
/* 800B9334 000B6294  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9338 000B6298  7D 89 03 A6 */	mtctr r12
/* 800B933C 000B629C  4E 80 04 21 */	bctrl
/* 800B9340 000B62A0  48 00 00 38 */	b lbl_800B9378
lbl_800B9344:
/* 800B9344 000B62A4  88 15 00 24 */	lbz r0, 0x24(r21)
/* 800B9348 000B62A8  28 00 00 00 */	cmplwi r0, 0
/* 800B934C 000B62AC  40 82 00 2C */	bne lbl_800B9378
/* 800B9350 000B62B0  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9354 000B62B4  7F E5 FB 78 */	mr r5, r31
/* 800B9358 000B62B8  38 80 00 01 */	li r4, 1
/* 800B935C 000B62BC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800B9360 000B62C0  7D 89 03 A6 */	mtctr r12
/* 800B9364 000B62C4  4E 80 04 21 */	bctrl
/* 800B9368 000B62C8  38 00 00 01 */	li r0, 1
/* 800B936C 000B62CC  98 15 00 24 */	stb r0, 0x24(r21)
/* 800B9370 000B62D0  98 15 00 40 */	stb r0, 0x40(r21)
/* 800B9374 000B62D4  93 B5 00 2C */	stw r29, 0x2c(r21)
lbl_800B9378:
/* 800B9378 000B62D8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 800B937C 000B62DC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 800B9380 000B62E0  BA A1 00 84 */	lmw r21, 0x84(r1)
/* 800B9384 000B62E4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800B9388 000B62E8  7C 08 03 A6 */	mtlr r0
/* 800B938C 000B62EC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 800B9390 000B62F0  4E 80 00 20 */	blr

.global "AddParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>iRC13CParticleDataRC9CVector3fR13CStateManager7TAreaIdb"
"AddParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>iRC13CParticleDataRC9CVector3fR13CStateManager7TAreaIdb":
/* 800B9394 000B62F4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 800B9398 000B62F8  7C 08 02 A6 */	mflr r0
/* 800B939C 000B62FC  90 01 01 14 */	stw r0, 0x114(r1)
/* 800B93A0 000B6300  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 800B93A4 000B6304  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 800B93A8 000B6308  BE 41 00 C8 */	stmw r18, 0xc8(r1)
/* 800B93AC 000B630C  81 66 00 08 */	lwz r11, 8(r6)
/* 800B93B0 000B6310  7C 7F 1B 78 */	mr r31, r3
/* 800B93B4 000B6314  80 06 00 04 */	lwz r0, 4(r6)
/* 800B93B8 000B6318  7C 94 23 78 */	mr r20, r4
/* 800B93BC 000B631C  91 61 00 90 */	stw r11, 0x90(r1)
/* 800B93C0 000B6320  7C BE 2B 78 */	mr r30, r5
/* 800B93C4 000B6324  82 E1 01 18 */	lwz r23, 0x118(r1)
/* 800B93C8 000B6328  7C F3 3B 78 */	mr r19, r7
/* 800B93CC 000B632C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 800B93D0 000B6330  7D 1D 43 78 */	mr r29, r8
/* 800B93D4 000B6334  83 06 00 00 */	lwz r24, 0(r6)
/* 800B93D8 000B6338  7D 3B 4B 78 */	mr r27, r9
/* 800B93DC 000B633C  C3 E6 00 1C */	lfs f31, 0x1c(r6)
/* 800B93E0 000B6340  7D 56 53 78 */	mr r22, r10
/* 800B93E4 000B6344  83 46 00 20 */	lwz r26, 0x20(r6)
/* 800B93E8 000B6348  3B 26 00 0C */	addi r25, r6, 0xc
/* 800B93EC 000B634C  4B FF F8 71 */	bl "GetParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800B93F0 000B6350  7C 72 1B 79 */	or. r18, r3, r3
/* 800B93F4 000B6354  40 82 08 30 */	bne lbl_800B9C24
/* 800B93F8 000B6358  C0 02 8D 2C */	lfs f0, lbl_805AAA4C@sda21(r2)
/* 800B93FC 000B635C  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 800B9400 000B6360  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 800B9404 000B6364  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 800B9408 000B6368  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 800B940C 000B636C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800B9410 000B6370  41 82 00 18 */	beq lbl_800B9428
/* 800B9414 000B6374  EC 00 07 F2 */	fmuls f0, f0, f31
/* 800B9418 000B6378  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 800B941C 000B637C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 800B9420 000B6380  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 800B9424 000B6384  48 00 00 28 */	b lbl_800B944C
lbl_800B9428:
/* 800B9428 000B6388  C0 53 00 08 */	lfs f2, 8(r19)
/* 800B942C 000B638C  C0 33 00 04 */	lfs f1, 4(r19)
/* 800B9430 000B6390  C0 13 00 00 */	lfs f0, 0(r19)
/* 800B9434 000B6394  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 800B9438 000B6398  EC 3F 00 72 */	fmuls f1, f31, f1
/* 800B943C 000B639C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800B9440 000B63A0  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 800B9444 000B63A4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 800B9448 000B63A8  D0 21 00 BC */	stfs f1, 0xbc(r1)
lbl_800B944C:
/* 800B944C 000B63AC  3C 03 AF BF */	addis r0, r3, 0xafbf
/* 800B9450 000B63B0  3B 80 00 00 */	li r28, 0
/* 800B9454 000B63B4  28 00 52 54 */	cmplwi r0, 0x5254
/* 800B9458 000B63B8  9B 81 00 84 */	stb r28, 0x84(r1)
/* 800B945C 000B63BC  93 81 00 88 */	stw r28, 0x88(r1)
/* 800B9460 000B63C0  40 82 02 70 */	bne lbl_800B96D0
/* 800B9464 000B63C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 800B9468 000B63C8  80 01 00 90 */	lwz r0, 0x90(r1)
/* 800B946C 000B63CC  48 00 00 20 */	b lbl_800B948C
lbl_800B9470:
/* 800B9470 000B63D0  80 64 00 10 */	lwz r3, 0x10(r4)
/* 800B9474 000B63D4  7C 03 00 40 */	cmplw r3, r0
/* 800B9478 000B63D8  41 80 00 10 */	blt lbl_800B9488
/* 800B947C 000B63DC  7C 9C 23 78 */	mr r28, r4
/* 800B9480 000B63E0  80 84 00 00 */	lwz r4, 0(r4)
/* 800B9484 000B63E4  48 00 00 08 */	b lbl_800B948C
lbl_800B9488:
/* 800B9488 000B63E8  80 84 00 04 */	lwz r4, 4(r4)
lbl_800B948C:
/* 800B948C 000B63EC  28 04 00 00 */	cmplwi r4, 0
/* 800B9490 000B63F0  40 82 FF E0 */	bne lbl_800B9470
/* 800B9494 000B63F4  28 1C 00 00 */	cmplwi r28, 0
/* 800B9498 000B63F8  38 80 00 00 */	li r4, 0
/* 800B949C 000B63FC  41 82 00 14 */	beq lbl_800B94B0
/* 800B94A0 000B6400  80 61 00 90 */	lwz r3, 0x90(r1)
/* 800B94A4 000B6404  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 800B94A8 000B6408  7C 03 00 40 */	cmplw r3, r0
/* 800B94AC 000B640C  40 80 00 08 */	bge lbl_800B94B4
lbl_800B94B0:
/* 800B94B0 000B6410  38 80 00 01 */	li r4, 1
lbl_800B94B4:
/* 800B94B4 000B6414  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800B94B8 000B6418  41 82 00 08 */	beq lbl_800B94C0
/* 800B94BC 000B641C  3B 80 00 00 */	li r28, 0
lbl_800B94C0:
/* 800B94C0 000B6420  38 00 00 00 */	li r0, 0
/* 800B94C4 000B6424  38 7F 00 08 */	addi r3, r31, 8
/* 800B94C8 000B6428  7C 1C 00 40 */	cmplw r28, r0
/* 800B94CC 000B642C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 800B94D0 000B6430  90 61 00 80 */	stw r3, 0x80(r1)
/* 800B94D4 000B6434  40 82 00 0C */	bne lbl_800B94E0
/* 800B94D8 000B6438  7C 03 18 40 */	cmplw r3, r3
/* 800B94DC 000B643C  41 82 00 08 */	beq lbl_800B94E4
lbl_800B94E0:
/* 800B94E0 000B6440  38 00 00 01 */	li r0, 1
lbl_800B94E4:
/* 800B94E4 000B6444  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B94E8 000B6448  41 82 06 B8 */	beq lbl_800B9BA0
/* 800B94EC 000B644C  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800B94F0 000B6450  3A A0 00 00 */	li r21, 0
/* 800B94F4 000B6454  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800B94F8 000B6458  38 A0 00 00 */	li r5, 0
/* 800B94FC 000B645C  38 60 03 40 */	li r3, 0x340
/* 800B9500 000B6460  48 25 C3 6D */	bl __nw__FUlPCcPCc
/* 800B9504 000B6464  7C 73 1B 79 */	or. r19, r3, r3
/* 800B9508 000B6468  41 82 00 30 */	beq lbl_800B9538
/* 800B950C 000B646C  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 800B9510 000B6470  38 61 00 74 */	addi r3, r1, 0x74
/* 800B9514 000B6474  80 84 00 00 */	lwz r4, 0(r4)
/* 800B9518 000B6478  48 28 79 91 */	bl __ct__6CTokenFRC6CToken
/* 800B951C 000B647C  7E 63 9B 78 */	mr r3, r19
/* 800B9520 000B6480  38 81 00 74 */	addi r4, r1, 0x74
/* 800B9524 000B6484  3A A0 00 01 */	li r21, 1
/* 800B9528 000B6488  38 A0 00 00 */	li r5, 0
/* 800B952C 000B648C  38 C0 00 01 */	li r6, 1
/* 800B9530 000B6490  48 26 5E B1 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 800B9534 000B6494  7C 73 1B 78 */	mr r19, r3
lbl_800B9538:
/* 800B9538 000B6498  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B953C 000B649C  38 60 00 08 */	li r3, 8
/* 800B9540 000B64A0  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B9544 000B64A4  38 A0 00 00 */	li r5, 0
/* 800B9548 000B64A8  48 25 C3 25 */	bl __nw__FUlPCcPCc
/* 800B954C 000B64AC  28 03 00 00 */	cmplwi r3, 0
/* 800B9550 000B64B0  41 82 00 10 */	beq lbl_800B9560
/* 800B9554 000B64B4  92 63 00 00 */	stw r19, 0(r3)
/* 800B9558 000B64B8  38 00 00 01 */	li r0, 1
/* 800B955C 000B64BC  90 03 00 04 */	stw r0, 4(r3)
lbl_800B9560:
/* 800B9560 000B64C0  7E A0 07 75 */	extsb. r0, r21
/* 800B9564 000B64C4  90 61 00 38 */	stw r3, 0x38(r1)
/* 800B9568 000B64C8  41 82 00 10 */	beq lbl_800B9578
/* 800B956C 000B64CC  38 61 00 74 */	addi r3, r1, 0x74
/* 800B9570 000B64D0  38 80 00 00 */	li r4, 0
/* 800B9574 000B64D4  48 28 78 CD */	bl __dt__6CTokenFv
lbl_800B9578:
/* 800B9578 000B64D8  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 800B957C 000B64DC  38 61 00 38 */	addi r3, r1, 0x38
/* 800B9580 000B64E0  80 84 00 00 */	lwz r4, 0(r4)
/* 800B9584 000B64E4  48 00 16 D1 */	bl "_getGraphicLightId<Q24rstl24ncrc_ptr<12CParticleGen>,25TToken<15CGenDescription>>__FRCQ24rstl24ncrc_ptr<12CParticleGen>RC25TToken<15CGenDescription>"
/* 800B9588 000B64E8  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B958C 000B64EC  7E 77 1A 14 */	add r19, r23, r3
/* 800B9590 000B64F0  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B9594 000B64F4  3A A0 00 00 */	li r21, 0
/* 800B9598 000B64F8  38 60 00 8C */	li r3, 0x8c
/* 800B959C 000B64FC  38 A0 00 00 */	li r5, 0
/* 800B95A0 000B6500  48 25 C2 CD */	bl __nw__FUlPCcPCc
/* 800B95A4 000B6504  7C 65 1B 79 */	or. r5, r3, r3
/* 800B95A8 000B6508  41 82 00 78 */	beq lbl_800B9620
/* 800B95AC 000B650C  81 01 00 38 */	lwz r8, 0x38(r1)
/* 800B95B0 000B6510  39 61 00 2C */	addi r11, r1, 0x2c
/* 800B95B4 000B6514  83 81 00 B8 */	lwz r28, 0xb8(r1)
/* 800B95B8 000B6518  38 00 00 00 */	li r0, 0
/* 800B95BC 000B651C  91 01 00 28 */	stw r8, 0x28(r1)
/* 800B95C0 000B6520  7F 06 C3 78 */	mr r6, r24
/* 800B95C4 000B6524  82 E1 00 BC */	lwz r23, 0xbc(r1)
/* 800B95C8 000B6528  7F 27 CB 78 */	mr r7, r25
/* 800B95CC 000B652C  80 88 00 04 */	lwz r4, 4(r8)
/* 800B95D0 000B6530  7F 49 D3 78 */	mr r9, r26
/* 800B95D4 000B6534  82 41 00 C0 */	lwz r18, 0xc0(r1)
/* 800B95D8 000B6538  7F CA F3 78 */	mr r10, r30
/* 800B95DC 000B653C  38 A4 00 01 */	addi r5, r4, 1
/* 800B95E0 000B6540  38 81 00 8C */	addi r4, r1, 0x8c
/* 800B95E4 000B6544  90 A8 00 04 */	stw r5, 4(r8)
/* 800B95E8 000B6548  38 A1 00 28 */	addi r5, r1, 0x28
/* 800B95EC 000B654C  39 01 00 AC */	addi r8, r1, 0xac
/* 800B95F0 000B6550  3A A0 00 01 */	li r21, 1
/* 800B95F4 000B6554  81 9B 00 00 */	lwz r12, 0(r27)
/* 800B95F8 000B6558  93 81 00 AC */	stw r28, 0xac(r1)
/* 800B95FC 000B655C  92 E1 00 B0 */	stw r23, 0xb0(r1)
/* 800B9600 000B6560  92 41 00 B4 */	stw r18, 0xb4(r1)
/* 800B9604 000B6564  91 81 00 2C */	stw r12, 0x2c(r1)
/* 800B9608 000B6568  93 A1 00 08 */	stw r29, 8(r1)
/* 800B960C 000B656C  91 61 00 0C */	stw r11, 0xc(r1)
/* 800B9610 000B6570  92 61 00 10 */	stw r19, 0x10(r1)
/* 800B9614 000B6574  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9618 000B6578  4B FF E0 49 */	bl "__ct__23CParticleGenInfoGenericFRC10SObjectTagQ24rstl24ncrc_ptr<12CParticleGen>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>9CVector3fQ213CParticleData13EParentedModeiR13CStateManageri"
/* 800B961C 000B657C  7C 65 1B 78 */	mr r5, r3
lbl_800B9620:
/* 800B9620 000B6580  7C 05 00 D0 */	neg r0, r5
/* 800B9624 000B6584  38 61 00 6C */	addi r3, r1, 0x6c
/* 800B9628 000B6588  7C 04 2B 78 */	or r4, r0, r5
/* 800B962C 000B658C  38 01 00 84 */	addi r0, r1, 0x84
/* 800B9630 000B6590  54 84 0F FE */	srwi r4, r4, 0x1f
/* 800B9634 000B6594  90 A1 00 70 */	stw r5, 0x70(r1)
/* 800B9638 000B6598  7C 03 00 40 */	cmplw r3, r0
/* 800B963C 000B659C  98 81 00 6C */	stb r4, 0x6c(r1)
/* 800B9640 000B65A0  41 82 00 48 */	beq lbl_800B9688
/* 800B9644 000B65A4  88 01 00 84 */	lbz r0, 0x84(r1)
/* 800B9648 000B65A8  28 00 00 00 */	cmplwi r0, 0
/* 800B964C 000B65AC  41 82 00 24 */	beq lbl_800B9670
/* 800B9650 000B65B0  80 61 00 88 */	lwz r3, 0x88(r1)
/* 800B9654 000B65B4  28 03 00 00 */	cmplwi r3, 0
/* 800B9658 000B65B8  41 82 00 18 */	beq lbl_800B9670
/* 800B965C 000B65BC  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9660 000B65C0  38 80 00 01 */	li r4, 1
/* 800B9664 000B65C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9668 000B65C8  7D 89 03 A6 */	mtctr r12
/* 800B966C 000B65CC  4E 80 04 21 */	bctrl
lbl_800B9670:
/* 800B9670 000B65D0  88 81 00 6C */	lbz r4, 0x6c(r1)
/* 800B9674 000B65D4  38 00 00 00 */	li r0, 0
/* 800B9678 000B65D8  80 61 00 70 */	lwz r3, 0x70(r1)
/* 800B967C 000B65DC  98 81 00 84 */	stb r4, 0x84(r1)
/* 800B9680 000B65E0  90 61 00 88 */	stw r3, 0x88(r1)
/* 800B9684 000B65E4  98 01 00 6C */	stb r0, 0x6c(r1)
lbl_800B9688:
/* 800B9688 000B65E8  88 01 00 6C */	lbz r0, 0x6c(r1)
/* 800B968C 000B65EC  28 00 00 00 */	cmplwi r0, 0
/* 800B9690 000B65F0  41 82 00 24 */	beq lbl_800B96B4
/* 800B9694 000B65F4  80 61 00 70 */	lwz r3, 0x70(r1)
/* 800B9698 000B65F8  28 03 00 00 */	cmplwi r3, 0
/* 800B969C 000B65FC  41 82 00 18 */	beq lbl_800B96B4
/* 800B96A0 000B6600  81 83 00 00 */	lwz r12, 0(r3)
/* 800B96A4 000B6604  38 80 00 01 */	li r4, 1
/* 800B96A8 000B6608  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B96AC 000B660C  7D 89 03 A6 */	mtctr r12
/* 800B96B0 000B6610  4E 80 04 21 */	bctrl
lbl_800B96B4:
/* 800B96B4 000B6614  7E A0 07 75 */	extsb. r0, r21
/* 800B96B8 000B6618  41 82 00 0C */	beq lbl_800B96C4
/* 800B96BC 000B661C  38 61 00 28 */	addi r3, r1, 0x28
/* 800B96C0 000B6620  4B FF E3 41 */	bl sub_800b7a00
lbl_800B96C4:
/* 800B96C4 000B6624  38 61 00 38 */	addi r3, r1, 0x38
/* 800B96C8 000B6628  4B FF E3 39 */	bl sub_800b7a00
/* 800B96CC 000B662C  48 00 04 D4 */	b lbl_800B9BA0
lbl_800B96D0:
/* 800B96D0 000B6630  3C 03 AC A9 */	addis r0, r3, 0xaca9
/* 800B96D4 000B6634  28 00 48 43 */	cmplwi r0, 0x4843
/* 800B96D8 000B6638  40 82 02 5C */	bne lbl_800B9934
/* 800B96DC 000B663C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 800B96E0 000B6640  80 01 00 90 */	lwz r0, 0x90(r1)
/* 800B96E4 000B6644  48 00 00 20 */	b lbl_800B9704
lbl_800B96E8:
/* 800B96E8 000B6648  80 64 00 10 */	lwz r3, 0x10(r4)
/* 800B96EC 000B664C  7C 03 00 40 */	cmplw r3, r0
/* 800B96F0 000B6650  41 80 00 10 */	blt lbl_800B9700
/* 800B96F4 000B6654  7C 9C 23 78 */	mr r28, r4
/* 800B96F8 000B6658  80 84 00 00 */	lwz r4, 0(r4)
/* 800B96FC 000B665C  48 00 00 08 */	b lbl_800B9704
lbl_800B9700:
/* 800B9700 000B6660  80 84 00 04 */	lwz r4, 4(r4)
lbl_800B9704:
/* 800B9704 000B6664  28 04 00 00 */	cmplwi r4, 0
/* 800B9708 000B6668  40 82 FF E0 */	bne lbl_800B96E8
/* 800B970C 000B666C  28 1C 00 00 */	cmplwi r28, 0
/* 800B9710 000B6670  38 80 00 00 */	li r4, 0
/* 800B9714 000B6674  41 82 00 14 */	beq lbl_800B9728
/* 800B9718 000B6678  80 61 00 90 */	lwz r3, 0x90(r1)
/* 800B971C 000B667C  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 800B9720 000B6680  7C 03 00 40 */	cmplw r3, r0
/* 800B9724 000B6684  40 80 00 08 */	bge lbl_800B972C
lbl_800B9728:
/* 800B9728 000B6688  38 80 00 01 */	li r4, 1
lbl_800B972C:
/* 800B972C 000B668C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800B9730 000B6690  41 82 00 08 */	beq lbl_800B9738
/* 800B9734 000B6694  3B 80 00 00 */	li r28, 0
lbl_800B9738:
/* 800B9738 000B6698  38 00 00 00 */	li r0, 0
/* 800B973C 000B669C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 800B9740 000B66A0  7C 1C 00 40 */	cmplw r28, r0
/* 800B9744 000B66A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 800B9748 000B66A8  90 61 00 68 */	stw r3, 0x68(r1)
/* 800B974C 000B66AC  40 82 00 0C */	bne lbl_800B9758
/* 800B9750 000B66B0  7C 03 18 40 */	cmplw r3, r3
/* 800B9754 000B66B4  41 82 00 08 */	beq lbl_800B975C
lbl_800B9758:
/* 800B9758 000B66B8  38 00 00 01 */	li r0, 1
lbl_800B975C:
/* 800B975C 000B66BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B9760 000B66C0  41 82 04 40 */	beq lbl_800B9BA0
/* 800B9764 000B66C4  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800B9768 000B66C8  3A 60 00 00 */	li r19, 0
/* 800B976C 000B66CC  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800B9770 000B66D0  38 A0 00 00 */	li r5, 0
/* 800B9774 000B66D4  38 60 02 10 */	li r3, 0x210
/* 800B9778 000B66D8  48 25 C0 F5 */	bl __nw__FUlPCcPCc
/* 800B977C 000B66DC  7C 72 1B 79 */	or. r18, r3, r3
/* 800B9780 000B66E0  41 82 00 2C */	beq lbl_800B97AC
/* 800B9784 000B66E4  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 800B9788 000B66E8  38 61 00 5C */	addi r3, r1, 0x5c
/* 800B978C 000B66EC  80 84 00 00 */	lwz r4, 0(r4)
/* 800B9790 000B66F0  48 28 77 19 */	bl __ct__6CTokenFRC6CToken
/* 800B9794 000B66F4  7E 43 93 78 */	mr r3, r18
/* 800B9798 000B66F8  38 81 00 5C */	addi r4, r1, 0x5c
/* 800B979C 000B66FC  3A 60 00 01 */	li r19, 1
/* 800B97A0 000B6700  38 A0 00 00 */	li r5, 0
/* 800B97A4 000B6704  48 27 56 41 */	bl "__ct__15CParticleSwooshF28TToken<18CSwooshDescription>i"
/* 800B97A8 000B6708  7C 72 1B 78 */	mr r18, r3
lbl_800B97AC:
/* 800B97AC 000B670C  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B97B0 000B6710  38 60 00 08 */	li r3, 8
/* 800B97B4 000B6714  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B97B8 000B6718  38 A0 00 00 */	li r5, 0
/* 800B97BC 000B671C  48 25 C0 B1 */	bl __nw__FUlPCcPCc
/* 800B97C0 000B6720  28 03 00 00 */	cmplwi r3, 0
/* 800B97C4 000B6724  41 82 00 10 */	beq lbl_800B97D4
/* 800B97C8 000B6728  92 43 00 00 */	stw r18, 0(r3)
/* 800B97CC 000B672C  38 00 00 01 */	li r0, 1
/* 800B97D0 000B6730  90 03 00 04 */	stw r0, 4(r3)
lbl_800B97D4:
/* 800B97D4 000B6734  7E 60 07 75 */	extsb. r0, r19
/* 800B97D8 000B6738  90 61 00 34 */	stw r3, 0x34(r1)
/* 800B97DC 000B673C  41 82 00 10 */	beq lbl_800B97EC
/* 800B97E0 000B6740  38 61 00 5C */	addi r3, r1, 0x5c
/* 800B97E4 000B6744  38 80 00 00 */	li r4, 0
/* 800B97E8 000B6748  48 28 76 59 */	bl __dt__6CTokenFv
lbl_800B97EC:
/* 800B97EC 000B674C  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800B97F0 000B6750  3A 60 00 00 */	li r19, 0
/* 800B97F4 000B6754  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800B97F8 000B6758  38 A0 00 00 */	li r5, 0
/* 800B97FC 000B675C  38 60 00 8C */	li r3, 0x8c
/* 800B9800 000B6760  48 25 C0 6D */	bl __nw__FUlPCcPCc
/* 800B9804 000B6764  7C 65 1B 79 */	or. r5, r3, r3
/* 800B9808 000B6768  41 82 00 7C */	beq lbl_800B9884
/* 800B980C 000B676C  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 800B9810 000B6770  39 81 00 24 */	addi r12, r1, 0x24
/* 800B9814 000B6774  82 41 00 B8 */	lwz r18, 0xb8(r1)
/* 800B9818 000B6778  39 60 FF FF */	li r11, -1
/* 800B981C 000B677C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 800B9820 000B6780  38 00 00 00 */	li r0, 0
/* 800B9824 000B6784  83 81 00 BC */	lwz r28, 0xbc(r1)
/* 800B9828 000B6788  7F 06 C3 78 */	mr r6, r24
/* 800B982C 000B678C  80 85 00 04 */	lwz r4, 4(r5)
/* 800B9830 000B6790  7F 27 CB 78 */	mr r7, r25
/* 800B9834 000B6794  82 E1 00 C0 */	lwz r23, 0xc0(r1)
/* 800B9838 000B6798  7F 49 D3 78 */	mr r9, r26
/* 800B983C 000B679C  38 84 00 01 */	addi r4, r4, 1
/* 800B9840 000B67A0  7F CA F3 78 */	mr r10, r30
/* 800B9844 000B67A4  90 85 00 04 */	stw r4, 4(r5)
/* 800B9848 000B67A8  38 81 00 8C */	addi r4, r1, 0x8c
/* 800B984C 000B67AC  38 A1 00 20 */	addi r5, r1, 0x20
/* 800B9850 000B67B0  39 01 00 A0 */	addi r8, r1, 0xa0
/* 800B9854 000B67B4  82 BB 00 00 */	lwz r21, 0(r27)
/* 800B9858 000B67B8  3A 60 00 01 */	li r19, 1
/* 800B985C 000B67BC  92 41 00 A0 */	stw r18, 0xa0(r1)
/* 800B9860 000B67C0  93 81 00 A4 */	stw r28, 0xa4(r1)
/* 800B9864 000B67C4  92 E1 00 A8 */	stw r23, 0xa8(r1)
/* 800B9868 000B67C8  92 A1 00 24 */	stw r21, 0x24(r1)
/* 800B986C 000B67CC  93 A1 00 08 */	stw r29, 8(r1)
/* 800B9870 000B67D0  91 81 00 0C */	stw r12, 0xc(r1)
/* 800B9874 000B67D4  91 61 00 10 */	stw r11, 0x10(r1)
/* 800B9878 000B67D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B987C 000B67DC  4B FF DD E5 */	bl "__ct__23CParticleGenInfoGenericFRC10SObjectTagQ24rstl24ncrc_ptr<12CParticleGen>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>9CVector3fQ213CParticleData13EParentedModeiR13CStateManageri"
/* 800B9880 000B67E0  7C 65 1B 78 */	mr r5, r3
lbl_800B9884:
/* 800B9884 000B67E4  7C 05 00 D0 */	neg r0, r5
/* 800B9888 000B67E8  38 61 00 54 */	addi r3, r1, 0x54
/* 800B988C 000B67EC  7C 04 2B 78 */	or r4, r0, r5
/* 800B9890 000B67F0  38 01 00 84 */	addi r0, r1, 0x84
/* 800B9894 000B67F4  54 84 0F FE */	srwi r4, r4, 0x1f
/* 800B9898 000B67F8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 800B989C 000B67FC  7C 03 00 40 */	cmplw r3, r0
/* 800B98A0 000B6800  98 81 00 54 */	stb r4, 0x54(r1)
/* 800B98A4 000B6804  41 82 00 48 */	beq lbl_800B98EC
/* 800B98A8 000B6808  88 01 00 84 */	lbz r0, 0x84(r1)
/* 800B98AC 000B680C  28 00 00 00 */	cmplwi r0, 0
/* 800B98B0 000B6810  41 82 00 24 */	beq lbl_800B98D4
/* 800B98B4 000B6814  80 61 00 88 */	lwz r3, 0x88(r1)
/* 800B98B8 000B6818  28 03 00 00 */	cmplwi r3, 0
/* 800B98BC 000B681C  41 82 00 18 */	beq lbl_800B98D4
/* 800B98C0 000B6820  81 83 00 00 */	lwz r12, 0(r3)
/* 800B98C4 000B6824  38 80 00 01 */	li r4, 1
/* 800B98C8 000B6828  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B98CC 000B682C  7D 89 03 A6 */	mtctr r12
/* 800B98D0 000B6830  4E 80 04 21 */	bctrl
lbl_800B98D4:
/* 800B98D4 000B6834  88 81 00 54 */	lbz r4, 0x54(r1)
/* 800B98D8 000B6838  38 00 00 00 */	li r0, 0
/* 800B98DC 000B683C  80 61 00 58 */	lwz r3, 0x58(r1)
/* 800B98E0 000B6840  98 81 00 84 */	stb r4, 0x84(r1)
/* 800B98E4 000B6844  90 61 00 88 */	stw r3, 0x88(r1)
/* 800B98E8 000B6848  98 01 00 54 */	stb r0, 0x54(r1)
lbl_800B98EC:
/* 800B98EC 000B684C  88 01 00 54 */	lbz r0, 0x54(r1)
/* 800B98F0 000B6850  28 00 00 00 */	cmplwi r0, 0
/* 800B98F4 000B6854  41 82 00 24 */	beq lbl_800B9918
/* 800B98F8 000B6858  80 61 00 58 */	lwz r3, 0x58(r1)
/* 800B98FC 000B685C  28 03 00 00 */	cmplwi r3, 0
/* 800B9900 000B6860  41 82 00 18 */	beq lbl_800B9918
/* 800B9904 000B6864  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9908 000B6868  38 80 00 01 */	li r4, 1
/* 800B990C 000B686C  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9910 000B6870  7D 89 03 A6 */	mtctr r12
/* 800B9914 000B6874  4E 80 04 21 */	bctrl
lbl_800B9918:
/* 800B9918 000B6878  7E 60 07 75 */	extsb. r0, r19
/* 800B991C 000B687C  41 82 00 0C */	beq lbl_800B9928
/* 800B9920 000B6880  38 61 00 20 */	addi r3, r1, 0x20
/* 800B9924 000B6884  4B FF E0 DD */	bl sub_800b7a00
lbl_800B9928:
/* 800B9928 000B6888  38 61 00 34 */	addi r3, r1, 0x34
/* 800B992C 000B688C  4B FF E0 D5 */	bl sub_800b7a00
/* 800B9930 000B6890  48 00 02 70 */	b lbl_800B9BA0
lbl_800B9934:
/* 800B9934 000B6894  3C 03 BA B4 */	addis r0, r3, 0xbab4
/* 800B9938 000B6898  28 00 53 43 */	cmplwi r0, 0x5343
/* 800B993C 000B689C  40 82 02 64 */	bne lbl_800B9BA0
/* 800B9940 000B68A0  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 800B9944 000B68A4  80 01 00 90 */	lwz r0, 0x90(r1)
/* 800B9948 000B68A8  48 00 00 20 */	b lbl_800B9968
lbl_800B994C:
/* 800B994C 000B68AC  80 64 00 10 */	lwz r3, 0x10(r4)
/* 800B9950 000B68B0  7C 03 00 40 */	cmplw r3, r0
/* 800B9954 000B68B4  41 80 00 10 */	blt lbl_800B9964
/* 800B9958 000B68B8  7C 9C 23 78 */	mr r28, r4
/* 800B995C 000B68BC  80 84 00 00 */	lwz r4, 0(r4)
/* 800B9960 000B68C0  48 00 00 08 */	b lbl_800B9968
lbl_800B9964:
/* 800B9964 000B68C4  80 84 00 04 */	lwz r4, 4(r4)
lbl_800B9968:
/* 800B9968 000B68C8  28 04 00 00 */	cmplwi r4, 0
/* 800B996C 000B68CC  40 82 FF E0 */	bne lbl_800B994C
/* 800B9970 000B68D0  28 1C 00 00 */	cmplwi r28, 0
/* 800B9974 000B68D4  38 80 00 00 */	li r4, 0
/* 800B9978 000B68D8  41 82 00 14 */	beq lbl_800B998C
/* 800B997C 000B68DC  80 61 00 90 */	lwz r3, 0x90(r1)
/* 800B9980 000B68E0  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 800B9984 000B68E4  7C 03 00 40 */	cmplw r3, r0
/* 800B9988 000B68E8  40 80 00 08 */	bge lbl_800B9990
lbl_800B998C:
/* 800B998C 000B68EC  38 80 00 01 */	li r4, 1
lbl_800B9990:
/* 800B9990 000B68F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800B9994 000B68F4  41 82 00 08 */	beq lbl_800B999C
/* 800B9998 000B68F8  3B 80 00 00 */	li r28, 0
lbl_800B999C:
/* 800B999C 000B68FC  38 00 00 00 */	li r0, 0
/* 800B99A0 000B6900  38 7F 00 30 */	addi r3, r31, 0x30
/* 800B99A4 000B6904  7C 1C 00 40 */	cmplw r28, r0
/* 800B99A8 000B6908  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800B99AC 000B690C  90 61 00 50 */	stw r3, 0x50(r1)
/* 800B99B0 000B6910  40 82 00 0C */	bne lbl_800B99BC
/* 800B99B4 000B6914  7C 03 18 40 */	cmplw r3, r3
/* 800B99B8 000B6918  41 82 00 08 */	beq lbl_800B99C0
lbl_800B99BC:
/* 800B99BC 000B691C  38 00 00 01 */	li r0, 1
lbl_800B99C0:
/* 800B99C0 000B6920  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B99C4 000B6924  41 82 01 DC */	beq lbl_800B9BA0
/* 800B99C8 000B6928  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800B99CC 000B692C  3A 60 00 00 */	li r19, 0
/* 800B99D0 000B6930  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800B99D4 000B6934  38 A0 00 00 */	li r5, 0
/* 800B99D8 000B6938  38 60 04 58 */	li r3, 0x458
/* 800B99DC 000B693C  48 25 BE 91 */	bl __nw__FUlPCcPCc
/* 800B99E0 000B6940  7C 72 1B 79 */	or. r18, r3, r3
/* 800B99E4 000B6944  41 82 00 28 */	beq lbl_800B9A0C
/* 800B99E8 000B6948  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 800B99EC 000B694C  38 61 00 44 */	addi r3, r1, 0x44
/* 800B99F0 000B6950  80 84 00 00 */	lwz r4, 0(r4)
/* 800B99F4 000B6954  48 28 74 B5 */	bl __ct__6CTokenFRC6CToken
/* 800B99F8 000B6958  7E 43 93 78 */	mr r3, r18
/* 800B99FC 000B695C  38 81 00 44 */	addi r4, r1, 0x44
/* 800B9A00 000B6960  3A 60 00 01 */	li r19, 1
/* 800B9A04 000B6964  48 2A 87 6D */	bl "__ct__17CParticleElectricF30TToken<20CElectricDescription>"
/* 800B9A08 000B6968  7C 72 1B 78 */	mr r18, r3
lbl_800B9A0C:
/* 800B9A0C 000B696C  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B9A10 000B6970  38 60 00 08 */	li r3, 8
/* 800B9A14 000B6974  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B9A18 000B6978  38 A0 00 00 */	li r5, 0
/* 800B9A1C 000B697C  48 25 BE 51 */	bl __nw__FUlPCcPCc
/* 800B9A20 000B6980  28 03 00 00 */	cmplwi r3, 0
/* 800B9A24 000B6984  41 82 00 10 */	beq lbl_800B9A34
/* 800B9A28 000B6988  92 43 00 00 */	stw r18, 0(r3)
/* 800B9A2C 000B698C  38 00 00 01 */	li r0, 1
/* 800B9A30 000B6990  90 03 00 04 */	stw r0, 4(r3)
lbl_800B9A34:
/* 800B9A34 000B6994  7E 60 07 75 */	extsb. r0, r19
/* 800B9A38 000B6998  90 61 00 30 */	stw r3, 0x30(r1)
/* 800B9A3C 000B699C  41 82 00 10 */	beq lbl_800B9A4C
/* 800B9A40 000B69A0  38 61 00 44 */	addi r3, r1, 0x44
/* 800B9A44 000B69A4  38 80 00 00 */	li r4, 0
/* 800B9A48 000B69A8  48 28 73 F9 */	bl __dt__6CTokenFv
lbl_800B9A4C:
/* 800B9A4C 000B69AC  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 800B9A50 000B69B0  38 61 00 30 */	addi r3, r1, 0x30
/* 800B9A54 000B69B4  80 84 00 00 */	lwz r4, 0(r4)
/* 800B9A58 000B69B8  48 00 11 A5 */	bl "_getGraphicLightId<Q24rstl24ncrc_ptr<12CParticleGen>,30TToken<20CElectricDescription>>__FRCQ24rstl24ncrc_ptr<12CParticleGen>RC30TToken<20CElectricDescription>"
/* 800B9A5C 000B69BC  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B9A60 000B69C0  7E 77 1A 14 */	add r19, r23, r3
/* 800B9A64 000B69C4  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B9A68 000B69C8  3A A0 00 00 */	li r21, 0
/* 800B9A6C 000B69CC  38 60 00 8C */	li r3, 0x8c
/* 800B9A70 000B69D0  38 A0 00 00 */	li r5, 0
/* 800B9A74 000B69D4  48 25 BD F9 */	bl __nw__FUlPCcPCc
/* 800B9A78 000B69D8  7C 65 1B 79 */	or. r5, r3, r3
/* 800B9A7C 000B69DC  41 82 00 78 */	beq lbl_800B9AF4
/* 800B9A80 000B69E0  81 01 00 30 */	lwz r8, 0x30(r1)
/* 800B9A84 000B69E4  39 61 00 1C */	addi r11, r1, 0x1c
/* 800B9A88 000B69E8  83 81 00 B8 */	lwz r28, 0xb8(r1)
/* 800B9A8C 000B69EC  38 00 00 00 */	li r0, 0
/* 800B9A90 000B69F0  91 01 00 18 */	stw r8, 0x18(r1)
/* 800B9A94 000B69F4  7F 06 C3 78 */	mr r6, r24
/* 800B9A98 000B69F8  83 01 00 BC */	lwz r24, 0xbc(r1)
/* 800B9A9C 000B69FC  7F 27 CB 78 */	mr r7, r25
/* 800B9AA0 000B6A00  80 88 00 04 */	lwz r4, 4(r8)
/* 800B9AA4 000B6A04  7F 49 D3 78 */	mr r9, r26
/* 800B9AA8 000B6A08  82 E1 00 C0 */	lwz r23, 0xc0(r1)
/* 800B9AAC 000B6A0C  7F CA F3 78 */	mr r10, r30
/* 800B9AB0 000B6A10  38 A4 00 01 */	addi r5, r4, 1
/* 800B9AB4 000B6A14  38 81 00 8C */	addi r4, r1, 0x8c
/* 800B9AB8 000B6A18  90 A8 00 04 */	stw r5, 4(r8)
/* 800B9ABC 000B6A1C  38 A1 00 18 */	addi r5, r1, 0x18
/* 800B9AC0 000B6A20  39 01 00 94 */	addi r8, r1, 0x94
/* 800B9AC4 000B6A24  3A A0 00 01 */	li r21, 1
/* 800B9AC8 000B6A28  81 9B 00 00 */	lwz r12, 0(r27)
/* 800B9ACC 000B6A2C  93 81 00 94 */	stw r28, 0x94(r1)
/* 800B9AD0 000B6A30  93 01 00 98 */	stw r24, 0x98(r1)
/* 800B9AD4 000B6A34  92 E1 00 9C */	stw r23, 0x9c(r1)
/* 800B9AD8 000B6A38  91 81 00 1C */	stw r12, 0x1c(r1)
/* 800B9ADC 000B6A3C  93 A1 00 08 */	stw r29, 8(r1)
/* 800B9AE0 000B6A40  91 61 00 0C */	stw r11, 0xc(r1)
/* 800B9AE4 000B6A44  92 61 00 10 */	stw r19, 0x10(r1)
/* 800B9AE8 000B6A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9AEC 000B6A4C  4B FF DB 75 */	bl "__ct__23CParticleGenInfoGenericFRC10SObjectTagQ24rstl24ncrc_ptr<12CParticleGen>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>9CVector3fQ213CParticleData13EParentedModeiR13CStateManageri"
/* 800B9AF0 000B6A50  7C 65 1B 78 */	mr r5, r3
lbl_800B9AF4:
/* 800B9AF4 000B6A54  7C 05 00 D0 */	neg r0, r5
/* 800B9AF8 000B6A58  38 61 00 3C */	addi r3, r1, 0x3c
/* 800B9AFC 000B6A5C  7C 04 2B 78 */	or r4, r0, r5
/* 800B9B00 000B6A60  38 01 00 84 */	addi r0, r1, 0x84
/* 800B9B04 000B6A64  54 84 0F FE */	srwi r4, r4, 0x1f
/* 800B9B08 000B6A68  90 A1 00 40 */	stw r5, 0x40(r1)
/* 800B9B0C 000B6A6C  7C 03 00 40 */	cmplw r3, r0
/* 800B9B10 000B6A70  98 81 00 3C */	stb r4, 0x3c(r1)
/* 800B9B14 000B6A74  41 82 00 48 */	beq lbl_800B9B5C
/* 800B9B18 000B6A78  88 01 00 84 */	lbz r0, 0x84(r1)
/* 800B9B1C 000B6A7C  28 00 00 00 */	cmplwi r0, 0
/* 800B9B20 000B6A80  41 82 00 24 */	beq lbl_800B9B44
/* 800B9B24 000B6A84  80 61 00 88 */	lwz r3, 0x88(r1)
/* 800B9B28 000B6A88  28 03 00 00 */	cmplwi r3, 0
/* 800B9B2C 000B6A8C  41 82 00 18 */	beq lbl_800B9B44
/* 800B9B30 000B6A90  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9B34 000B6A94  38 80 00 01 */	li r4, 1
/* 800B9B38 000B6A98  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9B3C 000B6A9C  7D 89 03 A6 */	mtctr r12
/* 800B9B40 000B6AA0  4E 80 04 21 */	bctrl
lbl_800B9B44:
/* 800B9B44 000B6AA4  88 81 00 3C */	lbz r4, 0x3c(r1)
/* 800B9B48 000B6AA8  38 00 00 00 */	li r0, 0
/* 800B9B4C 000B6AAC  80 61 00 40 */	lwz r3, 0x40(r1)
/* 800B9B50 000B6AB0  98 81 00 84 */	stb r4, 0x84(r1)
/* 800B9B54 000B6AB4  90 61 00 88 */	stw r3, 0x88(r1)
/* 800B9B58 000B6AB8  98 01 00 3C */	stb r0, 0x3c(r1)
lbl_800B9B5C:
/* 800B9B5C 000B6ABC  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 800B9B60 000B6AC0  28 00 00 00 */	cmplwi r0, 0
/* 800B9B64 000B6AC4  41 82 00 24 */	beq lbl_800B9B88
/* 800B9B68 000B6AC8  80 61 00 40 */	lwz r3, 0x40(r1)
/* 800B9B6C 000B6ACC  28 03 00 00 */	cmplwi r3, 0
/* 800B9B70 000B6AD0  41 82 00 18 */	beq lbl_800B9B88
/* 800B9B74 000B6AD4  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9B78 000B6AD8  38 80 00 01 */	li r4, 1
/* 800B9B7C 000B6ADC  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9B80 000B6AE0  7D 89 03 A6 */	mtctr r12
/* 800B9B84 000B6AE4  4E 80 04 21 */	bctrl
lbl_800B9B88:
/* 800B9B88 000B6AE8  7E A0 07 75 */	extsb. r0, r21
/* 800B9B8C 000B6AEC  41 82 00 0C */	beq lbl_800B9B98
/* 800B9B90 000B6AF0  38 61 00 18 */	addi r3, r1, 0x18
/* 800B9B94 000B6AF4  4B FF DE 6D */	bl sub_800b7a00
lbl_800B9B98:
/* 800B9B98 000B6AF8  38 61 00 30 */	addi r3, r1, 0x30
/* 800B9B9C 000B6AFC  4B FF DE 65 */	bl sub_800b7a00
lbl_800B9BA0:
/* 800B9BA0 000B6B00  80 61 00 88 */	lwz r3, 0x88(r1)
/* 800B9BA4 000B6B04  28 03 00 00 */	cmplwi r3, 0
/* 800B9BA8 000B6B08  41 82 00 4C */	beq lbl_800B9BF4
/* 800B9BAC 000B6B0C  38 00 00 01 */	li r0, 1
/* 800B9BB0 000B6B10  7F A5 EB 78 */	mr r5, r29
/* 800B9BB4 000B6B14  98 03 00 24 */	stb r0, 0x24(r3)
/* 800B9BB8 000B6B18  38 80 00 01 */	li r4, 1
/* 800B9BBC 000B6B1C  80 61 00 88 */	lwz r3, 0x88(r1)
/* 800B9BC0 000B6B20  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9BC4 000B6B24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800B9BC8 000B6B28  7D 89 03 A6 */	mtctr r12
/* 800B9BCC 000B6B2C  4E 80 04 21 */	bctrl
/* 800B9BD0 000B6B30  80 81 00 88 */	lwz r4, 0x88(r1)
/* 800B9BD4 000B6B34  38 00 00 01 */	li r0, 1
/* 800B9BD8 000B6B38  7F E3 FB 78 */	mr r3, r31
/* 800B9BDC 000B6B3C  7F C5 F3 78 */	mr r5, r30
/* 800B9BE0 000B6B40  98 04 00 40 */	stb r0, 0x40(r4)
/* 800B9BE4 000B6B44  7E 86 A3 78 */	mr r6, r20
/* 800B9BE8 000B6B48  56 C4 06 3E */	clrlwi r4, r22, 0x18
/* 800B9BEC 000B6B4C  38 E1 00 84 */	addi r7, r1, 0x84
/* 800B9BF0 000B6B50  48 00 00 85 */	bl "InsertParticleGen__17CParticleDatabaseFbiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl28auto_ptr<16CParticleGenInfo>"
lbl_800B9BF4:
/* 800B9BF4 000B6B54  88 01 00 84 */	lbz r0, 0x84(r1)
/* 800B9BF8 000B6B58  28 00 00 00 */	cmplwi r0, 0
/* 800B9BFC 000B6B5C  41 82 00 5C */	beq lbl_800B9C58
/* 800B9C00 000B6B60  80 61 00 88 */	lwz r3, 0x88(r1)
/* 800B9C04 000B6B64  28 03 00 00 */	cmplwi r3, 0
/* 800B9C08 000B6B68  41 82 00 50 */	beq lbl_800B9C58
/* 800B9C0C 000B6B6C  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9C10 000B6B70  38 80 00 01 */	li r4, 1
/* 800B9C14 000B6B74  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9C18 000B6B78  7D 89 03 A6 */	mtctr r12
/* 800B9C1C 000B6B7C  4E 80 04 21 */	bctrl
/* 800B9C20 000B6B80  48 00 00 38 */	b lbl_800B9C58
lbl_800B9C24:
/* 800B9C24 000B6B84  88 12 00 24 */	lbz r0, 0x24(r18)
/* 800B9C28 000B6B88  28 00 00 00 */	cmplwi r0, 0
/* 800B9C2C 000B6B8C  40 82 00 2C */	bne lbl_800B9C58
/* 800B9C30 000B6B90  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9C34 000B6B94  7F A5 EB 78 */	mr r5, r29
/* 800B9C38 000B6B98  38 80 00 01 */	li r4, 1
/* 800B9C3C 000B6B9C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800B9C40 000B6BA0  7D 89 03 A6 */	mtctr r12
/* 800B9C44 000B6BA4  4E 80 04 21 */	bctrl
/* 800B9C48 000B6BA8  38 00 00 01 */	li r0, 1
/* 800B9C4C 000B6BAC  98 12 00 24 */	stb r0, 0x24(r18)
/* 800B9C50 000B6BB0  98 12 00 40 */	stb r0, 0x40(r18)
/* 800B9C54 000B6BB4  93 D2 00 2C */	stw r30, 0x2c(r18)
lbl_800B9C58:
/* 800B9C58 000B6BB8  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 800B9C5C 000B6BBC  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 800B9C60 000B6BC0  BA 41 00 C8 */	lmw r18, 0xc8(r1)
/* 800B9C64 000B6BC4  80 01 01 14 */	lwz r0, 0x114(r1)
/* 800B9C68 000B6BC8  7C 08 03 A6 */	mtlr r0
/* 800B9C6C 000B6BCC  38 21 01 10 */	addi r1, r1, 0x110
/* 800B9C70 000B6BD0  4E 80 00 20 */	blr

.global "InsertParticleGen__17CParticleDatabaseFbiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl28auto_ptr<16CParticleGenInfo>"
"InsertParticleGen__17CParticleDatabaseFbiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl28auto_ptr<16CParticleGenInfo>":
/* 800B9C74 000B6BD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800B9C78 000B6BD8  7C 08 02 A6 */	mflr r0
/* 800B9C7C 000B6BDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 800B9C80 000B6BE0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800B9C84 000B6BE4  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 800B9C88 000B6BE8  7C 7B 1B 78 */	mr r27, r3
/* 800B9C8C 000B6BEC  7C BC 2B 78 */	mr r28, r5
/* 800B9C90 000B6BF0  7C FD 3B 78 */	mr r29, r7
/* 800B9C94 000B6BF4  41 82 00 38 */	beq lbl_800B9CCC
/* 800B9C98 000B6BF8  57 80 06 74 */	rlwinm r0, r28, 0, 0x19, 0x1a
/* 800B9C9C 000B6BFC  2C 00 00 40 */	cmpwi r0, 0x40
/* 800B9CA0 000B6C00  41 82 00 1C */	beq lbl_800B9CBC
/* 800B9CA4 000B6C04  40 80 00 20 */	bge lbl_800B9CC4
/* 800B9CA8 000B6C08  2C 00 00 20 */	cmpwi r0, 0x20
/* 800B9CAC 000B6C0C  41 82 00 08 */	beq lbl_800B9CB4
/* 800B9CB0 000B6C10  48 00 00 14 */	b lbl_800B9CC4
lbl_800B9CB4:
/* 800B9CB4 000B6C14  3B DB 00 8C */	addi r30, r27, 0x8c
/* 800B9CB8 000B6C18  48 00 00 44 */	b lbl_800B9CFC
lbl_800B9CBC:
/* 800B9CBC 000B6C1C  3B DB 00 A0 */	addi r30, r27, 0xa0
/* 800B9CC0 000B6C20  48 00 00 3C */	b lbl_800B9CFC
lbl_800B9CC4:
/* 800B9CC4 000B6C24  3B DB 00 78 */	addi r30, r27, 0x78
/* 800B9CC8 000B6C28  48 00 00 34 */	b lbl_800B9CFC
lbl_800B9CCC:
/* 800B9CCC 000B6C2C  57 80 06 74 */	rlwinm r0, r28, 0, 0x19, 0x1a
/* 800B9CD0 000B6C30  2C 00 00 40 */	cmpwi r0, 0x40
/* 800B9CD4 000B6C34  41 82 00 1C */	beq lbl_800B9CF0
/* 800B9CD8 000B6C38  40 80 00 20 */	bge lbl_800B9CF8
/* 800B9CDC 000B6C3C  2C 00 00 20 */	cmpwi r0, 0x20
/* 800B9CE0 000B6C40  41 82 00 08 */	beq lbl_800B9CE8
/* 800B9CE4 000B6C44  48 00 00 14 */	b lbl_800B9CF8
lbl_800B9CE8:
/* 800B9CE8 000B6C48  3B DB 00 50 */	addi r30, r27, 0x50
/* 800B9CEC 000B6C4C  48 00 00 10 */	b lbl_800B9CFC
lbl_800B9CF0:
/* 800B9CF0 000B6C50  3B DB 00 64 */	addi r30, r27, 0x64
/* 800B9CF4 000B6C54  48 00 00 08 */	b lbl_800B9CFC
lbl_800B9CF8:
/* 800B9CF8 000B6C58  3B DB 00 3C */	addi r30, r27, 0x3c
lbl_800B9CFC:
/* 800B9CFC 000B6C5C  7C C4 33 78 */	mr r4, r6
/* 800B9D00 000B6C60  38 61 00 14 */	addi r3, r1, 0x14
/* 800B9D04 000B6C64  48 28 44 5D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800B9D08 000B6C68  88 7D 00 00 */	lbz r3, 0(r29)
/* 800B9D0C 000B6C6C  38 00 00 00 */	li r0, 0
/* 800B9D10 000B6C70  80 BD 00 04 */	lwz r5, 4(r29)
/* 800B9D14 000B6C74  7F C4 F3 78 */	mr r4, r30
/* 800B9D18 000B6C78  98 61 00 24 */	stb r3, 0x24(r1)
/* 800B9D1C 000B6C7C  3B E1 00 24 */	addi r31, r1, 0x24
/* 800B9D20 000B6C80  38 61 00 08 */	addi r3, r1, 8
/* 800B9D24 000B6C84  38 C1 00 14 */	addi r6, r1, 0x14
/* 800B9D28 000B6C88  90 A1 00 28 */	stw r5, 0x28(r1)
/* 800B9D2C 000B6C8C  98 1D 00 00 */	stb r0, 0(r29)
/* 800B9D30 000B6C90  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 800B9D34 000B6C94  48 00 18 31 */	bl sub_800bb564
/* 800B9D38 000B6C98  28 1F 00 00 */	cmplwi r31, 0
/* 800B9D3C 000B6C9C  41 82 00 30 */	beq lbl_800B9D6C
/* 800B9D40 000B6CA0  88 01 00 24 */	lbz r0, 0x24(r1)
/* 800B9D44 000B6CA4  28 00 00 00 */	cmplwi r0, 0
/* 800B9D48 000B6CA8  41 82 00 24 */	beq lbl_800B9D6C
/* 800B9D4C 000B6CAC  80 61 00 28 */	lwz r3, 0x28(r1)
/* 800B9D50 000B6CB0  28 03 00 00 */	cmplwi r3, 0
/* 800B9D54 000B6CB4  41 82 00 18 */	beq lbl_800B9D6C
/* 800B9D58 000B6CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 800B9D5C 000B6CBC  38 80 00 01 */	li r4, 1
/* 800B9D60 000B6CC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B9D64 000B6CC4  7D 89 03 A6 */	mtctr r12
/* 800B9D68 000B6CC8  4E 80 04 21 */	bctrl
lbl_800B9D6C:
/* 800B9D6C 000B6CCC  38 61 00 14 */	addi r3, r1, 0x14
/* 800B9D70 000B6CD0  48 28 3D 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800B9D74 000B6CD4  57 80 06 75 */	rlwinm. r0, r28, 0, 0x19, 0x1a
/* 800B9D78 000B6CD8  41 82 00 14 */	beq lbl_800B9D8C
/* 800B9D7C 000B6CDC  88 1B 00 B4 */	lbz r0, 0xb4(r27)
/* 800B9D80 000B6CE0  38 60 00 01 */	li r3, 1
/* 800B9D84 000B6CE4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800B9D88 000B6CE8  98 1B 00 B4 */	stb r0, 0xb4(r27)
lbl_800B9D8C:
/* 800B9D8C 000B6CEC  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 800B9D90 000B6CF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800B9D94 000B6CF4  7C 08 03 A6 */	mtlr r0
/* 800B9D98 000B6CF8  38 21 00 50 */	addi r1, r1, 0x50
/* 800B9D9C 000B6CFC  4E 80 00 20 */	blr

.global CacheParticleDesc__17CParticleDatabaseFRC10SObjectTag
CacheParticleDesc__17CParticleDatabaseFRC10SObjectTag:
/* 800B9DA0 000B6D00  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800B9DA4 000B6D04  7C 08 02 A6 */	mflr r0
/* 800B9DA8 000B6D08  3C A0 50 41 */	lis r5, 0x50415254@ha
/* 800B9DAC 000B6D0C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800B9DB0 000B6D10  38 05 52 54 */	addi r0, r5, 0x50415254@l
/* 800B9DB4 000B6D14  93 E1 00 AC */	stw r31, 0xac(r1)
/* 800B9DB8 000B6D18  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 800B9DBC 000B6D1C  7C 7E 1B 78 */	mr r30, r3
/* 800B9DC0 000B6D20  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 800B9DC4 000B6D24  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 800B9DC8 000B6D28  80 C4 00 00 */	lwz r6, 0(r4)
/* 800B9DCC 000B6D2C  83 E4 00 04 */	lwz r31, 4(r4)
/* 800B9DD0 000B6D30  7C 06 00 00 */	cmpw r6, r0
/* 800B9DD4 000B6D34  41 82 00 30 */	beq lbl_800B9E04
/* 800B9DD8 000B6D38  40 80 00 18 */	bge lbl_800B9DF0
/* 800B9DDC 000B6D3C  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 800B9DE0 000B6D40  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 800B9DE4 000B6D44  7C 06 00 00 */	cmpw r6, r0
/* 800B9DE8 000B6D48  41 82 03 14 */	beq lbl_800BA0FC
/* 800B9DEC 000B6D4C  48 00 04 88 */	b lbl_800BA274
lbl_800B9DF0:
/* 800B9DF0 000B6D50  3C 60 53 57 */	lis r3, 0x53574843@ha
/* 800B9DF4 000B6D54  38 03 48 43 */	addi r0, r3, 0x53574843@l
/* 800B9DF8 000B6D58  7C 06 00 00 */	cmpw r6, r0
/* 800B9DFC 000B6D5C  41 82 01 84 */	beq lbl_800B9F80
/* 800B9E00 000B6D60  48 00 04 74 */	b lbl_800BA274
lbl_800B9E04:
/* 800B9E04 000B6D64  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800B9E08 000B6D68  38 80 00 00 */	li r4, 0
/* 800B9E0C 000B6D6C  48 00 00 20 */	b lbl_800B9E2C
lbl_800B9E10:
/* 800B9E10 000B6D70  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800B9E14 000B6D74  7C 00 F8 40 */	cmplw r0, r31
/* 800B9E18 000B6D78  41 80 00 10 */	blt lbl_800B9E28
/* 800B9E1C 000B6D7C  7C 64 1B 78 */	mr r4, r3
/* 800B9E20 000B6D80  80 63 00 00 */	lwz r3, 0(r3)
/* 800B9E24 000B6D84  48 00 00 08 */	b lbl_800B9E2C
lbl_800B9E28:
/* 800B9E28 000B6D88  80 63 00 04 */	lwz r3, 4(r3)
lbl_800B9E2C:
/* 800B9E2C 000B6D8C  28 03 00 00 */	cmplwi r3, 0
/* 800B9E30 000B6D90  40 82 FF E0 */	bne lbl_800B9E10
/* 800B9E34 000B6D94  28 04 00 00 */	cmplwi r4, 0
/* 800B9E38 000B6D98  38 60 00 00 */	li r3, 0
/* 800B9E3C 000B6D9C  41 82 00 10 */	beq lbl_800B9E4C
/* 800B9E40 000B6DA0  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800B9E44 000B6DA4  7C 1F 00 40 */	cmplw r31, r0
/* 800B9E48 000B6DA8  40 80 00 08 */	bge lbl_800B9E50
lbl_800B9E4C:
/* 800B9E4C 000B6DAC  38 60 00 01 */	li r3, 1
lbl_800B9E50:
/* 800B9E50 000B6DB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B9E54 000B6DB4  41 82 00 08 */	beq lbl_800B9E5C
/* 800B9E58 000B6DB8  38 80 00 00 */	li r4, 0
lbl_800B9E5C:
/* 800B9E5C 000B6DBC  38 00 00 00 */	li r0, 0
/* 800B9E60 000B6DC0  38 7E 00 08 */	addi r3, r30, 8
/* 800B9E64 000B6DC4  7C 04 00 40 */	cmplw r4, r0
/* 800B9E68 000B6DC8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800B9E6C 000B6DCC  90 61 00 70 */	stw r3, 0x70(r1)
/* 800B9E70 000B6DD0  40 82 00 10 */	bne lbl_800B9E80
/* 800B9E74 000B6DD4  7C 03 18 40 */	cmplw r3, r3
/* 800B9E78 000B6DD8  40 82 00 08 */	bne lbl_800B9E80
/* 800B9E7C 000B6DDC  38 00 00 01 */	li r0, 1
lbl_800B9E80:
/* 800B9E80 000B6DE0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B9E84 000B6DE4  41 82 03 F0 */	beq lbl_800BA274
/* 800B9E88 000B6DE8  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800B9E8C 000B6DEC  3B 80 00 00 */	li r28, 0
/* 800B9E90 000B6DF0  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800B9E94 000B6DF4  38 A0 00 00 */	li r5, 0
/* 800B9E98 000B6DF8  38 60 00 0C */	li r3, 0xc
/* 800B9E9C 000B6DFC  48 25 B9 D1 */	bl __nw__FUlPCcPCc
/* 800B9EA0 000B6E00  7C 7D 1B 79 */	or. r29, r3, r3
/* 800B9EA4 000B6E04  41 82 00 50 */	beq lbl_800B9EF4
/* 800B9EA8 000B6E08  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 800B9EAC 000B6E0C  93 E1 00 68 */	stw r31, 0x68(r1)
/* 800B9EB0 000B6E10  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 800B9EB4 000B6E14  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800B9EB8 000B6E18  90 01 00 64 */	stw r0, 0x64(r1)
/* 800B9EBC 000B6E1C  38 61 00 5C */	addi r3, r1, 0x5c
/* 800B9EC0 000B6E20  38 A1 00 64 */	addi r5, r1, 0x64
/* 800B9EC4 000B6E24  81 84 00 00 */	lwz r12, 0(r4)
/* 800B9EC8 000B6E28  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800B9ECC 000B6E2C  7D 89 03 A6 */	mtctr r12
/* 800B9ED0 000B6E30  4E 80 04 21 */	bctrl
/* 800B9ED4 000B6E34  7F A3 EB 78 */	mr r3, r29
/* 800B9ED8 000B6E38  38 81 00 5C */	addi r4, r1, 0x5c
/* 800B9EDC 000B6E3C  3B 80 00 01 */	li r28, 1
/* 800B9EE0 000B6E40  48 28 6F C9 */	bl __ct__6CTokenFRC6CToken
/* 800B9EE4 000B6E44  7F A3 EB 78 */	mr r3, r29
/* 800B9EE8 000B6E48  48 28 6F 25 */	bl GetObj__6CTokenFv
/* 800B9EEC 000B6E4C  80 03 00 04 */	lwz r0, 4(r3)
/* 800B9EF0 000B6E50  90 1D 00 08 */	stw r0, 8(r29)
lbl_800B9EF4:
/* 800B9EF4 000B6E54  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800B9EF8 000B6E58  38 60 00 08 */	li r3, 8
/* 800B9EFC 000B6E5C  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800B9F00 000B6E60  38 A0 00 00 */	li r5, 0
/* 800B9F04 000B6E64  48 25 B9 69 */	bl __nw__FUlPCcPCc
/* 800B9F08 000B6E68  28 03 00 00 */	cmplwi r3, 0
/* 800B9F0C 000B6E6C  41 82 00 10 */	beq lbl_800B9F1C
/* 800B9F10 000B6E70  93 A3 00 00 */	stw r29, 0(r3)
/* 800B9F14 000B6E74  38 00 00 01 */	li r0, 1
/* 800B9F18 000B6E78  90 03 00 04 */	stw r0, 4(r3)
lbl_800B9F1C:
/* 800B9F1C 000B6E7C  7F 80 07 75 */	extsb. r0, r28
/* 800B9F20 000B6E80  90 61 00 10 */	stw r3, 0x10(r1)
/* 800B9F24 000B6E84  41 82 00 10 */	beq lbl_800B9F34
/* 800B9F28 000B6E88  38 61 00 5C */	addi r3, r1, 0x5c
/* 800B9F2C 000B6E8C  38 80 FF FF */	li r4, -1
/* 800B9F30 000B6E90  48 28 6F 11 */	bl __dt__6CTokenFv
lbl_800B9F34:
/* 800B9F34 000B6E94  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 800B9F38 000B6E98  7F C4 F3 78 */	mr r4, r30
/* 800B9F3C 000B6E9C  93 E1 00 54 */	stw r31, 0x54(r1)
/* 800B9F40 000B6EA0  3B A1 00 58 */	addi r29, r1, 0x58
/* 800B9F44 000B6EA4  38 61 00 8C */	addi r3, r1, 0x8c
/* 800B9F48 000B6EA8  38 C1 00 54 */	addi r6, r1, 0x54
/* 800B9F4C 000B6EAC  90 E1 00 58 */	stw r7, 0x58(r1)
/* 800B9F50 000B6EB0  80 A7 00 04 */	lwz r5, 4(r7)
/* 800B9F54 000B6EB4  38 05 00 01 */	addi r0, r5, 1
/* 800B9F58 000B6EB8  90 07 00 04 */	stw r0, 4(r7)
/* 800B9F5C 000B6EBC  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 800B9F60 000B6EC0  48 00 0D D1 */	bl sub_800bad30
/* 800B9F64 000B6EC4  28 1D 00 00 */	cmplwi r29, 0
/* 800B9F68 000B6EC8  41 82 00 0C */	beq lbl_800B9F74
/* 800B9F6C 000B6ECC  7F A3 EB 78 */	mr r3, r29
/* 800B9F70 000B6ED0  48 00 18 75 */	bl sub_800bb7e4
lbl_800B9F74:
/* 800B9F74 000B6ED4  38 61 00 10 */	addi r3, r1, 0x10
/* 800B9F78 000B6ED8  48 00 18 6D */	bl sub_800bb7e4
/* 800B9F7C 000B6EDC  48 00 02 F8 */	b lbl_800BA274
lbl_800B9F80:
/* 800B9F80 000B6EE0  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 800B9F84 000B6EE4  38 80 00 00 */	li r4, 0
/* 800B9F88 000B6EE8  48 00 00 20 */	b lbl_800B9FA8
lbl_800B9F8C:
/* 800B9F8C 000B6EEC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800B9F90 000B6EF0  7C 00 F8 40 */	cmplw r0, r31
/* 800B9F94 000B6EF4  41 80 00 10 */	blt lbl_800B9FA4
/* 800B9F98 000B6EF8  7C 64 1B 78 */	mr r4, r3
/* 800B9F9C 000B6EFC  80 63 00 00 */	lwz r3, 0(r3)
/* 800B9FA0 000B6F00  48 00 00 08 */	b lbl_800B9FA8
lbl_800B9FA4:
/* 800B9FA4 000B6F04  80 63 00 04 */	lwz r3, 4(r3)
lbl_800B9FA8:
/* 800B9FA8 000B6F08  28 03 00 00 */	cmplwi r3, 0
/* 800B9FAC 000B6F0C  40 82 FF E0 */	bne lbl_800B9F8C
/* 800B9FB0 000B6F10  28 04 00 00 */	cmplwi r4, 0
/* 800B9FB4 000B6F14  38 60 00 00 */	li r3, 0
/* 800B9FB8 000B6F18  41 82 00 10 */	beq lbl_800B9FC8
/* 800B9FBC 000B6F1C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800B9FC0 000B6F20  7C 1F 00 40 */	cmplw r31, r0
/* 800B9FC4 000B6F24  40 80 00 08 */	bge lbl_800B9FCC
lbl_800B9FC8:
/* 800B9FC8 000B6F28  38 60 00 01 */	li r3, 1
lbl_800B9FCC:
/* 800B9FCC 000B6F2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B9FD0 000B6F30  41 82 00 08 */	beq lbl_800B9FD8
/* 800B9FD4 000B6F34  38 80 00 00 */	li r4, 0
lbl_800B9FD8:
/* 800B9FD8 000B6F38  38 00 00 00 */	li r0, 0
/* 800B9FDC 000B6F3C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 800B9FE0 000B6F40  7C 04 00 40 */	cmplw r4, r0
/* 800B9FE4 000B6F44  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800B9FE8 000B6F48  90 61 00 50 */	stw r3, 0x50(r1)
/* 800B9FEC 000B6F4C  40 82 00 10 */	bne lbl_800B9FFC
/* 800B9FF0 000B6F50  7C 03 18 40 */	cmplw r3, r3
/* 800B9FF4 000B6F54  40 82 00 08 */	bne lbl_800B9FFC
/* 800B9FF8 000B6F58  38 00 00 01 */	li r0, 1
lbl_800B9FFC:
/* 800B9FFC 000B6F5C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BA000 000B6F60  41 82 02 74 */	beq lbl_800BA274
/* 800BA004 000B6F64  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800BA008 000B6F68  3B 80 00 00 */	li r28, 0
/* 800BA00C 000B6F6C  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800BA010 000B6F70  38 A0 00 00 */	li r5, 0
/* 800BA014 000B6F74  38 60 00 0C */	li r3, 0xc
/* 800BA018 000B6F78  48 25 B8 55 */	bl __nw__FUlPCcPCc
/* 800BA01C 000B6F7C  7C 7D 1B 79 */	or. r29, r3, r3
/* 800BA020 000B6F80  41 82 00 50 */	beq lbl_800BA070
/* 800BA024 000B6F84  3C 60 53 57 */	lis r3, 0x53574843@ha
/* 800BA028 000B6F88  93 E1 00 48 */	stw r31, 0x48(r1)
/* 800BA02C 000B6F8C  38 03 48 43 */	addi r0, r3, 0x53574843@l
/* 800BA030 000B6F90  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800BA034 000B6F94  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BA038 000B6F98  38 61 00 3C */	addi r3, r1, 0x3c
/* 800BA03C 000B6F9C  38 A1 00 44 */	addi r5, r1, 0x44
/* 800BA040 000B6FA0  81 84 00 00 */	lwz r12, 0(r4)
/* 800BA044 000B6FA4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BA048 000B6FA8  7D 89 03 A6 */	mtctr r12
/* 800BA04C 000B6FAC  4E 80 04 21 */	bctrl
/* 800BA050 000B6FB0  7F A3 EB 78 */	mr r3, r29
/* 800BA054 000B6FB4  38 81 00 3C */	addi r4, r1, 0x3c
/* 800BA058 000B6FB8  3B 80 00 01 */	li r28, 1
/* 800BA05C 000B6FBC  48 28 6E 4D */	bl __ct__6CTokenFRC6CToken
/* 800BA060 000B6FC0  7F A3 EB 78 */	mr r3, r29
/* 800BA064 000B6FC4  48 28 6D A9 */	bl GetObj__6CTokenFv
/* 800BA068 000B6FC8  80 03 00 04 */	lwz r0, 4(r3)
/* 800BA06C 000B6FCC  90 1D 00 08 */	stw r0, 8(r29)
lbl_800BA070:
/* 800BA070 000B6FD0  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BA074 000B6FD4  38 60 00 08 */	li r3, 8
/* 800BA078 000B6FD8  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BA07C 000B6FDC  38 A0 00 00 */	li r5, 0
/* 800BA080 000B6FE0  48 25 B7 ED */	bl __nw__FUlPCcPCc
/* 800BA084 000B6FE4  28 03 00 00 */	cmplwi r3, 0
/* 800BA088 000B6FE8  41 82 00 10 */	beq lbl_800BA098
/* 800BA08C 000B6FEC  93 A3 00 00 */	stw r29, 0(r3)
/* 800BA090 000B6FF0  38 00 00 01 */	li r0, 1
/* 800BA094 000B6FF4  90 03 00 04 */	stw r0, 4(r3)
lbl_800BA098:
/* 800BA098 000B6FF8  7F 80 07 75 */	extsb. r0, r28
/* 800BA09C 000B6FFC  90 61 00 0C */	stw r3, 0xc(r1)
/* 800BA0A0 000B7000  41 82 00 10 */	beq lbl_800BA0B0
/* 800BA0A4 000B7004  38 61 00 3C */	addi r3, r1, 0x3c
/* 800BA0A8 000B7008  38 80 FF FF */	li r4, -1
/* 800BA0AC 000B700C  48 28 6D 95 */	bl __dt__6CTokenFv
lbl_800BA0B0:
/* 800BA0B0 000B7010  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 800BA0B4 000B7014  3B A1 00 38 */	addi r29, r1, 0x38
/* 800BA0B8 000B7018  93 E1 00 34 */	stw r31, 0x34(r1)
/* 800BA0BC 000B701C  38 61 00 80 */	addi r3, r1, 0x80
/* 800BA0C0 000B7020  38 9E 00 14 */	addi r4, r30, 0x14
/* 800BA0C4 000B7024  38 C1 00 34 */	addi r6, r1, 0x34
/* 800BA0C8 000B7028  90 E1 00 38 */	stw r7, 0x38(r1)
/* 800BA0CC 000B702C  80 A7 00 04 */	lwz r5, 4(r7)
/* 800BA0D0 000B7030  38 05 00 01 */	addi r0, r5, 1
/* 800BA0D4 000B7034  90 07 00 04 */	stw r0, 4(r7)
/* 800BA0D8 000B7038  80 BE 00 24 */	lwz r5, 0x24(r30)
/* 800BA0DC 000B703C  48 00 0F 3D */	bl sub_800bb018
/* 800BA0E0 000B7040  28 1D 00 00 */	cmplwi r29, 0
/* 800BA0E4 000B7044  41 82 00 0C */	beq lbl_800BA0F0
/* 800BA0E8 000B7048  7F A3 EB 78 */	mr r3, r29
/* 800BA0EC 000B704C  48 00 17 75 */	bl sub_800bb860
lbl_800BA0F0:
/* 800BA0F0 000B7050  38 61 00 0C */	addi r3, r1, 0xc
/* 800BA0F4 000B7054  48 00 17 6D */	bl sub_800bb860
/* 800BA0F8 000B7058  48 00 01 7C */	b lbl_800BA274
lbl_800BA0FC:
/* 800BA0FC 000B705C  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 800BA100 000B7060  38 80 00 00 */	li r4, 0
/* 800BA104 000B7064  48 00 00 20 */	b lbl_800BA124
lbl_800BA108:
/* 800BA108 000B7068  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800BA10C 000B706C  7C 00 F8 40 */	cmplw r0, r31
/* 800BA110 000B7070  41 80 00 10 */	blt lbl_800BA120
/* 800BA114 000B7074  7C 64 1B 78 */	mr r4, r3
/* 800BA118 000B7078  80 63 00 00 */	lwz r3, 0(r3)
/* 800BA11C 000B707C  48 00 00 08 */	b lbl_800BA124
lbl_800BA120:
/* 800BA120 000B7080  80 63 00 04 */	lwz r3, 4(r3)
lbl_800BA124:
/* 800BA124 000B7084  28 03 00 00 */	cmplwi r3, 0
/* 800BA128 000B7088  40 82 FF E0 */	bne lbl_800BA108
/* 800BA12C 000B708C  28 04 00 00 */	cmplwi r4, 0
/* 800BA130 000B7090  38 60 00 00 */	li r3, 0
/* 800BA134 000B7094  41 82 00 10 */	beq lbl_800BA144
/* 800BA138 000B7098  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800BA13C 000B709C  7C 1F 00 40 */	cmplw r31, r0
/* 800BA140 000B70A0  40 80 00 08 */	bge lbl_800BA148
lbl_800BA144:
/* 800BA144 000B70A4  38 60 00 01 */	li r3, 1
lbl_800BA148:
/* 800BA148 000B70A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA14C 000B70AC  41 82 00 08 */	beq lbl_800BA154
/* 800BA150 000B70B0  38 80 00 00 */	li r4, 0
lbl_800BA154:
/* 800BA154 000B70B4  38 00 00 00 */	li r0, 0
/* 800BA158 000B70B8  38 7E 00 30 */	addi r3, r30, 0x30
/* 800BA15C 000B70BC  7C 04 00 40 */	cmplw r4, r0
/* 800BA160 000B70C0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800BA164 000B70C4  90 61 00 30 */	stw r3, 0x30(r1)
/* 800BA168 000B70C8  40 82 00 10 */	bne lbl_800BA178
/* 800BA16C 000B70CC  7C 03 18 40 */	cmplw r3, r3
/* 800BA170 000B70D0  40 82 00 08 */	bne lbl_800BA178
/* 800BA174 000B70D4  38 00 00 01 */	li r0, 1
lbl_800BA178:
/* 800BA178 000B70D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BA17C 000B70DC  41 82 00 F8 */	beq lbl_800BA274
/* 800BA180 000B70E0  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800BA184 000B70E4  3B 80 00 00 */	li r28, 0
/* 800BA188 000B70E8  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800BA18C 000B70EC  38 A0 00 00 */	li r5, 0
/* 800BA190 000B70F0  38 60 00 0C */	li r3, 0xc
/* 800BA194 000B70F4  48 25 B6 D9 */	bl __nw__FUlPCcPCc
/* 800BA198 000B70F8  7C 7D 1B 79 */	or. r29, r3, r3
/* 800BA19C 000B70FC  41 82 00 50 */	beq lbl_800BA1EC
/* 800BA1A0 000B7100  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 800BA1A4 000B7104  93 E1 00 28 */	stw r31, 0x28(r1)
/* 800BA1A8 000B7108  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 800BA1AC 000B710C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800BA1B0 000B7110  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA1B4 000B7114  38 61 00 1C */	addi r3, r1, 0x1c
/* 800BA1B8 000B7118  38 A1 00 24 */	addi r5, r1, 0x24
/* 800BA1BC 000B711C  81 84 00 00 */	lwz r12, 0(r4)
/* 800BA1C0 000B7120  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BA1C4 000B7124  7D 89 03 A6 */	mtctr r12
/* 800BA1C8 000B7128  4E 80 04 21 */	bctrl
/* 800BA1CC 000B712C  7F A3 EB 78 */	mr r3, r29
/* 800BA1D0 000B7130  38 81 00 1C */	addi r4, r1, 0x1c
/* 800BA1D4 000B7134  3B 80 00 01 */	li r28, 1
/* 800BA1D8 000B7138  48 28 6C D1 */	bl __ct__6CTokenFRC6CToken
/* 800BA1DC 000B713C  7F A3 EB 78 */	mr r3, r29
/* 800BA1E0 000B7140  48 28 6C 2D */	bl GetObj__6CTokenFv
/* 800BA1E4 000B7144  80 03 00 04 */	lwz r0, 4(r3)
/* 800BA1E8 000B7148  90 1D 00 08 */	stw r0, 8(r29)
lbl_800BA1EC:
/* 800BA1EC 000B714C  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BA1F0 000B7150  38 60 00 08 */	li r3, 8
/* 800BA1F4 000B7154  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BA1F8 000B7158  38 A0 00 00 */	li r5, 0
/* 800BA1FC 000B715C  48 25 B6 71 */	bl __nw__FUlPCcPCc
/* 800BA200 000B7160  28 03 00 00 */	cmplwi r3, 0
/* 800BA204 000B7164  41 82 00 10 */	beq lbl_800BA214
/* 800BA208 000B7168  93 A3 00 00 */	stw r29, 0(r3)
/* 800BA20C 000B716C  38 00 00 01 */	li r0, 1
/* 800BA210 000B7170  90 03 00 04 */	stw r0, 4(r3)
lbl_800BA214:
/* 800BA214 000B7174  7F 80 07 75 */	extsb. r0, r28
/* 800BA218 000B7178  90 61 00 08 */	stw r3, 8(r1)
/* 800BA21C 000B717C  41 82 00 10 */	beq lbl_800BA22C
/* 800BA220 000B7180  38 61 00 1C */	addi r3, r1, 0x1c
/* 800BA224 000B7184  38 80 FF FF */	li r4, -1
/* 800BA228 000B7188  48 28 6C 19 */	bl __dt__6CTokenFv
lbl_800BA22C:
/* 800BA22C 000B718C  80 E1 00 08 */	lwz r7, 8(r1)
/* 800BA230 000B7190  3B A1 00 18 */	addi r29, r1, 0x18
/* 800BA234 000B7194  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800BA238 000B7198  38 61 00 74 */	addi r3, r1, 0x74
/* 800BA23C 000B719C  38 9E 00 28 */	addi r4, r30, 0x28
/* 800BA240 000B71A0  38 C1 00 14 */	addi r6, r1, 0x14
/* 800BA244 000B71A4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800BA248 000B71A8  80 A7 00 04 */	lwz r5, 4(r7)
/* 800BA24C 000B71AC  38 05 00 01 */	addi r0, r5, 1
/* 800BA250 000B71B0  90 07 00 04 */	stw r0, 4(r7)
/* 800BA254 000B71B4  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 800BA258 000B71B8  48 00 10 A9 */	bl sub_800bb300
/* 800BA25C 000B71BC  28 1D 00 00 */	cmplwi r29, 0
/* 800BA260 000B71C0  41 82 00 0C */	beq lbl_800BA26C
/* 800BA264 000B71C4  7F A3 EB 78 */	mr r3, r29
/* 800BA268 000B71C8  48 00 16 75 */	bl sub_800bb8dc
lbl_800BA26C:
/* 800BA26C 000B71CC  38 61 00 08 */	addi r3, r1, 8
/* 800BA270 000B71D0  48 00 16 6D */	bl sub_800bb8dc
lbl_800BA274:
/* 800BA274 000B71D4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800BA278 000B71D8  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 800BA27C 000B71DC  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 800BA280 000B71E0  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 800BA284 000B71E4  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 800BA288 000B71E8  7C 08 03 A6 */	mtlr r0
/* 800BA28C 000B71EC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800BA290 000B71F0  4E 80 00 20 */	blr

.global CacheParticleDesc__17CParticleDatabaseFRCQ213CharacterInfo16CParticleResData
CacheParticleDesc__17CParticleDatabaseFRCQ213CharacterInfo16CParticleResData:
/* 800BA294 000B71F4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 800BA298 000B71F8  7C 08 02 A6 */	mflr r0
/* 800BA29C 000B71FC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800BA2A0 000B7200  BE E1 00 9C */	stmw r23, 0x9c(r1)
/* 800BA2A4 000B7204  7C 7F 1B 78 */	mr r31, r3
/* 800BA2A8 000B7208  3B 9F 00 08 */	addi r28, r31, 8
/* 800BA2AC 000B720C  7C 9E 23 78 */	mr r30, r4
/* 800BA2B0 000B7210  93 81 00 70 */	stw r28, 0x70(r1)
/* 800BA2B4 000B7214  3B 61 00 58 */	addi r27, r1, 0x58
/* 800BA2B8 000B7218  80 04 00 04 */	lwz r0, 4(r4)
/* 800BA2BC 000B721C  83 44 00 0C */	lwz r26, 0xc(r4)
/* 800BA2C0 000B7220  54 00 10 3A */	slwi r0, r0, 2
/* 800BA2C4 000B7224  7F BA 02 14 */	add r29, r26, r0
/* 800BA2C8 000B7228  48 00 01 78 */	b lbl_800BA440
lbl_800BA2CC:
/* 800BA2CC 000B722C  83 3A 00 00 */	lwz r25, 0(r26)
/* 800BA2D0 000B7230  38 80 00 00 */	li r4, 0
/* 800BA2D4 000B7234  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 800BA2D8 000B7238  48 00 00 20 */	b lbl_800BA2F8
lbl_800BA2DC:
/* 800BA2DC 000B723C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800BA2E0 000B7240  7C 00 C8 40 */	cmplw r0, r25
/* 800BA2E4 000B7244  41 80 00 10 */	blt lbl_800BA2F4
/* 800BA2E8 000B7248  7C 64 1B 78 */	mr r4, r3
/* 800BA2EC 000B724C  80 63 00 00 */	lwz r3, 0(r3)
/* 800BA2F0 000B7250  48 00 00 08 */	b lbl_800BA2F8
lbl_800BA2F4:
/* 800BA2F4 000B7254  80 63 00 04 */	lwz r3, 4(r3)
lbl_800BA2F8:
/* 800BA2F8 000B7258  28 03 00 00 */	cmplwi r3, 0
/* 800BA2FC 000B725C  40 82 FF E0 */	bne lbl_800BA2DC
/* 800BA300 000B7260  28 04 00 00 */	cmplwi r4, 0
/* 800BA304 000B7264  38 60 00 00 */	li r3, 0
/* 800BA308 000B7268  41 82 00 10 */	beq lbl_800BA318
/* 800BA30C 000B726C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800BA310 000B7270  7C 19 00 40 */	cmplw r25, r0
/* 800BA314 000B7274  40 80 00 08 */	bge lbl_800BA31C
lbl_800BA318:
/* 800BA318 000B7278  38 60 00 01 */	li r3, 1
lbl_800BA31C:
/* 800BA31C 000B727C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA320 000B7280  41 82 00 08 */	beq lbl_800BA328
/* 800BA324 000B7284  38 80 00 00 */	li r4, 0
lbl_800BA328:
/* 800BA328 000B7288  38 00 00 00 */	li r0, 0
/* 800BA32C 000B728C  7C 04 00 40 */	cmplw r4, r0
/* 800BA330 000B7290  90 01 00 6C */	stw r0, 0x6c(r1)
/* 800BA334 000B7294  40 82 00 10 */	bne lbl_800BA344
/* 800BA338 000B7298  7C 1C E0 40 */	cmplw r28, r28
/* 800BA33C 000B729C  40 82 00 08 */	bne lbl_800BA344
/* 800BA340 000B72A0  38 00 00 01 */	li r0, 1
lbl_800BA344:
/* 800BA344 000B72A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BA348 000B72A8  41 82 00 F4 */	beq lbl_800BA43C
/* 800BA34C 000B72AC  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800BA350 000B72B0  3A E0 00 00 */	li r23, 0
/* 800BA354 000B72B4  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800BA358 000B72B8  38 A0 00 00 */	li r5, 0
/* 800BA35C 000B72BC  38 60 00 0C */	li r3, 0xc
/* 800BA360 000B72C0  48 25 B5 0D */	bl __nw__FUlPCcPCc
/* 800BA364 000B72C4  7C 78 1B 79 */	or. r24, r3, r3
/* 800BA368 000B72C8  41 82 00 50 */	beq lbl_800BA3B8
/* 800BA36C 000B72CC  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 800BA370 000B72D0  93 21 00 68 */	stw r25, 0x68(r1)
/* 800BA374 000B72D4  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 800BA378 000B72D8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800BA37C 000B72DC  90 01 00 64 */	stw r0, 0x64(r1)
/* 800BA380 000B72E0  38 61 00 5C */	addi r3, r1, 0x5c
/* 800BA384 000B72E4  38 A1 00 64 */	addi r5, r1, 0x64
/* 800BA388 000B72E8  81 84 00 00 */	lwz r12, 0(r4)
/* 800BA38C 000B72EC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BA390 000B72F0  7D 89 03 A6 */	mtctr r12
/* 800BA394 000B72F4  4E 80 04 21 */	bctrl
/* 800BA398 000B72F8  7F 03 C3 78 */	mr r3, r24
/* 800BA39C 000B72FC  38 81 00 5C */	addi r4, r1, 0x5c
/* 800BA3A0 000B7300  3A E0 00 01 */	li r23, 1
/* 800BA3A4 000B7304  48 28 6B 05 */	bl __ct__6CTokenFRC6CToken
/* 800BA3A8 000B7308  7F 03 C3 78 */	mr r3, r24
/* 800BA3AC 000B730C  48 28 6A 61 */	bl GetObj__6CTokenFv
/* 800BA3B0 000B7310  80 03 00 04 */	lwz r0, 4(r3)
/* 800BA3B4 000B7314  90 18 00 08 */	stw r0, 8(r24)
lbl_800BA3B8:
/* 800BA3B8 000B7318  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BA3BC 000B731C  38 60 00 08 */	li r3, 8
/* 800BA3C0 000B7320  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BA3C4 000B7324  38 A0 00 00 */	li r5, 0
/* 800BA3C8 000B7328  48 25 B4 A5 */	bl __nw__FUlPCcPCc
/* 800BA3CC 000B732C  28 03 00 00 */	cmplwi r3, 0
/* 800BA3D0 000B7330  41 82 00 10 */	beq lbl_800BA3E0
/* 800BA3D4 000B7334  93 03 00 00 */	stw r24, 0(r3)
/* 800BA3D8 000B7338  38 00 00 01 */	li r0, 1
/* 800BA3DC 000B733C  90 03 00 04 */	stw r0, 4(r3)
lbl_800BA3E0:
/* 800BA3E0 000B7340  7E E0 07 75 */	extsb. r0, r23
/* 800BA3E4 000B7344  90 61 00 10 */	stw r3, 0x10(r1)
/* 800BA3E8 000B7348  41 82 00 10 */	beq lbl_800BA3F8
/* 800BA3EC 000B734C  38 61 00 5C */	addi r3, r1, 0x5c
/* 800BA3F0 000B7350  38 80 FF FF */	li r4, -1
/* 800BA3F4 000B7354  48 28 6A 4D */	bl __dt__6CTokenFv
lbl_800BA3F8:
/* 800BA3F8 000B7358  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 800BA3FC 000B735C  7F E4 FB 78 */	mr r4, r31
/* 800BA400 000B7360  93 21 00 54 */	stw r25, 0x54(r1)
/* 800BA404 000B7364  38 61 00 8C */	addi r3, r1, 0x8c
/* 800BA408 000B7368  38 C1 00 54 */	addi r6, r1, 0x54
/* 800BA40C 000B736C  90 E1 00 58 */	stw r7, 0x58(r1)
/* 800BA410 000B7370  80 A7 00 04 */	lwz r5, 4(r7)
/* 800BA414 000B7374  38 05 00 01 */	addi r0, r5, 1
/* 800BA418 000B7378  90 07 00 04 */	stw r0, 4(r7)
/* 800BA41C 000B737C  80 BF 00 10 */	lwz r5, 0x10(r31)
/* 800BA420 000B7380  48 00 09 11 */	bl sub_800bad30
/* 800BA424 000B7384  28 1B 00 00 */	cmplwi r27, 0
/* 800BA428 000B7388  41 82 00 0C */	beq lbl_800BA434
/* 800BA42C 000B738C  7F 63 DB 78 */	mr r3, r27
/* 800BA430 000B7390  48 00 13 B5 */	bl sub_800bb7e4
lbl_800BA434:
/* 800BA434 000B7394  38 61 00 10 */	addi r3, r1, 0x10
/* 800BA438 000B7398  48 00 13 AD */	bl sub_800bb7e4
lbl_800BA43C:
/* 800BA43C 000B739C  3B 5A 00 04 */	addi r26, r26, 4
lbl_800BA440:
/* 800BA440 000B73A0  7C 1A E8 40 */	cmplw r26, r29
/* 800BA444 000B73A4  40 82 FE 88 */	bne lbl_800BA2CC
/* 800BA448 000B73A8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800BA44C 000B73AC  3B 7F 00 1C */	addi r27, r31, 0x1c
/* 800BA450 000B73B0  83 5E 00 1C */	lwz r26, 0x1c(r30)
/* 800BA454 000B73B4  3B A1 00 38 */	addi r29, r1, 0x38
/* 800BA458 000B73B8  54 00 10 3A */	slwi r0, r0, 2
/* 800BA45C 000B73BC  93 61 00 50 */	stw r27, 0x50(r1)
/* 800BA460 000B73C0  7F 9A 02 14 */	add r28, r26, r0
/* 800BA464 000B73C4  48 00 01 78 */	b lbl_800BA5DC
lbl_800BA468:
/* 800BA468 000B73C8  83 3A 00 00 */	lwz r25, 0(r26)
/* 800BA46C 000B73CC  38 80 00 00 */	li r4, 0
/* 800BA470 000B73D0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 800BA474 000B73D4  48 00 00 20 */	b lbl_800BA494
lbl_800BA478:
/* 800BA478 000B73D8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800BA47C 000B73DC  7C 00 C8 40 */	cmplw r0, r25
/* 800BA480 000B73E0  41 80 00 10 */	blt lbl_800BA490
/* 800BA484 000B73E4  7C 64 1B 78 */	mr r4, r3
/* 800BA488 000B73E8  80 63 00 00 */	lwz r3, 0(r3)
/* 800BA48C 000B73EC  48 00 00 08 */	b lbl_800BA494
lbl_800BA490:
/* 800BA490 000B73F0  80 63 00 04 */	lwz r3, 4(r3)
lbl_800BA494:
/* 800BA494 000B73F4  28 03 00 00 */	cmplwi r3, 0
/* 800BA498 000B73F8  40 82 FF E0 */	bne lbl_800BA478
/* 800BA49C 000B73FC  28 04 00 00 */	cmplwi r4, 0
/* 800BA4A0 000B7400  38 60 00 00 */	li r3, 0
/* 800BA4A4 000B7404  41 82 00 10 */	beq lbl_800BA4B4
/* 800BA4A8 000B7408  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800BA4AC 000B740C  7C 19 00 40 */	cmplw r25, r0
/* 800BA4B0 000B7410  40 80 00 08 */	bge lbl_800BA4B8
lbl_800BA4B4:
/* 800BA4B4 000B7414  38 60 00 01 */	li r3, 1
lbl_800BA4B8:
/* 800BA4B8 000B7418  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA4BC 000B741C  41 82 00 08 */	beq lbl_800BA4C4
/* 800BA4C0 000B7420  38 80 00 00 */	li r4, 0
lbl_800BA4C4:
/* 800BA4C4 000B7424  38 00 00 00 */	li r0, 0
/* 800BA4C8 000B7428  7C 04 00 40 */	cmplw r4, r0
/* 800BA4CC 000B742C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 800BA4D0 000B7430  40 82 00 10 */	bne lbl_800BA4E0
/* 800BA4D4 000B7434  7C 1B D8 40 */	cmplw r27, r27
/* 800BA4D8 000B7438  40 82 00 08 */	bne lbl_800BA4E0
/* 800BA4DC 000B743C  38 00 00 01 */	li r0, 1
lbl_800BA4E0:
/* 800BA4E0 000B7440  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BA4E4 000B7444  41 82 00 F4 */	beq lbl_800BA5D8
/* 800BA4E8 000B7448  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800BA4EC 000B744C  3A E0 00 00 */	li r23, 0
/* 800BA4F0 000B7450  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800BA4F4 000B7454  38 A0 00 00 */	li r5, 0
/* 800BA4F8 000B7458  38 60 00 0C */	li r3, 0xc
/* 800BA4FC 000B745C  48 25 B3 71 */	bl __nw__FUlPCcPCc
/* 800BA500 000B7460  7C 78 1B 79 */	or. r24, r3, r3
/* 800BA504 000B7464  41 82 00 50 */	beq lbl_800BA554
/* 800BA508 000B7468  3C 60 53 57 */	lis r3, 0x53574843@ha
/* 800BA50C 000B746C  93 21 00 48 */	stw r25, 0x48(r1)
/* 800BA510 000B7470  38 03 48 43 */	addi r0, r3, 0x53574843@l
/* 800BA514 000B7474  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800BA518 000B7478  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BA51C 000B747C  38 61 00 3C */	addi r3, r1, 0x3c
/* 800BA520 000B7480  38 A1 00 44 */	addi r5, r1, 0x44
/* 800BA524 000B7484  81 84 00 00 */	lwz r12, 0(r4)
/* 800BA528 000B7488  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BA52C 000B748C  7D 89 03 A6 */	mtctr r12
/* 800BA530 000B7490  4E 80 04 21 */	bctrl
/* 800BA534 000B7494  7F 03 C3 78 */	mr r3, r24
/* 800BA538 000B7498  38 81 00 3C */	addi r4, r1, 0x3c
/* 800BA53C 000B749C  3A E0 00 01 */	li r23, 1
/* 800BA540 000B74A0  48 28 69 69 */	bl __ct__6CTokenFRC6CToken
/* 800BA544 000B74A4  7F 03 C3 78 */	mr r3, r24
/* 800BA548 000B74A8  48 28 68 C5 */	bl GetObj__6CTokenFv
/* 800BA54C 000B74AC  80 03 00 04 */	lwz r0, 4(r3)
/* 800BA550 000B74B0  90 18 00 08 */	stw r0, 8(r24)
lbl_800BA554:
/* 800BA554 000B74B4  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BA558 000B74B8  38 60 00 08 */	li r3, 8
/* 800BA55C 000B74BC  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BA560 000B74C0  38 A0 00 00 */	li r5, 0
/* 800BA564 000B74C4  48 25 B3 09 */	bl __nw__FUlPCcPCc
/* 800BA568 000B74C8  28 03 00 00 */	cmplwi r3, 0
/* 800BA56C 000B74CC  41 82 00 10 */	beq lbl_800BA57C
/* 800BA570 000B74D0  93 03 00 00 */	stw r24, 0(r3)
/* 800BA574 000B74D4  38 00 00 01 */	li r0, 1
/* 800BA578 000B74D8  90 03 00 04 */	stw r0, 4(r3)
lbl_800BA57C:
/* 800BA57C 000B74DC  7E E0 07 75 */	extsb. r0, r23
/* 800BA580 000B74E0  90 61 00 0C */	stw r3, 0xc(r1)
/* 800BA584 000B74E4  41 82 00 10 */	beq lbl_800BA594
/* 800BA588 000B74E8  38 61 00 3C */	addi r3, r1, 0x3c
/* 800BA58C 000B74EC  38 80 FF FF */	li r4, -1
/* 800BA590 000B74F0  48 28 68 B1 */	bl __dt__6CTokenFv
lbl_800BA594:
/* 800BA594 000B74F4  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 800BA598 000B74F8  38 61 00 80 */	addi r3, r1, 0x80
/* 800BA59C 000B74FC  93 21 00 34 */	stw r25, 0x34(r1)
/* 800BA5A0 000B7500  38 9F 00 14 */	addi r4, r31, 0x14
/* 800BA5A4 000B7504  38 C1 00 34 */	addi r6, r1, 0x34
/* 800BA5A8 000B7508  90 E1 00 38 */	stw r7, 0x38(r1)
/* 800BA5AC 000B750C  80 A7 00 04 */	lwz r5, 4(r7)
/* 800BA5B0 000B7510  38 05 00 01 */	addi r0, r5, 1
/* 800BA5B4 000B7514  90 07 00 04 */	stw r0, 4(r7)
/* 800BA5B8 000B7518  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 800BA5BC 000B751C  48 00 0A 5D */	bl sub_800bb018
/* 800BA5C0 000B7520  28 1D 00 00 */	cmplwi r29, 0
/* 800BA5C4 000B7524  41 82 00 0C */	beq lbl_800BA5D0
/* 800BA5C8 000B7528  7F A3 EB 78 */	mr r3, r29
/* 800BA5CC 000B752C  48 00 12 95 */	bl sub_800bb860
lbl_800BA5D0:
/* 800BA5D0 000B7530  38 61 00 0C */	addi r3, r1, 0xc
/* 800BA5D4 000B7534  48 00 12 8D */	bl sub_800bb860
lbl_800BA5D8:
/* 800BA5D8 000B7538  3B 5A 00 04 */	addi r26, r26, 4
lbl_800BA5DC:
/* 800BA5DC 000B753C  7C 1A E0 40 */	cmplw r26, r28
/* 800BA5E0 000B7540  40 82 FE 88 */	bne lbl_800BA468
/* 800BA5E4 000B7544  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800BA5E8 000B7548  3B 7F 00 30 */	addi r27, r31, 0x30
/* 800BA5EC 000B754C  83 5E 00 2C */	lwz r26, 0x2c(r30)
/* 800BA5F0 000B7550  3B A1 00 18 */	addi r29, r1, 0x18
/* 800BA5F4 000B7554  54 00 10 3A */	slwi r0, r0, 2
/* 800BA5F8 000B7558  93 61 00 30 */	stw r27, 0x30(r1)
/* 800BA5FC 000B755C  7F 9A 02 14 */	add r28, r26, r0
/* 800BA600 000B7560  48 00 01 78 */	b lbl_800BA778
lbl_800BA604:
/* 800BA604 000B7564  83 3A 00 00 */	lwz r25, 0(r26)
/* 800BA608 000B7568  38 80 00 00 */	li r4, 0
/* 800BA60C 000B756C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 800BA610 000B7570  48 00 00 20 */	b lbl_800BA630
lbl_800BA614:
/* 800BA614 000B7574  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800BA618 000B7578  7C 00 C8 40 */	cmplw r0, r25
/* 800BA61C 000B757C  41 80 00 10 */	blt lbl_800BA62C
/* 800BA620 000B7580  7C 64 1B 78 */	mr r4, r3
/* 800BA624 000B7584  80 63 00 00 */	lwz r3, 0(r3)
/* 800BA628 000B7588  48 00 00 08 */	b lbl_800BA630
lbl_800BA62C:
/* 800BA62C 000B758C  80 63 00 04 */	lwz r3, 4(r3)
lbl_800BA630:
/* 800BA630 000B7590  28 03 00 00 */	cmplwi r3, 0
/* 800BA634 000B7594  40 82 FF E0 */	bne lbl_800BA614
/* 800BA638 000B7598  28 04 00 00 */	cmplwi r4, 0
/* 800BA63C 000B759C  38 60 00 00 */	li r3, 0
/* 800BA640 000B75A0  41 82 00 10 */	beq lbl_800BA650
/* 800BA644 000B75A4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800BA648 000B75A8  7C 19 00 40 */	cmplw r25, r0
/* 800BA64C 000B75AC  40 80 00 08 */	bge lbl_800BA654
lbl_800BA650:
/* 800BA650 000B75B0  38 60 00 01 */	li r3, 1
lbl_800BA654:
/* 800BA654 000B75B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BA658 000B75B8  41 82 00 08 */	beq lbl_800BA660
/* 800BA65C 000B75BC  38 80 00 00 */	li r4, 0
lbl_800BA660:
/* 800BA660 000B75C0  38 00 00 00 */	li r0, 0
/* 800BA664 000B75C4  7C 04 00 40 */	cmplw r4, r0
/* 800BA668 000B75C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800BA66C 000B75CC  40 82 00 10 */	bne lbl_800BA67C
/* 800BA670 000B75D0  7C 1B D8 40 */	cmplw r27, r27
/* 800BA674 000B75D4  40 82 00 08 */	bne lbl_800BA67C
/* 800BA678 000B75D8  38 00 00 01 */	li r0, 1
lbl_800BA67C:
/* 800BA67C 000B75DC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BA680 000B75E0  41 82 00 F4 */	beq lbl_800BA774
/* 800BA684 000B75E4  3C 60 80 3D */	lis r3, lbl_803CDEA0@ha
/* 800BA688 000B75E8  3A E0 00 00 */	li r23, 0
/* 800BA68C 000B75EC  38 83 DE A0 */	addi r4, r3, lbl_803CDEA0@l
/* 800BA690 000B75F0  38 A0 00 00 */	li r5, 0
/* 800BA694 000B75F4  38 60 00 0C */	li r3, 0xc
/* 800BA698 000B75F8  48 25 B1 D5 */	bl __nw__FUlPCcPCc
/* 800BA69C 000B75FC  7C 78 1B 79 */	or. r24, r3, r3
/* 800BA6A0 000B7600  41 82 00 50 */	beq lbl_800BA6F0
/* 800BA6A4 000B7604  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 800BA6A8 000B7608  93 21 00 28 */	stw r25, 0x28(r1)
/* 800BA6AC 000B760C  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 800BA6B0 000B7610  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 800BA6B4 000B7614  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BA6B8 000B7618  38 61 00 1C */	addi r3, r1, 0x1c
/* 800BA6BC 000B761C  38 A1 00 24 */	addi r5, r1, 0x24
/* 800BA6C0 000B7620  81 84 00 00 */	lwz r12, 0(r4)
/* 800BA6C4 000B7624  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800BA6C8 000B7628  7D 89 03 A6 */	mtctr r12
/* 800BA6CC 000B762C  4E 80 04 21 */	bctrl
/* 800BA6D0 000B7630  7F 03 C3 78 */	mr r3, r24
/* 800BA6D4 000B7634  38 81 00 1C */	addi r4, r1, 0x1c
/* 800BA6D8 000B7638  3A E0 00 01 */	li r23, 1
/* 800BA6DC 000B763C  48 28 67 CD */	bl __ct__6CTokenFRC6CToken
/* 800BA6E0 000B7640  7F 03 C3 78 */	mr r3, r24
/* 800BA6E4 000B7644  48 28 67 29 */	bl GetObj__6CTokenFv
/* 800BA6E8 000B7648  80 03 00 04 */	lwz r0, 4(r3)
/* 800BA6EC 000B764C  90 18 00 08 */	stw r0, 8(r24)
lbl_800BA6F0:
/* 800BA6F0 000B7650  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BA6F4 000B7654  38 60 00 08 */	li r3, 8
/* 800BA6F8 000B7658  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BA6FC 000B765C  38 A0 00 00 */	li r5, 0
/* 800BA700 000B7660  48 25 B1 6D */	bl __nw__FUlPCcPCc
/* 800BA704 000B7664  28 03 00 00 */	cmplwi r3, 0
/* 800BA708 000B7668  41 82 00 10 */	beq lbl_800BA718
/* 800BA70C 000B766C  93 03 00 00 */	stw r24, 0(r3)
/* 800BA710 000B7670  38 00 00 01 */	li r0, 1
/* 800BA714 000B7674  90 03 00 04 */	stw r0, 4(r3)
lbl_800BA718:
/* 800BA718 000B7678  7E E0 07 75 */	extsb. r0, r23
/* 800BA71C 000B767C  90 61 00 08 */	stw r3, 8(r1)
/* 800BA720 000B7680  41 82 00 10 */	beq lbl_800BA730
/* 800BA724 000B7684  38 61 00 1C */	addi r3, r1, 0x1c
/* 800BA728 000B7688  38 80 FF FF */	li r4, -1
/* 800BA72C 000B768C  48 28 67 15 */	bl __dt__6CTokenFv
lbl_800BA730:
/* 800BA730 000B7690  80 E1 00 08 */	lwz r7, 8(r1)
/* 800BA734 000B7694  38 61 00 74 */	addi r3, r1, 0x74
/* 800BA738 000B7698  93 21 00 14 */	stw r25, 0x14(r1)
/* 800BA73C 000B769C  38 9F 00 28 */	addi r4, r31, 0x28
/* 800BA740 000B76A0  38 C1 00 14 */	addi r6, r1, 0x14
/* 800BA744 000B76A4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800BA748 000B76A8  80 A7 00 04 */	lwz r5, 4(r7)
/* 800BA74C 000B76AC  38 05 00 01 */	addi r0, r5, 1
/* 800BA750 000B76B0  90 07 00 04 */	stw r0, 4(r7)
/* 800BA754 000B76B4  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 800BA758 000B76B8  48 00 0B A9 */	bl sub_800bb300
/* 800BA75C 000B76BC  28 1D 00 00 */	cmplwi r29, 0
/* 800BA760 000B76C0  41 82 00 0C */	beq lbl_800BA76C
/* 800BA764 000B76C4  7F A3 EB 78 */	mr r3, r29
/* 800BA768 000B76C8  48 00 11 75 */	bl sub_800bb8dc
lbl_800BA76C:
/* 800BA76C 000B76CC  38 61 00 08 */	addi r3, r1, 8
/* 800BA770 000B76D0  48 00 11 6D */	bl sub_800bb8dc
lbl_800BA774:
/* 800BA774 000B76D4  3B 5A 00 04 */	addi r26, r26, 4
lbl_800BA778:
/* 800BA778 000B76D8  7C 1A E0 40 */	cmplw r26, r28
/* 800BA77C 000B76DC  40 82 FE 88 */	bne lbl_800BA604
/* 800BA780 000B76E0  BA E1 00 9C */	lmw r23, 0x9c(r1)
/* 800BA784 000B76E4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800BA788 000B76E8  7C 08 03 A6 */	mtlr r0
/* 800BA78C 000B76EC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 800BA790 000B76F0  4E 80 00 20 */	blr

.global __dt__17CParticleDatabaseFv
__dt__17CParticleDatabaseFv:
/* 800BA794 000B76F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BA798 000B76F8  7C 08 02 A6 */	mflr r0
/* 800BA79C 000B76FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BA7A0 000B7700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BA7A4 000B7704  7C 9F 23 78 */	mr r31, r4
/* 800BA7A8 000B7708  93 C1 00 08 */	stw r30, 8(r1)
/* 800BA7AC 000B770C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800BA7B0 000B7710  41 82 02 08 */	beq lbl_800BA9B8
/* 800BA7B4 000B7714  34 1E 00 A0 */	addic. r0, r30, 0xa0
/* 800BA7B8 000B7718  41 82 00 34 */	beq lbl_800BA7EC
/* 800BA7BC 000B771C  34 1E 00 A0 */	addic. r0, r30, 0xa0
/* 800BA7C0 000B7720  41 82 00 2C */	beq lbl_800BA7EC
/* 800BA7C4 000B7724  80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 800BA7C8 000B7728  28 04 00 00 */	cmplwi r4, 0
/* 800BA7CC 000B772C  41 82 00 0C */	beq lbl_800BA7D8
/* 800BA7D0 000B7730  38 7E 00 A0 */	addi r3, r30, 0xa0
/* 800BA7D4 000B7734  48 00 03 6D */	bl sub_800bab40
lbl_800BA7D8:
/* 800BA7D8 000B7738  38 00 00 00 */	li r0, 0
/* 800BA7DC 000B773C  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 800BA7E0 000B7740  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 800BA7E4 000B7744  90 1E 00 AC */	stw r0, 0xac(r30)
/* 800BA7E8 000B7748  90 1E 00 A4 */	stw r0, 0xa4(r30)
lbl_800BA7EC:
/* 800BA7EC 000B774C  34 1E 00 8C */	addic. r0, r30, 0x8c
/* 800BA7F0 000B7750  41 82 00 34 */	beq lbl_800BA824
/* 800BA7F4 000B7754  34 1E 00 8C */	addic. r0, r30, 0x8c
/* 800BA7F8 000B7758  41 82 00 2C */	beq lbl_800BA824
/* 800BA7FC 000B775C  80 9E 00 9C */	lwz r4, 0x9c(r30)
/* 800BA800 000B7760  28 04 00 00 */	cmplwi r4, 0
/* 800BA804 000B7764  41 82 00 0C */	beq lbl_800BA810
/* 800BA808 000B7768  38 7E 00 8C */	addi r3, r30, 0x8c
/* 800BA80C 000B776C  48 00 03 35 */	bl sub_800bab40
lbl_800BA810:
/* 800BA810 000B7770  38 00 00 00 */	li r0, 0
/* 800BA814 000B7774  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 800BA818 000B7778  90 1E 00 94 */	stw r0, 0x94(r30)
/* 800BA81C 000B777C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 800BA820 000B7780  90 1E 00 90 */	stw r0, 0x90(r30)
lbl_800BA824:
/* 800BA824 000B7784  34 1E 00 78 */	addic. r0, r30, 0x78
/* 800BA828 000B7788  41 82 00 34 */	beq lbl_800BA85C
/* 800BA82C 000B778C  34 1E 00 78 */	addic. r0, r30, 0x78
/* 800BA830 000B7790  41 82 00 2C */	beq lbl_800BA85C
/* 800BA834 000B7794  80 9E 00 88 */	lwz r4, 0x88(r30)
/* 800BA838 000B7798  28 04 00 00 */	cmplwi r4, 0
/* 800BA83C 000B779C  41 82 00 0C */	beq lbl_800BA848
/* 800BA840 000B77A0  38 7E 00 78 */	addi r3, r30, 0x78
/* 800BA844 000B77A4  48 00 02 FD */	bl sub_800bab40
lbl_800BA848:
/* 800BA848 000B77A8  38 00 00 00 */	li r0, 0
/* 800BA84C 000B77AC  90 1E 00 88 */	stw r0, 0x88(r30)
/* 800BA850 000B77B0  90 1E 00 80 */	stw r0, 0x80(r30)
/* 800BA854 000B77B4  90 1E 00 84 */	stw r0, 0x84(r30)
/* 800BA858 000B77B8  90 1E 00 7C */	stw r0, 0x7c(r30)
lbl_800BA85C:
/* 800BA85C 000B77BC  34 1E 00 64 */	addic. r0, r30, 0x64
/* 800BA860 000B77C0  41 82 00 34 */	beq lbl_800BA894
/* 800BA864 000B77C4  34 1E 00 64 */	addic. r0, r30, 0x64
/* 800BA868 000B77C8  41 82 00 2C */	beq lbl_800BA894
/* 800BA86C 000B77CC  80 9E 00 74 */	lwz r4, 0x74(r30)
/* 800BA870 000B77D0  28 04 00 00 */	cmplwi r4, 0
/* 800BA874 000B77D4  41 82 00 0C */	beq lbl_800BA880
/* 800BA878 000B77D8  38 7E 00 64 */	addi r3, r30, 0x64
/* 800BA87C 000B77DC  48 00 02 C5 */	bl sub_800bab40
lbl_800BA880:
/* 800BA880 000B77E0  38 00 00 00 */	li r0, 0
/* 800BA884 000B77E4  90 1E 00 74 */	stw r0, 0x74(r30)
/* 800BA888 000B77E8  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 800BA88C 000B77EC  90 1E 00 70 */	stw r0, 0x70(r30)
/* 800BA890 000B77F0  90 1E 00 68 */	stw r0, 0x68(r30)
lbl_800BA894:
/* 800BA894 000B77F4  34 1E 00 50 */	addic. r0, r30, 0x50
/* 800BA898 000B77F8  41 82 00 34 */	beq lbl_800BA8CC
/* 800BA89C 000B77FC  34 1E 00 50 */	addic. r0, r30, 0x50
/* 800BA8A0 000B7800  41 82 00 2C */	beq lbl_800BA8CC
/* 800BA8A4 000B7804  80 9E 00 60 */	lwz r4, 0x60(r30)
/* 800BA8A8 000B7808  28 04 00 00 */	cmplwi r4, 0
/* 800BA8AC 000B780C  41 82 00 0C */	beq lbl_800BA8B8
/* 800BA8B0 000B7810  38 7E 00 50 */	addi r3, r30, 0x50
/* 800BA8B4 000B7814  48 00 02 8D */	bl sub_800bab40
lbl_800BA8B8:
/* 800BA8B8 000B7818  38 00 00 00 */	li r0, 0
/* 800BA8BC 000B781C  90 1E 00 60 */	stw r0, 0x60(r30)
/* 800BA8C0 000B7820  90 1E 00 58 */	stw r0, 0x58(r30)
/* 800BA8C4 000B7824  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 800BA8C8 000B7828  90 1E 00 54 */	stw r0, 0x54(r30)
lbl_800BA8CC:
/* 800BA8CC 000B782C  34 1E 00 3C */	addic. r0, r30, 0x3c
/* 800BA8D0 000B7830  41 82 00 34 */	beq lbl_800BA904
/* 800BA8D4 000B7834  34 1E 00 3C */	addic. r0, r30, 0x3c
/* 800BA8D8 000B7838  41 82 00 2C */	beq lbl_800BA904
/* 800BA8DC 000B783C  80 9E 00 4C */	lwz r4, 0x4c(r30)
/* 800BA8E0 000B7840  28 04 00 00 */	cmplwi r4, 0
/* 800BA8E4 000B7844  41 82 00 0C */	beq lbl_800BA8F0
/* 800BA8E8 000B7848  38 7E 00 3C */	addi r3, r30, 0x3c
/* 800BA8EC 000B784C  48 00 02 55 */	bl sub_800bab40
lbl_800BA8F0:
/* 800BA8F0 000B7850  38 00 00 00 */	li r0, 0
/* 800BA8F4 000B7854  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 800BA8F8 000B7858  90 1E 00 44 */	stw r0, 0x44(r30)
/* 800BA8FC 000B785C  90 1E 00 48 */	stw r0, 0x48(r30)
/* 800BA900 000B7860  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_800BA904:
/* 800BA904 000B7864  34 1E 00 28 */	addic. r0, r30, 0x28
/* 800BA908 000B7868  41 82 00 34 */	beq lbl_800BA93C
/* 800BA90C 000B786C  34 1E 00 28 */	addic. r0, r30, 0x28
/* 800BA910 000B7870  41 82 00 2C */	beq lbl_800BA93C
/* 800BA914 000B7874  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 800BA918 000B7878  28 04 00 00 */	cmplwi r4, 0
/* 800BA91C 000B787C  41 82 00 0C */	beq lbl_800BA928
/* 800BA920 000B7880  38 7E 00 28 */	addi r3, r30, 0x28
/* 800BA924 000B7884  48 00 09 59 */	bl sub_800bb27c
lbl_800BA928:
/* 800BA928 000B7888  38 00 00 00 */	li r0, 0
/* 800BA92C 000B788C  90 1E 00 38 */	stw r0, 0x38(r30)
/* 800BA930 000B7890  90 1E 00 30 */	stw r0, 0x30(r30)
/* 800BA934 000B7894  90 1E 00 34 */	stw r0, 0x34(r30)
/* 800BA938 000B7898  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_800BA93C:
/* 800BA93C 000B789C  34 1E 00 14 */	addic. r0, r30, 0x14
/* 800BA940 000B78A0  41 82 00 34 */	beq lbl_800BA974
/* 800BA944 000B78A4  34 1E 00 14 */	addic. r0, r30, 0x14
/* 800BA948 000B78A8  41 82 00 2C */	beq lbl_800BA974
/* 800BA94C 000B78AC  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 800BA950 000B78B0  28 04 00 00 */	cmplwi r4, 0
/* 800BA954 000B78B4  41 82 00 0C */	beq lbl_800BA960
/* 800BA958 000B78B8  38 7E 00 14 */	addi r3, r30, 0x14
/* 800BA95C 000B78BC  48 00 06 39 */	bl sub_800baf94
lbl_800BA960:
/* 800BA960 000B78C0  38 00 00 00 */	li r0, 0
/* 800BA964 000B78C4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 800BA968 000B78C8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 800BA96C 000B78CC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 800BA970 000B78D0  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_800BA974:
/* 800BA974 000B78D4  28 1E 00 00 */	cmplwi r30, 0
/* 800BA978 000B78D8  41 82 00 30 */	beq lbl_800BA9A8
/* 800BA97C 000B78DC  41 82 00 2C */	beq lbl_800BA9A8
/* 800BA980 000B78E0  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 800BA984 000B78E4  28 04 00 00 */	cmplwi r4, 0
/* 800BA988 000B78E8  41 82 00 0C */	beq lbl_800BA994
/* 800BA98C 000B78EC  7F C3 F3 78 */	mr r3, r30
/* 800BA990 000B78F0  48 00 03 1D */	bl sub_800bacac
lbl_800BA994:
/* 800BA994 000B78F4  38 00 00 00 */	li r0, 0
/* 800BA998 000B78F8  90 1E 00 10 */	stw r0, 0x10(r30)
/* 800BA99C 000B78FC  90 1E 00 08 */	stw r0, 8(r30)
/* 800BA9A0 000B7900  90 1E 00 0C */	stw r0, 0xc(r30)
/* 800BA9A4 000B7904  90 1E 00 04 */	stw r0, 4(r30)
lbl_800BA9A8:
/* 800BA9A8 000B7908  7F E0 07 35 */	extsh. r0, r31
/* 800BA9AC 000B790C  40 81 00 0C */	ble lbl_800BA9B8
/* 800BA9B0 000B7910  7F C3 F3 78 */	mr r3, r30
/* 800BA9B4 000B7914  48 25 AF 7D */	bl Free__7CMemoryFPCv
lbl_800BA9B8:
/* 800BA9B8 000B7918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BA9BC 000B791C  7F C3 F3 78 */	mr r3, r30
/* 800BA9C0 000B7920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BA9C4 000B7924  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BA9C8 000B7928  7C 08 03 A6 */	mtlr r0
/* 800BA9CC 000B792C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BA9D0 000B7930  4E 80 00 20 */	blr

.global __ct__17CParticleDatabaseFv
__ct__17CParticleDatabaseFv:
/* 800BA9D4 000B7934  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800BA9D8 000B7938  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800BA9DC 000B793C  88 81 00 28 */	lbz r4, 0x28(r1)
/* 800BA9E0 000B7940  93 C1 00 58 */	stw r30, 0x58(r1)
/* 800BA9E4 000B7944  88 01 00 4C */	lbz r0, 0x4c(r1)
/* 800BA9E8 000B7948  93 A1 00 54 */	stw r29, 0x54(r1)
/* 800BA9EC 000B794C  88 E1 00 24 */	lbz r7, 0x24(r1)
/* 800BA9F0 000B7950  93 81 00 50 */	stw r28, 0x50(r1)
/* 800BA9F4 000B7954  3B 80 00 00 */	li r28, 0
/* 800BA9F8 000B7958  88 C1 00 48 */	lbz r6, 0x48(r1)
/* 800BA9FC 000B795C  98 83 00 00 */	stb r4, 0(r3)
/* 800BAA00 000B7960  38 80 00 01 */	li r4, 1
/* 800BAA04 000B7964  88 A1 00 20 */	lbz r5, 0x20(r1)
/* 800BAA08 000B7968  98 03 00 01 */	stb r0, 1(r3)
/* 800BAA0C 000B796C  88 01 00 44 */	lbz r0, 0x44(r1)
/* 800BAA10 000B7970  93 83 00 04 */	stw r28, 4(r3)
/* 800BAA14 000B7974  8B A1 00 1C */	lbz r29, 0x1c(r1)
/* 800BAA18 000B7978  93 83 00 08 */	stw r28, 8(r3)
/* 800BAA1C 000B797C  8B C1 00 40 */	lbz r30, 0x40(r1)
/* 800BAA20 000B7980  93 83 00 0C */	stw r28, 0xc(r3)
/* 800BAA24 000B7984  8B E1 00 18 */	lbz r31, 0x18(r1)
/* 800BAA28 000B7988  93 83 00 10 */	stw r28, 0x10(r3)
/* 800BAA2C 000B798C  89 81 00 3C */	lbz r12, 0x3c(r1)
/* 800BAA30 000B7990  98 E3 00 14 */	stb r7, 0x14(r3)
/* 800BAA34 000B7994  89 61 00 14 */	lbz r11, 0x14(r1)
/* 800BAA38 000B7998  98 C3 00 15 */	stb r6, 0x15(r3)
/* 800BAA3C 000B799C  89 41 00 38 */	lbz r10, 0x38(r1)
/* 800BAA40 000B79A0  93 83 00 18 */	stw r28, 0x18(r3)
/* 800BAA44 000B79A4  89 21 00 10 */	lbz r9, 0x10(r1)
/* 800BAA48 000B79A8  93 83 00 1C */	stw r28, 0x1c(r3)
/* 800BAA4C 000B79AC  89 01 00 34 */	lbz r8, 0x34(r1)
/* 800BAA50 000B79B0  93 83 00 20 */	stw r28, 0x20(r3)
/* 800BAA54 000B79B4  88 E1 00 0C */	lbz r7, 0xc(r1)
/* 800BAA58 000B79B8  93 83 00 24 */	stw r28, 0x24(r3)
/* 800BAA5C 000B79BC  88 C1 00 30 */	lbz r6, 0x30(r1)
/* 800BAA60 000B79C0  98 A3 00 28 */	stb r5, 0x28(r3)
/* 800BAA64 000B79C4  88 A1 00 08 */	lbz r5, 8(r1)
/* 800BAA68 000B79C8  98 03 00 29 */	stb r0, 0x29(r3)
/* 800BAA6C 000B79CC  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 800BAA70 000B79D0  93 83 00 2C */	stw r28, 0x2c(r3)
/* 800BAA74 000B79D4  93 83 00 30 */	stw r28, 0x30(r3)
/* 800BAA78 000B79D8  93 83 00 34 */	stw r28, 0x34(r3)
/* 800BAA7C 000B79DC  93 83 00 38 */	stw r28, 0x38(r3)
/* 800BAA80 000B79E0  9B A3 00 3C */	stb r29, 0x3c(r3)
/* 800BAA84 000B79E4  9B C3 00 3D */	stb r30, 0x3d(r3)
/* 800BAA88 000B79E8  93 83 00 40 */	stw r28, 0x40(r3)
/* 800BAA8C 000B79EC  93 83 00 44 */	stw r28, 0x44(r3)
/* 800BAA90 000B79F0  93 83 00 48 */	stw r28, 0x48(r3)
/* 800BAA94 000B79F4  93 83 00 4C */	stw r28, 0x4c(r3)
/* 800BAA98 000B79F8  9B E3 00 50 */	stb r31, 0x50(r3)
/* 800BAA9C 000B79FC  99 83 00 51 */	stb r12, 0x51(r3)
/* 800BAAA0 000B7A00  93 83 00 54 */	stw r28, 0x54(r3)
/* 800BAAA4 000B7A04  93 83 00 58 */	stw r28, 0x58(r3)
/* 800BAAA8 000B7A08  93 83 00 5C */	stw r28, 0x5c(r3)
/* 800BAAAC 000B7A0C  93 83 00 60 */	stw r28, 0x60(r3)
/* 800BAAB0 000B7A10  99 63 00 64 */	stb r11, 0x64(r3)
/* 800BAAB4 000B7A14  99 43 00 65 */	stb r10, 0x65(r3)
/* 800BAAB8 000B7A18  93 83 00 68 */	stw r28, 0x68(r3)
/* 800BAABC 000B7A1C  93 83 00 6C */	stw r28, 0x6c(r3)
/* 800BAAC0 000B7A20  93 83 00 70 */	stw r28, 0x70(r3)
/* 800BAAC4 000B7A24  93 83 00 74 */	stw r28, 0x74(r3)
/* 800BAAC8 000B7A28  99 23 00 78 */	stb r9, 0x78(r3)
/* 800BAACC 000B7A2C  99 03 00 79 */	stb r8, 0x79(r3)
/* 800BAAD0 000B7A30  93 83 00 7C */	stw r28, 0x7c(r3)
/* 800BAAD4 000B7A34  93 83 00 80 */	stw r28, 0x80(r3)
/* 800BAAD8 000B7A38  93 83 00 84 */	stw r28, 0x84(r3)
/* 800BAADC 000B7A3C  93 83 00 88 */	stw r28, 0x88(r3)
/* 800BAAE0 000B7A40  98 E3 00 8C */	stb r7, 0x8c(r3)
/* 800BAAE4 000B7A44  98 C3 00 8D */	stb r6, 0x8d(r3)
/* 800BAAE8 000B7A48  93 83 00 90 */	stw r28, 0x90(r3)
/* 800BAAEC 000B7A4C  93 83 00 94 */	stw r28, 0x94(r3)
/* 800BAAF0 000B7A50  93 83 00 98 */	stw r28, 0x98(r3)
/* 800BAAF4 000B7A54  93 83 00 9C */	stw r28, 0x9c(r3)
/* 800BAAF8 000B7A58  98 A3 00 A0 */	stb r5, 0xa0(r3)
/* 800BAAFC 000B7A5C  98 03 00 A1 */	stb r0, 0xa1(r3)
/* 800BAB00 000B7A60  93 83 00 A4 */	stw r28, 0xa4(r3)
/* 800BAB04 000B7A64  93 83 00 A8 */	stw r28, 0xa8(r3)
/* 800BAB08 000B7A68  93 83 00 AC */	stw r28, 0xac(r3)
/* 800BAB0C 000B7A6C  93 83 00 B0 */	stw r28, 0xb0(r3)
/* 800BAB10 000B7A70  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 800BAB14 000B7A74  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 800BAB18 000B7A78  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 800BAB1C 000B7A7C  88 03 00 B4 */	lbz r0, 0xb4(r3)
/* 800BAB20 000B7A80  53 80 36 72 */	rlwimi r0, r28, 6, 0x19, 0x19
/* 800BAB24 000B7A84  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 800BAB28 000B7A88  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800BAB2C 000B7A8C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 800BAB30 000B7A90  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 800BAB34 000B7A94  83 81 00 50 */	lwz r28, 0x50(r1)
/* 800BAB38 000B7A98  38 21 00 60 */	addi r1, r1, 0x60
/* 800BAB3C 000B7A9C  4E 80 00 20 */	blr

.global sub_800bab40
sub_800bab40:
/* 800BAB40 000B7AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BAB44 000B7AA4  7C 08 02 A6 */	mflr r0
/* 800BAB48 000B7AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BAB4C 000B7AAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BAB50 000B7AB0  7C 9F 23 78 */	mr r31, r4
/* 800BAB54 000B7AB4  93 C1 00 08 */	stw r30, 8(r1)
/* 800BAB58 000B7AB8  7C 7E 1B 78 */	mr r30, r3
/* 800BAB5C 000B7ABC  80 84 00 00 */	lwz r4, 0(r4)
/* 800BAB60 000B7AC0  28 04 00 00 */	cmplwi r4, 0
/* 800BAB64 000B7AC4  41 82 00 08 */	beq lbl_800BAB6C
/* 800BAB68 000B7AC8  4B FF FF D9 */	bl sub_800bab40
lbl_800BAB6C:
/* 800BAB6C 000B7ACC  80 9F 00 04 */	lwz r4, 4(r31)
/* 800BAB70 000B7AD0  28 04 00 00 */	cmplwi r4, 0
/* 800BAB74 000B7AD4  41 82 00 0C */	beq lbl_800BAB80
/* 800BAB78 000B7AD8  7F C3 F3 78 */	mr r3, r30
/* 800BAB7C 000B7ADC  4B FF FF C5 */	bl sub_800bab40
lbl_800BAB80:
/* 800BAB80 000B7AE0  28 1F 00 00 */	cmplwi r31, 0
/* 800BAB84 000B7AE4  41 82 00 50 */	beq lbl_800BABD4
/* 800BAB88 000B7AE8  34 1F 00 10 */	addic. r0, r31, 0x10
/* 800BAB8C 000B7AEC  41 82 00 48 */	beq lbl_800BABD4
/* 800BAB90 000B7AF0  34 7F 00 20 */	addic. r3, r31, 0x20
/* 800BAB94 000B7AF4  41 82 00 30 */	beq lbl_800BABC4
/* 800BAB98 000B7AF8  88 03 00 00 */	lbz r0, 0(r3)
/* 800BAB9C 000B7AFC  28 00 00 00 */	cmplwi r0, 0
/* 800BABA0 000B7B00  41 82 00 24 */	beq lbl_800BABC4
/* 800BABA4 000B7B04  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 800BABA8 000B7B08  28 03 00 00 */	cmplwi r3, 0
/* 800BABAC 000B7B0C  41 82 00 18 */	beq lbl_800BABC4
/* 800BABB0 000B7B10  81 83 00 00 */	lwz r12, 0(r3)
/* 800BABB4 000B7B14  38 80 00 01 */	li r4, 1
/* 800BABB8 000B7B18  81 8C 00 08 */	lwz r12, 8(r12)
/* 800BABBC 000B7B1C  7D 89 03 A6 */	mtctr r12
/* 800BABC0 000B7B20  4E 80 04 21 */	bctrl
lbl_800BABC4:
/* 800BABC4 000B7B24  34 1F 00 10 */	addic. r0, r31, 0x10
/* 800BABC8 000B7B28  41 82 00 0C */	beq lbl_800BABD4
/* 800BABCC 000B7B2C  38 7F 00 10 */	addi r3, r31, 0x10
/* 800BABD0 000B7B30  48 28 2F 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800BABD4:
/* 800BABD4 000B7B34  28 1F 00 00 */	cmplwi r31, 0
/* 800BABD8 000B7B38  41 82 00 0C */	beq lbl_800BABE4
/* 800BABDC 000B7B3C  7F E3 FB 78 */	mr r3, r31
/* 800BABE0 000B7B40  48 25 AD 51 */	bl Free__7CMemoryFPCv
lbl_800BABE4:
/* 800BABE4 000B7B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BABE8 000B7B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BABEC 000B7B4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BABF0 000B7B50  7C 08 03 A6 */	mtlr r0
/* 800BABF4 000B7B54  38 21 00 10 */	addi r1, r1, 0x10
/* 800BABF8 000B7B58  4E 80 00 20 */	blr

.global "_getGraphicLightId<Q24rstl24ncrc_ptr<12CParticleGen>,30TToken<20CElectricDescription>>__FRCQ24rstl24ncrc_ptr<12CParticleGen>RC30TToken<20CElectricDescription>"
"_getGraphicLightId<Q24rstl24ncrc_ptr<12CParticleGen>,30TToken<20CElectricDescription>>__FRCQ24rstl24ncrc_ptr<12CParticleGen>RC30TToken<20CElectricDescription>":
/* 800BABFC 000B7B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BAC00 000B7B60  7C 08 02 A6 */	mflr r0
/* 800BAC04 000B7B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BAC08 000B7B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BAC0C 000B7B6C  7C 9F 23 78 */	mr r31, r4
/* 800BAC10 000B7B70  80 63 00 00 */	lwz r3, 0(r3)
/* 800BAC14 000B7B74  80 63 00 00 */	lwz r3, 0(r3)
/* 800BAC18 000B7B78  81 83 00 00 */	lwz r12, 0(r3)
/* 800BAC1C 000B7B7C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 800BAC20 000B7B80  7D 89 03 A6 */	mtctr r12
/* 800BAC24 000B7B84  4E 80 04 21 */	bctrl
/* 800BAC28 000B7B88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BAC2C 000B7B8C  41 82 00 10 */	beq lbl_800BAC3C
/* 800BAC30 000B7B90  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BAC34 000B7B94  80 63 00 08 */	lwz r3, 8(r3)
/* 800BAC38 000B7B98  48 00 00 08 */	b lbl_800BAC40
lbl_800BAC3C:
/* 800BAC3C 000B7B9C  38 60 FF FF */	li r3, -1
lbl_800BAC40:
/* 800BAC40 000B7BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BAC44 000B7BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BAC48 000B7BA8  7C 08 03 A6 */	mtlr r0
/* 800BAC4C 000B7BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BAC50 000B7BB0  4E 80 00 20 */	blr

.global "_getGraphicLightId<Q24rstl24ncrc_ptr<12CParticleGen>,25TToken<15CGenDescription>>__FRCQ24rstl24ncrc_ptr<12CParticleGen>RC25TToken<15CGenDescription>"
"_getGraphicLightId<Q24rstl24ncrc_ptr<12CParticleGen>,25TToken<15CGenDescription>>__FRCQ24rstl24ncrc_ptr<12CParticleGen>RC25TToken<15CGenDescription>":
/* 800BAC54 000B7BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BAC58 000B7BB8  7C 08 02 A6 */	mflr r0
/* 800BAC5C 000B7BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BAC60 000B7BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BAC64 000B7BC4  7C 9F 23 78 */	mr r31, r4
/* 800BAC68 000B7BC8  80 63 00 00 */	lwz r3, 0(r3)
/* 800BAC6C 000B7BCC  80 63 00 00 */	lwz r3, 0(r3)
/* 800BAC70 000B7BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 800BAC74 000B7BD4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 800BAC78 000B7BD8  7D 89 03 A6 */	mtctr r12
/* 800BAC7C 000B7BDC  4E 80 04 21 */	bctrl
/* 800BAC80 000B7BE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BAC84 000B7BE4  41 82 00 10 */	beq lbl_800BAC94
/* 800BAC88 000B7BE8  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BAC8C 000B7BEC  80 63 00 08 */	lwz r3, 8(r3)
/* 800BAC90 000B7BF0  48 00 00 08 */	b lbl_800BAC98
lbl_800BAC94:
/* 800BAC94 000B7BF4  38 60 FF FF */	li r3, -1
lbl_800BAC98:
/* 800BAC98 000B7BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BAC9C 000B7BFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BACA0 000B7C00  7C 08 03 A6 */	mtlr r0
/* 800BACA4 000B7C04  38 21 00 10 */	addi r1, r1, 0x10
/* 800BACA8 000B7C08  4E 80 00 20 */	blr

.global sub_800bacac
sub_800bacac:
/* 800BACAC 000B7C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BACB0 000B7C10  7C 08 02 A6 */	mflr r0
/* 800BACB4 000B7C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BACB8 000B7C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BACBC 000B7C1C  7C 9F 23 78 */	mr r31, r4
/* 800BACC0 000B7C20  93 C1 00 08 */	stw r30, 8(r1)
/* 800BACC4 000B7C24  7C 7E 1B 78 */	mr r30, r3
/* 800BACC8 000B7C28  80 84 00 00 */	lwz r4, 0(r4)
/* 800BACCC 000B7C2C  28 04 00 00 */	cmplwi r4, 0
/* 800BACD0 000B7C30  41 82 00 08 */	beq lbl_800BACD8
/* 800BACD4 000B7C34  4B FF FF D9 */	bl sub_800bacac
lbl_800BACD8:
/* 800BACD8 000B7C38  80 9F 00 04 */	lwz r4, 4(r31)
/* 800BACDC 000B7C3C  28 04 00 00 */	cmplwi r4, 0
/* 800BACE0 000B7C40  41 82 00 0C */	beq lbl_800BACEC
/* 800BACE4 000B7C44  7F C3 F3 78 */	mr r3, r30
/* 800BACE8 000B7C48  4B FF FF C5 */	bl sub_800bacac
lbl_800BACEC:
/* 800BACEC 000B7C4C  28 1F 00 00 */	cmplwi r31, 0
/* 800BACF0 000B7C50  41 82 00 18 */	beq lbl_800BAD08
/* 800BACF4 000B7C54  34 1F 00 10 */	addic. r0, r31, 0x10
/* 800BACF8 000B7C58  41 82 00 10 */	beq lbl_800BAD08
/* 800BACFC 000B7C5C  34 7F 00 14 */	addic. r3, r31, 0x14
/* 800BAD00 000B7C60  41 82 00 08 */	beq lbl_800BAD08
/* 800BAD04 000B7C64  48 00 0A E1 */	bl sub_800bb7e4
lbl_800BAD08:
/* 800BAD08 000B7C68  28 1F 00 00 */	cmplwi r31, 0
/* 800BAD0C 000B7C6C  41 82 00 0C */	beq lbl_800BAD18
/* 800BAD10 000B7C70  7F E3 FB 78 */	mr r3, r31
/* 800BAD14 000B7C74  48 25 AC 1D */	bl Free__7CMemoryFPCv
lbl_800BAD18:
/* 800BAD18 000B7C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BAD1C 000B7C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BAD20 000B7C80  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BAD24 000B7C84  7C 08 03 A6 */	mtlr r0
/* 800BAD28 000B7C88  38 21 00 10 */	addi r1, r1, 0x10
/* 800BAD2C 000B7C8C  4E 80 00 20 */	blr

.global sub_800bad30
sub_800bad30:
/* 800BAD30 000B7C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BAD34 000B7C94  7C 08 02 A6 */	mflr r0
/* 800BAD38 000B7C98  28 05 00 00 */	cmplwi r5, 0
/* 800BAD3C 000B7C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BAD40 000B7CA0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800BAD44 000B7CA4  7C 7C 1B 78 */	mr r28, r3
/* 800BAD48 000B7CA8  7C 9D 23 78 */	mr r29, r4
/* 800BAD4C 000B7CAC  7C DE 33 78 */	mr r30, r6
/* 800BAD50 000B7CB0  40 82 00 98 */	bne lbl_800BADE8
/* 800BAD54 000B7CB4  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BAD58 000B7CB8  38 60 00 18 */	li r3, 0x18
/* 800BAD5C 000B7CBC  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BAD60 000B7CC0  38 A0 00 00 */	li r5, 0
/* 800BAD64 000B7CC4  48 25 AA B5 */	bl __nwa__FUlPCcPCc
/* 800BAD68 000B7CC8  28 03 00 00 */	cmplwi r3, 0
/* 800BAD6C 000B7CCC  41 82 00 40 */	beq lbl_800BADAC
/* 800BAD70 000B7CD0  38 00 00 00 */	li r0, 0
/* 800BAD74 000B7CD4  34 83 00 10 */	addic. r4, r3, 0x10
/* 800BAD78 000B7CD8  90 03 00 00 */	stw r0, 0(r3)
/* 800BAD7C 000B7CDC  90 03 00 04 */	stw r0, 4(r3)
/* 800BAD80 000B7CE0  90 03 00 08 */	stw r0, 8(r3)
/* 800BAD84 000B7CE4  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BAD88 000B7CE8  41 82 00 24 */	beq lbl_800BADAC
/* 800BAD8C 000B7CEC  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BAD90 000B7CF0  90 04 00 00 */	stw r0, 0(r4)
/* 800BAD94 000B7CF4  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BAD98 000B7CF8  90 04 00 04 */	stw r0, 4(r4)
/* 800BAD9C 000B7CFC  80 A4 00 04 */	lwz r5, 4(r4)
/* 800BADA0 000B7D00  80 85 00 04 */	lwz r4, 4(r5)
/* 800BADA4 000B7D04  38 04 00 01 */	addi r0, r4, 1
/* 800BADA8 000B7D08  90 05 00 04 */	stw r0, 4(r5)
lbl_800BADAC:
/* 800BADAC 000B7D0C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 800BADB0 000B7D10  38 1D 00 08 */	addi r0, r29, 8
/* 800BADB4 000B7D14  80 7D 00 04 */	lwz r3, 4(r29)
/* 800BADB8 000B7D18  38 63 00 01 */	addi r3, r3, 1
/* 800BADBC 000B7D1C  90 7D 00 04 */	stw r3, 4(r29)
/* 800BADC0 000B7D20  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BADC4 000B7D24  90 7D 00 08 */	stw r3, 8(r29)
/* 800BADC8 000B7D28  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BADCC 000B7D2C  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800BADD0 000B7D30  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BADD4 000B7D34  90 7C 00 00 */	stw r3, 0(r28)
/* 800BADD8 000B7D38  90 1C 00 04 */	stw r0, 4(r28)
/* 800BADDC 000B7D3C  88 0D 86 69 */	lbz r0, lbl_805A7229@sda21(r13)
/* 800BADE0 000B7D40  98 1C 00 08 */	stb r0, 8(r28)
/* 800BADE4 000B7D44  48 00 01 9C */	b lbl_800BAF80
lbl_800BADE8:
/* 800BADE8 000B7D48  7C BF 2B 78 */	mr r31, r5
/* 800BADEC 000B7D4C  3B 60 00 00 */	li r27, 0
/* 800BADF0 000B7D50  48 00 01 5C */	b lbl_800BAF4C
lbl_800BADF4:
/* 800BADF4 000B7D54  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BADF8 000B7D58  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 800BADFC 000B7D5C  7C 80 1A 78 */	xor r0, r4, r3
/* 800BAE00 000B7D60  7C 00 00 34 */	cntlzw r0, r0
/* 800BAE04 000B7D64  7C 80 00 30 */	slw r0, r4, r0
/* 800BAE08 000B7D68  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 800BAE0C 000B7D6C  40 82 00 24 */	bne lbl_800BAE30
/* 800BAE10 000B7D70  7C 04 18 40 */	cmplw r4, r3
/* 800BAE14 000B7D74  41 80 00 1C */	blt lbl_800BAE30
/* 800BAE18 000B7D78  93 FC 00 00 */	stw r31, 0(r28)
/* 800BAE1C 000B7D7C  38 1D 00 08 */	addi r0, r29, 8
/* 800BAE20 000B7D80  90 1C 00 04 */	stw r0, 4(r28)
/* 800BAE24 000B7D84  88 0D 86 6A */	lbz r0, lbl_805A722A@sda21(r13)
/* 800BAE28 000B7D88  98 1C 00 08 */	stb r0, 8(r28)
/* 800BAE2C 000B7D8C  48 00 01 54 */	b lbl_800BAF80
lbl_800BAE30:
/* 800BAE30 000B7D90  28 00 00 00 */	cmplwi r0, 0
/* 800BAE34 000B7D94  41 82 00 90 */	beq lbl_800BAEC4
/* 800BAE38 000B7D98  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BAE3C 000B7D9C  28 00 00 00 */	cmplwi r0, 0
/* 800BAE40 000B7DA0  40 82 00 7C */	bne lbl_800BAEBC
/* 800BAE44 000B7DA4  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BAE48 000B7DA8  38 60 00 18 */	li r3, 0x18
/* 800BAE4C 000B7DAC  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BAE50 000B7DB0  38 A0 00 00 */	li r5, 0
/* 800BAE54 000B7DB4  48 25 A9 C5 */	bl __nwa__FUlPCcPCc
/* 800BAE58 000B7DB8  28 03 00 00 */	cmplwi r3, 0
/* 800BAE5C 000B7DBC  41 82 00 44 */	beq lbl_800BAEA0
/* 800BAE60 000B7DC0  38 80 00 00 */	li r4, 0
/* 800BAE64 000B7DC4  34 A3 00 10 */	addic. r5, r3, 0x10
/* 800BAE68 000B7DC8  90 83 00 00 */	stw r4, 0(r3)
/* 800BAE6C 000B7DCC  38 00 00 01 */	li r0, 1
/* 800BAE70 000B7DD0  90 83 00 04 */	stw r4, 4(r3)
/* 800BAE74 000B7DD4  93 E3 00 08 */	stw r31, 8(r3)
/* 800BAE78 000B7DD8  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BAE7C 000B7DDC  41 82 00 24 */	beq lbl_800BAEA0
/* 800BAE80 000B7DE0  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BAE84 000B7DE4  90 05 00 00 */	stw r0, 0(r5)
/* 800BAE88 000B7DE8  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BAE8C 000B7DEC  90 05 00 04 */	stw r0, 4(r5)
/* 800BAE90 000B7DF0  80 A5 00 04 */	lwz r5, 4(r5)
/* 800BAE94 000B7DF4  80 85 00 04 */	lwz r4, 4(r5)
/* 800BAE98 000B7DF8  38 04 00 01 */	addi r0, r4, 1
/* 800BAE9C 000B7DFC  90 05 00 04 */	stw r0, 4(r5)
lbl_800BAEA0:
/* 800BAEA0 000B7E00  90 7F 00 00 */	stw r3, 0(r31)
/* 800BAEA4 000B7E04  7C 7B 1B 78 */	mr r27, r3
/* 800BAEA8 000B7E08  80 1D 00 08 */	lwz r0, 8(r29)
/* 800BAEAC 000B7E0C  7C 1F 00 40 */	cmplw r31, r0
/* 800BAEB0 000B7E10  40 82 00 9C */	bne lbl_800BAF4C
/* 800BAEB4 000B7E14  90 7D 00 08 */	stw r3, 8(r29)
/* 800BAEB8 000B7E18  48 00 00 94 */	b lbl_800BAF4C
lbl_800BAEBC:
/* 800BAEBC 000B7E1C  7C 1F 03 78 */	mr r31, r0
/* 800BAEC0 000B7E20  48 00 00 8C */	b lbl_800BAF4C
lbl_800BAEC4:
/* 800BAEC4 000B7E24  80 1F 00 04 */	lwz r0, 4(r31)
/* 800BAEC8 000B7E28  28 00 00 00 */	cmplwi r0, 0
/* 800BAECC 000B7E2C  40 82 00 7C */	bne lbl_800BAF48
/* 800BAED0 000B7E30  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BAED4 000B7E34  38 60 00 18 */	li r3, 0x18
/* 800BAED8 000B7E38  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BAEDC 000B7E3C  38 A0 00 00 */	li r5, 0
/* 800BAEE0 000B7E40  48 25 A9 39 */	bl __nwa__FUlPCcPCc
/* 800BAEE4 000B7E44  28 03 00 00 */	cmplwi r3, 0
/* 800BAEE8 000B7E48  41 82 00 44 */	beq lbl_800BAF2C
/* 800BAEEC 000B7E4C  38 80 00 00 */	li r4, 0
/* 800BAEF0 000B7E50  34 A3 00 10 */	addic. r5, r3, 0x10
/* 800BAEF4 000B7E54  90 83 00 00 */	stw r4, 0(r3)
/* 800BAEF8 000B7E58  38 00 00 01 */	li r0, 1
/* 800BAEFC 000B7E5C  90 83 00 04 */	stw r4, 4(r3)
/* 800BAF00 000B7E60  93 E3 00 08 */	stw r31, 8(r3)
/* 800BAF04 000B7E64  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BAF08 000B7E68  41 82 00 24 */	beq lbl_800BAF2C
/* 800BAF0C 000B7E6C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BAF10 000B7E70  90 05 00 00 */	stw r0, 0(r5)
/* 800BAF14 000B7E74  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BAF18 000B7E78  90 05 00 04 */	stw r0, 4(r5)
/* 800BAF1C 000B7E7C  80 A5 00 04 */	lwz r5, 4(r5)
/* 800BAF20 000B7E80  80 85 00 04 */	lwz r4, 4(r5)
/* 800BAF24 000B7E84  38 04 00 01 */	addi r0, r4, 1
/* 800BAF28 000B7E88  90 05 00 04 */	stw r0, 4(r5)
lbl_800BAF2C:
/* 800BAF2C 000B7E8C  90 7F 00 04 */	stw r3, 4(r31)
/* 800BAF30 000B7E90  7C 7B 1B 78 */	mr r27, r3
/* 800BAF34 000B7E94  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800BAF38 000B7E98  7C 1F 00 40 */	cmplw r31, r0
/* 800BAF3C 000B7E9C  40 82 00 10 */	bne lbl_800BAF4C
/* 800BAF40 000B7EA0  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800BAF44 000B7EA4  48 00 00 08 */	b lbl_800BAF4C
lbl_800BAF48:
/* 800BAF48 000B7EA8  7C 1F 03 78 */	mr r31, r0
lbl_800BAF4C:
/* 800BAF4C 000B7EAC  28 1B 00 00 */	cmplwi r27, 0
/* 800BAF50 000B7EB0  41 82 FE A4 */	beq lbl_800BADF4
/* 800BAF54 000B7EB4  80 BD 00 04 */	lwz r5, 4(r29)
/* 800BAF58 000B7EB8  7F 64 DB 78 */	mr r4, r27
/* 800BAF5C 000B7EBC  38 7D 00 08 */	addi r3, r29, 8
/* 800BAF60 000B7EC0  38 05 00 01 */	addi r0, r5, 1
/* 800BAF64 000B7EC4  90 1D 00 04 */	stw r0, 4(r29)
/* 800BAF68 000B7EC8  48 28 1B 31 */	bl rbtree_rebalance__4rstlFPvPv
/* 800BAF6C 000B7ECC  93 7C 00 00 */	stw r27, 0(r28)
/* 800BAF70 000B7ED0  38 1D 00 08 */	addi r0, r29, 8
/* 800BAF74 000B7ED4  90 1C 00 04 */	stw r0, 4(r28)
/* 800BAF78 000B7ED8  88 0D 86 6B */	lbz r0, lbl_805A722B@sda21(r13)
/* 800BAF7C 000B7EDC  98 1C 00 08 */	stb r0, 8(r28)
lbl_800BAF80:
/* 800BAF80 000B7EE0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800BAF84 000B7EE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BAF88 000B7EE8  7C 08 03 A6 */	mtlr r0
/* 800BAF8C 000B7EEC  38 21 00 20 */	addi r1, r1, 0x20
/* 800BAF90 000B7EF0  4E 80 00 20 */	blr

.global sub_800baf94
sub_800baf94:
/* 800BAF94 000B7EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BAF98 000B7EF8  7C 08 02 A6 */	mflr r0
/* 800BAF9C 000B7EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BAFA0 000B7F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BAFA4 000B7F04  7C 9F 23 78 */	mr r31, r4
/* 800BAFA8 000B7F08  93 C1 00 08 */	stw r30, 8(r1)
/* 800BAFAC 000B7F0C  7C 7E 1B 78 */	mr r30, r3
/* 800BAFB0 000B7F10  80 84 00 00 */	lwz r4, 0(r4)
/* 800BAFB4 000B7F14  28 04 00 00 */	cmplwi r4, 0
/* 800BAFB8 000B7F18  41 82 00 08 */	beq lbl_800BAFC0
/* 800BAFBC 000B7F1C  4B FF FF D9 */	bl sub_800baf94
lbl_800BAFC0:
/* 800BAFC0 000B7F20  80 9F 00 04 */	lwz r4, 4(r31)
/* 800BAFC4 000B7F24  28 04 00 00 */	cmplwi r4, 0
/* 800BAFC8 000B7F28  41 82 00 0C */	beq lbl_800BAFD4
/* 800BAFCC 000B7F2C  7F C3 F3 78 */	mr r3, r30
/* 800BAFD0 000B7F30  4B FF FF C5 */	bl sub_800baf94
lbl_800BAFD4:
/* 800BAFD4 000B7F34  28 1F 00 00 */	cmplwi r31, 0
/* 800BAFD8 000B7F38  41 82 00 18 */	beq lbl_800BAFF0
/* 800BAFDC 000B7F3C  34 1F 00 10 */	addic. r0, r31, 0x10
/* 800BAFE0 000B7F40  41 82 00 10 */	beq lbl_800BAFF0
/* 800BAFE4 000B7F44  34 7F 00 14 */	addic. r3, r31, 0x14
/* 800BAFE8 000B7F48  41 82 00 08 */	beq lbl_800BAFF0
/* 800BAFEC 000B7F4C  48 00 08 75 */	bl sub_800bb860
lbl_800BAFF0:
/* 800BAFF0 000B7F50  28 1F 00 00 */	cmplwi r31, 0
/* 800BAFF4 000B7F54  41 82 00 0C */	beq lbl_800BB000
/* 800BAFF8 000B7F58  7F E3 FB 78 */	mr r3, r31
/* 800BAFFC 000B7F5C  48 25 A9 35 */	bl Free__7CMemoryFPCv
lbl_800BB000:
/* 800BB000 000B7F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB004 000B7F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB008 000B7F68  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB00C 000B7F6C  7C 08 03 A6 */	mtlr r0
/* 800BB010 000B7F70  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB014 000B7F74  4E 80 00 20 */	blr

.global sub_800bb018
sub_800bb018:
/* 800BB018 000B7F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BB01C 000B7F7C  7C 08 02 A6 */	mflr r0
/* 800BB020 000B7F80  28 05 00 00 */	cmplwi r5, 0
/* 800BB024 000B7F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BB028 000B7F88  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800BB02C 000B7F8C  7C 7C 1B 78 */	mr r28, r3
/* 800BB030 000B7F90  7C 9D 23 78 */	mr r29, r4
/* 800BB034 000B7F94  7C DE 33 78 */	mr r30, r6
/* 800BB038 000B7F98  40 82 00 98 */	bne lbl_800BB0D0
/* 800BB03C 000B7F9C  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB040 000B7FA0  38 60 00 18 */	li r3, 0x18
/* 800BB044 000B7FA4  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB048 000B7FA8  38 A0 00 00 */	li r5, 0
/* 800BB04C 000B7FAC  48 25 A7 CD */	bl __nwa__FUlPCcPCc
/* 800BB050 000B7FB0  28 03 00 00 */	cmplwi r3, 0
/* 800BB054 000B7FB4  41 82 00 40 */	beq lbl_800BB094
/* 800BB058 000B7FB8  38 00 00 00 */	li r0, 0
/* 800BB05C 000B7FBC  34 83 00 10 */	addic. r4, r3, 0x10
/* 800BB060 000B7FC0  90 03 00 00 */	stw r0, 0(r3)
/* 800BB064 000B7FC4  90 03 00 04 */	stw r0, 4(r3)
/* 800BB068 000B7FC8  90 03 00 08 */	stw r0, 8(r3)
/* 800BB06C 000B7FCC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BB070 000B7FD0  41 82 00 24 */	beq lbl_800BB094
/* 800BB074 000B7FD4  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BB078 000B7FD8  90 04 00 00 */	stw r0, 0(r4)
/* 800BB07C 000B7FDC  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BB080 000B7FE0  90 04 00 04 */	stw r0, 4(r4)
/* 800BB084 000B7FE4  80 A4 00 04 */	lwz r5, 4(r4)
/* 800BB088 000B7FE8  80 85 00 04 */	lwz r4, 4(r5)
/* 800BB08C 000B7FEC  38 04 00 01 */	addi r0, r4, 1
/* 800BB090 000B7FF0  90 05 00 04 */	stw r0, 4(r5)
lbl_800BB094:
/* 800BB094 000B7FF4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 800BB098 000B7FF8  38 1D 00 08 */	addi r0, r29, 8
/* 800BB09C 000B7FFC  80 7D 00 04 */	lwz r3, 4(r29)
/* 800BB0A0 000B8000  38 63 00 01 */	addi r3, r3, 1
/* 800BB0A4 000B8004  90 7D 00 04 */	stw r3, 4(r29)
/* 800BB0A8 000B8008  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB0AC 000B800C  90 7D 00 08 */	stw r3, 8(r29)
/* 800BB0B0 000B8010  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB0B4 000B8014  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800BB0B8 000B8018  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB0BC 000B801C  90 7C 00 00 */	stw r3, 0(r28)
/* 800BB0C0 000B8020  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB0C4 000B8024  88 0D 86 66 */	lbz r0, lbl_805A7226@sda21(r13)
/* 800BB0C8 000B8028  98 1C 00 08 */	stb r0, 8(r28)
/* 800BB0CC 000B802C  48 00 01 9C */	b lbl_800BB268
lbl_800BB0D0:
/* 800BB0D0 000B8030  7C BF 2B 78 */	mr r31, r5
/* 800BB0D4 000B8034  3B 60 00 00 */	li r27, 0
/* 800BB0D8 000B8038  48 00 01 5C */	b lbl_800BB234
lbl_800BB0DC:
/* 800BB0DC 000B803C  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB0E0 000B8040  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 800BB0E4 000B8044  7C 80 1A 78 */	xor r0, r4, r3
/* 800BB0E8 000B8048  7C 00 00 34 */	cntlzw r0, r0
/* 800BB0EC 000B804C  7C 80 00 30 */	slw r0, r4, r0
/* 800BB0F0 000B8050  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 800BB0F4 000B8054  40 82 00 24 */	bne lbl_800BB118
/* 800BB0F8 000B8058  7C 04 18 40 */	cmplw r4, r3
/* 800BB0FC 000B805C  41 80 00 1C */	blt lbl_800BB118
/* 800BB100 000B8060  93 FC 00 00 */	stw r31, 0(r28)
/* 800BB104 000B8064  38 1D 00 08 */	addi r0, r29, 8
/* 800BB108 000B8068  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB10C 000B806C  88 0D 86 67 */	lbz r0, lbl_805A7227@sda21(r13)
/* 800BB110 000B8070  98 1C 00 08 */	stb r0, 8(r28)
/* 800BB114 000B8074  48 00 01 54 */	b lbl_800BB268
lbl_800BB118:
/* 800BB118 000B8078  28 00 00 00 */	cmplwi r0, 0
/* 800BB11C 000B807C  41 82 00 90 */	beq lbl_800BB1AC
/* 800BB120 000B8080  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BB124 000B8084  28 00 00 00 */	cmplwi r0, 0
/* 800BB128 000B8088  40 82 00 7C */	bne lbl_800BB1A4
/* 800BB12C 000B808C  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB130 000B8090  38 60 00 18 */	li r3, 0x18
/* 800BB134 000B8094  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB138 000B8098  38 A0 00 00 */	li r5, 0
/* 800BB13C 000B809C  48 25 A6 DD */	bl __nwa__FUlPCcPCc
/* 800BB140 000B80A0  28 03 00 00 */	cmplwi r3, 0
/* 800BB144 000B80A4  41 82 00 44 */	beq lbl_800BB188
/* 800BB148 000B80A8  38 80 00 00 */	li r4, 0
/* 800BB14C 000B80AC  34 A3 00 10 */	addic. r5, r3, 0x10
/* 800BB150 000B80B0  90 83 00 00 */	stw r4, 0(r3)
/* 800BB154 000B80B4  38 00 00 01 */	li r0, 1
/* 800BB158 000B80B8  90 83 00 04 */	stw r4, 4(r3)
/* 800BB15C 000B80BC  93 E3 00 08 */	stw r31, 8(r3)
/* 800BB160 000B80C0  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BB164 000B80C4  41 82 00 24 */	beq lbl_800BB188
/* 800BB168 000B80C8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BB16C 000B80CC  90 05 00 00 */	stw r0, 0(r5)
/* 800BB170 000B80D0  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BB174 000B80D4  90 05 00 04 */	stw r0, 4(r5)
/* 800BB178 000B80D8  80 A5 00 04 */	lwz r5, 4(r5)
/* 800BB17C 000B80DC  80 85 00 04 */	lwz r4, 4(r5)
/* 800BB180 000B80E0  38 04 00 01 */	addi r0, r4, 1
/* 800BB184 000B80E4  90 05 00 04 */	stw r0, 4(r5)
lbl_800BB188:
/* 800BB188 000B80E8  90 7F 00 00 */	stw r3, 0(r31)
/* 800BB18C 000B80EC  7C 7B 1B 78 */	mr r27, r3
/* 800BB190 000B80F0  80 1D 00 08 */	lwz r0, 8(r29)
/* 800BB194 000B80F4  7C 1F 00 40 */	cmplw r31, r0
/* 800BB198 000B80F8  40 82 00 9C */	bne lbl_800BB234
/* 800BB19C 000B80FC  90 7D 00 08 */	stw r3, 8(r29)
/* 800BB1A0 000B8100  48 00 00 94 */	b lbl_800BB234
lbl_800BB1A4:
/* 800BB1A4 000B8104  7C 1F 03 78 */	mr r31, r0
/* 800BB1A8 000B8108  48 00 00 8C */	b lbl_800BB234
lbl_800BB1AC:
/* 800BB1AC 000B810C  80 1F 00 04 */	lwz r0, 4(r31)
/* 800BB1B0 000B8110  28 00 00 00 */	cmplwi r0, 0
/* 800BB1B4 000B8114  40 82 00 7C */	bne lbl_800BB230
/* 800BB1B8 000B8118  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB1BC 000B811C  38 60 00 18 */	li r3, 0x18
/* 800BB1C0 000B8120  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB1C4 000B8124  38 A0 00 00 */	li r5, 0
/* 800BB1C8 000B8128  48 25 A6 51 */	bl __nwa__FUlPCcPCc
/* 800BB1CC 000B812C  28 03 00 00 */	cmplwi r3, 0
/* 800BB1D0 000B8130  41 82 00 44 */	beq lbl_800BB214
/* 800BB1D4 000B8134  38 80 00 00 */	li r4, 0
/* 800BB1D8 000B8138  34 A3 00 10 */	addic. r5, r3, 0x10
/* 800BB1DC 000B813C  90 83 00 00 */	stw r4, 0(r3)
/* 800BB1E0 000B8140  38 00 00 01 */	li r0, 1
/* 800BB1E4 000B8144  90 83 00 04 */	stw r4, 4(r3)
/* 800BB1E8 000B8148  93 E3 00 08 */	stw r31, 8(r3)
/* 800BB1EC 000B814C  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BB1F0 000B8150  41 82 00 24 */	beq lbl_800BB214
/* 800BB1F4 000B8154  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BB1F8 000B8158  90 05 00 00 */	stw r0, 0(r5)
/* 800BB1FC 000B815C  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BB200 000B8160  90 05 00 04 */	stw r0, 4(r5)
/* 800BB204 000B8164  80 A5 00 04 */	lwz r5, 4(r5)
/* 800BB208 000B8168  80 85 00 04 */	lwz r4, 4(r5)
/* 800BB20C 000B816C  38 04 00 01 */	addi r0, r4, 1
/* 800BB210 000B8170  90 05 00 04 */	stw r0, 4(r5)
lbl_800BB214:
/* 800BB214 000B8174  90 7F 00 04 */	stw r3, 4(r31)
/* 800BB218 000B8178  7C 7B 1B 78 */	mr r27, r3
/* 800BB21C 000B817C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800BB220 000B8180  7C 1F 00 40 */	cmplw r31, r0
/* 800BB224 000B8184  40 82 00 10 */	bne lbl_800BB234
/* 800BB228 000B8188  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800BB22C 000B818C  48 00 00 08 */	b lbl_800BB234
lbl_800BB230:
/* 800BB230 000B8190  7C 1F 03 78 */	mr r31, r0
lbl_800BB234:
/* 800BB234 000B8194  28 1B 00 00 */	cmplwi r27, 0
/* 800BB238 000B8198  41 82 FE A4 */	beq lbl_800BB0DC
/* 800BB23C 000B819C  80 BD 00 04 */	lwz r5, 4(r29)
/* 800BB240 000B81A0  7F 64 DB 78 */	mr r4, r27
/* 800BB244 000B81A4  38 7D 00 08 */	addi r3, r29, 8
/* 800BB248 000B81A8  38 05 00 01 */	addi r0, r5, 1
/* 800BB24C 000B81AC  90 1D 00 04 */	stw r0, 4(r29)
/* 800BB250 000B81B0  48 28 18 49 */	bl rbtree_rebalance__4rstlFPvPv
/* 800BB254 000B81B4  93 7C 00 00 */	stw r27, 0(r28)
/* 800BB258 000B81B8  38 1D 00 08 */	addi r0, r29, 8
/* 800BB25C 000B81BC  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB260 000B81C0  88 0D 86 68 */	lbz r0, lbl_805A7228@sda21(r13)
/* 800BB264 000B81C4  98 1C 00 08 */	stb r0, 8(r28)
lbl_800BB268:
/* 800BB268 000B81C8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800BB26C 000B81CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BB270 000B81D0  7C 08 03 A6 */	mtlr r0
/* 800BB274 000B81D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800BB278 000B81D8  4E 80 00 20 */	blr

.global sub_800bb27c
sub_800bb27c:
/* 800BB27C 000B81DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BB280 000B81E0  7C 08 02 A6 */	mflr r0
/* 800BB284 000B81E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BB288 000B81E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BB28C 000B81EC  7C 9F 23 78 */	mr r31, r4
/* 800BB290 000B81F0  93 C1 00 08 */	stw r30, 8(r1)
/* 800BB294 000B81F4  7C 7E 1B 78 */	mr r30, r3
/* 800BB298 000B81F8  80 84 00 00 */	lwz r4, 0(r4)
/* 800BB29C 000B81FC  28 04 00 00 */	cmplwi r4, 0
/* 800BB2A0 000B8200  41 82 00 08 */	beq lbl_800BB2A8
/* 800BB2A4 000B8204  4B FF FF D9 */	bl sub_800bb27c
lbl_800BB2A8:
/* 800BB2A8 000B8208  80 9F 00 04 */	lwz r4, 4(r31)
/* 800BB2AC 000B820C  28 04 00 00 */	cmplwi r4, 0
/* 800BB2B0 000B8210  41 82 00 0C */	beq lbl_800BB2BC
/* 800BB2B4 000B8214  7F C3 F3 78 */	mr r3, r30
/* 800BB2B8 000B8218  4B FF FF C5 */	bl sub_800bb27c
lbl_800BB2BC:
/* 800BB2BC 000B821C  28 1F 00 00 */	cmplwi r31, 0
/* 800BB2C0 000B8220  41 82 00 18 */	beq lbl_800BB2D8
/* 800BB2C4 000B8224  34 1F 00 10 */	addic. r0, r31, 0x10
/* 800BB2C8 000B8228  41 82 00 10 */	beq lbl_800BB2D8
/* 800BB2CC 000B822C  34 7F 00 14 */	addic. r3, r31, 0x14
/* 800BB2D0 000B8230  41 82 00 08 */	beq lbl_800BB2D8
/* 800BB2D4 000B8234  48 00 06 09 */	bl sub_800bb8dc
lbl_800BB2D8:
/* 800BB2D8 000B8238  28 1F 00 00 */	cmplwi r31, 0
/* 800BB2DC 000B823C  41 82 00 0C */	beq lbl_800BB2E8
/* 800BB2E0 000B8240  7F E3 FB 78 */	mr r3, r31
/* 800BB2E4 000B8244  48 25 A6 4D */	bl Free__7CMemoryFPCv
lbl_800BB2E8:
/* 800BB2E8 000B8248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB2EC 000B824C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB2F0 000B8250  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB2F4 000B8254  7C 08 03 A6 */	mtlr r0
/* 800BB2F8 000B8258  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB2FC 000B825C  4E 80 00 20 */	blr

.global sub_800bb300
sub_800bb300:
/* 800BB300 000B8260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BB304 000B8264  7C 08 02 A6 */	mflr r0
/* 800BB308 000B8268  28 05 00 00 */	cmplwi r5, 0
/* 800BB30C 000B826C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BB310 000B8270  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 800BB314 000B8274  7C 7C 1B 78 */	mr r28, r3
/* 800BB318 000B8278  7C 9D 23 78 */	mr r29, r4
/* 800BB31C 000B827C  7C DE 33 78 */	mr r30, r6
/* 800BB320 000B8280  40 82 00 98 */	bne lbl_800BB3B8
/* 800BB324 000B8284  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB328 000B8288  38 60 00 18 */	li r3, 0x18
/* 800BB32C 000B828C  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB330 000B8290  38 A0 00 00 */	li r5, 0
/* 800BB334 000B8294  48 25 A4 E5 */	bl __nwa__FUlPCcPCc
/* 800BB338 000B8298  28 03 00 00 */	cmplwi r3, 0
/* 800BB33C 000B829C  41 82 00 40 */	beq lbl_800BB37C
/* 800BB340 000B82A0  38 00 00 00 */	li r0, 0
/* 800BB344 000B82A4  34 83 00 10 */	addic. r4, r3, 0x10
/* 800BB348 000B82A8  90 03 00 00 */	stw r0, 0(r3)
/* 800BB34C 000B82AC  90 03 00 04 */	stw r0, 4(r3)
/* 800BB350 000B82B0  90 03 00 08 */	stw r0, 8(r3)
/* 800BB354 000B82B4  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BB358 000B82B8  41 82 00 24 */	beq lbl_800BB37C
/* 800BB35C 000B82BC  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BB360 000B82C0  90 04 00 00 */	stw r0, 0(r4)
/* 800BB364 000B82C4  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BB368 000B82C8  90 04 00 04 */	stw r0, 4(r4)
/* 800BB36C 000B82CC  80 A4 00 04 */	lwz r5, 4(r4)
/* 800BB370 000B82D0  80 85 00 04 */	lwz r4, 4(r5)
/* 800BB374 000B82D4  38 04 00 01 */	addi r0, r4, 1
/* 800BB378 000B82D8  90 05 00 04 */	stw r0, 4(r5)
lbl_800BB37C:
/* 800BB37C 000B82DC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 800BB380 000B82E0  38 1D 00 08 */	addi r0, r29, 8
/* 800BB384 000B82E4  80 7D 00 04 */	lwz r3, 4(r29)
/* 800BB388 000B82E8  38 63 00 01 */	addi r3, r3, 1
/* 800BB38C 000B82EC  90 7D 00 04 */	stw r3, 4(r29)
/* 800BB390 000B82F0  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB394 000B82F4  90 7D 00 08 */	stw r3, 8(r29)
/* 800BB398 000B82F8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB39C 000B82FC  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800BB3A0 000B8300  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB3A4 000B8304  90 7C 00 00 */	stw r3, 0(r28)
/* 800BB3A8 000B8308  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB3AC 000B830C  88 0D 86 63 */	lbz r0, lbl_805A7223@sda21(r13)
/* 800BB3B0 000B8310  98 1C 00 08 */	stb r0, 8(r28)
/* 800BB3B4 000B8314  48 00 01 9C */	b lbl_800BB550
lbl_800BB3B8:
/* 800BB3B8 000B8318  7C BF 2B 78 */	mr r31, r5
/* 800BB3BC 000B831C  3B 60 00 00 */	li r27, 0
/* 800BB3C0 000B8320  48 00 01 5C */	b lbl_800BB51C
lbl_800BB3C4:
/* 800BB3C4 000B8324  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB3C8 000B8328  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 800BB3CC 000B832C  7C 80 1A 78 */	xor r0, r4, r3
/* 800BB3D0 000B8330  7C 00 00 34 */	cntlzw r0, r0
/* 800BB3D4 000B8334  7C 80 00 30 */	slw r0, r4, r0
/* 800BB3D8 000B8338  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 800BB3DC 000B833C  40 82 00 24 */	bne lbl_800BB400
/* 800BB3E0 000B8340  7C 04 18 40 */	cmplw r4, r3
/* 800BB3E4 000B8344  41 80 00 1C */	blt lbl_800BB400
/* 800BB3E8 000B8348  93 FC 00 00 */	stw r31, 0(r28)
/* 800BB3EC 000B834C  38 1D 00 08 */	addi r0, r29, 8
/* 800BB3F0 000B8350  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB3F4 000B8354  88 0D 86 64 */	lbz r0, lbl_805A7224@sda21(r13)
/* 800BB3F8 000B8358  98 1C 00 08 */	stb r0, 8(r28)
/* 800BB3FC 000B835C  48 00 01 54 */	b lbl_800BB550
lbl_800BB400:
/* 800BB400 000B8360  28 00 00 00 */	cmplwi r0, 0
/* 800BB404 000B8364  41 82 00 90 */	beq lbl_800BB494
/* 800BB408 000B8368  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BB40C 000B836C  28 00 00 00 */	cmplwi r0, 0
/* 800BB410 000B8370  40 82 00 7C */	bne lbl_800BB48C
/* 800BB414 000B8374  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB418 000B8378  38 60 00 18 */	li r3, 0x18
/* 800BB41C 000B837C  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB420 000B8380  38 A0 00 00 */	li r5, 0
/* 800BB424 000B8384  48 25 A3 F5 */	bl __nwa__FUlPCcPCc
/* 800BB428 000B8388  28 03 00 00 */	cmplwi r3, 0
/* 800BB42C 000B838C  41 82 00 44 */	beq lbl_800BB470
/* 800BB430 000B8390  38 80 00 00 */	li r4, 0
/* 800BB434 000B8394  34 A3 00 10 */	addic. r5, r3, 0x10
/* 800BB438 000B8398  90 83 00 00 */	stw r4, 0(r3)
/* 800BB43C 000B839C  38 00 00 01 */	li r0, 1
/* 800BB440 000B83A0  90 83 00 04 */	stw r4, 4(r3)
/* 800BB444 000B83A4  93 E3 00 08 */	stw r31, 8(r3)
/* 800BB448 000B83A8  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BB44C 000B83AC  41 82 00 24 */	beq lbl_800BB470
/* 800BB450 000B83B0  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BB454 000B83B4  90 05 00 00 */	stw r0, 0(r5)
/* 800BB458 000B83B8  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BB45C 000B83BC  90 05 00 04 */	stw r0, 4(r5)
/* 800BB460 000B83C0  80 A5 00 04 */	lwz r5, 4(r5)
/* 800BB464 000B83C4  80 85 00 04 */	lwz r4, 4(r5)
/* 800BB468 000B83C8  38 04 00 01 */	addi r0, r4, 1
/* 800BB46C 000B83CC  90 05 00 04 */	stw r0, 4(r5)
lbl_800BB470:
/* 800BB470 000B83D0  90 7F 00 00 */	stw r3, 0(r31)
/* 800BB474 000B83D4  7C 7B 1B 78 */	mr r27, r3
/* 800BB478 000B83D8  80 1D 00 08 */	lwz r0, 8(r29)
/* 800BB47C 000B83DC  7C 1F 00 40 */	cmplw r31, r0
/* 800BB480 000B83E0  40 82 00 9C */	bne lbl_800BB51C
/* 800BB484 000B83E4  90 7D 00 08 */	stw r3, 8(r29)
/* 800BB488 000B83E8  48 00 00 94 */	b lbl_800BB51C
lbl_800BB48C:
/* 800BB48C 000B83EC  7C 1F 03 78 */	mr r31, r0
/* 800BB490 000B83F0  48 00 00 8C */	b lbl_800BB51C
lbl_800BB494:
/* 800BB494 000B83F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 800BB498 000B83F8  28 00 00 00 */	cmplwi r0, 0
/* 800BB49C 000B83FC  40 82 00 7C */	bne lbl_800BB518
/* 800BB4A0 000B8400  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB4A4 000B8404  38 60 00 18 */	li r3, 0x18
/* 800BB4A8 000B8408  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB4AC 000B840C  38 A0 00 00 */	li r5, 0
/* 800BB4B0 000B8410  48 25 A3 69 */	bl __nwa__FUlPCcPCc
/* 800BB4B4 000B8414  28 03 00 00 */	cmplwi r3, 0
/* 800BB4B8 000B8418  41 82 00 44 */	beq lbl_800BB4FC
/* 800BB4BC 000B841C  38 80 00 00 */	li r4, 0
/* 800BB4C0 000B8420  34 A3 00 10 */	addic. r5, r3, 0x10
/* 800BB4C4 000B8424  90 83 00 00 */	stw r4, 0(r3)
/* 800BB4C8 000B8428  38 00 00 01 */	li r0, 1
/* 800BB4CC 000B842C  90 83 00 04 */	stw r4, 4(r3)
/* 800BB4D0 000B8430  93 E3 00 08 */	stw r31, 8(r3)
/* 800BB4D4 000B8434  90 03 00 0C */	stw r0, 0xc(r3)
/* 800BB4D8 000B8438  41 82 00 24 */	beq lbl_800BB4FC
/* 800BB4DC 000B843C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BB4E0 000B8440  90 05 00 00 */	stw r0, 0(r5)
/* 800BB4E4 000B8444  80 1E 00 04 */	lwz r0, 4(r30)
/* 800BB4E8 000B8448  90 05 00 04 */	stw r0, 4(r5)
/* 800BB4EC 000B844C  80 A5 00 04 */	lwz r5, 4(r5)
/* 800BB4F0 000B8450  80 85 00 04 */	lwz r4, 4(r5)
/* 800BB4F4 000B8454  38 04 00 01 */	addi r0, r4, 1
/* 800BB4F8 000B8458  90 05 00 04 */	stw r0, 4(r5)
lbl_800BB4FC:
/* 800BB4FC 000B845C  90 7F 00 04 */	stw r3, 4(r31)
/* 800BB500 000B8460  7C 7B 1B 78 */	mr r27, r3
/* 800BB504 000B8464  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800BB508 000B8468  7C 1F 00 40 */	cmplw r31, r0
/* 800BB50C 000B846C  40 82 00 10 */	bne lbl_800BB51C
/* 800BB510 000B8470  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800BB514 000B8474  48 00 00 08 */	b lbl_800BB51C
lbl_800BB518:
/* 800BB518 000B8478  7C 1F 03 78 */	mr r31, r0
lbl_800BB51C:
/* 800BB51C 000B847C  28 1B 00 00 */	cmplwi r27, 0
/* 800BB520 000B8480  41 82 FE A4 */	beq lbl_800BB3C4
/* 800BB524 000B8484  80 BD 00 04 */	lwz r5, 4(r29)
/* 800BB528 000B8488  7F 64 DB 78 */	mr r4, r27
/* 800BB52C 000B848C  38 7D 00 08 */	addi r3, r29, 8
/* 800BB530 000B8490  38 05 00 01 */	addi r0, r5, 1
/* 800BB534 000B8494  90 1D 00 04 */	stw r0, 4(r29)
/* 800BB538 000B8498  48 28 15 61 */	bl rbtree_rebalance__4rstlFPvPv
/* 800BB53C 000B849C  93 7C 00 00 */	stw r27, 0(r28)
/* 800BB540 000B84A0  38 1D 00 08 */	addi r0, r29, 8
/* 800BB544 000B84A4  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB548 000B84A8  88 0D 86 65 */	lbz r0, lbl_805A7225@sda21(r13)
/* 800BB54C 000B84AC  98 1C 00 08 */	stb r0, 8(r28)
lbl_800BB550:
/* 800BB550 000B84B0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 800BB554 000B84B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BB558 000B84B8  7C 08 03 A6 */	mtlr r0
/* 800BB55C 000B84BC  38 21 00 20 */	addi r1, r1, 0x20
/* 800BB560 000B84C0  4E 80 00 20 */	blr

.global sub_800bb564
sub_800bb564:
/* 800BB564 000B84C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BB568 000B84C8  7C 08 02 A6 */	mflr r0
/* 800BB56C 000B84CC  28 05 00 00 */	cmplwi r5, 0
/* 800BB570 000B84D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BB574 000B84D4  BF 41 00 08 */	stmw r26, 8(r1)
/* 800BB578 000B84D8  7C 7C 1B 78 */	mr r28, r3
/* 800BB57C 000B84DC  7C 9D 23 78 */	mr r29, r4
/* 800BB580 000B84E0  7C DE 33 78 */	mr r30, r6
/* 800BB584 000B84E4  40 82 00 9C */	bne lbl_800BB620
/* 800BB588 000B84E8  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB58C 000B84EC  38 60 00 28 */	li r3, 0x28
/* 800BB590 000B84F0  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB594 000B84F4  38 A0 00 00 */	li r5, 0
/* 800BB598 000B84F8  48 25 A2 81 */	bl __nwa__FUlPCcPCc
/* 800BB59C 000B84FC  7C 7B 1B 79 */	or. r27, r3, r3
/* 800BB5A0 000B8500  41 82 00 44 */	beq lbl_800BB5E4
/* 800BB5A4 000B8504  38 00 00 00 */	li r0, 0
/* 800BB5A8 000B8508  37 FB 00 10 */	addic. r31, r27, 0x10
/* 800BB5AC 000B850C  90 1B 00 00 */	stw r0, 0(r27)
/* 800BB5B0 000B8510  90 1B 00 04 */	stw r0, 4(r27)
/* 800BB5B4 000B8514  90 1B 00 08 */	stw r0, 8(r27)
/* 800BB5B8 000B8518  90 1B 00 0C */	stw r0, 0xc(r27)
/* 800BB5BC 000B851C  41 82 00 28 */	beq lbl_800BB5E4
/* 800BB5C0 000B8520  7F E3 FB 78 */	mr r3, r31
/* 800BB5C4 000B8524  7F C4 F3 78 */	mr r4, r30
/* 800BB5C8 000B8528  48 28 2B 99 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800BB5CC 000B852C  88 7E 00 10 */	lbz r3, 0x10(r30)
/* 800BB5D0 000B8530  38 00 00 00 */	li r0, 0
/* 800BB5D4 000B8534  98 7F 00 10 */	stb r3, 0x10(r31)
/* 800BB5D8 000B8538  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800BB5DC 000B853C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 800BB5E0 000B8540  98 1E 00 10 */	stb r0, 0x10(r30)
lbl_800BB5E4:
/* 800BB5E4 000B8544  93 7D 00 10 */	stw r27, 0x10(r29)
/* 800BB5E8 000B8548  38 1D 00 08 */	addi r0, r29, 8
/* 800BB5EC 000B854C  80 7D 00 04 */	lwz r3, 4(r29)
/* 800BB5F0 000B8550  38 63 00 01 */	addi r3, r3, 1
/* 800BB5F4 000B8554  90 7D 00 04 */	stw r3, 4(r29)
/* 800BB5F8 000B8558  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB5FC 000B855C  90 7D 00 08 */	stw r3, 8(r29)
/* 800BB600 000B8560  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB604 000B8564  90 7D 00 0C */	stw r3, 0xc(r29)
/* 800BB608 000B8568  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800BB60C 000B856C  90 7C 00 00 */	stw r3, 0(r28)
/* 800BB610 000B8570  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB614 000B8574  88 0D 86 60 */	lbz r0, lbl_805A7220@sda21(r13)
/* 800BB618 000B8578  98 1C 00 08 */	stb r0, 8(r28)
/* 800BB61C 000B857C  48 00 01 B4 */	b lbl_800BB7D0
lbl_800BB620:
/* 800BB620 000B8580  7C BF 2B 78 */	mr r31, r5
/* 800BB624 000B8584  3B 40 00 00 */	li r26, 0
/* 800BB628 000B8588  48 00 01 74 */	b lbl_800BB79C
lbl_800BB62C:
/* 800BB62C 000B858C  7F C4 F3 78 */	mr r4, r30
/* 800BB630 000B8590  38 7D 00 01 */	addi r3, r29, 1
/* 800BB634 000B8594  38 BF 00 10 */	addi r5, r31, 0x10
/* 800BB638 000B8598  4B F6 F0 F1 */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 800BB63C 000B859C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BB640 000B85A0  7C 7B 1B 78 */	mr r27, r3
/* 800BB644 000B85A4  40 82 00 34 */	bne lbl_800BB678
/* 800BB648 000B85A8  7F C5 F3 78 */	mr r5, r30
/* 800BB64C 000B85AC  38 7D 00 01 */	addi r3, r29, 1
/* 800BB650 000B85B0  38 9F 00 10 */	addi r4, r31, 0x10
/* 800BB654 000B85B4  4B F6 F0 D5 */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 800BB658 000B85B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BB65C 000B85BC  40 82 00 1C */	bne lbl_800BB678
/* 800BB660 000B85C0  93 FC 00 00 */	stw r31, 0(r28)
/* 800BB664 000B85C4  38 1D 00 08 */	addi r0, r29, 8
/* 800BB668 000B85C8  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB66C 000B85CC  88 0D 86 61 */	lbz r0, lbl_805A7221@sda21(r13)
/* 800BB670 000B85D0  98 1C 00 08 */	stb r0, 8(r28)
/* 800BB674 000B85D4  48 00 01 5C */	b lbl_800BB7D0
lbl_800BB678:
/* 800BB678 000B85D8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800BB67C 000B85DC  41 82 00 94 */	beq lbl_800BB710
/* 800BB680 000B85E0  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BB684 000B85E4  28 00 00 00 */	cmplwi r0, 0
/* 800BB688 000B85E8  40 82 00 80 */	bne lbl_800BB708
/* 800BB68C 000B85EC  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB690 000B85F0  38 60 00 28 */	li r3, 0x28
/* 800BB694 000B85F4  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB698 000B85F8  38 A0 00 00 */	li r5, 0
/* 800BB69C 000B85FC  48 25 A1 7D */	bl __nwa__FUlPCcPCc
/* 800BB6A0 000B8600  7C 7B 1B 79 */	or. r27, r3, r3
/* 800BB6A4 000B8604  41 82 00 48 */	beq lbl_800BB6EC
/* 800BB6A8 000B8608  38 60 00 00 */	li r3, 0
/* 800BB6AC 000B860C  37 5B 00 10 */	addic. r26, r27, 0x10
/* 800BB6B0 000B8610  90 7B 00 00 */	stw r3, 0(r27)
/* 800BB6B4 000B8614  38 00 00 01 */	li r0, 1
/* 800BB6B8 000B8618  90 7B 00 04 */	stw r3, 4(r27)
/* 800BB6BC 000B861C  93 FB 00 08 */	stw r31, 8(r27)
/* 800BB6C0 000B8620  90 1B 00 0C */	stw r0, 0xc(r27)
/* 800BB6C4 000B8624  41 82 00 28 */	beq lbl_800BB6EC
/* 800BB6C8 000B8628  7F 43 D3 78 */	mr r3, r26
/* 800BB6CC 000B862C  7F C4 F3 78 */	mr r4, r30
/* 800BB6D0 000B8630  48 28 2A 91 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800BB6D4 000B8634  88 7E 00 10 */	lbz r3, 0x10(r30)
/* 800BB6D8 000B8638  38 00 00 00 */	li r0, 0
/* 800BB6DC 000B863C  98 7A 00 10 */	stb r3, 0x10(r26)
/* 800BB6E0 000B8640  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800BB6E4 000B8644  90 7A 00 14 */	stw r3, 0x14(r26)
/* 800BB6E8 000B8648  98 1E 00 10 */	stb r0, 0x10(r30)
lbl_800BB6EC:
/* 800BB6EC 000B864C  93 7F 00 00 */	stw r27, 0(r31)
/* 800BB6F0 000B8650  7F 7A DB 78 */	mr r26, r27
/* 800BB6F4 000B8654  80 1D 00 08 */	lwz r0, 8(r29)
/* 800BB6F8 000B8658  7C 1F 00 40 */	cmplw r31, r0
/* 800BB6FC 000B865C  40 82 00 A0 */	bne lbl_800BB79C
/* 800BB700 000B8660  93 7D 00 08 */	stw r27, 8(r29)
/* 800BB704 000B8664  48 00 00 98 */	b lbl_800BB79C
lbl_800BB708:
/* 800BB708 000B8668  7C 1F 03 78 */	mr r31, r0
/* 800BB70C 000B866C  48 00 00 90 */	b lbl_800BB79C
lbl_800BB710:
/* 800BB710 000B8670  80 1F 00 04 */	lwz r0, 4(r31)
/* 800BB714 000B8674  28 00 00 00 */	cmplwi r0, 0
/* 800BB718 000B8678  40 82 00 80 */	bne lbl_800BB798
/* 800BB71C 000B867C  3C 80 80 3D */	lis r4, lbl_803CDEA0@ha
/* 800BB720 000B8680  38 60 00 28 */	li r3, 0x28
/* 800BB724 000B8684  38 84 DE A0 */	addi r4, r4, lbl_803CDEA0@l
/* 800BB728 000B8688  38 A0 00 00 */	li r5, 0
/* 800BB72C 000B868C  48 25 A0 ED */	bl __nwa__FUlPCcPCc
/* 800BB730 000B8690  7C 7B 1B 79 */	or. r27, r3, r3
/* 800BB734 000B8694  41 82 00 48 */	beq lbl_800BB77C
/* 800BB738 000B8698  38 60 00 00 */	li r3, 0
/* 800BB73C 000B869C  37 5B 00 10 */	addic. r26, r27, 0x10
/* 800BB740 000B86A0  90 7B 00 00 */	stw r3, 0(r27)
/* 800BB744 000B86A4  38 00 00 01 */	li r0, 1
/* 800BB748 000B86A8  90 7B 00 04 */	stw r3, 4(r27)
/* 800BB74C 000B86AC  93 FB 00 08 */	stw r31, 8(r27)
/* 800BB750 000B86B0  90 1B 00 0C */	stw r0, 0xc(r27)
/* 800BB754 000B86B4  41 82 00 28 */	beq lbl_800BB77C
/* 800BB758 000B86B8  7F 43 D3 78 */	mr r3, r26
/* 800BB75C 000B86BC  7F C4 F3 78 */	mr r4, r30
/* 800BB760 000B86C0  48 28 2A 01 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800BB764 000B86C4  88 7E 00 10 */	lbz r3, 0x10(r30)
/* 800BB768 000B86C8  38 00 00 00 */	li r0, 0
/* 800BB76C 000B86CC  98 7A 00 10 */	stb r3, 0x10(r26)
/* 800BB770 000B86D0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 800BB774 000B86D4  90 7A 00 14 */	stw r3, 0x14(r26)
/* 800BB778 000B86D8  98 1E 00 10 */	stb r0, 0x10(r30)
lbl_800BB77C:
/* 800BB77C 000B86DC  93 7F 00 04 */	stw r27, 4(r31)
/* 800BB780 000B86E0  7F 7A DB 78 */	mr r26, r27
/* 800BB784 000B86E4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 800BB788 000B86E8  7C 1F 00 40 */	cmplw r31, r0
/* 800BB78C 000B86EC  40 82 00 10 */	bne lbl_800BB79C
/* 800BB790 000B86F0  93 7D 00 0C */	stw r27, 0xc(r29)
/* 800BB794 000B86F4  48 00 00 08 */	b lbl_800BB79C
lbl_800BB798:
/* 800BB798 000B86F8  7C 1F 03 78 */	mr r31, r0
lbl_800BB79C:
/* 800BB79C 000B86FC  28 1A 00 00 */	cmplwi r26, 0
/* 800BB7A0 000B8700  41 82 FE 8C */	beq lbl_800BB62C
/* 800BB7A4 000B8704  80 BD 00 04 */	lwz r5, 4(r29)
/* 800BB7A8 000B8708  7F 44 D3 78 */	mr r4, r26
/* 800BB7AC 000B870C  38 7D 00 08 */	addi r3, r29, 8
/* 800BB7B0 000B8710  38 05 00 01 */	addi r0, r5, 1
/* 800BB7B4 000B8714  90 1D 00 04 */	stw r0, 4(r29)
/* 800BB7B8 000B8718  48 28 12 E1 */	bl rbtree_rebalance__4rstlFPvPv
/* 800BB7BC 000B871C  93 5C 00 00 */	stw r26, 0(r28)
/* 800BB7C0 000B8720  38 1D 00 08 */	addi r0, r29, 8
/* 800BB7C4 000B8724  90 1C 00 04 */	stw r0, 4(r28)
/* 800BB7C8 000B8728  88 0D 86 62 */	lbz r0, lbl_805A7222@sda21(r13)
/* 800BB7CC 000B872C  98 1C 00 08 */	stb r0, 8(r28)
lbl_800BB7D0:
/* 800BB7D0 000B8730  BB 41 00 08 */	lmw r26, 8(r1)
/* 800BB7D4 000B8734  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BB7D8 000B8738  7C 08 03 A6 */	mtlr r0
/* 800BB7DC 000B873C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BB7E0 000B8740  4E 80 00 20 */	blr

.global sub_800bb7e4
sub_800bb7e4:
/* 800BB7E4 000B8744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BB7E8 000B8748  7C 08 02 A6 */	mflr r0
/* 800BB7EC 000B874C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BB7F0 000B8750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BB7F4 000B8754  93 C1 00 08 */	stw r30, 8(r1)
/* 800BB7F8 000B8758  7C 7E 1B 78 */	mr r30, r3
/* 800BB7FC 000B875C  80 83 00 00 */	lwz r4, 0(r3)
/* 800BB800 000B8760  80 64 00 04 */	lwz r3, 4(r4)
/* 800BB804 000B8764  34 03 FF FF */	addic. r0, r3, -1
/* 800BB808 000B8768  90 04 00 04 */	stw r0, 4(r4)
/* 800BB80C 000B876C  41 81 00 3C */	bgt lbl_800BB848
/* 800BB810 000B8770  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB814 000B8774  83 E3 00 00 */	lwz r31, 0(r3)
/* 800BB818 000B8778  28 1F 00 00 */	cmplwi r31, 0
/* 800BB81C 000B877C  41 82 00 1C */	beq lbl_800BB838
/* 800BB820 000B8780  41 82 00 10 */	beq lbl_800BB830
/* 800BB824 000B8784  7F E3 FB 78 */	mr r3, r31
/* 800BB828 000B8788  38 80 00 00 */	li r4, 0
/* 800BB82C 000B878C  48 28 56 15 */	bl __dt__6CTokenFv
lbl_800BB830:
/* 800BB830 000B8790  7F E3 FB 78 */	mr r3, r31
/* 800BB834 000B8794  48 25 A0 FD */	bl Free__7CMemoryFPCv
lbl_800BB838:
/* 800BB838 000B8798  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB83C 000B879C  28 03 00 00 */	cmplwi r3, 0
/* 800BB840 000B87A0  41 82 00 08 */	beq lbl_800BB848
/* 800BB844 000B87A4  48 25 A0 ED */	bl Free__7CMemoryFPCv
lbl_800BB848:
/* 800BB848 000B87A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB84C 000B87AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB850 000B87B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB854 000B87B4  7C 08 03 A6 */	mtlr r0
/* 800BB858 000B87B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB85C 000B87BC  4E 80 00 20 */	blr

.global sub_800bb860
sub_800bb860:
/* 800BB860 000B87C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BB864 000B87C4  7C 08 02 A6 */	mflr r0
/* 800BB868 000B87C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BB86C 000B87CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BB870 000B87D0  93 C1 00 08 */	stw r30, 8(r1)
/* 800BB874 000B87D4  7C 7E 1B 78 */	mr r30, r3
/* 800BB878 000B87D8  80 83 00 00 */	lwz r4, 0(r3)
/* 800BB87C 000B87DC  80 64 00 04 */	lwz r3, 4(r4)
/* 800BB880 000B87E0  34 03 FF FF */	addic. r0, r3, -1
/* 800BB884 000B87E4  90 04 00 04 */	stw r0, 4(r4)
/* 800BB888 000B87E8  41 81 00 3C */	bgt lbl_800BB8C4
/* 800BB88C 000B87EC  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB890 000B87F0  83 E3 00 00 */	lwz r31, 0(r3)
/* 800BB894 000B87F4  28 1F 00 00 */	cmplwi r31, 0
/* 800BB898 000B87F8  41 82 00 1C */	beq lbl_800BB8B4
/* 800BB89C 000B87FC  41 82 00 10 */	beq lbl_800BB8AC
/* 800BB8A0 000B8800  7F E3 FB 78 */	mr r3, r31
/* 800BB8A4 000B8804  38 80 00 00 */	li r4, 0
/* 800BB8A8 000B8808  48 28 55 99 */	bl __dt__6CTokenFv
lbl_800BB8AC:
/* 800BB8AC 000B880C  7F E3 FB 78 */	mr r3, r31
/* 800BB8B0 000B8810  48 25 A0 81 */	bl Free__7CMemoryFPCv
lbl_800BB8B4:
/* 800BB8B4 000B8814  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB8B8 000B8818  28 03 00 00 */	cmplwi r3, 0
/* 800BB8BC 000B881C  41 82 00 08 */	beq lbl_800BB8C4
/* 800BB8C0 000B8820  48 25 A0 71 */	bl Free__7CMemoryFPCv
lbl_800BB8C4:
/* 800BB8C4 000B8824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB8C8 000B8828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB8CC 000B882C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB8D0 000B8830  7C 08 03 A6 */	mtlr r0
/* 800BB8D4 000B8834  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB8D8 000B8838  4E 80 00 20 */	blr

.global sub_800bb8dc
sub_800bb8dc:
/* 800BB8DC 000B883C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BB8E0 000B8840  7C 08 02 A6 */	mflr r0
/* 800BB8E4 000B8844  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BB8E8 000B8848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BB8EC 000B884C  93 C1 00 08 */	stw r30, 8(r1)
/* 800BB8F0 000B8850  7C 7E 1B 78 */	mr r30, r3
/* 800BB8F4 000B8854  80 83 00 00 */	lwz r4, 0(r3)
/* 800BB8F8 000B8858  80 64 00 04 */	lwz r3, 4(r4)
/* 800BB8FC 000B885C  34 03 FF FF */	addic. r0, r3, -1
/* 800BB900 000B8860  90 04 00 04 */	stw r0, 4(r4)
/* 800BB904 000B8864  41 81 00 3C */	bgt lbl_800BB940
/* 800BB908 000B8868  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB90C 000B886C  83 E3 00 00 */	lwz r31, 0(r3)
/* 800BB910 000B8870  28 1F 00 00 */	cmplwi r31, 0
/* 800BB914 000B8874  41 82 00 1C */	beq lbl_800BB930
/* 800BB918 000B8878  41 82 00 10 */	beq lbl_800BB928
/* 800BB91C 000B887C  7F E3 FB 78 */	mr r3, r31
/* 800BB920 000B8880  38 80 00 00 */	li r4, 0
/* 800BB924 000B8884  48 28 55 1D */	bl __dt__6CTokenFv
lbl_800BB928:
/* 800BB928 000B8888  7F E3 FB 78 */	mr r3, r31
/* 800BB92C 000B888C  48 25 A0 05 */	bl Free__7CMemoryFPCv
lbl_800BB930:
/* 800BB930 000B8890  80 7E 00 00 */	lwz r3, 0(r30)
/* 800BB934 000B8894  28 03 00 00 */	cmplwi r3, 0
/* 800BB938 000B8898  41 82 00 08 */	beq lbl_800BB940
/* 800BB93C 000B889C  48 25 9F F5 */	bl Free__7CMemoryFPCv
lbl_800BB940:
/* 800BB940 000B88A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BB944 000B88A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BB948 000B88A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BB94C 000B88AC  7C 08 03 A6 */	mtlr r0
/* 800BB950 000B88B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BB954 000B88B4  4E 80 00 20 */	blr

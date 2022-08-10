.include "macros.inc"

.section .data
.balign 8

.global lbl_803DF448
lbl_803DF448:
	# ROM: 0x3DC448
	.4byte 0
	.4byte 0
	.4byte __dt__23CParticleGenInfoGenericFv
	.4byte AddToRenderer__23CParticleGenInfoGenericFv
	.4byte Render__23CParticleGenInfoGenericFv
	.4byte Update__23CParticleGenInfoGenericFfR13CStateManager
	.4byte SetOrientation__23CParticleGenInfoGenericFRC12CTransform4fR13CStateManager
	.4byte SetTranslation__23CParticleGenInfoGenericFRC9CVector3fR13CStateManager
	.4byte SetGlobalOrientation__23CParticleGenInfoGenericFRC12CTransform4fR13CStateManager
	.4byte SetGlobalTranslation__23CParticleGenInfoGenericFRC9CVector3fR13CStateManager
	.4byte SetGlobalScale__23CParticleGenInfoGenericFRC9CVector3f
	.4byte SetParticleEmission__23CParticleGenInfoGenericFbR13CStateManager
	.4byte IsSystemDeletable__23CParticleGenInfoGenericCFv
	.4byte GetBounds__23CParticleGenInfoGenericCFv
	.4byte HasActiveParticles__23CParticleGenInfoGenericCFv
	.4byte DestroyParticles__23CParticleGenInfoGenericFv
	.4byte HasLight__23CParticleGenInfoGenericCFv
	.4byte GetLightId__23CParticleGenInfoGenericCFv
	.4byte DeleteLight__23CParticleGenInfoGenericFR13CStateManager
	.4byte SetModulationColor__23CParticleGenInfoGenericFRC6CColor

.section .text, "ax"

.global IsSystemDeletable__23CParticleGenInfoGenericCFv
IsSystemDeletable__23CParticleGenInfoGenericCFv:
/* 800B6ECC 000B3E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B6ED0 000B3E30  7C 08 02 A6 */	mflr r0
/* 800B6ED4 000B3E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B6ED8 000B3E38  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B6EDC 000B3E3C  80 63 00 00 */	lwz r3, 0(r3)
/* 800B6EE0 000B3E40  81 83 00 00 */	lwz r12, 0(r3)
/* 800B6EE4 000B3E44  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 800B6EE8 000B3E48  7D 89 03 A6 */	mtctr r12
/* 800B6EEC 000B3E4C  4E 80 04 21 */	bctrl
/* 800B6EF0 000B3E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B6EF4 000B3E54  7C 08 03 A6 */	mtlr r0
/* 800B6EF8 000B3E58  38 21 00 10 */	addi r1, r1, 0x10
/* 800B6EFC 000B3E5C  4E 80 00 20 */	blr

.global GetBounds__23CParticleGenInfoGenericCFv
GetBounds__23CParticleGenInfoGenericCFv:
/* 800B6F00 000B3E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B6F04 000B3E64  7C 08 02 A6 */	mflr r0
/* 800B6F08 000B3E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B6F0C 000B3E6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B6F10 000B3E70  7C 7F 1B 78 */	mr r31, r3
/* 800B6F14 000B3E74  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800B6F18 000B3E78  80 84 00 00 */	lwz r4, 0(r4)
/* 800B6F1C 000B3E7C  81 84 00 00 */	lwz r12, 0(r4)
/* 800B6F20 000B3E80  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 800B6F24 000B3E84  7D 89 03 A6 */	mtctr r12
/* 800B6F28 000B3E88  4E 80 04 21 */	bctrl
/* 800B6F2C 000B3E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B6F30 000B3E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B6F34 000B3E94  7C 08 03 A6 */	mtlr r0
/* 800B6F38 000B3E98  38 21 00 10 */	addi r1, r1, 0x10
/* 800B6F3C 000B3E9C  4E 80 00 20 */	blr

.global HasActiveParticles__23CParticleGenInfoGenericCFv
HasActiveParticles__23CParticleGenInfoGenericCFv:
/* 800B6F40 000B3EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B6F44 000B3EA4  7C 08 02 A6 */	mflr r0
/* 800B6F48 000B3EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B6F4C 000B3EAC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B6F50 000B3EB0  80 63 00 00 */	lwz r3, 0(r3)
/* 800B6F54 000B3EB4  81 83 00 00 */	lwz r12, 0(r3)
/* 800B6F58 000B3EB8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 800B6F5C 000B3EBC  7D 89 03 A6 */	mtctr r12
/* 800B6F60 000B3EC0  4E 80 04 21 */	bctrl
/* 800B6F64 000B3EC4  7C 03 00 D0 */	neg r0, r3
/* 800B6F68 000B3EC8  7C 00 18 78 */	andc r0, r0, r3
/* 800B6F6C 000B3ECC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800B6F70 000B3ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B6F74 000B3ED4  7C 08 03 A6 */	mtlr r0
/* 800B6F78 000B3ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B6F7C 000B3EDC  4E 80 00 20 */	blr

.global DestroyParticles__23CParticleGenInfoGenericFv
DestroyParticles__23CParticleGenInfoGenericFv:
/* 800B6F80 000B3EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B6F84 000B3EE4  7C 08 02 A6 */	mflr r0
/* 800B6F88 000B3EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B6F8C 000B3EEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B6F90 000B3EF0  80 63 00 00 */	lwz r3, 0(r3)
/* 800B6F94 000B3EF4  81 83 00 00 */	lwz r12, 0(r3)
/* 800B6F98 000B3EF8  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 800B6F9C 000B3EFC  7D 89 03 A6 */	mtctr r12
/* 800B6FA0 000B3F00  4E 80 04 21 */	bctrl
/* 800B6FA4 000B3F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B6FA8 000B3F08  7C 08 03 A6 */	mtlr r0
/* 800B6FAC 000B3F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 800B6FB0 000B3F10  4E 80 00 20 */	blr

.global HasLight__23CParticleGenInfoGenericCFv
HasLight__23CParticleGenInfoGenericCFv:
/* 800B6FB4 000B3F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B6FB8 000B3F18  7C 08 02 A6 */	mflr r0
/* 800B6FBC 000B3F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B6FC0 000B3F20  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B6FC4 000B3F24  80 63 00 00 */	lwz r3, 0(r3)
/* 800B6FC8 000B3F28  81 83 00 00 */	lwz r12, 0(r3)
/* 800B6FCC 000B3F2C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 800B6FD0 000B3F30  7D 89 03 A6 */	mtctr r12
/* 800B6FD4 000B3F34  4E 80 04 21 */	bctrl
/* 800B6FD8 000B3F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B6FDC 000B3F3C  7C 08 03 A6 */	mtlr r0
/* 800B6FE0 000B3F40  38 21 00 10 */	addi r1, r1, 0x10
/* 800B6FE4 000B3F44  4E 80 00 20 */	blr

.global SetModulationColor__23CParticleGenInfoGenericFRC6CColor
SetModulationColor__23CParticleGenInfoGenericFRC6CColor:
/* 800B6FE8 000B3F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B6FEC 000B3F4C  7C 08 02 A6 */	mflr r0
/* 800B6FF0 000B3F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B6FF4 000B3F54  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B6FF8 000B3F58  80 63 00 00 */	lwz r3, 0(r3)
/* 800B6FFC 000B3F5C  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7000 000B3F60  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800B7004 000B3F64  7D 89 03 A6 */	mtctr r12
/* 800B7008 000B3F68  4E 80 04 21 */	bctrl
/* 800B700C 000B3F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7010 000B3F70  7C 08 03 A6 */	mtlr r0
/* 800B7014 000B3F74  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7018 000B3F78  4E 80 00 20 */	blr

.global GetLightId__23CParticleGenInfoGenericCFv
GetLightId__23CParticleGenInfoGenericCFv:
/* 800B701C 000B3F7C  A0 04 00 88 */	lhz r0, 0x88(r4)
/* 800B7020 000B3F80  B0 03 00 00 */	sth r0, 0(r3)
/* 800B7024 000B3F84  4E 80 00 20 */	blr

.global DeleteLight__23CParticleGenInfoGenericFR13CStateManager
DeleteLight__23CParticleGenInfoGenericFR13CStateManager:
/* 800B7028 000B3F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B702C 000B3F8C  7C 08 02 A6 */	mflr r0
/* 800B7030 000B3F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7034 000B3F94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B7038 000B3F98  7C 7F 1B 78 */	mr r31, r3
/* 800B703C 000B3F9C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B7040 000B3FA0  A0 63 00 88 */	lhz r3, 0x88(r3)
/* 800B7044 000B3FA4  7C 03 00 40 */	cmplw r3, r0
/* 800B7048 000B3FA8  41 82 00 20 */	beq lbl_800B7068
/* 800B704C 000B3FAC  A0 1F 00 88 */	lhz r0, 0x88(r31)
/* 800B7050 000B3FB0  7C 83 23 78 */	mr r3, r4
/* 800B7054 000B3FB4  38 81 00 08 */	addi r4, r1, 8
/* 800B7058 000B3FB8  B0 01 00 08 */	sth r0, 8(r1)
/* 800B705C 000B3FBC  4B F9 52 11 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 800B7060 000B3FC0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B7064 000B3FC4  B0 1F 00 88 */	sth r0, 0x88(r31)
lbl_800B7068:
/* 800B7068 000B3FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B706C 000B3FCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B7070 000B3FD0  7C 08 03 A6 */	mtlr r0
/* 800B7074 000B3FD4  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7078 000B3FD8  4E 80 00 20 */	blr

.global SetParticleEmission__23CParticleGenInfoGenericFbR13CStateManager
SetParticleEmission__23CParticleGenInfoGenericFbR13CStateManager:
/* 800B707C 000B3FDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B7080 000B3FE0  7C 08 02 A6 */	mflr r0
/* 800B7084 000B3FE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B7088 000B3FE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800B708C 000B3FEC  7C BF 2B 78 */	mr r31, r5
/* 800B7090 000B3FF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800B7094 000B3FF4  7C 9E 23 78 */	mr r30, r4
/* 800B7098 000B3FF8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800B709C 000B3FFC  7C 7D 1B 78 */	mr r29, r3
/* 800B70A0 000B4000  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B70A4 000B4004  80 63 00 00 */	lwz r3, 0(r3)
/* 800B70A8 000B4008  81 83 00 00 */	lwz r12, 0(r3)
/* 800B70AC 000B400C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800B70B0 000B4010  7D 89 03 A6 */	mtctr r12
/* 800B70B4 000B4014  4E 80 04 21 */	bctrl
/* 800B70B8 000B4018  A0 7D 00 88 */	lhz r3, 0x88(r29)
/* 800B70BC 000B401C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B70C0 000B4020  7C 03 00 40 */	cmplw r3, r0
/* 800B70C4 000B4024  41 82 00 44 */	beq lbl_800B7108
/* 800B70C8 000B4028  A0 1D 00 88 */	lhz r0, 0x88(r29)
/* 800B70CC 000B402C  7F E3 FB 78 */	mr r3, r31
/* 800B70D0 000B4030  38 81 00 08 */	addi r4, r1, 8
/* 800B70D4 000B4034  B0 01 00 08 */	sth r0, 8(r1)
/* 800B70D8 000B4038  4B F9 54 9D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800B70DC 000B403C  7C 64 1B 78 */	mr r4, r3
/* 800B70E0 000B4040  38 61 00 0C */	addi r3, r1, 0xc
/* 800B70E4 000B4044  4B FF 69 A1 */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 800B70E8 000B4048  80 63 00 04 */	lwz r3, 4(r3)
/* 800B70EC 000B404C  28 03 00 00 */	cmplwi r3, 0
/* 800B70F0 000B4050  41 82 00 18 */	beq lbl_800B7108
/* 800B70F4 000B4054  81 83 00 00 */	lwz r12, 0(r3)
/* 800B70F8 000B4058  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 800B70FC 000B405C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800B7100 000B4060  7D 89 03 A6 */	mtctr r12
/* 800B7104 000B4064  4E 80 04 21 */	bctrl
lbl_800B7108:
/* 800B7108 000B4068  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B710C 000B406C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800B7110 000B4070  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800B7114 000B4074  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800B7118 000B4078  7C 08 03 A6 */	mtlr r0
/* 800B711C 000B407C  38 21 00 30 */	addi r1, r1, 0x30
/* 800B7120 000B4080  4E 80 00 20 */	blr

.global SetGlobalScale__23CParticleGenInfoGenericFRC9CVector3f
SetGlobalScale__23CParticleGenInfoGenericFRC9CVector3f:
/* 800B7124 000B4084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7128 000B4088  7C 08 02 A6 */	mflr r0
/* 800B712C 000B408C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7130 000B4090  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B7134 000B4094  80 63 00 00 */	lwz r3, 0(r3)
/* 800B7138 000B4098  81 83 00 00 */	lwz r12, 0(r3)
/* 800B713C 000B409C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800B7140 000B40A0  7D 89 03 A6 */	mtctr r12
/* 800B7144 000B40A4  4E 80 04 21 */	bctrl
/* 800B7148 000B40A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B714C 000B40AC  7C 08 03 A6 */	mtlr r0
/* 800B7150 000B40B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7154 000B40B4  4E 80 00 20 */	blr

.global SetGlobalTranslation__23CParticleGenInfoGenericFRC9CVector3fR13CStateManager
SetGlobalTranslation__23CParticleGenInfoGenericFRC9CVector3fR13CStateManager:
/* 800B7158 000B40B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B715C 000B40BC  7C 08 02 A6 */	mflr r0
/* 800B7160 000B40C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B7164 000B40C4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800B7168 000B40C8  7C BF 2B 78 */	mr r31, r5
/* 800B716C 000B40CC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800B7170 000B40D0  7C 9E 23 78 */	mr r30, r4
/* 800B7174 000B40D4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800B7178 000B40D8  7C 7D 1B 78 */	mr r29, r3
/* 800B717C 000B40DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B7180 000B40E0  80 63 00 00 */	lwz r3, 0(r3)
/* 800B7184 000B40E4  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7188 000B40E8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800B718C 000B40EC  7D 89 03 A6 */	mtctr r12
/* 800B7190 000B40F0  4E 80 04 21 */	bctrl
/* 800B7194 000B40F4  A0 7D 00 88 */	lhz r3, 0x88(r29)
/* 800B7198 000B40F8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B719C 000B40FC  7C 03 00 40 */	cmplw r3, r0
/* 800B71A0 000B4100  41 82 00 38 */	beq lbl_800B71D8
/* 800B71A4 000B4104  A0 1D 00 88 */	lhz r0, 0x88(r29)
/* 800B71A8 000B4108  7F E3 FB 78 */	mr r3, r31
/* 800B71AC 000B410C  38 81 00 08 */	addi r4, r1, 8
/* 800B71B0 000B4110  B0 01 00 08 */	sth r0, 8(r1)
/* 800B71B4 000B4114  4B F9 53 C1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800B71B8 000B4118  7C 64 1B 78 */	mr r4, r3
/* 800B71BC 000B411C  38 61 00 0C */	addi r3, r1, 0xc
/* 800B71C0 000B4120  4B FF 68 C5 */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 800B71C4 000B4124  80 63 00 04 */	lwz r3, 4(r3)
/* 800B71C8 000B4128  28 03 00 00 */	cmplwi r3, 0
/* 800B71CC 000B412C  41 82 00 0C */	beq lbl_800B71D8
/* 800B71D0 000B4130  7F C4 F3 78 */	mr r4, r30
/* 800B71D4 000B4134  4B F9 BC B9 */	bl SetTranslation__6CActorFRC9CVector3f
lbl_800B71D8:
/* 800B71D8 000B4138  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B71DC 000B413C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800B71E0 000B4140  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800B71E4 000B4144  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800B71E8 000B4148  7C 08 03 A6 */	mtlr r0
/* 800B71EC 000B414C  38 21 00 30 */	addi r1, r1, 0x30
/* 800B71F0 000B4150  4E 80 00 20 */	blr

.global SetGlobalOrientation__23CParticleGenInfoGenericFRC12CTransform4fR13CStateManager
SetGlobalOrientation__23CParticleGenInfoGenericFRC12CTransform4fR13CStateManager:
/* 800B71F4 000B4154  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800B71F8 000B4158  7C 08 02 A6 */	mflr r0
/* 800B71FC 000B415C  90 01 00 74 */	stw r0, 0x74(r1)
/* 800B7200 000B4160  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800B7204 000B4164  7C BF 2B 78 */	mr r31, r5
/* 800B7208 000B4168  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800B720C 000B416C  7C 9E 23 78 */	mr r30, r4
/* 800B7210 000B4170  93 A1 00 64 */	stw r29, 0x64(r1)
/* 800B7214 000B4174  7C 7D 1B 78 */	mr r29, r3
/* 800B7218 000B4178  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B721C 000B417C  80 63 00 00 */	lwz r3, 0(r3)
/* 800B7220 000B4180  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7224 000B4184  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800B7228 000B4188  7D 89 03 A6 */	mtctr r12
/* 800B722C 000B418C  4E 80 04 21 */	bctrl
/* 800B7230 000B4190  A0 7D 00 88 */	lhz r3, 0x88(r29)
/* 800B7234 000B4194  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B7238 000B4198  7C 03 00 40 */	cmplw r3, r0
/* 800B723C 000B419C  41 82 00 98 */	beq lbl_800B72D4
/* 800B7240 000B41A0  A0 1D 00 88 */	lhz r0, 0x88(r29)
/* 800B7244 000B41A4  7F E3 FB 78 */	mr r3, r31
/* 800B7248 000B41A8  38 81 00 08 */	addi r4, r1, 8
/* 800B724C 000B41AC  B0 01 00 08 */	sth r0, 8(r1)
/* 800B7250 000B41B0  4B F9 53 25 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800B7254 000B41B4  7C 64 1B 78 */	mr r4, r3
/* 800B7258 000B41B8  38 61 00 0C */	addi r3, r1, 0xc
/* 800B725C 000B41BC  4B FF 68 29 */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 800B7260 000B41C0  83 E3 00 04 */	lwz r31, 4(r3)
/* 800B7264 000B41C4  28 1F 00 00 */	cmplwi r31, 0
/* 800B7268 000B41C8  41 82 00 6C */	beq lbl_800B72D4
/* 800B726C 000B41CC  7F C4 F3 78 */	mr r4, r30
/* 800B7270 000B41D0  38 61 00 20 */	addi r3, r1, 0x20
/* 800B7274 000B41D4  48 25 AE B5 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 800B7278 000B41D8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 800B727C 000B41DC  38 61 00 30 */	addi r3, r1, 0x30
/* 800B7280 000B41E0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800B7284 000B41E4  38 81 00 20 */	addi r4, r1, 0x20
/* 800B7288 000B41E8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800B728C 000B41EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 800B7290 000B41F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B7294 000B41F4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800B7298 000B41F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800B729C 000B41FC  48 25 AC 21 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 800B72A0 000B4200  38 7F 00 34 */	addi r3, r31, 0x34
/* 800B72A4 000B4204  38 81 00 30 */	addi r4, r1, 0x30
/* 800B72A8 000B4208  48 25 B8 99 */	bl __as__12CTransform4fFRC12CTransform4f
/* 800B72AC 000B420C  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 800B72B0 000B4210  38 60 00 01 */	li r3, 1
/* 800B72B4 000B4214  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 800B72B8 000B4218  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 800B72BC 000B421C  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 800B72C0 000B4220  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 800B72C4 000B4224  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 800B72C8 000B4228  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 800B72CC 000B422C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 800B72D0 000B4230  98 1F 00 E4 */	stb r0, 0xe4(r31)
lbl_800B72D4:
/* 800B72D4 000B4234  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800B72D8 000B4238  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800B72DC 000B423C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800B72E0 000B4240  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 800B72E4 000B4244  7C 08 03 A6 */	mtlr r0
/* 800B72E8 000B4248  38 21 00 70 */	addi r1, r1, 0x70
/* 800B72EC 000B424C  4E 80 00 20 */	blr

.global SetTranslation__23CParticleGenInfoGenericFRC9CVector3fR13CStateManager
SetTranslation__23CParticleGenInfoGenericFRC9CVector3fR13CStateManager:
/* 800B72F0 000B4250  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B72F4 000B4254  7C 08 02 A6 */	mflr r0
/* 800B72F8 000B4258  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B72FC 000B425C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800B7300 000B4260  7C BF 2B 78 */	mr r31, r5
/* 800B7304 000B4264  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800B7308 000B4268  7C 9E 23 78 */	mr r30, r4
/* 800B730C 000B426C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800B7310 000B4270  7C 7D 1B 78 */	mr r29, r3
/* 800B7314 000B4274  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B7318 000B4278  80 63 00 00 */	lwz r3, 0(r3)
/* 800B731C 000B427C  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7320 000B4280  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800B7324 000B4284  7D 89 03 A6 */	mtctr r12
/* 800B7328 000B4288  4E 80 04 21 */	bctrl
/* 800B732C 000B428C  A0 7D 00 88 */	lhz r3, 0x88(r29)
/* 800B7330 000B4290  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B7334 000B4294  7C 03 00 40 */	cmplw r3, r0
/* 800B7338 000B4298  41 82 00 38 */	beq lbl_800B7370
/* 800B733C 000B429C  A0 1D 00 88 */	lhz r0, 0x88(r29)
/* 800B7340 000B42A0  7F E3 FB 78 */	mr r3, r31
/* 800B7344 000B42A4  38 81 00 08 */	addi r4, r1, 8
/* 800B7348 000B42A8  B0 01 00 08 */	sth r0, 8(r1)
/* 800B734C 000B42AC  4B F9 52 29 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800B7350 000B42B0  7C 64 1B 78 */	mr r4, r3
/* 800B7354 000B42B4  38 61 00 0C */	addi r3, r1, 0xc
/* 800B7358 000B42B8  4B FF 67 2D */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 800B735C 000B42BC  80 63 00 04 */	lwz r3, 4(r3)
/* 800B7360 000B42C0  28 03 00 00 */	cmplwi r3, 0
/* 800B7364 000B42C4  41 82 00 0C */	beq lbl_800B7370
/* 800B7368 000B42C8  7F C4 F3 78 */	mr r4, r30
/* 800B736C 000B42CC  4B F9 BB 21 */	bl SetTranslation__6CActorFRC9CVector3f
lbl_800B7370:
/* 800B7370 000B42D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B7374 000B42D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800B7378 000B42D8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800B737C 000B42DC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800B7380 000B42E0  7C 08 03 A6 */	mtlr r0
/* 800B7384 000B42E4  38 21 00 30 */	addi r1, r1, 0x30
/* 800B7388 000B42E8  4E 80 00 20 */	blr

.global SetOrientation__23CParticleGenInfoGenericFRC12CTransform4fR13CStateManager
SetOrientation__23CParticleGenInfoGenericFRC12CTransform4fR13CStateManager:
/* 800B738C 000B42EC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 800B7390 000B42F0  7C 08 02 A6 */	mflr r0
/* 800B7394 000B42F4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 800B7398 000B42F8  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 800B739C 000B42FC  7C BF 2B 78 */	mr r31, r5
/* 800B73A0 000B4300  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 800B73A4 000B4304  7C 9E 23 78 */	mr r30, r4
/* 800B73A8 000B4308  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 800B73AC 000B430C  7C 7D 1B 78 */	mr r29, r3
/* 800B73B0 000B4310  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B73B4 000B4314  80 63 00 00 */	lwz r3, 0(r3)
/* 800B73B8 000B4318  81 83 00 00 */	lwz r12, 0(r3)
/* 800B73BC 000B431C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 800B73C0 000B4320  7D 89 03 A6 */	mtctr r12
/* 800B73C4 000B4324  4E 80 04 21 */	bctrl
/* 800B73C8 000B4328  A0 7D 00 88 */	lhz r3, 0x88(r29)
/* 800B73CC 000B432C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B73D0 000B4330  7C 03 00 40 */	cmplw r3, r0
/* 800B73D4 000B4334  41 82 00 BC */	beq lbl_800B7490
/* 800B73D8 000B4338  A0 1D 00 88 */	lhz r0, 0x88(r29)
/* 800B73DC 000B433C  7F E3 FB 78 */	mr r3, r31
/* 800B73E0 000B4340  38 81 00 08 */	addi r4, r1, 8
/* 800B73E4 000B4344  B0 01 00 08 */	sth r0, 8(r1)
/* 800B73E8 000B4348  4B F9 51 8D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800B73EC 000B434C  7C 64 1B 78 */	mr r4, r3
/* 800B73F0 000B4350  38 61 00 0C */	addi r3, r1, 0xc
/* 800B73F4 000B4354  4B FF 66 91 */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 800B73F8 000B4358  83 E3 00 04 */	lwz r31, 4(r3)
/* 800B73FC 000B435C  28 1F 00 00 */	cmplwi r31, 0
/* 800B7400 000B4360  41 82 00 90 */	beq lbl_800B7490
/* 800B7404 000B4364  7F C4 F3 78 */	mr r4, r30
/* 800B7408 000B4368  38 61 00 84 */	addi r3, r1, 0x84
/* 800B740C 000B436C  48 25 BC E9 */	bl BuildMatrix3f__12CTransform4fCFv
/* 800B7410 000B4370  38 61 00 A8 */	addi r3, r1, 0xa8
/* 800B7414 000B4374  38 81 00 84 */	addi r4, r1, 0x84
/* 800B7418 000B4378  48 25 8C 0D */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 800B741C 000B437C  38 61 00 60 */	addi r3, r1, 0x60
/* 800B7420 000B4380  38 81 00 A8 */	addi r4, r1, 0xa8
/* 800B7424 000B4384  48 25 8E D5 */	bl Orthonormalized__9CMatrix3fCFv
/* 800B7428 000B4388  38 61 00 20 */	addi r3, r1, 0x20
/* 800B742C 000B438C  38 81 00 60 */	addi r4, r1, 0x60
/* 800B7430 000B4390  48 25 AD 51 */	bl FromMatrix__11CQuaternionFRC9CMatrix3f
/* 800B7434 000B4394  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 800B7438 000B4398  38 61 00 30 */	addi r3, r1, 0x30
/* 800B743C 000B439C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800B7440 000B43A0  38 81 00 20 */	addi r4, r1, 0x20
/* 800B7444 000B43A4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 800B7448 000B43A8  38 A1 00 14 */	addi r5, r1, 0x14
/* 800B744C 000B43AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B7450 000B43B0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800B7454 000B43B4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800B7458 000B43B8  48 25 AA 65 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 800B745C 000B43BC  38 7F 00 34 */	addi r3, r31, 0x34
/* 800B7460 000B43C0  38 81 00 30 */	addi r4, r1, 0x30
/* 800B7464 000B43C4  48 25 B6 DD */	bl __as__12CTransform4fFRC12CTransform4f
/* 800B7468 000B43C8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 800B746C 000B43CC  38 60 00 01 */	li r3, 1
/* 800B7470 000B43D0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 800B7474 000B43D4  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 800B7478 000B43D8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 800B747C 000B43DC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 800B7480 000B43E0  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 800B7484 000B43E4  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 800B7488 000B43E8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 800B748C 000B43EC  98 1F 00 E4 */	stb r0, 0xe4(r31)
lbl_800B7490:
/* 800B7490 000B43F0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 800B7494 000B43F4  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 800B7498 000B43F8  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 800B749C 000B43FC  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 800B74A0 000B4400  7C 08 03 A6 */	mtlr r0
/* 800B74A4 000B4404  38 21 00 E0 */	addi r1, r1, 0xe0
/* 800B74A8 000B4408  4E 80 00 20 */	blr

.global Update__23CParticleGenInfoGenericFfR13CStateManager
Update__23CParticleGenInfoGenericFfR13CStateManager:
/* 800B74AC 000B440C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800B74B0 000B4410  7C 08 02 A6 */	mflr r0
/* 800B74B4 000B4414  90 01 00 74 */	stw r0, 0x74(r1)
/* 800B74B8 000B4418  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800B74BC 000B441C  7C 9F 23 78 */	mr r31, r4
/* 800B74C0 000B4420  93 C1 00 68 */	stw r30, 0x68(r1)
/* 800B74C4 000B4424  7C 7E 1B 78 */	mr r30, r3
/* 800B74C8 000B4428  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B74CC 000B442C  80 63 00 00 */	lwz r3, 0(r3)
/* 800B74D0 000B4430  81 83 00 00 */	lwz r12, 0(r3)
/* 800B74D4 000B4434  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800B74D8 000B4438  7D 89 03 A6 */	mtctr r12
/* 800B74DC 000B443C  4E 80 04 21 */	bctrl
/* 800B74E0 000B4440  A0 7E 00 88 */	lhz r3, 0x88(r30)
/* 800B74E4 000B4444  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B74E8 000B4448  7C 03 00 40 */	cmplw r3, r0
/* 800B74EC 000B444C  41 82 00 58 */	beq lbl_800B7544
/* 800B74F0 000B4450  A0 1E 00 88 */	lhz r0, 0x88(r30)
/* 800B74F4 000B4454  7F E3 FB 78 */	mr r3, r31
/* 800B74F8 000B4458  38 81 00 08 */	addi r4, r1, 8
/* 800B74FC 000B445C  B0 01 00 08 */	sth r0, 8(r1)
/* 800B7500 000B4460  4B F9 50 75 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 800B7504 000B4464  7C 64 1B 78 */	mr r4, r3
/* 800B7508 000B4468  38 61 00 0C */	addi r3, r1, 0xc
/* 800B750C 000B446C  4B FF 65 79 */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 800B7510 000B4470  83 E3 00 04 */	lwz r31, 4(r3)
/* 800B7514 000B4474  28 1F 00 00 */	cmplwi r31, 0
/* 800B7518 000B4478  41 82 00 2C */	beq lbl_800B7544
/* 800B751C 000B447C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 800B7520 000B4480  38 61 00 14 */	addi r3, r1, 0x14
/* 800B7524 000B4484  80 84 00 00 */	lwz r4, 0(r4)
/* 800B7528 000B4488  81 84 00 00 */	lwz r12, 0(r4)
/* 800B752C 000B448C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800B7530 000B4490  7D 89 03 A6 */	mtctr r12
/* 800B7534 000B4494  4E 80 04 21 */	bctrl
/* 800B7538 000B4498  7F E3 FB 78 */	mr r3, r31
/* 800B753C 000B449C  38 81 00 14 */	addi r4, r1, 0x14
/* 800B7540 000B44A0  4B FF E2 05 */	bl SetLight__10CGameLightFRC6CLight
lbl_800B7544:
/* 800B7544 000B44A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800B7548 000B44A8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800B754C 000B44AC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 800B7550 000B44B0  7C 08 03 A6 */	mtlr r0
/* 800B7554 000B44B4  38 21 00 70 */	addi r1, r1, 0x70
/* 800B7558 000B44B8  4E 80 00 20 */	blr

.global Render__23CParticleGenInfoGenericFv
Render__23CParticleGenInfoGenericFv:
/* 800B755C 000B44BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7560 000B44C0  7C 08 02 A6 */	mflr r0
/* 800B7564 000B44C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7568 000B44C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B756C 000B44CC  80 63 00 00 */	lwz r3, 0(r3)
/* 800B7570 000B44D0  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7574 000B44D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800B7578 000B44D8  7D 89 03 A6 */	mtctr r12
/* 800B757C 000B44DC  4E 80 04 21 */	bctrl
/* 800B7580 000B44E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7584 000B44E4  7C 08 03 A6 */	mtlr r0
/* 800B7588 000B44E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B758C 000B44EC  4E 80 00 20 */	blr

.global AddToRenderer__23CParticleGenInfoGenericFv
AddToRenderer__23CParticleGenInfoGenericFv:
/* 800B7590 000B44F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7594 000B44F4  7C 08 02 A6 */	mflr r0
/* 800B7598 000B44F8  7C 64 1B 78 */	mr r4, r3
/* 800B759C 000B44FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B75A0 000B4500  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 800B75A4 000B4504  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800B75A8 000B4508  81 83 00 00 */	lwz r12, 0(r3)
/* 800B75AC 000B450C  80 84 00 00 */	lwz r4, 0(r4)
/* 800B75B0 000B4510  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 800B75B4 000B4514  7D 89 03 A6 */	mtctr r12
/* 800B75B8 000B4518  4E 80 04 21 */	bctrl
/* 800B75BC 000B451C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B75C0 000B4520  7C 08 03 A6 */	mtlr r0
/* 800B75C4 000B4524  38 21 00 10 */	addi r1, r1, 0x10
/* 800B75C8 000B4528  4E 80 00 20 */	blr

.global __dt__23CParticleGenInfoGenericFv
__dt__23CParticleGenInfoGenericFv:
/* 800B75CC 000B452C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B75D0 000B4530  7C 08 02 A6 */	mflr r0
/* 800B75D4 000B4534  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B75D8 000B4538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B75DC 000B453C  7C 9F 23 78 */	mr r31, r4
/* 800B75E0 000B4540  93 C1 00 08 */	stw r30, 8(r1)
/* 800B75E4 000B4544  7C 7E 1B 79 */	or. r30, r3, r3
/* 800B75E8 000B4548  41 82 00 5C */	beq lbl_800B7644
/* 800B75EC 000B454C  3C 60 80 3E */	lis r3, lbl_803DF448@ha
/* 800B75F0 000B4550  34 1E 00 84 */	addic. r0, r30, 0x84
/* 800B75F4 000B4554  38 03 F4 48 */	addi r0, r3, lbl_803DF448@l
/* 800B75F8 000B4558  90 1E 00 00 */	stw r0, 0(r30)
/* 800B75FC 000B455C  41 82 00 14 */	beq lbl_800B7610
/* 800B7600 000B4560  34 1E 00 84 */	addic. r0, r30, 0x84
/* 800B7604 000B4564  41 82 00 0C */	beq lbl_800B7610
/* 800B7608 000B4568  38 7E 00 84 */	addi r3, r30, 0x84
/* 800B760C 000B456C  48 00 03 F5 */	bl sub_800b7a00
lbl_800B7610:
/* 800B7610 000B4570  28 1E 00 00 */	cmplwi r30, 0
/* 800B7614 000B4574  41 82 00 20 */	beq lbl_800B7634
/* 800B7618 000B4578  3C 60 80 3E */	lis r3, lbl_803DF498@ha
/* 800B761C 000B457C  34 1E 00 10 */	addic. r0, r30, 0x10
/* 800B7620 000B4580  38 03 F4 98 */	addi r0, r3, lbl_803DF498@l
/* 800B7624 000B4584  90 1E 00 00 */	stw r0, 0(r30)
/* 800B7628 000B4588  41 82 00 0C */	beq lbl_800B7634
/* 800B762C 000B458C  38 7E 00 10 */	addi r3, r30, 0x10
/* 800B7630 000B4590  48 28 64 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800B7634:
/* 800B7634 000B4594  7F E0 07 35 */	extsh. r0, r31
/* 800B7638 000B4598  40 81 00 0C */	ble lbl_800B7644
/* 800B763C 000B459C  7F C3 F3 78 */	mr r3, r30
/* 800B7640 000B45A0  48 25 E2 F1 */	bl Free__7CMemoryFPCv
lbl_800B7644:
/* 800B7644 000B45A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7648 000B45A8  7F C3 F3 78 */	mr r3, r30
/* 800B764C 000B45AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7650 000B45B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B7654 000B45B4  7C 08 03 A6 */	mtlr r0
/* 800B7658 000B45B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B765C 000B45BC  4E 80 00 20 */	blr

.global "__ct__23CParticleGenInfoGenericFRC10SObjectTagQ24rstl24ncrc_ptr<12CParticleGen>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>9CVector3fQ213CParticleData13EParentedModeiR13CStateManageri"
"__ct__23CParticleGenInfoGenericFRC10SObjectTagQ24rstl24ncrc_ptr<12CParticleGen>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>9CVector3fQ213CParticleData13EParentedModeiR13CStateManageri":
/* 800B7660 000B45C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B7664 000B45C4  7C 08 02 A6 */	mflr r0
/* 800B7668 000B45C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B766C 000B45CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800B7670 000B45D0  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800B7674 000B45D4  7C BC 2B 78 */	mr r28, r5
/* 800B7678 000B45D8  7C C5 33 78 */	mr r5, r6
/* 800B767C 000B45DC  7C E6 3B 78 */	mr r6, r7
/* 800B7680 000B45E0  7D 07 43 78 */	mr r7, r8
/* 800B7684 000B45E4  7D 28 4B 78 */	mr r8, r9
/* 800B7688 000B45E8  7D 49 53 78 */	mr r9, r10
/* 800B768C 000B45EC  83 A1 00 38 */	lwz r29, 0x38(r1)
/* 800B7690 000B45F0  83 C1 00 3C */	lwz r30, 0x3c(r1)
/* 800B7694 000B45F4  7C 7B 1B 78 */	mr r27, r3
/* 800B7698 000B45F8  83 E1 00 40 */	lwz r31, 0x40(r1)
/* 800B769C 000B45FC  7C 0A 03 78 */	mr r10, r0
/* 800B76A0 000B4600  48 00 02 79 */	bl "__ct__16CParticleGenInfoFRC10SObjectTagiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC9CVector3fQ213CParticleData13EParentedModei"
/* 800B76A4 000B4604  3C 60 80 3E */	lis r3, lbl_803DF448@ha
/* 800B76A8 000B4608  3C 1F 00 01 */	addis r0, r31, 1
/* 800B76AC 000B460C  38 63 F4 48 */	addi r3, r3, lbl_803DF448@l
/* 800B76B0 000B4610  90 7B 00 00 */	stw r3, 0(r27)
/* 800B76B4 000B4614  28 00 FF FF */	cmplwi r0, 0xffff
/* 800B76B8 000B4618  80 1C 00 00 */	lwz r0, 0(r28)
/* 800B76BC 000B461C  90 1B 00 84 */	stw r0, 0x84(r27)
/* 800B76C0 000B4620  80 9B 00 84 */	lwz r4, 0x84(r27)
/* 800B76C4 000B4624  80 64 00 04 */	lwz r3, 4(r4)
/* 800B76C8 000B4628  38 03 00 01 */	addi r0, r3, 1
/* 800B76CC 000B462C  90 04 00 04 */	stw r0, 4(r4)
/* 800B76D0 000B4630  40 82 00 0C */	bne lbl_800B76DC
/* 800B76D4 000B4634  38 6D A3 8C */	addi r3, r13, kInvalidUniqueId@sda21
/* 800B76D8 000B4638  48 00 00 28 */	b lbl_800B7700
lbl_800B76DC:
/* 800B76DC 000B463C  80 1E 00 00 */	lwz r0, 0(r30)
/* 800B76E0 000B4640  7F 84 E3 78 */	mr r4, r28
/* 800B76E4 000B4644  7F A5 EB 78 */	mr r5, r29
/* 800B76E8 000B4648  7F E7 FB 78 */	mr r7, r31
/* 800B76EC 000B464C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B76F0 000B4650  38 61 00 08 */	addi r3, r1, 8
/* 800B76F4 000B4654  38 C1 00 0C */	addi r6, r1, 0xc
/* 800B76F8 000B4658  48 00 00 91 */	bl "_initializeLight__FRCQ24rstl24ncrc_ptr<12CParticleGen>R13CStateManageri"
/* 800B76FC 000B465C  38 61 00 08 */	addi r3, r1, 8
lbl_800B7700:
/* 800B7700 000B4660  A0 03 00 00 */	lhz r0, 0(r3)
/* 800B7704 000B4664  7F 63 DB 78 */	mr r3, r27
/* 800B7708 000B4668  B0 1B 00 88 */	sth r0, 0x88(r27)
/* 800B770C 000B466C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800B7710 000B4670  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B7714 000B4674  7C 08 03 A6 */	mtlr r0
/* 800B7718 000B4678  38 21 00 30 */	addi r1, r1, 0x30
/* 800B771C 000B467C  4E 80 00 20 */	blr

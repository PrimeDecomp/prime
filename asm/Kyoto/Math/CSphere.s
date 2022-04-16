.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global GetSurfaceNormal__7CSphereCFRC9CVector3f
GetSurfaceNormal__7CSphereCFRC9CVector3f:
/* 80337188 003340E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033718C 003340EC  7C 08 02 A6 */	mflr r0
/* 80337190 003340F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80337194 003340F4  C0 25 00 04 */	lfs f1, 4(r5)
/* 80337198 003340F8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8033719C 003340FC  C0 65 00 08 */	lfs f3, 8(r5)
/* 803371A0 00334100  EC 81 00 28 */	fsubs f4, f1, f0
/* 803371A4 00334104  C0 44 00 08 */	lfs f2, 8(r4)
/* 803371A8 00334108  C0 04 00 00 */	lfs f0, 0(r4)
/* 803371AC 0033410C  38 81 00 08 */	addi r4, r1, 8
/* 803371B0 00334110  C0 25 00 00 */	lfs f1, 0(r5)
/* 803371B4 00334114  EC 43 10 28 */	fsubs f2, f3, f2
/* 803371B8 00334118  EC 01 00 28 */	fsubs f0, f1, f0
/* 803371BC 0033411C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 803371C0 00334120  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 803371C4 00334124  D0 01 00 08 */	stfs f0, 8(r1)
/* 803371C8 00334128  4B FD CC 09 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 803371CC 0033412C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803371D0 00334130  7C 08 03 A6 */	mtlr r0
/* 803371D4 00334134  38 21 00 20 */	addi r1, r1, 0x20
/* 803371D8 00334138  4E 80 00 20 */	blr

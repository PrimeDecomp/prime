.include "macros.inc"

.section .data
.balign 8

.global lbl_803E1878
lbl_803E1878:
	# ROM: 0x3DE878
	.4byte 0
	.4byte 0
	.4byte __dt__15CBSLoopReactionFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__10CBodyStateCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__10CBodyStateCFv
	.4byte Start__15CBSLoopReactionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__15CBSLoopReactionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__15CBSLoopReactionFR15CBodyController

.section .text, "ax"

.global __dt__15CBSLoopReactionFv
__dt__15CBSLoopReactionFv:
/* 8013C048 00138FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C04C 00138FAC  7C 08 02 A6 */	mflr r0
/* 8013C050 00138FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C054 00138FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C058 00138FB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8013C05C 00138FBC  41 82 00 30 */	beq lbl_8013C08C
/* 8013C060 00138FC0  3C 60 80 3E */	lis r3, lbl_803E1878@ha
/* 8013C064 00138FC4  38 03 18 78 */	addi r0, r3, lbl_803E1878@l
/* 8013C068 00138FC8  90 1F 00 00 */	stw r0, 0(r31)
/* 8013C06C 00138FCC  41 82 00 10 */	beq lbl_8013C07C
/* 8013C070 00138FD0  3C 60 80 3E */	lis r3, __vt__10CBodyState@ha
/* 8013C074 00138FD4  38 03 13 18 */	addi r0, r3, __vt__10CBodyState@l
/* 8013C078 00138FD8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8013C07C:
/* 8013C07C 00138FDC  7C 80 07 35 */	extsh. r0, r4
/* 8013C080 00138FE0  40 81 00 0C */	ble lbl_8013C08C
/* 8013C084 00138FE4  7F E3 FB 78 */	mr r3, r31
/* 8013C088 00138FE8  48 1D 98 A9 */	bl Free__7CMemoryFPCv
lbl_8013C08C:
/* 8013C08C 00138FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C090 00138FF0  7F E3 FB 78 */	mr r3, r31
/* 8013C094 00138FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C098 00138FF8  7C 08 03 A6 */	mtlr r0
/* 8013C09C 00138FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C0A0 00139000  4E 80 00 20 */	blr

.global GetBodyStateTransition__15CBSLoopReactionFfR15CBodyController
GetBodyStateTransition__15CBSLoopReactionFfR15CBodyController:
/* 8013C0A4 00139004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C0A8 00139008  7C 08 02 A6 */	mflr r0
/* 8013C0AC 0013900C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C0B0 00139010  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C0B4 00139014  3B E4 00 04 */	addi r31, r4, 4
/* 8013C0B8 00139018  38 80 00 0F */	li r4, 0xf
/* 8013C0BC 0013901C  93 C1 00 08 */	stw r30, 8(r1)
/* 8013C0C0 00139020  7C 7E 1B 78 */	mr r30, r3
/* 8013C0C4 00139024  7F E3 FB 78 */	mr r3, r31
/* 8013C0C8 00139028  4B FF 53 89 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C0CC 0013902C  28 03 00 00 */	cmplwi r3, 0
/* 8013C0D0 00139030  41 82 00 0C */	beq lbl_8013C0DC
/* 8013C0D4 00139034  38 60 00 0E */	li r3, 0xe
/* 8013C0D8 00139038  48 00 01 64 */	b lbl_8013C23C
lbl_8013C0DC:
/* 8013C0DC 0013903C  7F E3 FB 78 */	mr r3, r31
/* 8013C0E0 00139040  38 80 00 03 */	li r4, 3
/* 8013C0E4 00139044  4B FF 53 6D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C0E8 00139048  28 03 00 00 */	cmplwi r3, 0
/* 8013C0EC 0013904C  41 82 00 0C */	beq lbl_8013C0F8
/* 8013C0F0 00139050  38 60 00 00 */	li r3, 0
/* 8013C0F4 00139054  48 00 01 48 */	b lbl_8013C23C
lbl_8013C0F8:
/* 8013C0F8 00139058  7F E3 FB 78 */	mr r3, r31
/* 8013C0FC 0013905C  38 80 00 04 */	li r4, 4
/* 8013C100 00139060  4B FF 53 51 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C104 00139064  28 03 00 00 */	cmplwi r3, 0
/* 8013C108 00139068  41 82 00 0C */	beq lbl_8013C114
/* 8013C10C 0013906C  38 60 00 06 */	li r3, 6
/* 8013C110 00139070  48 00 01 2C */	b lbl_8013C23C
lbl_8013C114:
/* 8013C114 00139074  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 8013C118 00139078  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013C11C 0013907C  40 82 00 20 */	bne lbl_8013C13C
/* 8013C120 00139080  7F E3 FB 78 */	mr r3, r31
/* 8013C124 00139084  38 80 00 16 */	li r4, 0x16
/* 8013C128 00139088  4B FF 53 29 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C12C 0013908C  28 03 00 00 */	cmplwi r3, 0
/* 8013C130 00139090  41 82 00 0C */	beq lbl_8013C13C
/* 8013C134 00139094  38 60 00 05 */	li r3, 5
/* 8013C138 00139098  48 00 01 04 */	b lbl_8013C23C
lbl_8013C13C:
/* 8013C13C 0013909C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8013C140 001390A0  2C 00 00 02 */	cmpwi r0, 2
/* 8013C144 001390A4  40 82 00 F4 */	bne lbl_8013C238
/* 8013C148 001390A8  7F E3 FB 78 */	mr r3, r31
/* 8013C14C 001390AC  38 80 00 05 */	li r4, 5
/* 8013C150 001390B0  4B FF 53 01 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C154 001390B4  28 03 00 00 */	cmplwi r3, 0
/* 8013C158 001390B8  41 82 00 0C */	beq lbl_8013C164
/* 8013C15C 001390BC  38 60 00 07 */	li r3, 7
/* 8013C160 001390C0  48 00 00 DC */	b lbl_8013C23C
lbl_8013C164:
/* 8013C164 001390C4  7F E3 FB 78 */	mr r3, r31
/* 8013C168 001390C8  38 80 00 06 */	li r4, 6
/* 8013C16C 001390CC  4B FF 52 E5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C170 001390D0  28 03 00 00 */	cmplwi r3, 0
/* 8013C174 001390D4  41 82 00 0C */	beq lbl_8013C180
/* 8013C178 001390D8  38 60 00 12 */	li r3, 0x12
/* 8013C17C 001390DC  48 00 00 C0 */	b lbl_8013C23C
lbl_8013C180:
/* 8013C180 001390E0  7F E3 FB 78 */	mr r3, r31
/* 8013C184 001390E4  38 80 00 07 */	li r4, 7
/* 8013C188 001390E8  4B FF 52 C9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C18C 001390EC  28 03 00 00 */	cmplwi r3, 0
/* 8013C190 001390F0  41 82 00 0C */	beq lbl_8013C19C
/* 8013C194 001390F4  38 60 00 09 */	li r3, 9
/* 8013C198 001390F8  48 00 00 A4 */	b lbl_8013C23C
lbl_8013C19C:
/* 8013C19C 001390FC  7F E3 FB 78 */	mr r3, r31
/* 8013C1A0 00139100  38 80 00 01 */	li r4, 1
/* 8013C1A4 00139104  4B FF 52 AD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C1A8 00139108  28 03 00 00 */	cmplwi r3, 0
/* 8013C1AC 0013910C  41 82 00 0C */	beq lbl_8013C1B8
/* 8013C1B0 00139110  38 60 00 03 */	li r3, 3
/* 8013C1B4 00139114  48 00 00 88 */	b lbl_8013C23C
lbl_8013C1B8:
/* 8013C1B8 00139118  C0 22 9A A8 */	lfs f1, lbl_805AB7C8@sda21(r2)
/* 8013C1BC 0013911C  38 00 00 00 */	li r0, 0
/* 8013C1C0 00139120  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8013C1C4 00139124  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C1C8 00139128  40 82 00 1C */	bne lbl_8013C1E4
/* 8013C1CC 0013912C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8013C1D0 00139130  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C1D4 00139134  40 82 00 10 */	bne lbl_8013C1E4
/* 8013C1D8 00139138  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8013C1DC 0013913C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C1E0 00139140  41 82 00 08 */	beq lbl_8013C1E8
lbl_8013C1E4:
/* 8013C1E4 00139144  38 00 00 01 */	li r0, 1
lbl_8013C1E8:
/* 8013C1E8 00139148  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013C1EC 0013914C  41 82 00 0C */	beq lbl_8013C1F8
/* 8013C1F0 00139150  38 60 00 05 */	li r3, 5
/* 8013C1F4 00139154  48 00 00 48 */	b lbl_8013C23C
lbl_8013C1F8:
/* 8013C1F8 00139158  C0 22 9A A8 */	lfs f1, lbl_805AB7C8@sda21(r2)
/* 8013C1FC 0013915C  38 00 00 00 */	li r0, 0
/* 8013C200 00139160  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8013C204 00139164  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C208 00139168  40 82 00 1C */	bne lbl_8013C224
/* 8013C20C 0013916C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8013C210 00139170  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C214 00139174  40 82 00 10 */	bne lbl_8013C224
/* 8013C218 00139178  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8013C21C 0013917C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C220 00139180  41 82 00 08 */	beq lbl_8013C228
lbl_8013C224:
/* 8013C224 00139184  38 00 00 01 */	li r0, 1
lbl_8013C228:
/* 8013C228 00139188  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013C22C 0013918C  41 82 00 0C */	beq lbl_8013C238
/* 8013C230 00139190  38 60 00 08 */	li r3, 8
/* 8013C234 00139194  48 00 00 08 */	b lbl_8013C23C
lbl_8013C238:
/* 8013C238 00139198  38 60 FF FF */	li r3, -1
lbl_8013C23C:
/* 8013C23C 0013919C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C240 001391A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C244 001391A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013C248 001391A8  7C 08 03 A6 */	mtlr r0
/* 8013C24C 001391AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C250 001391B0  4E 80 00 20 */	blr

.global PlayExitAnimation__15CBSLoopReactionCFR15CBodyControllerR13CStateManager
PlayExitAnimation__15CBSLoopReactionCFR15CBodyControllerR13CStateManager:
/* 8013C254 001391B4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8013C258 001391B8  7C 08 02 A6 */	mflr r0
/* 8013C25C 001391BC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8013C260 001391C0  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8013C264 001391C4  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 8013C268 001391C8  7C BE 2B 78 */	mr r30, r5
/* 8013C26C 001391CC  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 8013C270 001391D0  7C 9D 23 78 */	mr r29, r4
/* 8013C274 001391D4  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 8013C278 001391D8  7C 7C 1B 78 */	mr r28, r3
/* 8013C27C 001391DC  7F A3 EB 78 */	mr r3, r29
/* 8013C280 001391E0  4B FF E1 D5 */	bl GetPASDatabase__15CBodyControllerCFv
/* 8013C284 001391E4  7C 60 1B 78 */	mr r0, r3
/* 8013C288 001391E8  38 61 00 18 */	addi r3, r1, 0x18
/* 8013C28C 001391EC  7C 1F 03 78 */	mr r31, r0
/* 8013C290 001391F0  48 1A 6D ED */	bl NoParameter__12CPASAnimParmFv
/* 8013C294 001391F4  38 61 00 20 */	addi r3, r1, 0x20
/* 8013C298 001391F8  48 1A 6D E5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C29C 001391FC  38 61 00 28 */	addi r3, r1, 0x28
/* 8013C2A0 00139200  48 1A 6D DD */	bl NoParameter__12CPASAnimParmFv
/* 8013C2A4 00139204  38 61 00 30 */	addi r3, r1, 0x30
/* 8013C2A8 00139208  48 1A 6D D5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C2AC 0013920C  38 61 00 38 */	addi r3, r1, 0x38
/* 8013C2B0 00139210  48 1A 6D CD */	bl NoParameter__12CPASAnimParmFv
/* 8013C2B4 00139214  38 61 00 40 */	addi r3, r1, 0x40
/* 8013C2B8 00139218  48 1A 6D C5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C2BC 0013921C  38 61 00 48 */	addi r3, r1, 0x48
/* 8013C2C0 00139220  38 80 00 02 */	li r4, 2
/* 8013C2C4 00139224  48 1A 6C C1 */	bl FromEnum__12CPASAnimParmFi
/* 8013C2C8 00139228  80 9C 00 08 */	lwz r4, 8(r28)
/* 8013C2CC 0013922C  38 61 00 50 */	addi r3, r1, 0x50
/* 8013C2D0 00139230  48 1A 6C B5 */	bl FromEnum__12CPASAnimParmFi
/* 8013C2D4 00139234  38 61 00 20 */	addi r3, r1, 0x20
/* 8013C2D8 00139238  38 01 00 18 */	addi r0, r1, 0x18
/* 8013C2DC 0013923C  90 61 00 08 */	stw r3, 8(r1)
/* 8013C2E0 00139240  38 61 00 80 */	addi r3, r1, 0x80
/* 8013C2E4 00139244  38 A1 00 50 */	addi r5, r1, 0x50
/* 8013C2E8 00139248  38 C1 00 48 */	addi r6, r1, 0x48
/* 8013C2EC 0013924C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013C2F0 00139250  38 E1 00 40 */	addi r7, r1, 0x40
/* 8013C2F4 00139254  39 01 00 38 */	addi r8, r1, 0x38
/* 8013C2F8 00139258  39 21 00 30 */	addi r9, r1, 0x30
/* 8013C2FC 0013925C  39 41 00 28 */	addi r10, r1, 0x28
/* 8013C300 00139260  38 80 00 0A */	li r4, 0xa
/* 8013C304 00139264  4B F4 0F C1 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013C308 00139268  80 DE 09 00 */	lwz r6, 0x900(r30)
/* 8013C30C 0013926C  7F E4 FB 78 */	mr r4, r31
/* 8013C310 00139270  38 61 00 10 */	addi r3, r1, 0x10
/* 8013C314 00139274  38 A1 00 80 */	addi r5, r1, 0x80
/* 8013C318 00139278  38 E0 FF FF */	li r7, -1
/* 8013C31C 0013927C  48 1A 8D 45 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 8013C320 00139280  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8013C324 00139284  C0 02 9A A8 */	lfs f0, lbl_805AB7C8@sda21(r2)
/* 8013C328 00139288  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8013C32C 0013928C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C330 00139290  40 81 00 B4 */	ble lbl_8013C3E4
/* 8013C334 00139294  C0 02 9A AC */	lfs f0, lbl_805AB7CC@sda21(r2)
/* 8013C338 00139298  38 00 00 00 */	li r0, 0
/* 8013C33C 0013929C  38 C0 FF FF */	li r6, -1
/* 8013C340 001392A0  38 E0 00 01 */	li r7, 1
/* 8013C344 001392A4  90 61 00 58 */	stw r3, 0x58(r1)
/* 8013C348 001392A8  7F A3 EB 78 */	mr r3, r29
/* 8013C34C 001392AC  38 81 00 58 */	addi r4, r1, 0x58
/* 8013C350 001392B0  38 A0 00 00 */	li r5, 0
/* 8013C354 001392B4  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 8013C358 001392B8  38 C0 00 00 */	li r6, 0
/* 8013C35C 001392BC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8013C360 001392C0  98 E1 00 64 */	stb r7, 0x64(r1)
/* 8013C364 001392C4  90 01 00 68 */	stw r0, 0x68(r1)
/* 8013C368 001392C8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8013C36C 001392CC  98 01 00 70 */	stb r0, 0x70(r1)
/* 8013C370 001392D0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8013C374 001392D4  90 01 00 78 */	stw r0, 0x78(r1)
/* 8013C378 001392D8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8013C37C 001392DC  4B FF E5 A1 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 8013C380 001392E0  34 A1 00 84 */	addic. r5, r1, 0x84
/* 8013C384 001392E4  41 82 00 58 */	beq lbl_8013C3DC
/* 8013C388 001392E8  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013C38C 001392EC  38 60 00 00 */	li r3, 0
/* 8013C390 001392F0  2C 06 00 00 */	cmpwi r6, 0
/* 8013C394 001392F4  40 81 00 40 */	ble lbl_8013C3D4
/* 8013C398 001392F8  2C 06 00 08 */	cmpwi r6, 8
/* 8013C39C 001392FC  38 86 FF F8 */	addi r4, r6, -8
/* 8013C3A0 00139300  40 81 00 20 */	ble lbl_8013C3C0
/* 8013C3A4 00139304  38 04 00 07 */	addi r0, r4, 7
/* 8013C3A8 00139308  54 00 E8 FE */	srwi r0, r0, 3
/* 8013C3AC 0013930C  7C 09 03 A6 */	mtctr r0
/* 8013C3B0 00139310  2C 04 00 00 */	cmpwi r4, 0
/* 8013C3B4 00139314  40 81 00 0C */	ble lbl_8013C3C0
lbl_8013C3B8:
/* 8013C3B8 00139318  38 63 00 08 */	addi r3, r3, 8
/* 8013C3BC 0013931C  42 00 FF FC */	bdnz lbl_8013C3B8
lbl_8013C3C0:
/* 8013C3C0 00139320  7C 03 30 50 */	subf r0, r3, r6
/* 8013C3C4 00139324  7C 09 03 A6 */	mtctr r0
/* 8013C3C8 00139328  7C 03 30 00 */	cmpw r3, r6
/* 8013C3CC 0013932C  40 80 00 08 */	bge lbl_8013C3D4
lbl_8013C3D0:
/* 8013C3D0 00139330  42 00 00 00 */	bdnz lbl_8013C3D0
lbl_8013C3D4:
/* 8013C3D4 00139334  38 00 00 00 */	li r0, 0
/* 8013C3D8 00139338  90 05 00 00 */	stw r0, 0(r5)
lbl_8013C3DC:
/* 8013C3DC 0013933C  38 60 00 01 */	li r3, 1
/* 8013C3E0 00139340  48 00 00 64 */	b lbl_8013C444
lbl_8013C3E4:
/* 8013C3E4 00139344  34 A1 00 84 */	addic. r5, r1, 0x84
/* 8013C3E8 00139348  41 82 00 58 */	beq lbl_8013C440
/* 8013C3EC 0013934C  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013C3F0 00139350  38 60 00 00 */	li r3, 0
/* 8013C3F4 00139354  2C 06 00 00 */	cmpwi r6, 0
/* 8013C3F8 00139358  40 81 00 40 */	ble lbl_8013C438
/* 8013C3FC 0013935C  2C 06 00 08 */	cmpwi r6, 8
/* 8013C400 00139360  38 86 FF F8 */	addi r4, r6, -8
/* 8013C404 00139364  40 81 00 20 */	ble lbl_8013C424
/* 8013C408 00139368  38 04 00 07 */	addi r0, r4, 7
/* 8013C40C 0013936C  54 00 E8 FE */	srwi r0, r0, 3
/* 8013C410 00139370  7C 09 03 A6 */	mtctr r0
/* 8013C414 00139374  2C 04 00 00 */	cmpwi r4, 0
/* 8013C418 00139378  40 81 00 0C */	ble lbl_8013C424
lbl_8013C41C:
/* 8013C41C 0013937C  38 63 00 08 */	addi r3, r3, 8
/* 8013C420 00139380  42 00 FF FC */	bdnz lbl_8013C41C
lbl_8013C424:
/* 8013C424 00139384  7C 03 30 50 */	subf r0, r3, r6
/* 8013C428 00139388  7C 09 03 A6 */	mtctr r0
/* 8013C42C 0013938C  7C 03 30 00 */	cmpw r3, r6
/* 8013C430 00139390  40 80 00 08 */	bge lbl_8013C438
lbl_8013C434:
/* 8013C434 00139394  42 00 00 00 */	bdnz lbl_8013C434
lbl_8013C438:
/* 8013C438 00139398  38 00 00 00 */	li r0, 0
/* 8013C43C 0013939C  90 05 00 00 */	stw r0, 0(r5)
lbl_8013C440:
/* 8013C440 001393A0  38 60 00 00 */	li r3, 0
lbl_8013C444:
/* 8013C444 001393A4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8013C448 001393A8  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8013C44C 001393AC  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8013C450 001393B0  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 8013C454 001393B4  83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 8013C458 001393B8  7C 08 03 A6 */	mtlr r0
/* 8013C45C 001393BC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8013C460 001393C0  4E 80 00 20 */	blr

.global Shutdown__15CBSLoopReactionFR15CBodyController
Shutdown__15CBSLoopReactionFR15CBodyController:
/* 8013C464 001393C4  4E 80 00 20 */	blr

.global UpdateBody__15CBSLoopReactionFfR15CBodyControllerR13CStateManager
UpdateBody__15CBSLoopReactionFfR15CBodyControllerR13CStateManager:
/* 8013C468 001393C8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8013C46C 001393CC  7C 08 02 A6 */	mflr r0
/* 8013C470 001393D0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8013C474 001393D4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8013C478 001393D8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8013C47C 001393DC  BF 61 00 9C */	stmw r27, 0x9c(r1)
/* 8013C480 001393E0  FF E0 08 90 */	fmr f31, f1
/* 8013C484 001393E4  7C 7E 1B 78 */	mr r30, r3
/* 8013C488 001393E8  7C 9B 23 78 */	mr r27, r4
/* 8013C48C 001393EC  7C BC 2B 78 */	mr r28, r5
/* 8013C490 001393F0  4B FF FC 15 */	bl GetBodyStateTransition__15CBSLoopReactionFfR15CBodyController
/* 8013C494 001393F4  7C 7F 1B 78 */	mr r31, r3
/* 8013C498 001393F8  2C 1F FF FF */	cmpwi r31, -1
/* 8013C49C 001393FC  40 82 02 70 */	bne lbl_8013C70C
/* 8013C4A0 00139400  80 1E 00 04 */	lwz r0, 4(r30)
/* 8013C4A4 00139404  3B BB 00 04 */	addi r29, r27, 4
/* 8013C4A8 00139408  2C 00 00 01 */	cmpwi r0, 1
/* 8013C4AC 0013940C  41 82 01 B4 */	beq lbl_8013C660
/* 8013C4B0 00139410  40 80 00 10 */	bge lbl_8013C4C0
/* 8013C4B4 00139414  2C 00 00 00 */	cmpwi r0, 0
/* 8013C4B8 00139418  40 80 00 14 */	bge lbl_8013C4CC
/* 8013C4BC 0013941C  48 00 02 50 */	b lbl_8013C70C
lbl_8013C4C0:
/* 8013C4C0 00139420  2C 00 00 03 */	cmpwi r0, 3
/* 8013C4C4 00139424  40 80 02 48 */	bge lbl_8013C70C
/* 8013C4C8 00139428  48 00 02 2C */	b lbl_8013C6F4
lbl_8013C4CC:
/* 8013C4CC 0013942C  7F A3 EB 78 */	mr r3, r29
/* 8013C4D0 00139430  38 80 00 0A */	li r4, 0xa
/* 8013C4D4 00139434  4B FF 4F 7D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C4D8 00139438  28 03 00 00 */	cmplwi r3, 0
/* 8013C4DC 0013943C  41 82 00 38 */	beq lbl_8013C514
/* 8013C4E0 00139440  7F C3 F3 78 */	mr r3, r30
/* 8013C4E4 00139444  7F 64 DB 78 */	mr r4, r27
/* 8013C4E8 00139448  7F 85 E3 78 */	mr r5, r28
/* 8013C4EC 0013944C  4B FF FD 69 */	bl PlayExitAnimation__15CBSLoopReactionCFR15CBodyControllerR13CStateManager
/* 8013C4F0 00139450  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013C4F4 00139454  41 82 00 10 */	beq lbl_8013C504
/* 8013C4F8 00139458  38 00 00 02 */	li r0, 2
/* 8013C4FC 0013945C  90 1E 00 04 */	stw r0, 4(r30)
/* 8013C500 00139460  48 00 02 0C */	b lbl_8013C70C
lbl_8013C504:
/* 8013C504 00139464  38 00 FF FF */	li r0, -1
/* 8013C508 00139468  3B E0 00 05 */	li r31, 5
/* 8013C50C 0013946C  90 1E 00 04 */	stw r0, 4(r30)
/* 8013C510 00139470  48 00 01 FC */	b lbl_8013C70C
lbl_8013C514:
/* 8013C514 00139474  88 1B 03 00 */	lbz r0, 0x300(r27)
/* 8013C518 00139478  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013C51C 0013947C  41 82 00 F8 */	beq lbl_8013C614
/* 8013C520 00139480  38 61 00 10 */	addi r3, r1, 0x10
/* 8013C524 00139484  48 1A 6B 59 */	bl NoParameter__12CPASAnimParmFv
/* 8013C528 00139488  38 61 00 18 */	addi r3, r1, 0x18
/* 8013C52C 0013948C  48 1A 6B 51 */	bl NoParameter__12CPASAnimParmFv
/* 8013C530 00139490  38 61 00 20 */	addi r3, r1, 0x20
/* 8013C534 00139494  48 1A 6B 49 */	bl NoParameter__12CPASAnimParmFv
/* 8013C538 00139498  38 61 00 28 */	addi r3, r1, 0x28
/* 8013C53C 0013949C  48 1A 6B 41 */	bl NoParameter__12CPASAnimParmFv
/* 8013C540 001394A0  38 61 00 30 */	addi r3, r1, 0x30
/* 8013C544 001394A4  48 1A 6B 39 */	bl NoParameter__12CPASAnimParmFv
/* 8013C548 001394A8  38 61 00 38 */	addi r3, r1, 0x38
/* 8013C54C 001394AC  48 1A 6B 31 */	bl NoParameter__12CPASAnimParmFv
/* 8013C550 001394B0  38 61 00 40 */	addi r3, r1, 0x40
/* 8013C554 001394B4  38 80 00 01 */	li r4, 1
/* 8013C558 001394B8  48 1A 6A 2D */	bl FromEnum__12CPASAnimParmFi
/* 8013C55C 001394BC  80 9E 00 08 */	lwz r4, 8(r30)
/* 8013C560 001394C0  38 61 00 48 */	addi r3, r1, 0x48
/* 8013C564 001394C4  48 1A 6A 21 */	bl FromEnum__12CPASAnimParmFi
/* 8013C568 001394C8  38 61 00 18 */	addi r3, r1, 0x18
/* 8013C56C 001394CC  38 01 00 10 */	addi r0, r1, 0x10
/* 8013C570 001394D0  90 61 00 08 */	stw r3, 8(r1)
/* 8013C574 001394D4  38 61 00 50 */	addi r3, r1, 0x50
/* 8013C578 001394D8  38 A1 00 48 */	addi r5, r1, 0x48
/* 8013C57C 001394DC  38 C1 00 40 */	addi r6, r1, 0x40
/* 8013C580 001394E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013C584 001394E4  38 E1 00 38 */	addi r7, r1, 0x38
/* 8013C588 001394E8  39 01 00 30 */	addi r8, r1, 0x30
/* 8013C58C 001394EC  39 21 00 28 */	addi r9, r1, 0x28
/* 8013C590 001394F0  39 41 00 20 */	addi r10, r1, 0x20
/* 8013C594 001394F4  38 80 00 0A */	li r4, 0xa
/* 8013C598 001394F8  4B F4 0D 2D */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013C59C 001394FC  80 BC 09 00 */	lwz r5, 0x900(r28)
/* 8013C5A0 00139500  7F 63 DB 78 */	mr r3, r27
/* 8013C5A4 00139504  38 81 00 50 */	addi r4, r1, 0x50
/* 8013C5A8 00139508  4B FF DD 55 */	bl LoopBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8013C5AC 0013950C  38 00 00 01 */	li r0, 1
/* 8013C5B0 00139510  34 A1 00 54 */	addic. r5, r1, 0x54
/* 8013C5B4 00139514  90 1E 00 04 */	stw r0, 4(r30)
/* 8013C5B8 00139518  41 82 01 54 */	beq lbl_8013C70C
/* 8013C5BC 0013951C  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013C5C0 00139520  38 60 00 00 */	li r3, 0
/* 8013C5C4 00139524  2C 06 00 00 */	cmpwi r6, 0
/* 8013C5C8 00139528  40 81 00 40 */	ble lbl_8013C608
/* 8013C5CC 0013952C  2C 06 00 08 */	cmpwi r6, 8
/* 8013C5D0 00139530  38 86 FF F8 */	addi r4, r6, -8
/* 8013C5D4 00139534  40 81 00 20 */	ble lbl_8013C5F4
/* 8013C5D8 00139538  38 04 00 07 */	addi r0, r4, 7
/* 8013C5DC 0013953C  54 00 E8 FE */	srwi r0, r0, 3
/* 8013C5E0 00139540  7C 09 03 A6 */	mtctr r0
/* 8013C5E4 00139544  2C 04 00 00 */	cmpwi r4, 0
/* 8013C5E8 00139548  40 81 00 0C */	ble lbl_8013C5F4
lbl_8013C5EC:
/* 8013C5EC 0013954C  38 63 00 08 */	addi r3, r3, 8
/* 8013C5F0 00139550  42 00 FF FC */	bdnz lbl_8013C5EC
lbl_8013C5F4:
/* 8013C5F4 00139554  7C 03 30 50 */	subf r0, r3, r6
/* 8013C5F8 00139558  7C 09 03 A6 */	mtctr r0
/* 8013C5FC 0013955C  7C 03 30 00 */	cmpw r3, r6
/* 8013C600 00139560  40 80 00 08 */	bge lbl_8013C608
lbl_8013C604:
/* 8013C604 00139564  42 00 00 00 */	bdnz lbl_8013C604
lbl_8013C608:
/* 8013C608 00139568  38 00 00 00 */	li r0, 0
/* 8013C60C 0013956C  90 05 00 00 */	stw r0, 0(r5)
/* 8013C610 00139570  48 00 00 FC */	b lbl_8013C70C
lbl_8013C614:
/* 8013C614 00139574  C0 22 9A A8 */	lfs f1, lbl_805AB7C8@sda21(r2)
/* 8013C618 00139578  38 00 00 00 */	li r0, 0
/* 8013C61C 0013957C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8013C620 00139580  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C624 00139584  40 82 00 1C */	bne lbl_8013C640
/* 8013C628 00139588  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8013C62C 0013958C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C630 00139590  40 82 00 10 */	bne lbl_8013C640
/* 8013C634 00139594  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8013C638 00139598  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C63C 0013959C  41 82 00 08 */	beq lbl_8013C644
lbl_8013C640:
/* 8013C640 001395A0  38 00 00 01 */	li r0, 1
lbl_8013C644:
/* 8013C644 001395A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013C648 001395A8  41 82 00 C4 */	beq lbl_8013C70C
/* 8013C64C 001395AC  FC 20 F8 90 */	fmr f1, f31
/* 8013C650 001395B0  7F 63 DB 78 */	mr r3, r27
/* 8013C654 001395B4  38 9D 00 18 */	addi r4, r29, 0x18
/* 8013C658 001395B8  4B FF E0 4D */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 8013C65C 001395BC  48 00 00 B0 */	b lbl_8013C70C
lbl_8013C660:
/* 8013C660 001395C0  7F A3 EB 78 */	mr r3, r29
/* 8013C664 001395C4  38 80 00 0A */	li r4, 0xa
/* 8013C668 001395C8  4B FF 4D E9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C66C 001395CC  28 03 00 00 */	cmplwi r3, 0
/* 8013C670 001395D0  41 82 00 38 */	beq lbl_8013C6A8
/* 8013C674 001395D4  7F C3 F3 78 */	mr r3, r30
/* 8013C678 001395D8  7F 64 DB 78 */	mr r4, r27
/* 8013C67C 001395DC  7F 85 E3 78 */	mr r5, r28
/* 8013C680 001395E0  4B FF FB D5 */	bl PlayExitAnimation__15CBSLoopReactionCFR15CBodyControllerR13CStateManager
/* 8013C684 001395E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013C688 001395E8  41 82 00 10 */	beq lbl_8013C698
/* 8013C68C 001395EC  38 00 00 02 */	li r0, 2
/* 8013C690 001395F0  90 1E 00 04 */	stw r0, 4(r30)
/* 8013C694 001395F4  48 00 00 78 */	b lbl_8013C70C
lbl_8013C698:
/* 8013C698 001395F8  38 00 FF FF */	li r0, -1
/* 8013C69C 001395FC  3B E0 00 05 */	li r31, 5
/* 8013C6A0 00139600  90 1E 00 04 */	stw r0, 4(r30)
/* 8013C6A4 00139604  48 00 00 68 */	b lbl_8013C70C
lbl_8013C6A8:
/* 8013C6A8 00139608  C0 22 9A A8 */	lfs f1, lbl_805AB7C8@sda21(r2)
/* 8013C6AC 0013960C  38 00 00 00 */	li r0, 0
/* 8013C6B0 00139610  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8013C6B4 00139614  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C6B8 00139618  40 82 00 1C */	bne lbl_8013C6D4
/* 8013C6BC 0013961C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8013C6C0 00139620  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C6C4 00139624  40 82 00 10 */	bne lbl_8013C6D4
/* 8013C6C8 00139628  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8013C6CC 0013962C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013C6D0 00139630  41 82 00 08 */	beq lbl_8013C6D8
lbl_8013C6D4:
/* 8013C6D4 00139634  38 00 00 01 */	li r0, 1
lbl_8013C6D8:
/* 8013C6D8 00139638  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8013C6DC 0013963C  41 82 00 30 */	beq lbl_8013C70C
/* 8013C6E0 00139640  FC 20 F8 90 */	fmr f1, f31
/* 8013C6E4 00139644  7F 63 DB 78 */	mr r3, r27
/* 8013C6E8 00139648  38 9D 00 18 */	addi r4, r29, 0x18
/* 8013C6EC 0013964C  4B FF DF B9 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 8013C6F0 00139650  48 00 00 1C */	b lbl_8013C70C
lbl_8013C6F4:
/* 8013C6F4 00139654  88 1B 03 00 */	lbz r0, 0x300(r27)
/* 8013C6F8 00139658  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8013C6FC 0013965C  41 82 00 10 */	beq lbl_8013C70C
/* 8013C700 00139660  38 00 FF FF */	li r0, -1
/* 8013C704 00139664  3B E0 00 05 */	li r31, 5
/* 8013C708 00139668  90 1E 00 04 */	stw r0, 4(r30)
lbl_8013C70C:
/* 8013C70C 0013966C  7F E3 FB 78 */	mr r3, r31
/* 8013C710 00139670  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8013C714 00139674  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8013C718 00139678  BB 61 00 9C */	lmw r27, 0x9c(r1)
/* 8013C71C 0013967C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8013C720 00139680  7C 08 03 A6 */	mtlr r0
/* 8013C724 00139684  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8013C728 00139688  4E 80 00 20 */	blr

.global Start__15CBSLoopReactionFR15CBodyControllerR13CStateManager
Start__15CBSLoopReactionFR15CBodyControllerR13CStateManager:
/* 8013C72C 0013968C  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8013C730 00139690  7C 08 02 A6 */	mflr r0
/* 8013C734 00139694  90 01 01 64 */	stw r0, 0x164(r1)
/* 8013C738 00139698  93 E1 01 5C */	stw r31, 0x15c(r1)
/* 8013C73C 0013969C  7C BF 2B 78 */	mr r31, r5
/* 8013C740 001396A0  93 C1 01 58 */	stw r30, 0x158(r1)
/* 8013C744 001396A4  7C 9E 23 78 */	mr r30, r4
/* 8013C748 001396A8  38 80 00 08 */	li r4, 8
/* 8013C74C 001396AC  93 A1 01 54 */	stw r29, 0x154(r1)
/* 8013C750 001396B0  3B BE 00 04 */	addi r29, r30, 4
/* 8013C754 001396B4  93 81 01 50 */	stw r28, 0x150(r1)
/* 8013C758 001396B8  7C 7C 1B 78 */	mr r28, r3
/* 8013C75C 001396BC  7F A3 EB 78 */	mr r3, r29
/* 8013C760 001396C0  4B FF 4C F1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C764 001396C4  28 03 00 00 */	cmplwi r3, 0
/* 8013C768 001396C8  41 82 00 20 */	beq lbl_8013C788
/* 8013C76C 001396CC  80 03 00 08 */	lwz r0, 8(r3)
/* 8013C770 001396D0  38 60 00 00 */	li r3, 0
/* 8013C774 001396D4  90 1C 00 08 */	stw r0, 8(r28)
/* 8013C778 001396D8  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 8013C77C 001396DC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8013C780 001396E0  98 1C 00 0C */	stb r0, 0xc(r28)
/* 8013C784 001396E4  48 00 00 28 */	b lbl_8013C7AC
lbl_8013C788:
/* 8013C788 001396E8  7F A3 EB 78 */	mr r3, r29
/* 8013C78C 001396EC  38 80 00 09 */	li r4, 9
/* 8013C790 001396F0  4B FF 4C C1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013C794 001396F4  80 03 00 08 */	lwz r0, 8(r3)
/* 8013C798 001396F8  38 60 00 01 */	li r3, 1
/* 8013C79C 001396FC  90 1C 00 08 */	stw r0, 8(r28)
/* 8013C7A0 00139700  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 8013C7A4 00139704  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8013C7A8 00139708  98 1C 00 0C */	stb r0, 0xc(r28)
lbl_8013C7AC:
/* 8013C7AC 0013970C  38 00 00 00 */	li r0, 0
/* 8013C7B0 00139710  38 61 00 58 */	addi r3, r1, 0x58
/* 8013C7B4 00139714  90 1C 00 04 */	stw r0, 4(r28)
/* 8013C7B8 00139718  48 1A 68 C5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C7BC 0013971C  38 61 00 60 */	addi r3, r1, 0x60
/* 8013C7C0 00139720  48 1A 68 BD */	bl NoParameter__12CPASAnimParmFv
/* 8013C7C4 00139724  38 61 00 68 */	addi r3, r1, 0x68
/* 8013C7C8 00139728  48 1A 68 B5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C7CC 0013972C  38 61 00 70 */	addi r3, r1, 0x70
/* 8013C7D0 00139730  48 1A 68 AD */	bl NoParameter__12CPASAnimParmFv
/* 8013C7D4 00139734  38 61 00 78 */	addi r3, r1, 0x78
/* 8013C7D8 00139738  48 1A 68 A5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C7DC 0013973C  38 61 00 80 */	addi r3, r1, 0x80
/* 8013C7E0 00139740  48 1A 68 9D */	bl NoParameter__12CPASAnimParmFv
/* 8013C7E4 00139744  80 9C 00 04 */	lwz r4, 4(r28)
/* 8013C7E8 00139748  38 61 00 88 */	addi r3, r1, 0x88
/* 8013C7EC 0013974C  48 1A 67 99 */	bl FromEnum__12CPASAnimParmFi
/* 8013C7F0 00139750  80 9C 00 08 */	lwz r4, 8(r28)
/* 8013C7F4 00139754  38 61 00 90 */	addi r3, r1, 0x90
/* 8013C7F8 00139758  48 1A 67 8D */	bl FromEnum__12CPASAnimParmFi
/* 8013C7FC 0013975C  38 61 00 60 */	addi r3, r1, 0x60
/* 8013C800 00139760  38 01 00 58 */	addi r0, r1, 0x58
/* 8013C804 00139764  90 61 00 08 */	stw r3, 8(r1)
/* 8013C808 00139768  38 61 01 08 */	addi r3, r1, 0x108
/* 8013C80C 0013976C  38 A1 00 90 */	addi r5, r1, 0x90
/* 8013C810 00139770  38 C1 00 88 */	addi r6, r1, 0x88
/* 8013C814 00139774  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013C818 00139778  38 E1 00 80 */	addi r7, r1, 0x80
/* 8013C81C 0013977C  39 01 00 78 */	addi r8, r1, 0x78
/* 8013C820 00139780  39 21 00 70 */	addi r9, r1, 0x70
/* 8013C824 00139784  39 41 00 68 */	addi r10, r1, 0x68
/* 8013C828 00139788  38 80 00 0A */	li r4, 0xa
/* 8013C82C 0013978C  4B F4 0A 99 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013C830 00139790  7F C3 F3 78 */	mr r3, r30
/* 8013C834 00139794  4B FF DC 21 */	bl GetPASDatabase__15CBodyControllerCFv
/* 8013C838 00139798  80 DF 09 00 */	lwz r6, 0x900(r31)
/* 8013C83C 0013979C  7C 64 1B 78 */	mr r4, r3
/* 8013C840 001397A0  38 61 00 50 */	addi r3, r1, 0x50
/* 8013C844 001397A4  38 A1 01 08 */	addi r5, r1, 0x108
/* 8013C848 001397A8  38 E0 FF FF */	li r7, -1
/* 8013C84C 001397AC  48 1A 88 15 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 8013C850 001397B0  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8013C854 001397B4  C0 02 9A B0 */	lfs f0, lbl_805AB7D0@sda21(r2)
/* 8013C858 001397B8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8013C85C 001397BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C860 001397C0  40 81 00 54 */	ble lbl_8013C8B4
/* 8013C864 001397C4  C0 02 9A AC */	lfs f0, lbl_805AB7CC@sda21(r2)
/* 8013C868 001397C8  38 00 00 00 */	li r0, 0
/* 8013C86C 001397CC  38 C0 FF FF */	li r6, -1
/* 8013C870 001397D0  38 E0 00 01 */	li r7, 1
/* 8013C874 001397D4  90 61 00 98 */	stw r3, 0x98(r1)
/* 8013C878 001397D8  7F C3 F3 78 */	mr r3, r30
/* 8013C87C 001397DC  38 81 00 98 */	addi r4, r1, 0x98
/* 8013C880 001397E0  38 A0 00 00 */	li r5, 0
/* 8013C884 001397E4  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 8013C888 001397E8  38 C0 00 00 */	li r6, 0
/* 8013C88C 001397EC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8013C890 001397F0  98 E1 00 A4 */	stb r7, 0xa4(r1)
/* 8013C894 001397F4  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8013C898 001397F8  90 01 00 AC */	stw r0, 0xac(r1)
/* 8013C89C 001397FC  98 01 00 B0 */	stb r0, 0xb0(r1)
/* 8013C8A0 00139800  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8013C8A4 00139804  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8013C8A8 00139808  90 01 00 BC */	stw r0, 0xbc(r1)
/* 8013C8AC 0013980C  4B FF E0 71 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 8013C8B0 00139810  48 00 00 F4 */	b lbl_8013C9A4
lbl_8013C8B4:
/* 8013C8B4 00139814  38 00 00 01 */	li r0, 1
/* 8013C8B8 00139818  38 61 00 10 */	addi r3, r1, 0x10
/* 8013C8BC 0013981C  90 1C 00 04 */	stw r0, 4(r28)
/* 8013C8C0 00139820  48 1A 67 BD */	bl NoParameter__12CPASAnimParmFv
/* 8013C8C4 00139824  38 61 00 18 */	addi r3, r1, 0x18
/* 8013C8C8 00139828  48 1A 67 B5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C8CC 0013982C  38 61 00 20 */	addi r3, r1, 0x20
/* 8013C8D0 00139830  48 1A 67 AD */	bl NoParameter__12CPASAnimParmFv
/* 8013C8D4 00139834  38 61 00 28 */	addi r3, r1, 0x28
/* 8013C8D8 00139838  48 1A 67 A5 */	bl NoParameter__12CPASAnimParmFv
/* 8013C8DC 0013983C  38 61 00 30 */	addi r3, r1, 0x30
/* 8013C8E0 00139840  48 1A 67 9D */	bl NoParameter__12CPASAnimParmFv
/* 8013C8E4 00139844  38 61 00 38 */	addi r3, r1, 0x38
/* 8013C8E8 00139848  48 1A 67 95 */	bl NoParameter__12CPASAnimParmFv
/* 8013C8EC 0013984C  80 9C 00 04 */	lwz r4, 4(r28)
/* 8013C8F0 00139850  38 61 00 40 */	addi r3, r1, 0x40
/* 8013C8F4 00139854  48 1A 66 91 */	bl FromEnum__12CPASAnimParmFi
/* 8013C8F8 00139858  80 9C 00 08 */	lwz r4, 8(r28)
/* 8013C8FC 0013985C  38 61 00 48 */	addi r3, r1, 0x48
/* 8013C900 00139860  48 1A 66 85 */	bl FromEnum__12CPASAnimParmFi
/* 8013C904 00139864  38 61 00 18 */	addi r3, r1, 0x18
/* 8013C908 00139868  38 01 00 10 */	addi r0, r1, 0x10
/* 8013C90C 0013986C  90 61 00 08 */	stw r3, 8(r1)
/* 8013C910 00139870  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8013C914 00139874  38 A1 00 48 */	addi r5, r1, 0x48
/* 8013C918 00139878  38 C1 00 40 */	addi r6, r1, 0x40
/* 8013C91C 0013987C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8013C920 00139880  38 E1 00 38 */	addi r7, r1, 0x38
/* 8013C924 00139884  39 01 00 30 */	addi r8, r1, 0x30
/* 8013C928 00139888  39 21 00 28 */	addi r9, r1, 0x28
/* 8013C92C 0013988C  39 41 00 20 */	addi r10, r1, 0x20
/* 8013C930 00139890  38 80 00 0A */	li r4, 0xa
/* 8013C934 00139894  4B F4 09 91 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013C938 00139898  80 BF 09 00 */	lwz r5, 0x900(r31)
/* 8013C93C 0013989C  7F C3 F3 78 */	mr r3, r30
/* 8013C940 001398A0  38 81 01 08 */	addi r4, r1, 0x108
/* 8013C944 001398A4  4B FF D9 B9 */	bl LoopBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8013C948 001398A8  34 A1 00 C4 */	addic. r5, r1, 0xc4
/* 8013C94C 001398AC  41 82 00 58 */	beq lbl_8013C9A4
/* 8013C950 001398B0  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013C954 001398B4  38 60 00 00 */	li r3, 0
/* 8013C958 001398B8  2C 06 00 00 */	cmpwi r6, 0
/* 8013C95C 001398BC  40 81 00 40 */	ble lbl_8013C99C
/* 8013C960 001398C0  2C 06 00 08 */	cmpwi r6, 8
/* 8013C964 001398C4  38 86 FF F8 */	addi r4, r6, -8
/* 8013C968 001398C8  40 81 00 20 */	ble lbl_8013C988
/* 8013C96C 001398CC  38 04 00 07 */	addi r0, r4, 7
/* 8013C970 001398D0  54 00 E8 FE */	srwi r0, r0, 3
/* 8013C974 001398D4  7C 09 03 A6 */	mtctr r0
/* 8013C978 001398D8  2C 04 00 00 */	cmpwi r4, 0
/* 8013C97C 001398DC  40 81 00 0C */	ble lbl_8013C988
lbl_8013C980:
/* 8013C980 001398E0  38 63 00 08 */	addi r3, r3, 8
/* 8013C984 001398E4  42 00 FF FC */	bdnz lbl_8013C980
lbl_8013C988:
/* 8013C988 001398E8  7C 03 30 50 */	subf r0, r3, r6
/* 8013C98C 001398EC  7C 09 03 A6 */	mtctr r0
/* 8013C990 001398F0  7C 03 30 00 */	cmpw r3, r6
/* 8013C994 001398F4  40 80 00 08 */	bge lbl_8013C99C
lbl_8013C998:
/* 8013C998 001398F8  42 00 00 00 */	bdnz lbl_8013C998
lbl_8013C99C:
/* 8013C99C 001398FC  38 00 00 00 */	li r0, 0
/* 8013C9A0 00139900  90 05 00 00 */	stw r0, 0(r5)
lbl_8013C9A4:
/* 8013C9A4 00139904  34 A1 01 0C */	addic. r5, r1, 0x10c
/* 8013C9A8 00139908  41 82 00 58 */	beq lbl_8013CA00
/* 8013C9AC 0013990C  80 C5 00 00 */	lwz r6, 0(r5)
/* 8013C9B0 00139910  38 60 00 00 */	li r3, 0
/* 8013C9B4 00139914  2C 06 00 00 */	cmpwi r6, 0
/* 8013C9B8 00139918  40 81 00 40 */	ble lbl_8013C9F8
/* 8013C9BC 0013991C  2C 06 00 08 */	cmpwi r6, 8
/* 8013C9C0 00139920  38 86 FF F8 */	addi r4, r6, -8
/* 8013C9C4 00139924  40 81 00 20 */	ble lbl_8013C9E4
/* 8013C9C8 00139928  38 04 00 07 */	addi r0, r4, 7
/* 8013C9CC 0013992C  54 00 E8 FE */	srwi r0, r0, 3
/* 8013C9D0 00139930  7C 09 03 A6 */	mtctr r0
/* 8013C9D4 00139934  2C 04 00 00 */	cmpwi r4, 0
/* 8013C9D8 00139938  40 81 00 0C */	ble lbl_8013C9E4
lbl_8013C9DC:
/* 8013C9DC 0013993C  38 63 00 08 */	addi r3, r3, 8
/* 8013C9E0 00139940  42 00 FF FC */	bdnz lbl_8013C9DC
lbl_8013C9E4:
/* 8013C9E4 00139944  7C 03 30 50 */	subf r0, r3, r6
/* 8013C9E8 00139948  7C 09 03 A6 */	mtctr r0
/* 8013C9EC 0013994C  7C 03 30 00 */	cmpw r3, r6
/* 8013C9F0 00139950  40 80 00 08 */	bge lbl_8013C9F8
lbl_8013C9F4:
/* 8013C9F4 00139954  42 00 00 00 */	bdnz lbl_8013C9F4
lbl_8013C9F8:
/* 8013C9F8 00139958  38 00 00 00 */	li r0, 0
/* 8013C9FC 0013995C  90 05 00 00 */	stw r0, 0(r5)
lbl_8013CA00:
/* 8013CA00 00139960  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8013CA04 00139964  83 E1 01 5C */	lwz r31, 0x15c(r1)
/* 8013CA08 00139968  83 C1 01 58 */	lwz r30, 0x158(r1)
/* 8013CA0C 0013996C  83 A1 01 54 */	lwz r29, 0x154(r1)
/* 8013CA10 00139970  83 81 01 50 */	lwz r28, 0x150(r1)
/* 8013CA14 00139974  7C 08 03 A6 */	mtlr r0
/* 8013CA18 00139978  38 21 01 60 */	addi r1, r1, 0x160
/* 8013CA1C 0013997C  4E 80 00 20 */	blr

.global __ct__15CBSLoopReactionFv
__ct__15CBSLoopReactionFv:
/* 8013CA20 00139980  3C A0 80 3E */	lis r5, __vt__10CBodyState@ha
/* 8013CA24 00139984  3C 80 80 3E */	lis r4, lbl_803E1878@ha
/* 8013CA28 00139988  38 C5 13 18 */	addi r6, r5, __vt__10CBodyState@l
/* 8013CA2C 0013998C  38 00 FF FF */	li r0, -1
/* 8013CA30 00139990  90 C3 00 00 */	stw r6, 0(r3)
/* 8013CA34 00139994  38 A4 18 78 */	addi r5, r4, lbl_803E1878@l
/* 8013CA38 00139998  38 80 00 00 */	li r4, 0
/* 8013CA3C 0013999C  90 A3 00 00 */	stw r5, 0(r3)
/* 8013CA40 001399A0  90 03 00 04 */	stw r0, 4(r3)
/* 8013CA44 001399A4  90 03 00 08 */	stw r0, 8(r3)
/* 8013CA48 001399A8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8013CA4C 001399AC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8013CA50 001399B0  98 03 00 0C */	stb r0, 0xc(r3)
/* 8013CA54 001399B4  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AB7C8
lbl_805AB7C8:
	# ROM: 0x3F8068
	.4byte 0

.global lbl_805AB7CC
lbl_805AB7CC:
	# ROM: 0x3F806C
	.float 1.0

.global lbl_805AB7D0
lbl_805AB7D0:
	# ROM: 0x3F8070
	.float 1.1920929E-7
	.4byte 0

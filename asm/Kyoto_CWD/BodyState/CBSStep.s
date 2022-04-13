.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__7CBSStepFv
__dt__7CBSStepFv:
/* 80138DA4 00135D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138DA8 00135D08  7C 08 02 A6 */	mflr r0
/* 80138DAC 00135D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138DB0 00135D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138DB4 00135D14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80138DB8 00135D18  41 82 00 30 */	beq lbl_80138DE8
/* 80138DBC 00135D1C  3C 60 80 3E */	lis r3, lbl_803E1718@ha
/* 80138DC0 00135D20  38 03 17 18 */	addi r0, r3, lbl_803E1718@l
/* 80138DC4 00135D24  90 1F 00 00 */	stw r0, 0(r31)
/* 80138DC8 00135D28  41 82 00 10 */	beq lbl_80138DD8
/* 80138DCC 00135D2C  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 80138DD0 00135D30  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 80138DD4 00135D34  90 1F 00 00 */	stw r0, 0(r31)
lbl_80138DD8:
/* 80138DD8 00135D38  7C 80 07 35 */	extsh. r0, r4
/* 80138DDC 00135D3C  40 81 00 0C */	ble lbl_80138DE8
/* 80138DE0 00135D40  7F E3 FB 78 */	mr r3, r31
/* 80138DE4 00135D44  48 1D CB 4D */	bl Free__7CMemoryFPCv
lbl_80138DE8:
/* 80138DE8 00135D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138DEC 00135D4C  7F E3 FB 78 */	mr r3, r31
/* 80138DF0 00135D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138DF4 00135D54  7C 08 03 A6 */	mtlr r0
/* 80138DF8 00135D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80138DFC 00135D5C  4E 80 00 20 */	blr 

.global IsMoving__7CBSStepCFv
IsMoving__7CBSStepCFv:
/* 80138E00 00135D60  38 60 00 01 */	li r3, 1
/* 80138E04 00135D64  4E 80 00 20 */	blr 

.global CanShoot__7CBSStepCFv
CanShoot__7CBSStepCFv:
/* 80138E08 00135D68  38 60 00 01 */	li r3, 1
/* 80138E0C 00135D6C  4E 80 00 20 */	blr 

.global GetBodyStateTransition__7CBSStepFfR15CBodyController
GetBodyStateTransition__7CBSStepFfR15CBodyController:
/* 80138E10 00135D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138E14 00135D74  7C 08 02 A6 */	mflr r0
/* 80138E18 00135D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138E1C 00135D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138E20 00135D80  93 C1 00 08 */	stw r30, 8(r1)
/* 80138E24 00135D84  7C 9E 23 78 */	mr r30, r4
/* 80138E28 00135D88  3B FE 00 04 */	addi r31, r30, 4
/* 80138E2C 00135D8C  38 80 00 0F */	li r4, 0xf
/* 80138E30 00135D90  7F E3 FB 78 */	mr r3, r31
/* 80138E34 00135D94  4B FF 86 1D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138E38 00135D98  28 03 00 00 */	cmplwi r3, 0
/* 80138E3C 00135D9C  41 82 00 0C */	beq lbl_80138E48
/* 80138E40 00135DA0  38 60 00 0E */	li r3, 0xe
/* 80138E44 00135DA4  48 00 01 64 */	b lbl_80138FA8
lbl_80138E48:
/* 80138E48 00135DA8  7F E3 FB 78 */	mr r3, r31
/* 80138E4C 00135DAC  38 80 00 03 */	li r4, 3
/* 80138E50 00135DB0  4B FF 86 01 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138E54 00135DB4  28 03 00 00 */	cmplwi r3, 0
/* 80138E58 00135DB8  41 82 00 0C */	beq lbl_80138E64
/* 80138E5C 00135DBC  38 60 00 00 */	li r3, 0
/* 80138E60 00135DC0  48 00 01 48 */	b lbl_80138FA8
lbl_80138E64:
/* 80138E64 00135DC4  7F E3 FB 78 */	mr r3, r31
/* 80138E68 00135DC8  38 80 00 09 */	li r4, 9
/* 80138E6C 00135DCC  4B FF 85 E5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138E70 00135DD0  28 03 00 00 */	cmplwi r3, 0
/* 80138E74 00135DD4  41 82 00 0C */	beq lbl_80138E80
/* 80138E78 00135DD8  38 60 00 0A */	li r3, 0xa
/* 80138E7C 00135DDC  48 00 01 2C */	b lbl_80138FA8
lbl_80138E80:
/* 80138E80 00135DE0  7F E3 FB 78 */	mr r3, r31
/* 80138E84 00135DE4  38 80 00 04 */	li r4, 4
/* 80138E88 00135DE8  4B FF 85 C9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138E8C 00135DEC  28 03 00 00 */	cmplwi r3, 0
/* 80138E90 00135DF0  41 82 00 0C */	beq lbl_80138E9C
/* 80138E94 00135DF4  38 60 00 06 */	li r3, 6
/* 80138E98 00135DF8  48 00 01 10 */	b lbl_80138FA8
lbl_80138E9C:
/* 80138E9C 00135DFC  7F E3 FB 78 */	mr r3, r31
/* 80138EA0 00135E00  38 80 00 16 */	li r4, 0x16
/* 80138EA4 00135E04  4B FF 85 AD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138EA8 00135E08  28 03 00 00 */	cmplwi r3, 0
/* 80138EAC 00135E0C  41 82 00 0C */	beq lbl_80138EB8
/* 80138EB0 00135E10  38 60 00 05 */	li r3, 5
/* 80138EB4 00135E14  48 00 00 F4 */	b lbl_80138FA8
lbl_80138EB8:
/* 80138EB8 00135E18  7F E3 FB 78 */	mr r3, r31
/* 80138EBC 00135E1C  38 80 00 0E */	li r4, 0xe
/* 80138EC0 00135E20  4B FF 85 91 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138EC4 00135E24  28 03 00 00 */	cmplwi r3, 0
/* 80138EC8 00135E28  41 82 00 0C */	beq lbl_80138ED4
/* 80138ECC 00135E2C  38 60 00 0C */	li r3, 0xc
/* 80138ED0 00135E30  48 00 00 D8 */	b lbl_80138FA8
lbl_80138ED4:
/* 80138ED4 00135E34  7F E3 FB 78 */	mr r3, r31
/* 80138ED8 00135E38  38 80 00 05 */	li r4, 5
/* 80138EDC 00135E3C  4B FF 85 75 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138EE0 00135E40  28 03 00 00 */	cmplwi r3, 0
/* 80138EE4 00135E44  41 82 00 0C */	beq lbl_80138EF0
/* 80138EE8 00135E48  38 60 00 07 */	li r3, 7
/* 80138EEC 00135E4C  48 00 00 BC */	b lbl_80138FA8
lbl_80138EF0:
/* 80138EF0 00135E50  7F E3 FB 78 */	mr r3, r31
/* 80138EF4 00135E54  38 80 00 06 */	li r4, 6
/* 80138EF8 00135E58  4B FF 85 59 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138EFC 00135E5C  28 03 00 00 */	cmplwi r3, 0
/* 80138F00 00135E60  41 82 00 0C */	beq lbl_80138F0C
/* 80138F04 00135E64  38 60 00 12 */	li r3, 0x12
/* 80138F08 00135E68  48 00 00 A0 */	b lbl_80138FA8
lbl_80138F0C:
/* 80138F0C 00135E6C  7F E3 FB 78 */	mr r3, r31
/* 80138F10 00135E70  38 80 00 07 */	li r4, 7
/* 80138F14 00135E74  4B FF 85 3D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138F18 00135E78  28 03 00 00 */	cmplwi r3, 0
/* 80138F1C 00135E7C  41 82 00 0C */	beq lbl_80138F28
/* 80138F20 00135E80  38 60 00 09 */	li r3, 9
/* 80138F24 00135E84  48 00 00 84 */	b lbl_80138FA8
lbl_80138F28:
/* 80138F28 00135E88  7F E3 FB 78 */	mr r3, r31
/* 80138F2C 00135E8C  38 80 00 10 */	li r4, 0x10
/* 80138F30 00135E90  4B FF 85 21 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138F34 00135E94  28 03 00 00 */	cmplwi r3, 0
/* 80138F38 00135E98  41 82 00 0C */	beq lbl_80138F44
/* 80138F3C 00135E9C  38 60 00 0D */	li r3, 0xd
/* 80138F40 00135EA0  48 00 00 68 */	b lbl_80138FA8
lbl_80138F44:
/* 80138F44 00135EA4  7F E3 FB 78 */	mr r3, r31
/* 80138F48 00135EA8  38 80 00 08 */	li r4, 8
/* 80138F4C 00135EAC  4B FF 85 05 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138F50 00135EB0  28 03 00 00 */	cmplwi r3, 0
/* 80138F54 00135EB4  41 82 00 0C */	beq lbl_80138F60
/* 80138F58 00135EB8  38 60 00 0A */	li r3, 0xa
/* 80138F5C 00135EBC  48 00 00 4C */	b lbl_80138FA8
lbl_80138F60:
/* 80138F60 00135EC0  7F E3 FB 78 */	mr r3, r31
/* 80138F64 00135EC4  38 80 00 13 */	li r4, 0x13
/* 80138F68 00135EC8  4B FF 84 E9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138F6C 00135ECC  28 03 00 00 */	cmplwi r3, 0
/* 80138F70 00135ED0  41 82 00 0C */	beq lbl_80138F7C
/* 80138F74 00135ED4  38 60 00 11 */	li r3, 0x11
/* 80138F78 00135ED8  48 00 00 30 */	b lbl_80138FA8
lbl_80138F7C:
/* 80138F7C 00135EDC  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 80138F80 00135EE0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80138F84 00135EE4  40 82 00 18 */	bne lbl_80138F9C
/* 80138F88 00135EE8  7F E3 FB 78 */	mr r3, r31
/* 80138F8C 00135EEC  38 80 00 0C */	li r4, 0xc
/* 80138F90 00135EF0  4B FF 84 C1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138F94 00135EF4  28 03 00 00 */	cmplwi r3, 0
/* 80138F98 00135EF8  41 82 00 0C */	beq lbl_80138FA4
lbl_80138F9C:
/* 80138F9C 00135EFC  38 60 00 05 */	li r3, 5
/* 80138FA0 00135F00  48 00 00 08 */	b lbl_80138FA8
lbl_80138FA4:
/* 80138FA4 00135F04  38 60 FF FF */	li r3, -1
lbl_80138FA8:
/* 80138FA8 00135F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138FAC 00135F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138FB0 00135F10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138FB4 00135F14  7C 08 03 A6 */	mtlr r0
/* 80138FB8 00135F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80138FBC 00135F1C  4E 80 00 20 */	blr 

.global Shutdown__7CBSStepFR15CBodyController
Shutdown__7CBSStepFR15CBodyController:
/* 80138FC0 00135F20  4E 80 00 20 */	blr 

.global UpdateBody__7CBSStepFfR15CBodyControllerR13CStateManager
UpdateBody__7CBSStepFfR15CBodyControllerR13CStateManager:
/* 80138FC4 00135F24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138FC8 00135F28  7C 08 02 A6 */	mflr r0
/* 80138FCC 00135F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138FD0 00135F30  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80138FD4 00135F34  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 80138FD8 00135F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138FDC 00135F3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80138FE0 00135F40  FF E0 08 90 */	fmr f31, f1
/* 80138FE4 00135F44  7C 9E 23 78 */	mr r30, r4
/* 80138FE8 00135F48  4B FF FE 29 */	bl GetBodyStateTransition__7CBSStepFfR15CBodyController
/* 80138FEC 00135F4C  7C 7F 1B 78 */	mr r31, r3
/* 80138FF0 00135F50  2C 1F FF FF */	cmpwi r31, -1
/* 80138FF4 00135F54  40 82 00 50 */	bne lbl_80139044
/* 80138FF8 00135F58  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80138FFC 00135F5C  C0 22 9A 58 */	lfs f1, lbl_805AB778@sda21(r2)
/* 80139000 00135F60  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80139004 00135F64  38 00 00 00 */	li r0, 0
/* 80139008 00135F68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013900C 00135F6C  40 82 00 1C */	bne lbl_80139028
/* 80139010 00135F70  C0 03 00 04 */	lfs f0, 4(r3)
/* 80139014 00135F74  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80139018 00135F78  40 82 00 10 */	bne lbl_80139028
/* 8013901C 00135F7C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80139020 00135F80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80139024 00135F84  41 82 00 08 */	beq lbl_8013902C
lbl_80139028:
/* 80139028 00135F88  38 00 00 01 */	li r0, 1
lbl_8013902C:
/* 8013902C 00135F8C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80139030 00135F90  41 82 00 14 */	beq lbl_80139044
/* 80139034 00135F94  FC 20 F8 90 */	fmr f1, f31
/* 80139038 00135F98  7F C3 F3 78 */	mr r3, r30
/* 8013903C 00135F9C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80139040 00135FA0  48 00 16 65 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_80139044:
/* 80139044 00135FA4  7F E3 FB 78 */	mr r3, r31
/* 80139048 00135FA8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8013904C 00135FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80139050 00135FB0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80139054 00135FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80139058 00135FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013905C 00135FBC  7C 08 03 A6 */	mtlr r0
/* 80139060 00135FC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80139064 00135FC4  4E 80 00 20 */	blr 

.global Start__7CBSStepFR15CBodyControllerR13CStateManager
Start__7CBSStepFR15CBodyControllerR13CStateManager:
/* 80139068 00135FC8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8013906C 00135FCC  7C 08 02 A6 */	mflr r0
/* 80139070 00135FD0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80139074 00135FD4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80139078 00135FD8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8013907C 00135FDC  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 80139080 00135FE0  7C BD 2B 78 */	mr r29, r5
/* 80139084 00135FE4  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 80139088 00135FE8  7C 9C 23 78 */	mr r28, r4
/* 8013908C 00135FEC  38 7C 00 04 */	addi r3, r28, 4
/* 80139090 00135FF0  38 80 00 01 */	li r4, 1
/* 80139094 00135FF4  4B FF 83 BD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80139098 00135FF8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 8013909C 00135FFC  83 C3 00 08 */	lwz r30, 8(r3)
/* 801390A0 00136000  38 61 00 10 */	addi r3, r1, 0x10
/* 801390A4 00136004  48 1A 9F D9 */	bl NoParameter__12CPASAnimParmFv
/* 801390A8 00136008  38 61 00 18 */	addi r3, r1, 0x18
/* 801390AC 0013600C  48 1A 9F D1 */	bl NoParameter__12CPASAnimParmFv
/* 801390B0 00136010  38 61 00 20 */	addi r3, r1, 0x20
/* 801390B4 00136014  48 1A 9F C9 */	bl NoParameter__12CPASAnimParmFv
/* 801390B8 00136018  38 61 00 28 */	addi r3, r1, 0x28
/* 801390BC 0013601C  48 1A 9F C1 */	bl NoParameter__12CPASAnimParmFv
/* 801390C0 00136020  38 61 00 30 */	addi r3, r1, 0x30
/* 801390C4 00136024  48 1A 9F B9 */	bl NoParameter__12CPASAnimParmFv
/* 801390C8 00136028  38 61 00 38 */	addi r3, r1, 0x38
/* 801390CC 0013602C  48 1A 9F B1 */	bl NoParameter__12CPASAnimParmFv
/* 801390D0 00136030  7F E4 FB 78 */	mr r4, r31
/* 801390D4 00136034  38 61 00 40 */	addi r3, r1, 0x40
/* 801390D8 00136038  48 1A 9E AD */	bl FromEnum__12CPASAnimParmFi
/* 801390DC 0013603C  7F C4 F3 78 */	mr r4, r30
/* 801390E0 00136040  38 61 00 48 */	addi r3, r1, 0x48
/* 801390E4 00136044  48 1A 9E A1 */	bl FromEnum__12CPASAnimParmFi
/* 801390E8 00136048  38 61 00 18 */	addi r3, r1, 0x18
/* 801390EC 0013604C  38 01 00 10 */	addi r0, r1, 0x10
/* 801390F0 00136050  90 61 00 08 */	stw r3, 8(r1)
/* 801390F4 00136054  38 61 00 50 */	addi r3, r1, 0x50
/* 801390F8 00136058  38 A1 00 48 */	addi r5, r1, 0x48
/* 801390FC 0013605C  38 C1 00 40 */	addi r6, r1, 0x40
/* 80139100 00136060  90 01 00 0C */	stw r0, 0xc(r1)
/* 80139104 00136064  38 E1 00 38 */	addi r7, r1, 0x38
/* 80139108 00136068  39 01 00 30 */	addi r8, r1, 0x30
/* 8013910C 0013606C  39 21 00 28 */	addi r9, r1, 0x28
/* 80139110 00136070  39 41 00 20 */	addi r10, r1, 0x20
/* 80139114 00136074  38 80 00 03 */	li r4, 3
/* 80139118 00136078  4B F4 41 AD */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013911C 0013607C  80 BD 09 00 */	lwz r5, 0x900(r29)
/* 80139120 00136080  7F 83 E3 78 */	mr r3, r28
/* 80139124 00136084  38 81 00 50 */	addi r4, r1, 0x50
/* 80139128 00136088  48 00 12 81 */	bl PlayBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8013912C 0013608C  34 A1 00 54 */	addic. r5, r1, 0x54
/* 80139130 00136090  41 82 00 58 */	beq lbl_80139188
/* 80139134 00136094  80 C5 00 00 */	lwz r6, 0(r5)
/* 80139138 00136098  38 60 00 00 */	li r3, 0
/* 8013913C 0013609C  2C 06 00 00 */	cmpwi r6, 0
/* 80139140 001360A0  40 81 00 40 */	ble lbl_80139180
/* 80139144 001360A4  2C 06 00 08 */	cmpwi r6, 8
/* 80139148 001360A8  38 86 FF F8 */	addi r4, r6, -8
/* 8013914C 001360AC  40 81 00 20 */	ble lbl_8013916C
/* 80139150 001360B0  38 04 00 07 */	addi r0, r4, 7
/* 80139154 001360B4  54 00 E8 FE */	srwi r0, r0, 3
/* 80139158 001360B8  7C 09 03 A6 */	mtctr r0
/* 8013915C 001360BC  2C 04 00 00 */	cmpwi r4, 0
/* 80139160 001360C0  40 81 00 0C */	ble lbl_8013916C
lbl_80139164:
/* 80139164 001360C4  38 63 00 08 */	addi r3, r3, 8
/* 80139168 001360C8  42 00 FF FC */	bdnz lbl_80139164
lbl_8013916C:
/* 8013916C 001360CC  7C 03 30 50 */	subf r0, r3, r6
/* 80139170 001360D0  7C 09 03 A6 */	mtctr r0
/* 80139174 001360D4  7C 03 30 00 */	cmpw r3, r6
/* 80139178 001360D8  40 80 00 08 */	bge lbl_80139180
lbl_8013917C:
/* 8013917C 001360DC  42 00 00 00 */	bdnz lbl_8013917C
lbl_80139180:
/* 80139180 001360E0  38 00 00 00 */	li r0, 0
/* 80139184 001360E4  90 05 00 00 */	stw r0, 0(r5)
lbl_80139188:
/* 80139188 001360E8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8013918C 001360EC  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80139190 001360F0  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80139194 001360F4  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 80139198 001360F8  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 8013919C 001360FC  7C 08 03 A6 */	mtlr r0
/* 801391A0 00136100  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801391A4 00136104  4E 80 00 20 */	blr 

.global __ct__7CBSStepFv
__ct__7CBSStepFv:
/* 801391A8 00136108  3C A0 80 3E */	lis r5, lbl_803E1318@ha
/* 801391AC 0013610C  3C 80 80 3E */	lis r4, lbl_803E1718@ha
/* 801391B0 00136110  38 A5 13 18 */	addi r5, r5, lbl_803E1318@l
/* 801391B4 00136114  90 A3 00 00 */	stw r5, 0(r3)
/* 801391B8 00136118  38 04 17 18 */	addi r0, r4, lbl_803E1718@l
/* 801391BC 0013611C  90 03 00 00 */	stw r0, 0(r3)
/* 801391C0 00136120  4E 80 00 20 */	blr

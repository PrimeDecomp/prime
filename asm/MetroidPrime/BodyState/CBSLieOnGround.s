.include "macros.inc"

.section .data

.global lbl_803E1488
lbl_803E1488:
	# ROM: 0x3DE488
	.4byte 0
	.4byte 0
	.4byte __dt__14CBSLieOnGroundFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__10CBodyStateCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__10CBodyStateCFv
	.4byte Start__14CBSLieOnGroundFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__14CBSLieOnGroundFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__14CBSLieOnGroundFR15CBodyController

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__14CBSLieOnGroundFv
__dt__14CBSLieOnGroundFv:
/* 801367CC 0013372C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801367D0 00133730  7C 08 02 A6 */	mflr r0
/* 801367D4 00133734  90 01 00 14 */	stw r0, 0x14(r1)
/* 801367D8 00133738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801367DC 0013373C  7C 7F 1B 79 */	or. r31, r3, r3
/* 801367E0 00133740  41 82 00 30 */	beq lbl_80136810
/* 801367E4 00133744  3C 60 80 3E */	lis r3, lbl_803E1488@ha
/* 801367E8 00133748  38 03 14 88 */	addi r0, r3, lbl_803E1488@l
/* 801367EC 0013374C  90 1F 00 00 */	stw r0, 0(r31)
/* 801367F0 00133750  41 82 00 10 */	beq lbl_80136800
/* 801367F4 00133754  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 801367F8 00133758  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 801367FC 0013375C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80136800:
/* 80136800 00133760  7C 80 07 35 */	extsh. r0, r4
/* 80136804 00133764  40 81 00 0C */	ble lbl_80136810
/* 80136808 00133768  7F E3 FB 78 */	mr r3, r31
/* 8013680C 0013376C  48 1D F1 25 */	bl Free__7CMemoryFPCv
lbl_80136810:
/* 80136810 00133770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136814 00133774  7F E3 FB 78 */	mr r3, r31
/* 80136818 00133778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013681C 0013377C  7C 08 03 A6 */	mtlr r0
/* 80136820 00133780  38 21 00 10 */	addi r1, r1, 0x10
/* 80136824 00133784  4E 80 00 20 */	blr 

.global GetBodyStateTransition__14CBSLieOnGroundFfR15CBodyController
GetBodyStateTransition__14CBSLieOnGroundFfR15CBodyController:
/* 80136828 00133788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013682C 0013378C  7C 08 02 A6 */	mflr r0
/* 80136830 00133790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136834 00133794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136838 00133798  3B E4 00 04 */	addi r31, r4, 4
/* 8013683C 0013379C  38 80 00 02 */	li r4, 2
/* 80136840 001337A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80136844 001337A4  7C 7E 1B 78 */	mr r30, r3
/* 80136848 001337A8  7F E3 FB 78 */	mr r3, r31
/* 8013684C 001337AC  4B FF AC 05 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80136850 001337B0  28 03 00 00 */	cmplwi r3, 0
/* 80136854 001337B4  41 82 00 0C */	beq lbl_80136860
/* 80136858 001337B8  38 60 00 04 */	li r3, 4
/* 8013685C 001337BC  48 00 00 60 */	b lbl_801368BC
lbl_80136860:
/* 80136860 001337C0  88 1E 00 04 */	lbz r0, 4(r30)
/* 80136864 001337C4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80136868 001337C8  41 82 00 20 */	beq lbl_80136888
/* 8013686C 001337CC  7F E3 FB 78 */	mr r3, r31
/* 80136870 001337D0  38 80 00 04 */	li r4, 4
/* 80136874 001337D4  4B FF AB DD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80136878 001337D8  28 03 00 00 */	cmplwi r3, 0
/* 8013687C 001337DC  41 82 00 0C */	beq lbl_80136888
/* 80136880 001337E0  38 60 00 0B */	li r3, 0xb
/* 80136884 001337E4  48 00 00 38 */	b lbl_801368BC
lbl_80136888:
/* 80136888 001337E8  7F E3 FB 78 */	mr r3, r31
/* 8013688C 001337EC  38 80 00 16 */	li r4, 0x16
/* 80136890 001337F0  4B FF AB C1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80136894 001337F4  28 03 00 00 */	cmplwi r3, 0
/* 80136898 001337F8  40 82 00 20 */	bne lbl_801368B8
/* 8013689C 001337FC  7F E3 FB 78 */	mr r3, r31
/* 801368A0 00133800  38 80 00 00 */	li r4, 0
/* 801368A4 00133804  4B FF AB AD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801368A8 00133808  28 03 00 00 */	cmplwi r3, 0
/* 801368AC 0013380C  41 82 00 0C */	beq lbl_801368B8
/* 801368B0 00133810  38 60 00 01 */	li r3, 1
/* 801368B4 00133814  48 00 00 08 */	b lbl_801368BC
lbl_801368B8:
/* 801368B8 00133818  38 60 FF FF */	li r3, -1
lbl_801368BC:
/* 801368BC 0013381C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801368C0 00133820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801368C4 00133824  83 C1 00 08 */	lwz r30, 8(r1)
/* 801368C8 00133828  7C 08 03 A6 */	mtlr r0
/* 801368CC 0013382C  38 21 00 10 */	addi r1, r1, 0x10
/* 801368D0 00133830  4E 80 00 20 */	blr 

.global Shutdown__14CBSLieOnGroundFR15CBodyController
Shutdown__14CBSLieOnGroundFR15CBodyController:
/* 801368D4 00133834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801368D8 00133838  7C 08 02 A6 */	mflr r0
/* 801368DC 0013383C  7C 83 23 78 */	mr r3, r4
/* 801368E0 00133840  38 80 00 01 */	li r4, 1
/* 801368E4 00133844  90 01 00 14 */	stw r0, 0x14(r1)
/* 801368E8 00133848  48 00 40 A1 */	bl EnableAnimation__15CBodyControllerFb
/* 801368EC 0013384C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801368F0 00133850  7C 08 03 A6 */	mtlr r0
/* 801368F4 00133854  38 21 00 10 */	addi r1, r1, 0x10
/* 801368F8 00133858  4E 80 00 20 */	blr 

.global UpdateBody__14CBSLieOnGroundFfR15CBodyControllerR13CStateManager
UpdateBody__14CBSLieOnGroundFfR15CBodyControllerR13CStateManager:
/* 801368FC 0013385C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136900 00133860  7C 08 02 A6 */	mflr r0
/* 80136904 00133864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136908 00133868  4B FF FF 21 */	bl GetBodyStateTransition__14CBSLieOnGroundFfR15CBodyController
/* 8013690C 0013386C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136910 00133870  7C 08 03 A6 */	mtlr r0
/* 80136914 00133874  38 21 00 10 */	addi r1, r1, 0x10
/* 80136918 00133878  4E 80 00 20 */	blr 

.global Start__14CBSLieOnGroundFR15CBodyControllerR13CStateManager
Start__14CBSLieOnGroundFR15CBodyControllerR13CStateManager:
/* 8013691C 0013387C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80136920 00133880  7C 08 02 A6 */	mflr r0
/* 80136924 00133884  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80136928 00133888  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8013692C 0013388C  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80136930 00133890  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80136934 00133894  7C BD 2B 78 */	mr r29, r5
/* 80136938 00133898  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 8013693C 0013389C  7C 9C 23 78 */	mr r28, r4
/* 80136940 001338A0  7F 83 E3 78 */	mr r3, r28
/* 80136944 001338A4  48 00 42 69 */	bl GetFallState__15CBodyControllerCFv
/* 80136948 001338A8  7C 60 1B 78 */	mr r0, r3
/* 8013694C 001338AC  7F 83 E3 78 */	mr r3, r28
/* 80136950 001338B0  7C 1F 03 78 */	mr r31, r0
/* 80136954 001338B4  48 00 3B 01 */	bl GetPASDatabase__15CBodyControllerCFv
/* 80136958 001338B8  7C 60 1B 78 */	mr r0, r3
/* 8013695C 001338BC  38 61 00 18 */	addi r3, r1, 0x18
/* 80136960 001338C0  7C 1E 03 78 */	mr r30, r0
/* 80136964 001338C4  48 1A C7 19 */	bl NoParameter__12CPASAnimParmFv
/* 80136968 001338C8  38 61 00 20 */	addi r3, r1, 0x20
/* 8013696C 001338CC  48 1A C7 11 */	bl NoParameter__12CPASAnimParmFv
/* 80136970 001338D0  38 61 00 28 */	addi r3, r1, 0x28
/* 80136974 001338D4  48 1A C7 09 */	bl NoParameter__12CPASAnimParmFv
/* 80136978 001338D8  38 61 00 30 */	addi r3, r1, 0x30
/* 8013697C 001338DC  48 1A C7 01 */	bl NoParameter__12CPASAnimParmFv
/* 80136980 001338E0  38 61 00 38 */	addi r3, r1, 0x38
/* 80136984 001338E4  48 1A C6 F9 */	bl NoParameter__12CPASAnimParmFv
/* 80136988 001338E8  38 61 00 40 */	addi r3, r1, 0x40
/* 8013698C 001338EC  48 1A C6 F1 */	bl NoParameter__12CPASAnimParmFv
/* 80136990 001338F0  38 61 00 48 */	addi r3, r1, 0x48
/* 80136994 001338F4  48 1A C6 E9 */	bl NoParameter__12CPASAnimParmFv
/* 80136998 001338F8  7F E4 FB 78 */	mr r4, r31
/* 8013699C 001338FC  38 61 00 50 */	addi r3, r1, 0x50
/* 801369A0 00133900  48 1A C5 E5 */	bl FromEnum__12CPASAnimParmFi
/* 801369A4 00133904  38 61 00 20 */	addi r3, r1, 0x20
/* 801369A8 00133908  38 01 00 18 */	addi r0, r1, 0x18
/* 801369AC 0013390C  90 61 00 08 */	stw r3, 8(r1)
/* 801369B0 00133910  38 61 00 80 */	addi r3, r1, 0x80
/* 801369B4 00133914  38 A1 00 50 */	addi r5, r1, 0x50
/* 801369B8 00133918  38 C1 00 48 */	addi r6, r1, 0x48
/* 801369BC 0013391C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801369C0 00133920  38 E1 00 40 */	addi r7, r1, 0x40
/* 801369C4 00133924  39 01 00 38 */	addi r8, r1, 0x38
/* 801369C8 00133928  39 21 00 30 */	addi r9, r1, 0x30
/* 801369CC 0013392C  39 41 00 28 */	addi r10, r1, 0x28
/* 801369D0 00133930  38 80 00 02 */	li r4, 2
/* 801369D4 00133934  4B F4 68 F1 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801369D8 00133938  80 DD 09 00 */	lwz r6, 0x900(r29)
/* 801369DC 0013393C  7F C4 F3 78 */	mr r4, r30
/* 801369E0 00133940  38 61 00 10 */	addi r3, r1, 0x10
/* 801369E4 00133944  38 A1 00 80 */	addi r5, r1, 0x80
/* 801369E8 00133948  38 E0 FF FF */	li r7, -1
/* 801369EC 0013394C  48 1A E6 75 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801369F0 00133950  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801369F4 00133954  C0 02 9A 28 */	lfs f0, lbl_805AB748@sda21(r2)
/* 801369F8 00133958  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801369FC 0013395C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136A00 00133960  40 81 00 54 */	ble lbl_80136A54
/* 80136A04 00133964  C0 02 9A 2C */	lfs f0, lbl_805AB74C@sda21(r2)
/* 80136A08 00133968  38 00 00 00 */	li r0, 0
/* 80136A0C 0013396C  38 C0 FF FF */	li r6, -1
/* 80136A10 00133970  38 E0 00 01 */	li r7, 1
/* 80136A14 00133974  90 61 00 58 */	stw r3, 0x58(r1)
/* 80136A18 00133978  7F 83 E3 78 */	mr r3, r28
/* 80136A1C 0013397C  38 81 00 58 */	addi r4, r1, 0x58
/* 80136A20 00133980  38 A0 00 01 */	li r5, 1
/* 80136A24 00133984  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 80136A28 00133988  38 C0 00 00 */	li r6, 0
/* 80136A2C 0013398C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80136A30 00133990  98 E1 00 64 */	stb r7, 0x64(r1)
/* 80136A34 00133994  90 01 00 68 */	stw r0, 0x68(r1)
/* 80136A38 00133998  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80136A3C 0013399C  98 01 00 70 */	stb r0, 0x70(r1)
/* 80136A40 001339A0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80136A44 001339A4  90 01 00 78 */	stw r0, 0x78(r1)
/* 80136A48 001339A8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80136A4C 001339AC  48 00 3E D1 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80136A50 001339B0  48 00 00 10 */	b lbl_80136A60
lbl_80136A54:
/* 80136A54 001339B4  7F 83 E3 78 */	mr r3, r28
/* 80136A58 001339B8  38 80 00 00 */	li r4, 0
/* 80136A5C 001339BC  48 00 3F 2D */	bl EnableAnimation__15CBodyControllerFb
lbl_80136A60:
/* 80136A60 001339C0  34 A1 00 84 */	addic. r5, r1, 0x84
/* 80136A64 001339C4  41 82 00 58 */	beq lbl_80136ABC
/* 80136A68 001339C8  80 C5 00 00 */	lwz r6, 0(r5)
/* 80136A6C 001339CC  38 60 00 00 */	li r3, 0
/* 80136A70 001339D0  2C 06 00 00 */	cmpwi r6, 0
/* 80136A74 001339D4  40 81 00 40 */	ble lbl_80136AB4
/* 80136A78 001339D8  2C 06 00 08 */	cmpwi r6, 8
/* 80136A7C 001339DC  38 86 FF F8 */	addi r4, r6, -8
/* 80136A80 001339E0  40 81 00 20 */	ble lbl_80136AA0
/* 80136A84 001339E4  38 04 00 07 */	addi r0, r4, 7
/* 80136A88 001339E8  54 00 E8 FE */	srwi r0, r0, 3
/* 80136A8C 001339EC  7C 09 03 A6 */	mtctr r0
/* 80136A90 001339F0  2C 04 00 00 */	cmpwi r4, 0
/* 80136A94 001339F4  40 81 00 0C */	ble lbl_80136AA0
lbl_80136A98:
/* 80136A98 001339F8  38 63 00 08 */	addi r3, r3, 8
/* 80136A9C 001339FC  42 00 FF FC */	bdnz lbl_80136A98
lbl_80136AA0:
/* 80136AA0 00133A00  7C 03 30 50 */	subf r0, r3, r6
/* 80136AA4 00133A04  7C 09 03 A6 */	mtctr r0
/* 80136AA8 00133A08  7C 03 30 00 */	cmpw r3, r6
/* 80136AAC 00133A0C  40 80 00 08 */	bge lbl_80136AB4
lbl_80136AB0:
/* 80136AB0 00133A10  42 00 00 00 */	bdnz lbl_80136AB0
lbl_80136AB4:
/* 80136AB4 00133A14  38 00 00 00 */	li r0, 0
/* 80136AB8 00133A18  90 05 00 00 */	stw r0, 0(r5)
lbl_80136ABC:
/* 80136ABC 00133A1C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80136AC0 00133A20  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80136AC4 00133A24  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80136AC8 00133A28  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 80136ACC 00133A2C  83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 80136AD0 00133A30  7C 08 03 A6 */	mtlr r0
/* 80136AD4 00133A34  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80136AD8 00133A38  4E 80 00 20 */	blr 

.global __ct__14CBSLieOnGroundFRC6CActor
__ct__14CBSLieOnGroundFRC6CActor:
/* 80136ADC 00133A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136AE0 00133A40  7C 08 02 A6 */	mflr r0
/* 80136AE4 00133A44  3C C0 80 3E */	lis r6, lbl_803E1318@ha
/* 80136AE8 00133A48  3C A0 80 3E */	lis r5, lbl_803E1488@ha
/* 80136AEC 00133A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136AF0 00133A50  38 C6 13 18 */	addi r6, r6, lbl_803E1318@l
/* 80136AF4 00133A54  38 05 14 88 */	addi r0, r5, lbl_803E1488@l
/* 80136AF8 00133A58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136AFC 00133A5C  7C 7F 1B 78 */	mr r31, r3
/* 80136B00 00133A60  38 60 00 00 */	li r3, 0
/* 80136B04 00133A64  90 DF 00 00 */	stw r6, 0(r31)
/* 80136B08 00133A68  90 1F 00 00 */	stw r0, 0(r31)
/* 80136B0C 00133A6C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80136B10 00133A70  50 60 F8 00 */	rlwimi r0, r3, 0x1f, 0, 0
/* 80136B14 00133A74  90 1F 00 04 */	stw r0, 4(r31)
/* 80136B18 00133A78  80 64 00 64 */	lwz r3, 0x64(r4)
/* 80136B1C 00133A7C  38 80 00 0B */	li r4, 0xb
/* 80136B20 00133A80  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80136B24 00133A84  38 63 00 3C */	addi r3, r3, 0x3c
/* 80136B28 00133A88  48 1A E4 55 */	bl HasState__12CPASDatabaseCFi
/* 80136B2C 00133A8C  88 1F 00 04 */	lbz r0, 4(r31)
/* 80136B30 00133A90  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80136B34 00133A94  7F E3 FB 78 */	mr r3, r31
/* 80136B38 00133A98  98 1F 00 04 */	stb r0, 4(r31)
/* 80136B3C 00133A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136B40 00133AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136B44 00133AA4  7C 08 03 A6 */	mtlr r0
/* 80136B48 00133AA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80136B4C 00133AAC  4E 80 00 20 */	blr

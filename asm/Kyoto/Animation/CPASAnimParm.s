.include "macros.inc"

.section .text, "ax"

.global GetEnumValue__12CPASAnimParmCFv
GetEnumValue__12CPASAnimParmCFv:
/* 802E2F5C 002DFEBC  80 63 00 00 */	lwz r3, 0(r3)
/* 802E2F60 002DFEC0  4E 80 00 20 */	blr

.global GetBoolValue__12CPASAnimParmCFv
GetBoolValue__12CPASAnimParmCFv:
/* 802E2F64 002DFEC4  88 63 00 00 */	lbz r3, 0(r3)
/* 802E2F68 002DFEC8  4E 80 00 20 */	blr

.global GetReal32Value__12CPASAnimParmCFv
GetReal32Value__12CPASAnimParmCFv:
/* 802E2F6C 002DFECC  C0 23 00 00 */	lfs f1, 0(r3)
/* 802E2F70 002DFED0  4E 80 00 20 */	blr

.global GetUint32Value__12CPASAnimParmCFv
GetUint32Value__12CPASAnimParmCFv:
/* 802E2F74 002DFED4  80 63 00 00 */	lwz r3, 0(r3)
/* 802E2F78 002DFED8  4E 80 00 20 */	blr

.global GetInt32Value__12CPASAnimParmCFv
GetInt32Value__12CPASAnimParmCFv:
/* 802E2F7C 002DFEDC  80 63 00 00 */	lwz r3, 0(r3)
/* 802E2F80 002DFEE0  4E 80 00 20 */	blr

.global FromEnum__12CPASAnimParmFi
FromEnum__12CPASAnimParmFi:
/* 802E2F84 002DFEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2F88 002DFEE8  7C 08 02 A6 */	mflr r0
/* 802E2F8C 002DFEEC  38 A0 00 04 */	li r5, 4
/* 802E2F90 002DFEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2F94 002DFEF4  90 81 00 0C */	stw r4, 0xc(r1)
/* 802E2F98 002DFEF8  90 81 00 08 */	stw r4, 8(r1)
/* 802E2F9C 002DFEFC  38 81 00 08 */	addi r4, r1, 8
/* 802E2FA0 002DFF00  48 00 01 11 */	bl __ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType
/* 802E2FA4 002DFF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2FA8 002DFF08  7C 08 03 A6 */	mtlr r0
/* 802E2FAC 002DFF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2FB0 002DFF10  4E 80 00 20 */	blr

.global FromBool__12CPASAnimParmFb
FromBool__12CPASAnimParmFb:
/* 802E2FB4 002DFF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2FB8 002DFF18  7C 08 02 A6 */	mflr r0
/* 802E2FBC 002DFF1C  38 A0 00 03 */	li r5, 3
/* 802E2FC0 002DFF20  98 81 00 0C */	stb r4, 0xc(r1)
/* 802E2FC4 002DFF24  38 81 00 08 */	addi r4, r1, 8
/* 802E2FC8 002DFF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E2FCC 002DFF2C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E2FD0 002DFF30  90 01 00 08 */	stw r0, 8(r1)
/* 802E2FD4 002DFF34  48 00 00 DD */	bl __ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType
/* 802E2FD8 002DFF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2FDC 002DFF3C  7C 08 03 A6 */	mtlr r0
/* 802E2FE0 002DFF40  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2FE4 002DFF44  4E 80 00 20 */	blr

.global FromReal32__12CPASAnimParmFf
FromReal32__12CPASAnimParmFf:
/* 802E2FE8 002DFF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2FEC 002DFF4C  7C 08 02 A6 */	mflr r0
/* 802E2FF0 002DFF50  38 A0 00 02 */	li r5, 2
/* 802E2FF4 002DFF54  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802E2FF8 002DFF58  38 81 00 08 */	addi r4, r1, 8
/* 802E2FFC 002DFF5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E3000 002DFF60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E3004 002DFF64  90 01 00 08 */	stw r0, 8(r1)
/* 802E3008 002DFF68  48 00 00 A9 */	bl __ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType
/* 802E300C 002DFF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3010 002DFF70  7C 08 03 A6 */	mtlr r0
/* 802E3014 002DFF74  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3018 002DFF78  4E 80 00 20 */	blr

.global FromUint32__12CPASAnimParmFUi
FromUint32__12CPASAnimParmFUi:
/* 802E301C 002DFF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3020 002DFF80  7C 08 02 A6 */	mflr r0
/* 802E3024 002DFF84  38 A0 00 01 */	li r5, 1
/* 802E3028 002DFF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E302C 002DFF8C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802E3030 002DFF90  90 81 00 08 */	stw r4, 8(r1)
/* 802E3034 002DFF94  38 81 00 08 */	addi r4, r1, 8
/* 802E3038 002DFF98  48 00 00 79 */	bl __ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType
/* 802E303C 002DFF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3040 002DFFA0  7C 08 03 A6 */	mtlr r0
/* 802E3044 002DFFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3048 002DFFA8  4E 80 00 20 */	blr

.global FromInt32__12CPASAnimParmFi
FromInt32__12CPASAnimParmFi:
/* 802E304C 002DFFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3050 002DFFB0  7C 08 02 A6 */	mflr r0
/* 802E3054 002DFFB4  38 A0 00 00 */	li r5, 0
/* 802E3058 002DFFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E305C 002DFFBC  90 81 00 0C */	stw r4, 0xc(r1)
/* 802E3060 002DFFC0  90 81 00 08 */	stw r4, 8(r1)
/* 802E3064 002DFFC4  38 81 00 08 */	addi r4, r1, 8
/* 802E3068 002DFFC8  48 00 00 49 */	bl __ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType
/* 802E306C 002DFFCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E3070 002DFFD0  7C 08 03 A6 */	mtlr r0
/* 802E3074 002DFFD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E3078 002DFFD8  4E 80 00 20 */	blr

.global NoParameter__12CPASAnimParmFv
NoParameter__12CPASAnimParmFv:
/* 802E307C 002DFFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E3080 002DFFE0  7C 08 02 A6 */	mflr r0
/* 802E3084 002DFFE4  38 A0 FF FF */	li r5, -1
/* 802E3088 002DFFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E308C 002DFFEC  38 00 FF FF */	li r0, -1
/* 802E3090 002DFFF0  38 81 00 08 */	addi r4, r1, 8
/* 802E3094 002DFFF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E3098 002DFFF8  90 01 00 08 */	stw r0, 8(r1)
/* 802E309C 002DFFFC  48 00 00 15 */	bl __ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType
/* 802E30A0 002E0000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E30A4 002E0004  7C 08 03 A6 */	mtlr r0
/* 802E30A8 002E0008  38 21 00 10 */	addi r1, r1, 0x10
/* 802E30AC 002E000C  4E 80 00 20 */	blr

.global __ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType
__ct__12CPASAnimParmFQ212CPASAnimParm10UParmValueQ212CPASAnimParm9EParmType:
/* 802E30B0 002E0010  80 04 00 00 */	lwz r0, 0(r4)
/* 802E30B4 002E0014  90 03 00 00 */	stw r0, 0(r3)
/* 802E30B8 002E0018  90 A3 00 04 */	stw r5, 4(r3)
/* 802E30BC 002E001C  4E 80 00 20 */	blr

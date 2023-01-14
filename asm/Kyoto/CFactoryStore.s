.include "macros.inc"

.section .data
.balign 8

.global "__vt__31TObjOwnerParam<P12IObjectStore>"
"__vt__31TObjOwnerParam<P12IObjectStore>":
	# ROM: 0x3EB3D8
	.4byte 0
	.4byte 0
	.4byte "__dt__31TObjOwnerParam<P12IObjectStore>Fv"

.global lbl_803EE3E4
lbl_803EE3E4:
	# ROM: 0x3EB3E4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.section .text, "ax"

.global "__dt__31TObjOwnerParam<P12IObjectStore>Fv"
"__dt__31TObjOwnerParam<P12IObjectStore>Fv":
/* 8033FA48 0033C9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033FA4C 0033C9AC  7C 08 02 A6 */	mflr r0
/* 8033FA50 0033C9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033FA54 0033C9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033FA58 0033C9B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8033FA5C 0033C9BC  41 82 00 40 */	beq lbl_8033FA9C
/* 8033FA60 0033C9C0  3C 60 80 3F */	lis r3, "__vt__31TObjOwnerParam<P12IObjectStore>"@ha
/* 8033FA64 0033C9C4  38 03 E3 D8 */	addi r0, r3, "__vt__31TObjOwnerParam<P12IObjectStore>"@l
/* 8033FA68 0033C9C8  90 1F 00 00 */	stw r0, 0(r31)
/* 8033FA6C 0033C9CC  41 82 00 20 */	beq lbl_8033FA8C
/* 8033FA70 0033C9D0  3C 60 80 3E */	lis r3, __vt__10IVParamObj@ha
/* 8033FA74 0033C9D4  38 03 9C 44 */	addi r0, r3, __vt__10IVParamObj@l
/* 8033FA78 0033C9D8  90 1F 00 00 */	stw r0, 0(r31)
/* 8033FA7C 0033C9DC  41 82 00 10 */	beq lbl_8033FA8C
/* 8033FA80 0033C9E0  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 8033FA84 0033C9E4  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 8033FA88 0033C9E8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8033FA8C:
/* 8033FA8C 0033C9EC  7C 80 07 35 */	extsh. r0, r4
/* 8033FA90 0033C9F0  40 81 00 0C */	ble lbl_8033FA9C
/* 8033FA94 0033C9F4  7F E3 FB 78 */	mr r3, r31
/* 8033FA98 0033C9F8  4B FD 5E 99 */	bl Free__7CMemoryFPCv
lbl_8033FA9C:
/* 8033FA9C 0033C9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033FAA0 0033CA00  7F E3 FB 78 */	mr r3, r31
/* 8033FAA4 0033CA04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033FAA8 0033CA08  7C 08 03 A6 */	mtlr r0
/* 8033FAAC 0033CA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8033FAB0 0033CA10  4E 80 00 20 */	blr

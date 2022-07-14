.include "macros.inc"

.section .sdata

.global lbl_805A86F0
lbl_805A86F0:
	# ROM: 0x3F6090
	.4byte 0xFFFFFFFF
	.4byte 0

.section .text, "ax"

.global GetType__27CCollidableCollisionSurfaceFv
GetType__27CCollidableCollisionSurfaceFv:
/* 802CE094 002CAFF4  3C A0 80 2D */	lis r5, SetStaticTableIndex__27CCollidableCollisionSurfaceFUi@ha
/* 802CE098 002CAFF8  3C 80 80 3D */	lis r4, lbl_803D6A00@ha
/* 802CE09C 002CAFFC  38 05 E0 B0 */	addi r0, r5, SetStaticTableIndex__27CCollidableCollisionSurfaceFUi@l
/* 802CE0A0 002CB000  90 03 00 00 */	stw r0, 0(r3)
/* 802CE0A4 002CB004  38 04 6A 00 */	addi r0, r4, lbl_803D6A00@l
/* 802CE0A8 002CB008  90 03 00 04 */	stw r0, 4(r3)
/* 802CE0AC 002CB00C  4E 80 00 20 */	blr 

.global SetStaticTableIndex__27CCollidableCollisionSurfaceFUi
SetStaticTableIndex__27CCollidableCollisionSurfaceFUi:
/* 802CE0B0 002CB010  90 6D 9B 30 */	stw r3, lbl_805A86F0@sda21(r13)
/* 802CE0B4 002CB014  4E 80 00 20 */	blr

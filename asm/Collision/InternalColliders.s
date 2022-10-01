.include "macros.inc"

.section .text, "ax"

.global AddColliders__17InternalCollidersFv
AddColliders__17InternalCollidersFv:
/* 802CE520 002CB480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CE524 002CB484  7C 08 02 A6 */	mflr r0
/* 802CE528 002CB488  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE52C 002CB48C  3C A0 80 2D */	lis r5, AABox_AABox__7CollideFRC27CInternalCollisionStructureR18CCollisionInfoList@ha
/* 802CE530 002CB490  38 83 6A 20 */	addi r4, r3, lbl_803D6A20@l
/* 802CE534 002CB494  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CE538 002CB498  38 65 DE 44 */	addi r3, r5, AABox_AABox__7CollideFRC27CInternalCollisionStructureR18CCollisionInfoList@l
/* 802CE53C 002CB49C  7C 85 23 78 */	mr r5, r4
/* 802CE540 002CB4A0  48 00 01 A5 */	bl InitAddCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructureR18CCollisionInfoList_bPCcPCc
/* 802CE544 002CB4A4  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE548 002CB4A8  3C 80 80 2D */	lis r4, Sphere_AABox__7CollideFRC27CInternalCollisionStructureR18CCollisionInfoList@ha
/* 802CE54C 002CB4AC  38 A3 6A 20 */	addi r5, r3, lbl_803D6A20@l
/* 802CE550 002CB4B0  38 64 4A 7C */	addi r3, r4, Sphere_AABox__7CollideFRC27CInternalCollisionStructureR18CCollisionInfoList@l
/* 802CE554 002CB4B4  38 85 00 11 */	addi r4, r5, 0x11
/* 802CE558 002CB4B8  48 00 01 8D */	bl InitAddCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructureR18CCollisionInfoList_bPCcPCc
/* 802CE55C 002CB4BC  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE560 002CB4C0  3C A0 80 2D */	lis r5, Sphere_Sphere__7CollideFRC27CInternalCollisionStructureR18CCollisionInfoList@ha
/* 802CE564 002CB4C4  38 83 6A 20 */	addi r4, r3, lbl_803D6A20@l
/* 802CE568 002CB4C8  38 84 00 11 */	addi r4, r4, 0x11
/* 802CE56C 002CB4CC  38 65 48 4C */	addi r3, r5, Sphere_Sphere__7CollideFRC27CInternalCollisionStructureR18CCollisionInfoList@l
/* 802CE570 002CB4D0  7C 85 23 78 */	mr r5, r4
/* 802CE574 002CB4D4  48 00 01 71 */	bl InitAddCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructureR18CCollisionInfoList_bPCcPCc
/* 802CE578 002CB4D8  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE57C 002CB4DC  3C A0 80 2D */	lis r5, AABox_AABox_Bool__7CollideFRC27CInternalCollisionStructure@ha
/* 802CE580 002CB4E0  38 83 6A 20 */	addi r4, r3, lbl_803D6A20@l
/* 802CE584 002CB4E4  38 65 DF 54 */	addi r3, r5, AABox_AABox_Bool__7CollideFRC27CInternalCollisionStructure@l
/* 802CE588 002CB4E8  7C 85 23 78 */	mr r5, r4
/* 802CE58C 002CB4EC  48 00 01 29 */	bl InitAddBooleanCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructure_bPCcPCc
/* 802CE590 002CB4F0  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE594 002CB4F4  3C 80 80 2D */	lis r4, Sphere_AABox_Bool__7CollideFRC27CInternalCollisionStructure@ha
/* 802CE598 002CB4F8  38 A3 6A 20 */	addi r5, r3, lbl_803D6A20@l
/* 802CE59C 002CB4FC  38 64 51 00 */	addi r3, r4, Sphere_AABox_Bool__7CollideFRC27CInternalCollisionStructure@l
/* 802CE5A0 002CB500  38 85 00 11 */	addi r4, r5, 0x11
/* 802CE5A4 002CB504  48 00 01 11 */	bl InitAddBooleanCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructure_bPCcPCc
/* 802CE5A8 002CB508  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE5AC 002CB50C  3C A0 80 2D */	lis r5, Sphere_Sphere_Bool__7CollideFRC27CInternalCollisionStructure@ha
/* 802CE5B0 002CB510  38 83 6A 20 */	addi r4, r3, lbl_803D6A20@l
/* 802CE5B4 002CB514  38 84 00 11 */	addi r4, r4, 0x11
/* 802CE5B8 002CB518  38 65 47 78 */	addi r3, r5, Sphere_Sphere_Bool__7CollideFRC27CInternalCollisionStructure@l
/* 802CE5BC 002CB51C  7C 85 23 78 */	mr r5, r4
/* 802CE5C0 002CB520  48 00 00 F5 */	bl InitAddBooleanCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructure_bPCcPCc
/* 802CE5C4 002CB524  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE5C8 002CB528  3C A0 80 2D */	lis r5, CollideMovingAABox__16CCollidableAABoxFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@ha
/* 802CE5CC 002CB52C  38 83 6A 20 */	addi r4, r3, lbl_803D6A20@l
/* 802CE5D0 002CB530  38 65 DB F0 */	addi r3, r5, CollideMovingAABox__16CCollidableAABoxFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@l
/* 802CE5D4 002CB534  7C 85 23 78 */	mr r5, r4
/* 802CE5D8 002CB538  48 00 00 AD */	bl InitAddMovingCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo_bPCcPCc
/* 802CE5DC 002CB53C  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE5E0 002CB540  3C A0 80 2D */	lis r5, CollideMovingSphere__16CCollidableAABoxFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@ha
/* 802CE5E4 002CB544  38 83 6A 20 */	addi r4, r3, lbl_803D6A20@l
/* 802CE5E8 002CB548  38 65 D9 44 */	addi r3, r5, CollideMovingSphere__16CCollidableAABoxFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@l
/* 802CE5EC 002CB54C  38 A4 00 11 */	addi r5, r4, 0x11
/* 802CE5F0 002CB550  48 00 00 95 */	bl InitAddMovingCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo_bPCcPCc
/* 802CE5F4 002CB554  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE5F8 002CB558  3C 80 80 2D */	lis r4, CollideMovingAABox__17CCollidableSphereFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@ha
/* 802CE5FC 002CB55C  38 A3 6A 20 */	addi r5, r3, lbl_803D6A20@l
/* 802CE600 002CB560  38 64 41 30 */	addi r3, r4, CollideMovingAABox__17CCollidableSphereFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@l
/* 802CE604 002CB564  38 85 00 11 */	addi r4, r5, 0x11
/* 802CE608 002CB568  48 00 00 7D */	bl InitAddMovingCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo_bPCcPCc
/* 802CE60C 002CB56C  3C 60 80 3D */	lis r3, lbl_803D6A20@ha
/* 802CE610 002CB570  3C A0 80 2D */	lis r5, CollideMovingSphere__17CCollidableSphereFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@ha
/* 802CE614 002CB574  38 83 6A 20 */	addi r4, r3, lbl_803D6A20@l
/* 802CE618 002CB578  38 84 00 11 */	addi r4, r4, 0x11
/* 802CE61C 002CB57C  38 65 3E 78 */	addi r3, r5, CollideMovingSphere__17CCollidableSphereFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo@l
/* 802CE620 002CB580  7C 85 23 78 */	mr r5, r4
/* 802CE624 002CB584  48 00 00 61 */	bl InitAddMovingCollider__19CCollisionPrimitiveFPFRC27CInternalCollisionStructureRC9CVector3fRdR14CCollisionInfo_bPCcPCc
/* 802CE628 002CB588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CE62C 002CB58C  7C 08 03 A6 */	mtlr r0
/* 802CE630 002CB590  38 21 00 10 */	addi r1, r1, 0x10
/* 802CE634 002CB594  4E 80 00 20 */	blr

.global AddTypes__17InternalCollidersFv
AddTypes__17InternalCollidersFv:
/* 802CE638 002CB598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE63C 002CB59C  7C 08 02 A6 */	mflr r0
/* 802CE640 002CB5A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE644 002CB5A4  38 61 00 18 */	addi r3, r1, 0x18
/* 802CE648 002CB5A8  4B FF F9 CD */	bl GetType__16CCollidableAABoxFv
/* 802CE64C 002CB5AC  38 61 00 18 */	addi r3, r1, 0x18
/* 802CE650 002CB5B0  48 00 10 E9 */	bl InitAddType__19CCollisionPrimitiveFRCQ219CCollisionPrimitive4Type
/* 802CE654 002CB5B4  38 61 00 10 */	addi r3, r1, 0x10
/* 802CE658 002CB5B8  4B FF FA 3D */	bl GetType__27CCollidableCollisionSurfaceFv
/* 802CE65C 002CB5BC  38 61 00 10 */	addi r3, r1, 0x10
/* 802CE660 002CB5C0  48 00 10 D9 */	bl InitAddType__19CCollisionPrimitiveFRCQ219CCollisionPrimitive4Type
/* 802CE664 002CB5C4  38 61 00 08 */	addi r3, r1, 8
/* 802CE668 002CB5C8  48 00 6C 65 */	bl GetType__17CCollidableSphereFv
/* 802CE66C 002CB5CC  38 61 00 08 */	addi r3, r1, 8
/* 802CE670 002CB5D0  48 00 10 C9 */	bl InitAddType__19CCollisionPrimitiveFRCQ219CCollisionPrimitive4Type
/* 802CE674 002CB5D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE678 002CB5D8  7C 08 03 A6 */	mtlr r0
/* 802CE67C 002CB5DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE680 002CB5E0  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D6A20
lbl_803D6A20:
	# ROM: 0x3D3A20
	.asciz "CCollidableAABox"
	.asciz "CCollidableSphere"
	.balign 4
	.4byte 0


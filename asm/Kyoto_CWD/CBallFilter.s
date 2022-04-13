.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global Filter__11CBallFilterCFRC18CCollisionInfoListR18CCollisionInfoList
Filter__11CBallFilterCFRC18CCollisionInfoListR18CCollisionInfoList:
/* 80185828 00182788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018582C 0018278C  7C 08 02 A6 */	mflr r0
/* 80185830 00182790  7C 83 23 78 */	mr r3, r4
/* 80185834 00182794  7C A4 2B 78 */	mr r4, r5
/* 80185838 00182798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018583C 0018279C  48 14 C8 79 */	bl AddAverageToFront__13CollisionUtilFRC18CCollisionInfoListR18CCollisionInfoList
/* 80185840 001827A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80185844 001827A4  7C 08 03 A6 */	mtlr r0
/* 80185848 001827A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018584C 001827AC  4E 80 00 20 */	blr 

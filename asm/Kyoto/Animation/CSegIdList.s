.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __ct__10CSegIdListFR12CInputStream
__ct__10CSegIdListFR12CInputStream:
/* 80348E64 00345DC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348E68 00345DC8  7C 08 02 A6 */	mflr r0
/* 80348E6C 00345DCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80348E70 00345DD0  38 A1 00 08 */	addi r5, r1, 8
/* 80348E74 00345DD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80348E78 00345DD8  7C 7F 1B 78 */	mr r31, r3
/* 80348E7C 00345DDC  4B FA F2 51 */	bl "__ct__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 80348E80 00345DE0  80 7F 00 08 */	lwz r3, 8(r31)
/* 80348E84 00345DE4  38 80 00 02 */	li r4, 2
/* 80348E88 00345DE8  4B FA ED 31 */	bl AddToTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
/* 80348E8C 00345DEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348E90 00345DF0  7F E3 FB 78 */	mr r3, r31
/* 80348E94 00345DF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80348E98 00345DF8  7C 08 03 A6 */	mtlr r0
/* 80348E9C 00345DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80348EA0 00345E00  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"

# TODO: Figure out why this doesn't inline and get rid of this fake TU
.global __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
__ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp:
/* 80309254 003061B4  81 0D A7 98 */	lwz r8, sUniquePass__13CTevCombiners@sda21(r13)
/* 80309258 003061B8  38 08 00 01 */	addi r0, r8, 1
/* 8030925C 003061BC  90 0D A7 98 */	stw r0, sUniquePass__13CTevCombiners@sda21(r13)
/* 80309260 003061C0  91 03 00 00 */	stw r8, 0(r3)
/* 80309264 003061C4  80 04 00 00 */	lwz r0, 0(r4)
/* 80309268 003061C8  90 03 00 04 */	stw r0, 4(r3)
/* 8030926C 003061CC  80 04 00 04 */	lwz r0, 4(r4)
/* 80309270 003061D0  90 03 00 08 */	stw r0, 8(r3)
/* 80309274 003061D4  80 04 00 08 */	lwz r0, 8(r4)
/* 80309278 003061D8  90 03 00 0C */	stw r0, 0xc(r3)
/* 8030927C 003061DC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80309280 003061E0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80309284 003061E4  80 05 00 00 */	lwz r0, 0(r5)
/* 80309288 003061E8  90 03 00 14 */	stw r0, 0x14(r3)
/* 8030928C 003061EC  80 05 00 04 */	lwz r0, 4(r5)
/* 80309290 003061F0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80309294 003061F4  80 05 00 08 */	lwz r0, 8(r5)
/* 80309298 003061F8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8030929C 003061FC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 803092A0 00306200  90 03 00 20 */	stw r0, 0x20(r3)
/* 803092A4 00306204  88 06 00 00 */	lbz r0, 0(r6)
/* 803092A8 00306208  98 03 00 24 */	stb r0, 0x24(r3)
/* 803092AC 0030620C  80 06 00 04 */	lwz r0, 4(r6)
/* 803092B0 00306210  90 03 00 28 */	stw r0, 0x28(r3)
/* 803092B4 00306214  80 06 00 08 */	lwz r0, 8(r6)
/* 803092B8 00306218  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803092BC 0030621C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 803092C0 00306220  90 03 00 30 */	stw r0, 0x30(r3)
/* 803092C4 00306224  80 06 00 10 */	lwz r0, 0x10(r6)
/* 803092C8 00306228  90 03 00 34 */	stw r0, 0x34(r3)
/* 803092CC 0030622C  88 07 00 00 */	lbz r0, 0(r7)
/* 803092D0 00306230  98 03 00 38 */	stb r0, 0x38(r3)
/* 803092D4 00306234  80 07 00 04 */	lwz r0, 4(r7)
/* 803092D8 00306238  90 03 00 3C */	stw r0, 0x3c(r3)
/* 803092DC 0030623C  80 07 00 08 */	lwz r0, 8(r7)
/* 803092E0 00306240  90 03 00 40 */	stw r0, 0x40(r3)
/* 803092E4 00306244  80 07 00 0C */	lwz r0, 0xc(r7)
/* 803092E8 00306248  90 03 00 44 */	stw r0, 0x44(r3)
/* 803092EC 0030624C  80 07 00 10 */	lwz r0, 0x10(r7)
/* 803092F0 00306250  90 03 00 48 */	stw r0, 0x48(r3)
/* 803092F4 00306254  4E 80 00 20 */	blr

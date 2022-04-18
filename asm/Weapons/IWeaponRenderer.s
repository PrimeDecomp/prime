.include "macros.inc"

.section .data

.global lbl_803EC528
lbl_803EC528:
	# ROM: 0x3E9528
	.4byte 0
	.4byte 0
	.4byte __dt__22CDefaultWeaponRendererFv
	.4byte AddParticleGen__22CDefaultWeaponRendererFRC12CParticleGen

.global lbl_803EC538
lbl_803EC538:
	# ROM: 0x3E9538
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.section .bss

.global lbl_8046E1F0
lbl_8046E1F0:
	.skip 0x10
	
.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __sinit_IWeaponRenderer_cpp
__sinit_IWeaponRenderer_cpp:
/* 802B36A8 002B0608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B36AC 002B060C  7C 08 02 A6 */	mflr r0
/* 802B36B0 002B0610  3C 80 80 3F */	lis r4, lbl_803EC538@ha
/* 802B36B4 002B0614  3C 60 80 3F */	lis r3, lbl_803EC528@ha
/* 802B36B8 002B0618  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B36BC 002B061C  38 04 C5 38 */	addi r0, r4, lbl_803EC538@l
/* 802B36C0 002B0620  3C 80 80 2B */	lis r4, __dt__22CDefaultWeaponRendererFv@ha
/* 802B36C4 002B0624  90 0D A5 E0 */	stw r0, lbl_805A91A0@sda21(r13)
/* 802B36C8 002B0628  38 03 C5 28 */	addi r0, r3, lbl_803EC528@l
/* 802B36CC 002B062C  3C 60 80 47 */	lis r3, lbl_8046E1F0@ha
/* 802B36D0 002B0630  38 84 37 24 */	addi r4, r4, __dt__22CDefaultWeaponRendererFv@l
/* 802B36D4 002B0634  90 0D A5 E0 */	stw r0, lbl_805A91A0@sda21(r13)
/* 802B36D8 002B0638  38 A3 E1 F0 */	addi r5, r3, lbl_8046E1F0@l
/* 802B36DC 002B063C  38 6D A5 E0 */	addi r3, r13, lbl_805A91A0@sda21
/* 802B36E0 002B0640  48 0D 5F AD */	bl __register_global_object
/* 802B36E4 002B0644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B36E8 002B0648  7C 08 03 A6 */	mtlr r0
/* 802B36EC 002B064C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B36F0 002B0650  4E 80 00 20 */	blr 

.global AddParticleGen__22CDefaultWeaponRendererFRC12CParticleGen
AddParticleGen__22CDefaultWeaponRendererFRC12CParticleGen:
/* 802B36F4 002B0654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B36F8 002B0658  7C 08 02 A6 */	mflr r0
/* 802B36FC 002B065C  7C 83 23 78 */	mr r3, r4
/* 802B3700 002B0660  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B3704 002B0664  81 84 00 00 */	lwz r12, 0(r4)
/* 802B3708 002B0668  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B370C 002B066C  7D 89 03 A6 */	mtctr r12
/* 802B3710 002B0670  4E 80 04 21 */	bctrl 
/* 802B3714 002B0674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B3718 002B0678  7C 08 03 A6 */	mtlr r0
/* 802B371C 002B067C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B3720 002B0680  4E 80 00 20 */	blr 

.global __dt__22CDefaultWeaponRendererFv
__dt__22CDefaultWeaponRendererFv:
/* 802B3724 002B0684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B3728 002B0688  7C 08 02 A6 */	mflr r0
/* 802B372C 002B068C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B3730 002B0690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B3734 002B0694  7C 7F 1B 79 */	or. r31, r3, r3
/* 802B3738 002B0698  41 82 00 30 */	beq lbl_802B3768
/* 802B373C 002B069C  3C 60 80 3F */	lis r3, lbl_803EC528@ha
/* 802B3740 002B06A0  38 03 C5 28 */	addi r0, r3, lbl_803EC528@l
/* 802B3744 002B06A4  90 1F 00 00 */	stw r0, 0(r31)
/* 802B3748 002B06A8  41 82 00 10 */	beq lbl_802B3758
/* 802B374C 002B06AC  3C 60 80 3F */	lis r3, lbl_803EC538@ha
/* 802B3750 002B06B0  38 03 C5 38 */	addi r0, r3, lbl_803EC538@l
/* 802B3754 002B06B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_802B3758:
/* 802B3758 002B06B8  7C 80 07 35 */	extsh. r0, r4
/* 802B375C 002B06BC  40 81 00 0C */	ble lbl_802B3768
/* 802B3760 002B06C0  7F E3 FB 78 */	mr r3, r31
/* 802B3764 002B06C4  48 06 21 CD */	bl Free__7CMemoryFPCv
lbl_802B3768:
/* 802B3768 002B06C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B376C 002B06CC  7F E3 FB 78 */	mr r3, r31
/* 802B3770 002B06D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B3774 002B06D4  7C 08 03 A6 */	mtlr r0
/* 802B3778 002B06D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B377C 002B06DC  4E 80 00 20 */	blr 

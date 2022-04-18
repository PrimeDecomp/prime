.include "macros.inc"

.section .data

.global lbl_803DF4E8
lbl_803DF4E8:
	# ROM: 0x3DC4E8
	.4byte 0
	.4byte 0
	.4byte __dt__12CTweakGunResFv
	.4byte 0

.section .text, "ax"

.global GetWeaponResourcePair__12CTweakGunResCFi
GetWeaponResourcePair__12CTweakGunResCFi:
/* 800BB958 000B88B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BB95C 000B88BC  3C A0 80 3D */	lis r5, lbl_803CDED4@ha
/* 800BB960 000B88C0  39 25 DE D4 */	addi r9, r5, lbl_803CDED4@l
/* 800BB964 000B88C4  2C 04 00 00 */	cmpwi r4, 0
/* 800BB968 000B88C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800BB96C 000B88CC  39 03 00 34 */	addi r8, r3, 0x34
/* 800BB970 000B88D0  38 E3 00 44 */	addi r7, r3, 0x44
/* 800BB974 000B88D4  38 C3 00 54 */	addi r6, r3, 0x54
/* 800BB978 000B88D8  83 E9 00 00 */	lwz r31, 0(r9)
/* 800BB97C 000B88DC  38 A3 00 64 */	addi r5, r3, 0x64
/* 800BB980 000B88E0  81 89 00 04 */	lwz r12, 4(r9)
/* 800BB984 000B88E4  38 03 00 74 */	addi r0, r3, 0x74
/* 800BB988 000B88E8  81 69 00 08 */	lwz r11, 8(r9)
/* 800BB98C 000B88EC  81 49 00 0C */	lwz r10, 0xc(r9)
/* 800BB990 000B88F0  81 29 00 10 */	lwz r9, 0x10(r9)
/* 800BB994 000B88F4  93 E1 00 08 */	stw r31, 8(r1)
/* 800BB998 000B88F8  91 81 00 0C */	stw r12, 0xc(r1)
/* 800BB99C 000B88FC  91 61 00 10 */	stw r11, 0x10(r1)
/* 800BB9A0 000B8900  91 41 00 14 */	stw r10, 0x14(r1)
/* 800BB9A4 000B8904  91 21 00 18 */	stw r9, 0x18(r1)
/* 800BB9A8 000B8908  91 01 00 08 */	stw r8, 8(r1)
/* 800BB9AC 000B890C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 800BB9B0 000B8910  90 C1 00 10 */	stw r6, 0x10(r1)
/* 800BB9B4 000B8914  90 A1 00 14 */	stw r5, 0x14(r1)
/* 800BB9B8 000B8918  90 01 00 18 */	stw r0, 0x18(r1)
/* 800BB9BC 000B891C  41 80 00 0C */	blt lbl_800BB9C8
/* 800BB9C0 000B8920  2C 04 00 04 */	cmpwi r4, 4
/* 800BB9C4 000B8924  40 81 00 0C */	ble lbl_800BB9D0
lbl_800BB9C8:
/* 800BB9C8 000B8928  38 63 00 34 */	addi r3, r3, 0x34
/* 800BB9CC 000B892C  48 00 00 10 */	b lbl_800BB9DC
lbl_800BB9D0:
/* 800BB9D0 000B8930  54 80 10 3A */	slwi r0, r4, 2
/* 800BB9D4 000B8934  38 61 00 08 */	addi r3, r1, 8
/* 800BB9D8 000B8938  7C 63 00 2E */	lwzx r3, r3, r0
lbl_800BB9DC:
/* 800BB9DC 000B893C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800BB9E0 000B8940  38 21 00 30 */	addi r1, r1, 0x30
/* 800BB9E4 000B8944  4E 80 00 20 */	blr 

.global __ct__12CTweakGunResFR12CInputStream
__ct__12CTweakGunResFR12CInputStream:
/* 800BB9E8 000B8948  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 800BB9EC 000B894C  7C 08 02 A6 */	mflr r0
/* 800BB9F0 000B8950  3C A0 80 3E */	lis r5, lbl_803D9CC4@ha
/* 800BB9F4 000B8954  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 800BB9F8 000B8958  38 05 9C C4 */	addi r0, r5, lbl_803D9CC4@l
/* 800BB9FC 000B895C  38 A1 00 58 */	addi r5, r1, 0x58
/* 800BBA00 000B8960  BF 21 01 C4 */	stmw r25, 0x1c4(r1)
/* 800BBA04 000B8964  7C 7C 1B 78 */	mr r28, r3
/* 800BBA08 000B8968  3C 60 80 3E */	lis r3, lbl_803DF4E8@ha
/* 800BBA0C 000B896C  7C 9D 23 78 */	mr r29, r4
/* 800BBA10 000B8970  38 63 F4 E8 */	addi r3, r3, lbl_803DF4E8@l
/* 800BBA14 000B8974  90 1C 00 00 */	stw r0, 0(r28)
/* 800BBA18 000B8978  38 00 00 00 */	li r0, 0
/* 800BBA1C 000B897C  90 7C 00 00 */	stw r3, 0(r28)
/* 800BBA20 000B8980  38 61 01 9C */	addi r3, r1, 0x19c
/* 800BBA24 000B8984  90 1C 00 04 */	stw r0, 4(r28)
/* 800BBA28 000B8988  90 1C 00 08 */	stw r0, 8(r28)
/* 800BBA2C 000B898C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 800BBA30 000B8990  90 1C 00 10 */	stw r0, 0x10(r28)
/* 800BBA34 000B8994  90 1C 00 14 */	stw r0, 0x14(r28)
/* 800BBA38 000B8998  90 1C 00 18 */	stw r0, 0x18(r28)
/* 800BBA3C 000B899C  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 800BBA40 000B89A0  90 1C 00 20 */	stw r0, 0x20(r28)
/* 800BBA44 000B89A4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 800BBA48 000B89A8  90 1C 00 28 */	stw r0, 0x28(r28)
/* 800BBA4C 000B89AC  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 800BBA50 000B89B0  90 1C 00 30 */	stw r0, 0x30(r28)
/* 800BBA54 000B89B4  90 1C 00 38 */	stw r0, 0x38(r28)
/* 800BBA58 000B89B8  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 800BBA5C 000B89BC  90 1C 00 40 */	stw r0, 0x40(r28)
/* 800BBA60 000B89C0  90 1C 00 48 */	stw r0, 0x48(r28)
/* 800BBA64 000B89C4  90 1C 00 4C */	stw r0, 0x4c(r28)
/* 800BBA68 000B89C8  90 1C 00 50 */	stw r0, 0x50(r28)
/* 800BBA6C 000B89CC  90 1C 00 58 */	stw r0, 0x58(r28)
/* 800BBA70 000B89D0  90 1C 00 5C */	stw r0, 0x5c(r28)
/* 800BBA74 000B89D4  90 1C 00 60 */	stw r0, 0x60(r28)
/* 800BBA78 000B89D8  90 1C 00 68 */	stw r0, 0x68(r28)
/* 800BBA7C 000B89DC  90 1C 00 6C */	stw r0, 0x6c(r28)
/* 800BBA80 000B89E0  90 1C 00 70 */	stw r0, 0x70(r28)
/* 800BBA84 000B89E4  90 1C 00 78 */	stw r0, 0x78(r28)
/* 800BBA88 000B89E8  90 1C 00 7C */	stw r0, 0x7c(r28)
/* 800BBA8C 000B89EC  90 1C 00 80 */	stw r0, 0x80(r28)
/* 800BBA90 000B89F0  90 1C 00 88 */	stw r0, 0x88(r28)
/* 800BBA94 000B89F4  90 1C 00 8C */	stw r0, 0x8c(r28)
/* 800BBA98 000B89F8  90 1C 00 90 */	stw r0, 0x90(r28)
/* 800BBA9C 000B89FC  90 1C 00 98 */	stw r0, 0x98(r28)
/* 800BBAA0 000B8A00  90 1C 00 9C */	stw r0, 0x9c(r28)
/* 800BBAA4 000B8A04  90 1C 00 A0 */	stw r0, 0xa0(r28)
/* 800BBAA8 000B8A08  90 1C 00 A8 */	stw r0, 0xa8(r28)
/* 800BBAAC 000B8A0C  90 1C 00 AC */	stw r0, 0xac(r28)
/* 800BBAB0 000B8A10  90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 800BBAB4 000B8A14  48 28 28 45 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBAB8 000B8A18  80 61 01 9C */	lwz r3, 0x19c(r1)
/* 800BBABC 000B8A1C  48 1C F9 8D */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBAC0 000B8A20  90 7C 00 04 */	stw r3, 4(r28)
/* 800BBAC4 000B8A24  7F A4 EB 78 */	mr r4, r29
/* 800BBAC8 000B8A28  38 61 01 8C */	addi r3, r1, 0x18c
/* 800BBACC 000B8A2C  38 A1 00 54 */	addi r5, r1, 0x54
/* 800BBAD0 000B8A30  48 28 28 29 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBAD4 000B8A34  80 61 01 8C */	lwz r3, 0x18c(r1)
/* 800BBAD8 000B8A38  48 1C F9 71 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBADC 000B8A3C  90 7C 00 08 */	stw r3, 8(r28)
/* 800BBAE0 000B8A40  7F A4 EB 78 */	mr r4, r29
/* 800BBAE4 000B8A44  38 61 01 7C */	addi r3, r1, 0x17c
/* 800BBAE8 000B8A48  38 A1 00 50 */	addi r5, r1, 0x50
/* 800BBAEC 000B8A4C  48 28 28 0D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBAF0 000B8A50  80 61 01 7C */	lwz r3, 0x17c(r1)
/* 800BBAF4 000B8A54  48 1C F9 55 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBAF8 000B8A58  90 7C 00 0C */	stw r3, 0xc(r28)
/* 800BBAFC 000B8A5C  7F A4 EB 78 */	mr r4, r29
/* 800BBB00 000B8A60  38 61 01 6C */	addi r3, r1, 0x16c
/* 800BBB04 000B8A64  38 A1 00 4C */	addi r5, r1, 0x4c
/* 800BBB08 000B8A68  48 28 27 F1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBB0C 000B8A6C  80 61 01 6C */	lwz r3, 0x16c(r1)
/* 800BBB10 000B8A70  48 1C F9 39 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBB14 000B8A74  90 7C 00 10 */	stw r3, 0x10(r28)
/* 800BBB18 000B8A78  7F A4 EB 78 */	mr r4, r29
/* 800BBB1C 000B8A7C  38 61 01 5C */	addi r3, r1, 0x15c
/* 800BBB20 000B8A80  38 A1 00 48 */	addi r5, r1, 0x48
/* 800BBB24 000B8A84  48 28 27 D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBB28 000B8A88  80 61 01 5C */	lwz r3, 0x15c(r1)
/* 800BBB2C 000B8A8C  48 1C F9 1D */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBB30 000B8A90  90 7C 00 14 */	stw r3, 0x14(r28)
/* 800BBB34 000B8A94  7F A4 EB 78 */	mr r4, r29
/* 800BBB38 000B8A98  38 61 01 4C */	addi r3, r1, 0x14c
/* 800BBB3C 000B8A9C  38 A1 00 44 */	addi r5, r1, 0x44
/* 800BBB40 000B8AA0  48 28 27 B9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBB44 000B8AA4  80 61 01 4C */	lwz r3, 0x14c(r1)
/* 800BBB48 000B8AA8  48 1C F9 01 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBB4C 000B8AAC  90 7C 00 18 */	stw r3, 0x18(r28)
/* 800BBB50 000B8AB0  7F A4 EB 78 */	mr r4, r29
/* 800BBB54 000B8AB4  38 61 01 3C */	addi r3, r1, 0x13c
/* 800BBB58 000B8AB8  38 A1 00 40 */	addi r5, r1, 0x40
/* 800BBB5C 000B8ABC  48 28 27 9D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBB60 000B8AC0  80 61 01 3C */	lwz r3, 0x13c(r1)
/* 800BBB64 000B8AC4  48 1C F8 E5 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBB68 000B8AC8  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 800BBB6C 000B8ACC  7F A4 EB 78 */	mr r4, r29
/* 800BBB70 000B8AD0  38 61 01 2C */	addi r3, r1, 0x12c
/* 800BBB74 000B8AD4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800BBB78 000B8AD8  48 28 27 81 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBB7C 000B8ADC  80 61 01 2C */	lwz r3, 0x12c(r1)
/* 800BBB80 000B8AE0  48 1C F8 C9 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBB84 000B8AE4  90 7C 00 20 */	stw r3, 0x20(r28)
/* 800BBB88 000B8AE8  7F A4 EB 78 */	mr r4, r29
/* 800BBB8C 000B8AEC  38 61 01 1C */	addi r3, r1, 0x11c
/* 800BBB90 000B8AF0  38 A1 00 38 */	addi r5, r1, 0x38
/* 800BBB94 000B8AF4  48 28 27 65 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBB98 000B8AF8  80 61 01 1C */	lwz r3, 0x11c(r1)
/* 800BBB9C 000B8AFC  48 1C F8 AD */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBBA0 000B8B00  90 7C 00 24 */	stw r3, 0x24(r28)
/* 800BBBA4 000B8B04  7F A4 EB 78 */	mr r4, r29
/* 800BBBA8 000B8B08  38 61 01 0C */	addi r3, r1, 0x10c
/* 800BBBAC 000B8B0C  38 A1 00 34 */	addi r5, r1, 0x34
/* 800BBBB0 000B8B10  48 28 27 49 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBBB4 000B8B14  80 61 01 0C */	lwz r3, 0x10c(r1)
/* 800BBBB8 000B8B18  48 1C F8 91 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBBBC 000B8B1C  90 7C 00 28 */	stw r3, 0x28(r28)
/* 800BBBC0 000B8B20  7F A4 EB 78 */	mr r4, r29
/* 800BBBC4 000B8B24  38 61 00 FC */	addi r3, r1, 0xfc
/* 800BBBC8 000B8B28  38 A1 00 30 */	addi r5, r1, 0x30
/* 800BBBCC 000B8B2C  48 28 27 2D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBBD0 000B8B30  80 61 00 FC */	lwz r3, 0xfc(r1)
/* 800BBBD4 000B8B34  48 1C F8 75 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBBD8 000B8B38  90 7C 00 2C */	stw r3, 0x2c(r28)
/* 800BBBDC 000B8B3C  7F A4 EB 78 */	mr r4, r29
/* 800BBBE0 000B8B40  38 61 00 EC */	addi r3, r1, 0xec
/* 800BBBE4 000B8B44  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800BBBE8 000B8B48  48 28 27 11 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBBEC 000B8B4C  80 61 00 EC */	lwz r3, 0xec(r1)
/* 800BBBF0 000B8B50  48 1C F8 59 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBBF4 000B8B54  3C 80 80 3D */	lis r4, lbl_803CDEC0@ha
/* 800BBBF8 000B8B58  90 7C 00 30 */	stw r3, 0x30(r28)
/* 800BBBFC 000B8B5C  38 E4 DE C0 */	addi r7, r4, lbl_803CDEC0@l
/* 800BBC00 000B8B60  38 DC 00 34 */	addi r6, r28, 0x34
/* 800BBC04 000B8B64  81 67 00 00 */	lwz r11, 0(r7)
/* 800BBC08 000B8B68  38 BC 00 44 */	addi r5, r28, 0x44
/* 800BBC0C 000B8B6C  81 47 00 04 */	lwz r10, 4(r7)
/* 800BBC10 000B8B70  38 9C 00 54 */	addi r4, r28, 0x54
/* 800BBC14 000B8B74  81 27 00 08 */	lwz r9, 8(r7)
/* 800BBC18 000B8B78  38 7C 00 64 */	addi r3, r28, 0x64
/* 800BBC1C 000B8B7C  81 07 00 0C */	lwz r8, 0xc(r7)
/* 800BBC20 000B8B80  38 1C 00 74 */	addi r0, r28, 0x74
/* 800BBC24 000B8B84  80 E7 00 10 */	lwz r7, 0x10(r7)
/* 800BBC28 000B8B88  3B E1 01 AC */	addi r31, r1, 0x1ac
/* 800BBC2C 000B8B8C  91 61 01 AC */	stw r11, 0x1ac(r1)
/* 800BBC30 000B8B90  3B C0 00 00 */	li r30, 0
/* 800BBC34 000B8B94  91 41 01 B0 */	stw r10, 0x1b0(r1)
/* 800BBC38 000B8B98  91 21 01 B4 */	stw r9, 0x1b4(r1)
/* 800BBC3C 000B8B9C  91 01 01 B8 */	stw r8, 0x1b8(r1)
/* 800BBC40 000B8BA0  90 E1 01 BC */	stw r7, 0x1bc(r1)
/* 800BBC44 000B8BA4  90 C1 01 AC */	stw r6, 0x1ac(r1)
/* 800BBC48 000B8BA8  90 A1 01 B0 */	stw r5, 0x1b0(r1)
/* 800BBC4C 000B8BAC  90 81 01 B4 */	stw r4, 0x1b4(r1)
/* 800BBC50 000B8BB0  90 61 01 B8 */	stw r3, 0x1b8(r1)
/* 800BBC54 000B8BB4  90 01 01 BC */	stw r0, 0x1bc(r1)
lbl_800BBC58:
/* 800BBC58 000B8BB8  83 3F 00 00 */	lwz r25, 0(r31)
/* 800BBC5C 000B8BBC  80 99 00 04 */	lwz r4, 4(r25)
/* 800BBC60 000B8BC0  7F 23 CB 78 */	mr r3, r25
/* 800BBC64 000B8BC4  38 84 00 02 */	addi r4, r4, 2
/* 800BBC68 000B8BC8  4B FA 7E BD */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 800BBC6C 000B8BCC  3B 40 00 00 */	li r26, 0
lbl_800BBC70:
/* 800BBC70 000B8BD0  7F A4 EB 78 */	mr r4, r29
/* 800BBC74 000B8BD4  38 61 00 DC */	addi r3, r1, 0xdc
/* 800BBC78 000B8BD8  38 A1 00 28 */	addi r5, r1, 0x28
/* 800BBC7C 000B8BDC  48 28 26 7D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBC80 000B8BE0  80 61 00 DC */	lwz r3, 0xdc(r1)
/* 800BBC84 000B8BE4  48 1C F7 C5 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBC88 000B8BE8  80 19 00 04 */	lwz r0, 4(r25)
/* 800BBC8C 000B8BEC  7C 7B 1B 78 */	mr r27, r3
/* 800BBC90 000B8BF0  80 B9 00 08 */	lwz r5, 8(r25)
/* 800BBC94 000B8BF4  7C 00 28 00 */	cmpw r0, r5
/* 800BBC98 000B8BF8  41 80 00 1C */	blt lbl_800BBCB4
/* 800BBC9C 000B8BFC  2C 05 00 00 */	cmpwi r5, 0
/* 800BBCA0 000B8C00  7F 23 CB 78 */	mr r3, r25
/* 800BBCA4 000B8C04  38 80 00 04 */	li r4, 4
/* 800BBCA8 000B8C08  41 82 00 08 */	beq lbl_800BBCB0
/* 800BBCAC 000B8C0C  54 A4 08 3C */	slwi r4, r5, 1
lbl_800BBCB0:
/* 800BBCB0 000B8C10  4B FA 7E 75 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_800BBCB4:
/* 800BBCB4 000B8C14  80 19 00 04 */	lwz r0, 4(r25)
/* 800BBCB8 000B8C18  80 79 00 0C */	lwz r3, 0xc(r25)
/* 800BBCBC 000B8C1C  54 00 10 3A */	slwi r0, r0, 2
/* 800BBCC0 000B8C20  7C 63 02 15 */	add. r3, r3, r0
/* 800BBCC4 000B8C24  41 82 00 08 */	beq lbl_800BBCCC
/* 800BBCC8 000B8C28  93 63 00 00 */	stw r27, 0(r3)
lbl_800BBCCC:
/* 800BBCCC 000B8C2C  80 99 00 04 */	lwz r4, 4(r25)
/* 800BBCD0 000B8C30  38 61 00 DC */	addi r3, r1, 0xdc
/* 800BBCD4 000B8C34  38 04 00 01 */	addi r0, r4, 1
/* 800BBCD8 000B8C38  90 19 00 04 */	stw r0, 4(r25)
/* 800BBCDC 000B8C3C  48 28 1E 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBCE0 000B8C40  3B 5A 00 01 */	addi r26, r26, 1
/* 800BBCE4 000B8C44  2C 1A 00 02 */	cmpwi r26, 2
/* 800BBCE8 000B8C48  41 80 FF 88 */	blt lbl_800BBC70
/* 800BBCEC 000B8C4C  3B DE 00 01 */	addi r30, r30, 1
/* 800BBCF0 000B8C50  3B FF 00 04 */	addi r31, r31, 4
/* 800BBCF4 000B8C54  2C 1E 00 05 */	cmpwi r30, 5
/* 800BBCF8 000B8C58  41 80 FF 60 */	blt lbl_800BBC58
/* 800BBCFC 000B8C5C  3B 20 00 00 */	li r25, 0
lbl_800BBD00:
/* 800BBD00 000B8C60  80 9C 00 88 */	lwz r4, 0x88(r28)
/* 800BBD04 000B8C64  38 7C 00 84 */	addi r3, r28, 0x84
/* 800BBD08 000B8C68  38 84 00 01 */	addi r4, r4, 1
/* 800BBD0C 000B8C6C  4B FA 7E 19 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 800BBD10 000B8C70  7F A4 EB 78 */	mr r4, r29
/* 800BBD14 000B8C74  38 61 00 CC */	addi r3, r1, 0xcc
/* 800BBD18 000B8C78  38 A1 00 24 */	addi r5, r1, 0x24
/* 800BBD1C 000B8C7C  48 28 25 DD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBD20 000B8C80  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 800BBD24 000B8C84  48 1C F7 25 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBD28 000B8C88  80 1C 00 88 */	lwz r0, 0x88(r28)
/* 800BBD2C 000B8C8C  7C 7E 1B 78 */	mr r30, r3
/* 800BBD30 000B8C90  80 BC 00 8C */	lwz r5, 0x8c(r28)
/* 800BBD34 000B8C94  7C 00 28 00 */	cmpw r0, r5
/* 800BBD38 000B8C98  41 80 00 1C */	blt lbl_800BBD54
/* 800BBD3C 000B8C9C  2C 05 00 00 */	cmpwi r5, 0
/* 800BBD40 000B8CA0  38 7C 00 84 */	addi r3, r28, 0x84
/* 800BBD44 000B8CA4  38 80 00 04 */	li r4, 4
/* 800BBD48 000B8CA8  41 82 00 08 */	beq lbl_800BBD50
/* 800BBD4C 000B8CAC  54 A4 08 3C */	slwi r4, r5, 1
lbl_800BBD50:
/* 800BBD50 000B8CB0  4B FA 7D D5 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_800BBD54:
/* 800BBD54 000B8CB4  80 1C 00 88 */	lwz r0, 0x88(r28)
/* 800BBD58 000B8CB8  80 7C 00 90 */	lwz r3, 0x90(r28)
/* 800BBD5C 000B8CBC  54 00 10 3A */	slwi r0, r0, 2
/* 800BBD60 000B8CC0  7C 63 02 15 */	add. r3, r3, r0
/* 800BBD64 000B8CC4  41 82 00 08 */	beq lbl_800BBD6C
/* 800BBD68 000B8CC8  93 C3 00 00 */	stw r30, 0(r3)
lbl_800BBD6C:
/* 800BBD6C 000B8CCC  80 9C 00 88 */	lwz r4, 0x88(r28)
/* 800BBD70 000B8CD0  38 61 00 CC */	addi r3, r1, 0xcc
/* 800BBD74 000B8CD4  38 04 00 01 */	addi r0, r4, 1
/* 800BBD78 000B8CD8  90 1C 00 88 */	stw r0, 0x88(r28)
/* 800BBD7C 000B8CDC  48 28 1D 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBD80 000B8CE0  3B 39 00 01 */	addi r25, r25, 1
/* 800BBD84 000B8CE4  2C 19 00 05 */	cmpwi r25, 5
/* 800BBD88 000B8CE8  41 80 FF 78 */	blt lbl_800BBD00
/* 800BBD8C 000B8CEC  3B 20 00 00 */	li r25, 0
lbl_800BBD90:
/* 800BBD90 000B8CF0  80 9C 00 98 */	lwz r4, 0x98(r28)
/* 800BBD94 000B8CF4  38 7C 00 94 */	addi r3, r28, 0x94
/* 800BBD98 000B8CF8  38 84 00 01 */	addi r4, r4, 1
/* 800BBD9C 000B8CFC  4B FA 7D 89 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 800BBDA0 000B8D00  7F A4 EB 78 */	mr r4, r29
/* 800BBDA4 000B8D04  38 61 00 BC */	addi r3, r1, 0xbc
/* 800BBDA8 000B8D08  38 A1 00 20 */	addi r5, r1, 0x20
/* 800BBDAC 000B8D0C  48 28 25 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBDB0 000B8D10  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 800BBDB4 000B8D14  48 1C F6 95 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBDB8 000B8D18  80 1C 00 98 */	lwz r0, 0x98(r28)
/* 800BBDBC 000B8D1C  7C 7E 1B 78 */	mr r30, r3
/* 800BBDC0 000B8D20  80 BC 00 9C */	lwz r5, 0x9c(r28)
/* 800BBDC4 000B8D24  7C 00 28 00 */	cmpw r0, r5
/* 800BBDC8 000B8D28  41 80 00 1C */	blt lbl_800BBDE4
/* 800BBDCC 000B8D2C  2C 05 00 00 */	cmpwi r5, 0
/* 800BBDD0 000B8D30  38 7C 00 94 */	addi r3, r28, 0x94
/* 800BBDD4 000B8D34  38 80 00 04 */	li r4, 4
/* 800BBDD8 000B8D38  41 82 00 08 */	beq lbl_800BBDE0
/* 800BBDDC 000B8D3C  54 A4 08 3C */	slwi r4, r5, 1
lbl_800BBDE0:
/* 800BBDE0 000B8D40  4B FA 7D 45 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_800BBDE4:
/* 800BBDE4 000B8D44  80 1C 00 98 */	lwz r0, 0x98(r28)
/* 800BBDE8 000B8D48  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 800BBDEC 000B8D4C  54 00 10 3A */	slwi r0, r0, 2
/* 800BBDF0 000B8D50  7C 63 02 15 */	add. r3, r3, r0
/* 800BBDF4 000B8D54  41 82 00 08 */	beq lbl_800BBDFC
/* 800BBDF8 000B8D58  93 C3 00 00 */	stw r30, 0(r3)
lbl_800BBDFC:
/* 800BBDFC 000B8D5C  80 9C 00 98 */	lwz r4, 0x98(r28)
/* 800BBE00 000B8D60  38 61 00 BC */	addi r3, r1, 0xbc
/* 800BBE04 000B8D64  38 04 00 01 */	addi r0, r4, 1
/* 800BBE08 000B8D68  90 1C 00 98 */	stw r0, 0x98(r28)
/* 800BBE0C 000B8D6C  48 28 1C D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBE10 000B8D70  3B 39 00 01 */	addi r25, r25, 1
/* 800BBE14 000B8D74  2C 19 00 05 */	cmpwi r25, 5
/* 800BBE18 000B8D78  41 80 FF 78 */	blt lbl_800BBD90
/* 800BBE1C 000B8D7C  3B 20 00 00 */	li r25, 0
lbl_800BBE20:
/* 800BBE20 000B8D80  80 9C 00 A8 */	lwz r4, 0xa8(r28)
/* 800BBE24 000B8D84  38 7C 00 A4 */	addi r3, r28, 0xa4
/* 800BBE28 000B8D88  38 84 00 01 */	addi r4, r4, 1
/* 800BBE2C 000B8D8C  4B FA 7C F9 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 800BBE30 000B8D90  7F A4 EB 78 */	mr r4, r29
/* 800BBE34 000B8D94  38 61 00 AC */	addi r3, r1, 0xac
/* 800BBE38 000B8D98  38 A1 00 1C */	addi r5, r1, 0x1c
/* 800BBE3C 000B8D9C  48 28 24 BD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBE40 000B8DA0  80 61 00 AC */	lwz r3, 0xac(r1)
/* 800BBE44 000B8DA4  48 1C F6 05 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBE48 000B8DA8  80 1C 00 A8 */	lwz r0, 0xa8(r28)
/* 800BBE4C 000B8DAC  7C 7E 1B 78 */	mr r30, r3
/* 800BBE50 000B8DB0  80 BC 00 AC */	lwz r5, 0xac(r28)
/* 800BBE54 000B8DB4  7C 00 28 00 */	cmpw r0, r5
/* 800BBE58 000B8DB8  41 80 00 1C */	blt lbl_800BBE74
/* 800BBE5C 000B8DBC  2C 05 00 00 */	cmpwi r5, 0
/* 800BBE60 000B8DC0  38 7C 00 A4 */	addi r3, r28, 0xa4
/* 800BBE64 000B8DC4  38 80 00 04 */	li r4, 4
/* 800BBE68 000B8DC8  41 82 00 08 */	beq lbl_800BBE70
/* 800BBE6C 000B8DCC  54 A4 08 3C */	slwi r4, r5, 1
lbl_800BBE70:
/* 800BBE70 000B8DD0  4B FA 7C B5 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_800BBE74:
/* 800BBE74 000B8DD4  80 1C 00 A8 */	lwz r0, 0xa8(r28)
/* 800BBE78 000B8DD8  80 7C 00 B0 */	lwz r3, 0xb0(r28)
/* 800BBE7C 000B8DDC  54 00 10 3A */	slwi r0, r0, 2
/* 800BBE80 000B8DE0  7C 63 02 15 */	add. r3, r3, r0
/* 800BBE84 000B8DE4  41 82 00 08 */	beq lbl_800BBE8C
/* 800BBE88 000B8DE8  93 C3 00 00 */	stw r30, 0(r3)
lbl_800BBE8C:
/* 800BBE8C 000B8DEC  80 9C 00 A8 */	lwz r4, 0xa8(r28)
/* 800BBE90 000B8DF0  38 61 00 AC */	addi r3, r1, 0xac
/* 800BBE94 000B8DF4  38 04 00 01 */	addi r0, r4, 1
/* 800BBE98 000B8DF8  90 1C 00 A8 */	stw r0, 0xa8(r28)
/* 800BBE9C 000B8DFC  48 28 1C 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBEA0 000B8E00  3B 39 00 01 */	addi r25, r25, 1
/* 800BBEA4 000B8E04  2C 19 00 05 */	cmpwi r25, 5
/* 800BBEA8 000B8E08  41 80 FF 78 */	blt lbl_800BBE20
/* 800BBEAC 000B8E0C  7F A4 EB 78 */	mr r4, r29
/* 800BBEB0 000B8E10  38 61 00 5C */	addi r3, r1, 0x5c
/* 800BBEB4 000B8E14  38 A1 00 08 */	addi r5, r1, 8
/* 800BBEB8 000B8E18  48 28 24 41 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBEBC 000B8E1C  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 800BBEC0 000B8E20  48 1C F5 89 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBEC4 000B8E24  90 7C 00 B4 */	stw r3, 0xb4(r28)
/* 800BBEC8 000B8E28  7F A4 EB 78 */	mr r4, r29
/* 800BBECC 000B8E2C  38 61 00 6C */	addi r3, r1, 0x6c
/* 800BBED0 000B8E30  38 A1 00 0C */	addi r5, r1, 0xc
/* 800BBED4 000B8E34  48 28 24 25 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBED8 000B8E38  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 800BBEDC 000B8E3C  48 1C F5 6D */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBEE0 000B8E40  90 7C 00 B8 */	stw r3, 0xb8(r28)
/* 800BBEE4 000B8E44  7F A4 EB 78 */	mr r4, r29
/* 800BBEE8 000B8E48  38 61 00 7C */	addi r3, r1, 0x7c
/* 800BBEEC 000B8E4C  38 A1 00 10 */	addi r5, r1, 0x10
/* 800BBEF0 000B8E50  48 28 24 09 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBEF4 000B8E54  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 800BBEF8 000B8E58  48 1C F5 51 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBEFC 000B8E5C  90 7C 00 BC */	stw r3, 0xbc(r28)
/* 800BBF00 000B8E60  7F A4 EB 78 */	mr r4, r29
/* 800BBF04 000B8E64  38 61 00 8C */	addi r3, r1, 0x8c
/* 800BBF08 000B8E68  38 A1 00 14 */	addi r5, r1, 0x14
/* 800BBF0C 000B8E6C  48 28 23 ED */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBF10 000B8E70  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 800BBF14 000B8E74  48 1C F5 35 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBF18 000B8E78  90 7C 00 C0 */	stw r3, 0xc0(r28)
/* 800BBF1C 000B8E7C  7F A4 EB 78 */	mr r4, r29
/* 800BBF20 000B8E80  38 61 00 9C */	addi r3, r1, 0x9c
/* 800BBF24 000B8E84  38 A1 00 18 */	addi r5, r1, 0x18
/* 800BBF28 000B8E88  48 28 23 D1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 800BBF2C 000B8E8C  80 61 00 9C */	lwz r3, 0x9c(r1)
/* 800BBF30 000B8E90  48 1C F5 19 */	bl get_asset_id_from_name__12NWeaponTypesFPCc
/* 800BBF34 000B8E94  90 7C 00 C4 */	stw r3, 0xc4(r28)
/* 800BBF38 000B8E98  38 61 00 9C */	addi r3, r1, 0x9c
/* 800BBF3C 000B8E9C  48 28 1B A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF40 000B8EA0  38 61 00 8C */	addi r3, r1, 0x8c
/* 800BBF44 000B8EA4  48 28 1B 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF48 000B8EA8  38 61 00 7C */	addi r3, r1, 0x7c
/* 800BBF4C 000B8EAC  48 28 1B 95 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF50 000B8EB0  38 61 00 6C */	addi r3, r1, 0x6c
/* 800BBF54 000B8EB4  48 28 1B 8D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF58 000B8EB8  38 61 00 5C */	addi r3, r1, 0x5c
/* 800BBF5C 000B8EBC  48 28 1B 85 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF60 000B8EC0  38 61 00 EC */	addi r3, r1, 0xec
/* 800BBF64 000B8EC4  48 28 1B 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF68 000B8EC8  38 61 00 FC */	addi r3, r1, 0xfc
/* 800BBF6C 000B8ECC  48 28 1B 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF70 000B8ED0  38 61 01 0C */	addi r3, r1, 0x10c
/* 800BBF74 000B8ED4  48 28 1B 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF78 000B8ED8  38 61 01 1C */	addi r3, r1, 0x11c
/* 800BBF7C 000B8EDC  48 28 1B 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF80 000B8EE0  38 61 01 2C */	addi r3, r1, 0x12c
/* 800BBF84 000B8EE4  48 28 1B 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF88 000B8EE8  38 61 01 3C */	addi r3, r1, 0x13c
/* 800BBF8C 000B8EEC  48 28 1B 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF90 000B8EF0  38 61 01 4C */	addi r3, r1, 0x14c
/* 800BBF94 000B8EF4  48 28 1B 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBF98 000B8EF8  38 61 01 5C */	addi r3, r1, 0x15c
/* 800BBF9C 000B8EFC  48 28 1B 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBFA0 000B8F00  38 61 01 6C */	addi r3, r1, 0x16c
/* 800BBFA4 000B8F04  48 28 1B 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBFA8 000B8F08  38 61 01 7C */	addi r3, r1, 0x17c
/* 800BBFAC 000B8F0C  48 28 1B 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBFB0 000B8F10  38 61 01 8C */	addi r3, r1, 0x18c
/* 800BBFB4 000B8F14  48 28 1B 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBFB8 000B8F18  38 61 01 9C */	addi r3, r1, 0x19c
/* 800BBFBC 000B8F1C  48 28 1B 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 800BBFC0 000B8F20  7F 83 E3 78 */	mr r3, r28
/* 800BBFC4 000B8F24  BB 21 01 C4 */	lmw r25, 0x1c4(r1)
/* 800BBFC8 000B8F28  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 800BBFCC 000B8F2C  7C 08 03 A6 */	mtlr r0
/* 800BBFD0 000B8F30  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 800BBFD4 000B8F34  4E 80 00 20 */	blr 

.global __dt__12CTweakGunResFv
__dt__12CTweakGunResFv:
/* 800BBFD8 000B8F38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800BBFDC 000B8F3C  7C 08 02 A6 */	mflr r0
/* 800BBFE0 000B8F40  90 01 00 94 */	stw r0, 0x94(r1)
/* 800BBFE4 000B8F44  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 800BBFE8 000B8F48  7C 9F 23 78 */	mr r31, r4
/* 800BBFEC 000B8F4C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 800BBFF0 000B8F50  7C 7E 1B 79 */	or. r30, r3, r3
/* 800BBFF4 000B8F54  41 82 02 74 */	beq lbl_800BC268
/* 800BBFF8 000B8F58  3C 60 80 3E */	lis r3, lbl_803DF4E8@ha
/* 800BBFFC 000B8F5C  34 1E 00 A4 */	addic. r0, r30, 0xa4
/* 800BC000 000B8F60  38 03 F4 E8 */	addi r0, r3, lbl_803DF4E8@l
/* 800BC004 000B8F64  90 1E 00 00 */	stw r0, 0(r30)
/* 800BC008 000B8F68  41 82 00 44 */	beq lbl_800BC04C
/* 800BC00C 000B8F6C  80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 800BC010 000B8F70  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 800BC014 000B8F74  54 00 10 3A */	slwi r0, r0, 2
/* 800BC018 000B8F78  7C 03 02 14 */	add r0, r3, r0
/* 800BC01C 000B8F7C  90 61 00 7C */	stw r3, 0x7c(r1)
/* 800BC020 000B8F80  7C 64 1B 78 */	mr r4, r3
/* 800BC024 000B8F84  90 01 00 84 */	stw r0, 0x84(r1)
/* 800BC028 000B8F88  90 01 00 80 */	stw r0, 0x80(r1)
/* 800BC02C 000B8F8C  90 61 00 78 */	stw r3, 0x78(r1)
/* 800BC030 000B8F90  48 00 00 08 */	b lbl_800BC038
lbl_800BC034:
/* 800BC034 000B8F94  38 84 00 04 */	addi r4, r4, 4
lbl_800BC038:
/* 800BC038 000B8F98  7C 04 00 40 */	cmplw r4, r0
/* 800BC03C 000B8F9C  40 82 FF F8 */	bne lbl_800BC034
/* 800BC040 000B8FA0  28 03 00 00 */	cmplwi r3, 0
/* 800BC044 000B8FA4  41 82 00 08 */	beq lbl_800BC04C
/* 800BC048 000B8FA8  48 25 98 E9 */	bl Free__7CMemoryFPCv
lbl_800BC04C:
/* 800BC04C 000B8FAC  34 1E 00 94 */	addic. r0, r30, 0x94
/* 800BC050 000B8FB0  41 82 00 44 */	beq lbl_800BC094
/* 800BC054 000B8FB4  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 800BC058 000B8FB8  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 800BC05C 000B8FBC  54 00 10 3A */	slwi r0, r0, 2
/* 800BC060 000B8FC0  7C 03 02 14 */	add r0, r3, r0
/* 800BC064 000B8FC4  90 61 00 6C */	stw r3, 0x6c(r1)
/* 800BC068 000B8FC8  7C 64 1B 78 */	mr r4, r3
/* 800BC06C 000B8FCC  90 01 00 74 */	stw r0, 0x74(r1)
/* 800BC070 000B8FD0  90 01 00 70 */	stw r0, 0x70(r1)
/* 800BC074 000B8FD4  90 61 00 68 */	stw r3, 0x68(r1)
/* 800BC078 000B8FD8  48 00 00 08 */	b lbl_800BC080
lbl_800BC07C:
/* 800BC07C 000B8FDC  38 84 00 04 */	addi r4, r4, 4
lbl_800BC080:
/* 800BC080 000B8FE0  7C 04 00 40 */	cmplw r4, r0
/* 800BC084 000B8FE4  40 82 FF F8 */	bne lbl_800BC07C
/* 800BC088 000B8FE8  28 03 00 00 */	cmplwi r3, 0
/* 800BC08C 000B8FEC  41 82 00 08 */	beq lbl_800BC094
/* 800BC090 000B8FF0  48 25 98 A1 */	bl Free__7CMemoryFPCv
lbl_800BC094:
/* 800BC094 000B8FF4  34 1E 00 84 */	addic. r0, r30, 0x84
/* 800BC098 000B8FF8  41 82 00 44 */	beq lbl_800BC0DC
/* 800BC09C 000B8FFC  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 800BC0A0 000B9000  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 800BC0A4 000B9004  54 00 10 3A */	slwi r0, r0, 2
/* 800BC0A8 000B9008  7C 03 02 14 */	add r0, r3, r0
/* 800BC0AC 000B900C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 800BC0B0 000B9010  7C 64 1B 78 */	mr r4, r3
/* 800BC0B4 000B9014  90 01 00 64 */	stw r0, 0x64(r1)
/* 800BC0B8 000B9018  90 01 00 60 */	stw r0, 0x60(r1)
/* 800BC0BC 000B901C  90 61 00 58 */	stw r3, 0x58(r1)
/* 800BC0C0 000B9020  48 00 00 08 */	b lbl_800BC0C8
lbl_800BC0C4:
/* 800BC0C4 000B9024  38 84 00 04 */	addi r4, r4, 4
lbl_800BC0C8:
/* 800BC0C8 000B9028  7C 04 00 40 */	cmplw r4, r0
/* 800BC0CC 000B902C  40 82 FF F8 */	bne lbl_800BC0C4
/* 800BC0D0 000B9030  28 03 00 00 */	cmplwi r3, 0
/* 800BC0D4 000B9034  41 82 00 08 */	beq lbl_800BC0DC
/* 800BC0D8 000B9038  48 25 98 59 */	bl Free__7CMemoryFPCv
lbl_800BC0DC:
/* 800BC0DC 000B903C  34 1E 00 74 */	addic. r0, r30, 0x74
/* 800BC0E0 000B9040  41 82 00 44 */	beq lbl_800BC124
/* 800BC0E4 000B9044  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 800BC0E8 000B9048  80 7E 00 80 */	lwz r3, 0x80(r30)
/* 800BC0EC 000B904C  54 00 10 3A */	slwi r0, r0, 2
/* 800BC0F0 000B9050  7C 03 02 14 */	add r0, r3, r0
/* 800BC0F4 000B9054  90 61 00 4C */	stw r3, 0x4c(r1)
/* 800BC0F8 000B9058  7C 64 1B 78 */	mr r4, r3
/* 800BC0FC 000B905C  90 01 00 54 */	stw r0, 0x54(r1)
/* 800BC100 000B9060  90 01 00 50 */	stw r0, 0x50(r1)
/* 800BC104 000B9064  90 61 00 48 */	stw r3, 0x48(r1)
/* 800BC108 000B9068  48 00 00 08 */	b lbl_800BC110
lbl_800BC10C:
/* 800BC10C 000B906C  38 84 00 04 */	addi r4, r4, 4
lbl_800BC110:
/* 800BC110 000B9070  7C 04 00 40 */	cmplw r4, r0
/* 800BC114 000B9074  40 82 FF F8 */	bne lbl_800BC10C
/* 800BC118 000B9078  28 03 00 00 */	cmplwi r3, 0
/* 800BC11C 000B907C  41 82 00 08 */	beq lbl_800BC124
/* 800BC120 000B9080  48 25 98 11 */	bl Free__7CMemoryFPCv
lbl_800BC124:
/* 800BC124 000B9084  34 1E 00 64 */	addic. r0, r30, 0x64
/* 800BC128 000B9088  41 82 00 44 */	beq lbl_800BC16C
/* 800BC12C 000B908C  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 800BC130 000B9090  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 800BC134 000B9094  54 00 10 3A */	slwi r0, r0, 2
/* 800BC138 000B9098  7C 03 02 14 */	add r0, r3, r0
/* 800BC13C 000B909C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 800BC140 000B90A0  7C 64 1B 78 */	mr r4, r3
/* 800BC144 000B90A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BC148 000B90A8  90 01 00 40 */	stw r0, 0x40(r1)
/* 800BC14C 000B90AC  90 61 00 38 */	stw r3, 0x38(r1)
/* 800BC150 000B90B0  48 00 00 08 */	b lbl_800BC158
lbl_800BC154:
/* 800BC154 000B90B4  38 84 00 04 */	addi r4, r4, 4
lbl_800BC158:
/* 800BC158 000B90B8  7C 04 00 40 */	cmplw r4, r0
/* 800BC15C 000B90BC  40 82 FF F8 */	bne lbl_800BC154
/* 800BC160 000B90C0  28 03 00 00 */	cmplwi r3, 0
/* 800BC164 000B90C4  41 82 00 08 */	beq lbl_800BC16C
/* 800BC168 000B90C8  48 25 97 C9 */	bl Free__7CMemoryFPCv
lbl_800BC16C:
/* 800BC16C 000B90CC  34 1E 00 54 */	addic. r0, r30, 0x54
/* 800BC170 000B90D0  41 82 00 44 */	beq lbl_800BC1B4
/* 800BC174 000B90D4  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 800BC178 000B90D8  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 800BC17C 000B90DC  54 00 10 3A */	slwi r0, r0, 2
/* 800BC180 000B90E0  7C 03 02 14 */	add r0, r3, r0
/* 800BC184 000B90E4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 800BC188 000B90E8  7C 64 1B 78 */	mr r4, r3
/* 800BC18C 000B90EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BC190 000B90F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 800BC194 000B90F4  90 61 00 28 */	stw r3, 0x28(r1)
/* 800BC198 000B90F8  48 00 00 08 */	b lbl_800BC1A0
lbl_800BC19C:
/* 800BC19C 000B90FC  38 84 00 04 */	addi r4, r4, 4
lbl_800BC1A0:
/* 800BC1A0 000B9100  7C 04 00 40 */	cmplw r4, r0
/* 800BC1A4 000B9104  40 82 FF F8 */	bne lbl_800BC19C
/* 800BC1A8 000B9108  28 03 00 00 */	cmplwi r3, 0
/* 800BC1AC 000B910C  41 82 00 08 */	beq lbl_800BC1B4
/* 800BC1B0 000B9110  48 25 97 81 */	bl Free__7CMemoryFPCv
lbl_800BC1B4:
/* 800BC1B4 000B9114  34 1E 00 44 */	addic. r0, r30, 0x44
/* 800BC1B8 000B9118  41 82 00 44 */	beq lbl_800BC1FC
/* 800BC1BC 000B911C  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 800BC1C0 000B9120  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 800BC1C4 000B9124  54 00 10 3A */	slwi r0, r0, 2
/* 800BC1C8 000B9128  7C 03 02 14 */	add r0, r3, r0
/* 800BC1CC 000B912C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 800BC1D0 000B9130  7C 64 1B 78 */	mr r4, r3
/* 800BC1D4 000B9134  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BC1D8 000B9138  90 01 00 20 */	stw r0, 0x20(r1)
/* 800BC1DC 000B913C  90 61 00 18 */	stw r3, 0x18(r1)
/* 800BC1E0 000B9140  48 00 00 08 */	b lbl_800BC1E8
lbl_800BC1E4:
/* 800BC1E4 000B9144  38 84 00 04 */	addi r4, r4, 4
lbl_800BC1E8:
/* 800BC1E8 000B9148  7C 04 00 40 */	cmplw r4, r0
/* 800BC1EC 000B914C  40 82 FF F8 */	bne lbl_800BC1E4
/* 800BC1F0 000B9150  28 03 00 00 */	cmplwi r3, 0
/* 800BC1F4 000B9154  41 82 00 08 */	beq lbl_800BC1FC
/* 800BC1F8 000B9158  48 25 97 39 */	bl Free__7CMemoryFPCv
lbl_800BC1FC:
/* 800BC1FC 000B915C  34 1E 00 34 */	addic. r0, r30, 0x34
/* 800BC200 000B9160  41 82 00 44 */	beq lbl_800BC244
/* 800BC204 000B9164  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 800BC208 000B9168  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 800BC20C 000B916C  54 00 10 3A */	slwi r0, r0, 2
/* 800BC210 000B9170  7C 03 02 14 */	add r0, r3, r0
/* 800BC214 000B9174  90 61 00 0C */	stw r3, 0xc(r1)
/* 800BC218 000B9178  7C 64 1B 78 */	mr r4, r3
/* 800BC21C 000B917C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BC220 000B9180  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BC224 000B9184  90 61 00 08 */	stw r3, 8(r1)
/* 800BC228 000B9188  48 00 00 08 */	b lbl_800BC230
lbl_800BC22C:
/* 800BC22C 000B918C  38 84 00 04 */	addi r4, r4, 4
lbl_800BC230:
/* 800BC230 000B9190  7C 04 00 40 */	cmplw r4, r0
/* 800BC234 000B9194  40 82 FF F8 */	bne lbl_800BC22C
/* 800BC238 000B9198  28 03 00 00 */	cmplwi r3, 0
/* 800BC23C 000B919C  41 82 00 08 */	beq lbl_800BC244
/* 800BC240 000B91A0  48 25 96 F1 */	bl Free__7CMemoryFPCv
lbl_800BC244:
/* 800BC244 000B91A4  28 1E 00 00 */	cmplwi r30, 0
/* 800BC248 000B91A8  41 82 00 10 */	beq lbl_800BC258
/* 800BC24C 000B91AC  3C 60 80 3E */	lis r3, lbl_803D9CC4@ha
/* 800BC250 000B91B0  38 03 9C C4 */	addi r0, r3, lbl_803D9CC4@l
/* 800BC254 000B91B4  90 1E 00 00 */	stw r0, 0(r30)
lbl_800BC258:
/* 800BC258 000B91B8  7F E0 07 35 */	extsh. r0, r31
/* 800BC25C 000B91BC  40 81 00 0C */	ble lbl_800BC268
/* 800BC260 000B91C0  7F C3 F3 78 */	mr r3, r30
/* 800BC264 000B91C4  48 00 00 21 */	bl "__dl__26TOneStatic<12CTweakGunRes>FPv"
lbl_800BC268:
/* 800BC268 000B91C8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800BC26C 000B91CC  7F C3 F3 78 */	mr r3, r30
/* 800BC270 000B91D0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 800BC274 000B91D4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 800BC278 000B91D8  7C 08 03 A6 */	mtlr r0
/* 800BC27C 000B91DC  38 21 00 90 */	addi r1, r1, 0x90
/* 800BC280 000B91E0  4E 80 00 20 */	blr 

.global "__dl__26TOneStatic<12CTweakGunRes>FPv"
"__dl__26TOneStatic<12CTweakGunRes>FPv":
/* 800BC284 000B91E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BC288 000B91E8  7C 08 02 A6 */	mflr r0
/* 800BC28C 000B91EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BC290 000B91F0  4B F7 AB F5 */	bl "ReferenceCount__26TOneStatic<12CTweakGunRes>Fv"
/* 800BC294 000B91F4  80 83 00 00 */	lwz r4, 0(r3)
/* 800BC298 000B91F8  38 04 FF FF */	addi r0, r4, -1
/* 800BC29C 000B91FC  90 03 00 00 */	stw r0, 0(r3)
/* 800BC2A0 000B9200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BC2A4 000B9204  7C 08 03 A6 */	mtlr r0
/* 800BC2A8 000B9208  38 21 00 10 */	addi r1, r1, 0x10
/* 800BC2AC 000B920C  4E 80 00 20 */	blr 

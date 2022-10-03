.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CSfxManager_cpp

.section .data
.balign 8

.global lbl_803ECE10
lbl_803ECE10:
	# ROM: 0x3E9E10
	.4byte 0
	.4byte 0
	.4byte __dt__Q211CSfxManager11CSfxWrapperFv
	.4byte SetActive__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte SetPlaying__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte SetRank__Q211CSfxManager15CBaseSfxWrapperFs
	.4byte SetInArea__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte IsLooped__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte IsPlaying__Q211CSfxManager11CSfxWrapperCFv
	.4byte IsActive__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte IsInArea__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte UseAcoustics__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetRank__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetPriority__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetArea__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetSfxHandle__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte Play__Q211CSfxManager11CSfxWrapperFv
	.4byte Stop__Q211CSfxManager11CSfxWrapperFv
	.4byte Ready__Q211CSfxManager11CSfxWrapperFv
	.4byte GetAudible__Q211CSfxManager11CSfxWrapperFRC9CVector3f
	.4byte GetVoice__Q211CSfxManager11CSfxWrapperCFv
	.4byte GetSFXId__Q211CSfxManager11CSfxWrapperCFv
	.4byte UpdateEmitterSilent__Q211CSfxManager11CSfxWrapperFv
	.4byte UpdateEmitter__Q211CSfxManager11CSfxWrapperFv
	.4byte SetReverb__Q211CSfxManager11CSfxWrapperFc

.global lbl_803ECE74
lbl_803ECE74:
	# ROM: 0x3E9E74
	.4byte 0
	.4byte 0
	.4byte "__dt__71TObjOwnerDerivedFromIObj<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>Fv"

.global lbl_803ECE80
lbl_803ECE80:
	# ROM: 0x3E9E80
	.4byte 0
	.4byte 0
	.4byte __dt__Q211CSfxManager18CSfxEmitterWrapperFv
	.4byte SetActive__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte SetPlaying__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte SetRank__Q211CSfxManager15CBaseSfxWrapperFs
	.4byte SetInArea__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte IsLooped__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte IsPlaying__Q211CSfxManager18CSfxEmitterWrapperCFv
	.4byte IsActive__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte IsInArea__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte UseAcoustics__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetRank__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetPriority__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetArea__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetSfxHandle__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte Play__Q211CSfxManager18CSfxEmitterWrapperFv
	.4byte Stop__Q211CSfxManager18CSfxEmitterWrapperFv
	.4byte Ready__Q211CSfxManager18CSfxEmitterWrapperFv
	.4byte GetAudible__Q211CSfxManager18CSfxEmitterWrapperFRC9CVector3f
	.4byte GetVoice__Q211CSfxManager18CSfxEmitterWrapperCFv
	.4byte GetSfxId__Q211CSfxManager18CSfxEmitterWrapperFv
	.4byte UpdateEmitterSilent__Q211CSfxManager18CSfxEmitterWrapperFv
	.4byte UpdateEmitter__Q211CSfxManager18CSfxEmitterWrapperFv
	.4byte SetReverb__Q211CSfxManager18CSfxEmitterWrapperFc

.global lbl_803ECEE4
lbl_803ECEE4:
	# ROM: 0x3E9EE4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte SetActive__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte SetPlaying__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte SetRank__Q211CSfxManager15CBaseSfxWrapperFs
	.4byte SetInArea__Q211CSfxManager15CBaseSfxWrapperFb
	.4byte IsLooped__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte IsPlaying__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte IsActive__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte IsInArea__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte UseAcoustics__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetRank__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetPriority__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetArea__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte GetSfxHandle__Q211CSfxManager15CBaseSfxWrapperCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A8768
lbl_805A8768:
	# ROM: 0x3F6108
	.float 1.0

.global lbl_805A876C
lbl_805A876C:
	# ROM: 0x3F610C
	.float 0.1

.global lbl_805A8770
lbl_805A8770:
	# ROM: 0x3F6110
	.4byte 0xFFFFFFFF

.global lbl_805A8774
lbl_805A8774:
	# ROM: 0x3F6114
	.4byte 0xFFFFFFFF

.global lbl_805A8778
lbl_805A8778:
	# ROM: 0x3F6118
	.float 1.0

.global lbl_805A877C
lbl_805A877C:
	# ROM: 0x3F611C
	.4byte 0

.section .bss
.balign 8

.lcomm lbl_80479BA0, 0x30, 4
.comm lbl_8059FD48, 0x2BC, 4
.comm lbl_805A0004, 0x2B5C, 4
.comm lbl_805A2B60, 0x1604, 4
.comm lbl_805A4164, 0xA04, 4
.comm lbl_805A4B68, 0x1E0, 4
.comm lbl_805A4D48, 0x9C, 4
.comm lbl_805A4DE4, 0x154, 4
.comm lbl_805A4F38, 0x60, 4
.comm lbl_805A4F98, 0x1E0, 4
.comm lbl_805A5178, 0x9C, 4
.comm lbl_805A5214, 0x154, 4
.comm lbl_805A5368, 0x60, 4

.section .sbss, "wa"
.balign 8

.global lbl_805A92C0
lbl_805A92C0:
	.skip 0x4
.global lbl_805A92C4
lbl_805A92C4:
	.skip 0x4
.global lbl_805A92C8
lbl_805A92C8:
	.skip 0x4
.global lbl_805A92CC
lbl_805A92CC:
	.skip 0x4
.global lbl_805A92D0
lbl_805A92D0:
	.skip 0x8
.global lbl_805A92D8
lbl_805A92D8:
	.skip 0x8

.section .text, "ax"

.global __dt__Q211CSfxManager11CSfxWrapperFv
__dt__Q211CSfxManager11CSfxWrapperFv:
/* 802E7888 002E47E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E788C 002E47EC  7C 08 02 A6 */	mflr r0
/* 802E7890 002E47F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7894 002E47F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E7898 002E47F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E789C 002E47FC  41 82 00 30 */	beq lbl_802E78CC
/* 802E78A0 002E4800  3C 60 80 3F */	lis r3, lbl_803ECE10@ha
/* 802E78A4 002E4804  38 03 CE 10 */	addi r0, r3, lbl_803ECE10@l
/* 802E78A8 002E4808  90 1F 00 00 */	stw r0, 0(r31)
/* 802E78AC 002E480C  41 82 00 10 */	beq lbl_802E78BC
/* 802E78B0 002E4810  3C 60 80 3F */	lis r3, lbl_803ECEE4@ha
/* 802E78B4 002E4814  38 03 CE E4 */	addi r0, r3, lbl_803ECEE4@l
/* 802E78B8 002E4818  90 1F 00 00 */	stw r0, 0(r31)
lbl_802E78BC:
/* 802E78BC 002E481C  7C 80 07 35 */	extsh. r0, r4
/* 802E78C0 002E4820  40 81 00 0C */	ble lbl_802E78CC
/* 802E78C4 002E4824  7F E3 FB 78 */	mr r3, r31
/* 802E78C8 002E4828  48 02 E0 69 */	bl Free__7CMemoryFPCv
lbl_802E78CC:
/* 802E78CC 002E482C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E78D0 002E4830  7F E3 FB 78 */	mr r3, r31
/* 802E78D4 002E4834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E78D8 002E4838  7C 08 03 A6 */	mtlr r0
/* 802E78DC 002E483C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E78E0 002E4840  4E 80 00 20 */	blr

.global FAudioTranslationTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FAudioTranslationTableFactory__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 802E78E4 002E4844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E78E8 002E4848  7C 08 02 A6 */	mflr r0
/* 802E78EC 002E484C  3C 80 80 3D */	lis r4, lbl_803D6DC8@ha
/* 802E78F0 002E4850  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E78F4 002E4854  38 84 6D C8 */	addi r4, r4, lbl_803D6DC8@l
/* 802E78F8 002E4858  BF 41 00 08 */	stmw r26, 8(r1)
/* 802E78FC 002E485C  7C 7E 1B 78 */	mr r30, r3
/* 802E7900 002E4860  7C BF 2B 78 */	mr r31, r5
/* 802E7904 002E4864  38 60 00 10 */	li r3, 0x10
/* 802E7908 002E4868  38 A0 00 00 */	li r5, 0
/* 802E790C 002E486C  48 02 DF 61 */	bl __nw__FUlPCcPCc
/* 802E7910 002E4870  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E7914 002E4874  41 82 00 98 */	beq lbl_802E79AC
/* 802E7918 002E4878  38 00 00 00 */	li r0, 0
/* 802E791C 002E487C  7F E3 FB 78 */	mr r3, r31
/* 802E7920 002E4880  90 1D 00 04 */	stw r0, 4(r29)
/* 802E7924 002E4884  90 1D 00 08 */	stw r0, 8(r29)
/* 802E7928 002E4888  90 1D 00 0C */	stw r0, 0xc(r29)
/* 802E792C 002E488C  48 05 73 59 */	bl ReadLong__12CInputStreamFv
/* 802E7930 002E4890  7C 7B 1B 78 */	mr r27, r3
/* 802E7934 002E4894  7F A3 EB 78 */	mr r3, r29
/* 802E7938 002E4898  7F 64 DB 78 */	mr r4, r27
/* 802E793C 002E489C  48 00 37 2D */	bl "reserve__Q24rstl36vector<s,Q24rstl17rmemory_allocator>Fi"
/* 802E7940 002E48A0  3B 80 00 00 */	li r28, 0
/* 802E7944 002E48A4  48 00 00 60 */	b lbl_802E79A4
lbl_802E7948:
/* 802E7948 002E48A8  7F E3 FB 78 */	mr r3, r31
/* 802E794C 002E48AC  48 05 73 65 */	bl ReadShort__12CInputStreamFv
/* 802E7950 002E48B0  80 1D 00 04 */	lwz r0, 4(r29)
/* 802E7954 002E48B4  7C 7A 07 34 */	extsh r26, r3
/* 802E7958 002E48B8  80 BD 00 08 */	lwz r5, 8(r29)
/* 802E795C 002E48BC  7C 00 28 00 */	cmpw r0, r5
/* 802E7960 002E48C0  41 80 00 1C */	blt lbl_802E797C
/* 802E7964 002E48C4  2C 05 00 00 */	cmpwi r5, 0
/* 802E7968 002E48C8  7F A3 EB 78 */	mr r3, r29
/* 802E796C 002E48CC  38 80 00 04 */	li r4, 4
/* 802E7970 002E48D0  41 82 00 08 */	beq lbl_802E7978
/* 802E7974 002E48D4  54 A4 08 3C */	slwi r4, r5, 1
lbl_802E7978:
/* 802E7978 002E48D8  48 00 36 F1 */	bl "reserve__Q24rstl36vector<s,Q24rstl17rmemory_allocator>Fi"
lbl_802E797C:
/* 802E797C 002E48DC  80 1D 00 04 */	lwz r0, 4(r29)
/* 802E7980 002E48E0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802E7984 002E48E4  54 00 08 3C */	slwi r0, r0, 1
/* 802E7988 002E48E8  7C 63 02 15 */	add. r3, r3, r0
/* 802E798C 002E48EC  41 82 00 08 */	beq lbl_802E7994
/* 802E7990 002E48F0  B3 43 00 00 */	sth r26, 0(r3)
lbl_802E7994:
/* 802E7994 002E48F4  80 7D 00 04 */	lwz r3, 4(r29)
/* 802E7998 002E48F8  3B 9C 00 01 */	addi r28, r28, 1
/* 802E799C 002E48FC  38 03 00 01 */	addi r0, r3, 1
/* 802E79A0 002E4900  90 1D 00 04 */	stw r0, 4(r29)
lbl_802E79A4:
/* 802E79A4 002E4904  7C 1C D8 00 */	cmpw r28, r27
/* 802E79A8 002E4908  41 80 FF A0 */	blt lbl_802E7948
lbl_802E79AC:
/* 802E79AC 002E490C  7F C3 F3 78 */	mr r3, r30
/* 802E79B0 002E4910  7F A4 EB 78 */	mr r4, r29
/* 802E79B4 002E4914  48 00 00 19 */	bl sub_802e79cc
/* 802E79B8 002E4918  BB 41 00 08 */	lmw r26, 8(r1)
/* 802E79BC 002E491C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E79C0 002E4920  7C 08 03 A6 */	mtlr r0
/* 802E79C4 002E4924  38 21 00 20 */	addi r1, r1, 0x20
/* 802E79C8 002E4928  4E 80 00 20 */	blr

.global sub_802e79cc
sub_802e79cc:
/* 802E79CC 002E492C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E79D0 002E4930  7C 08 02 A6 */	mflr r0
/* 802E79D4 002E4934  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E79D8 002E4938  7C 04 00 D0 */	neg r0, r4
/* 802E79DC 002E493C  7C 00 23 78 */	or r0, r0, r4
/* 802E79E0 002E4940  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E79E4 002E4944  7C 7F 1B 78 */	mr r31, r3
/* 802E79E8 002E4948  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802E79EC 002E494C  38 61 00 18 */	addi r3, r1, 0x18
/* 802E79F0 002E4950  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E79F4 002E4954  90 81 00 24 */	stw r4, 0x24(r1)
/* 802E79F8 002E4958  38 81 00 20 */	addi r4, r1, 0x20
/* 802E79FC 002E495C  98 01 00 20 */	stb r0, 0x20(r1)
/* 802E7A00 002E4960  48 00 01 A9 */	bl "GetIObjObjectFor__53TToken<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>FRCQ24rstl55auto_ptr<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>"
/* 802E7A04 002E4964  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802E7A08 002E4968  38 00 00 00 */	li r0, 0
/* 802E7A0C 002E496C  98 01 00 18 */	stb r0, 0x18(r1)
/* 802E7A10 002E4970  7C 03 00 D0 */	neg r0, r3
/* 802E7A14 002E4974  7C 00 1B 78 */	or r0, r0, r3
/* 802E7A18 002E4978  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802E7A1C 002E497C  98 1F 00 00 */	stb r0, 0(r31)
/* 802E7A20 002E4980  90 7F 00 04 */	stw r3, 4(r31)
/* 802E7A24 002E4984  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802E7A28 002E4988  28 00 00 00 */	cmplwi r0, 0
/* 802E7A2C 002E498C  41 82 00 24 */	beq lbl_802E7A50
/* 802E7A30 002E4990  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802E7A34 002E4994  28 03 00 00 */	cmplwi r3, 0
/* 802E7A38 002E4998  41 82 00 18 */	beq lbl_802E7A50
/* 802E7A3C 002E499C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E7A40 002E49A0  38 80 00 01 */	li r4, 1
/* 802E7A44 002E49A4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E7A48 002E49A8  7D 89 03 A6 */	mtctr r12
/* 802E7A4C 002E49AC  4E 80 04 21 */	bctrl
lbl_802E7A50:
/* 802E7A50 002E49B0  88 01 00 20 */	lbz r0, 0x20(r1)
/* 802E7A54 002E49B4  28 00 00 00 */	cmplwi r0, 0
/* 802E7A58 002E49B8  41 82 00 58 */	beq lbl_802E7AB0
/* 802E7A5C 002E49BC  83 C1 00 24 */	lwz r30, 0x24(r1)
/* 802E7A60 002E49C0  28 1E 00 00 */	cmplwi r30, 0
/* 802E7A64 002E49C4  41 82 00 4C */	beq lbl_802E7AB0
/* 802E7A68 002E49C8  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E7A6C 002E49CC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802E7A70 002E49D0  54 00 08 3C */	slwi r0, r0, 1
/* 802E7A74 002E49D4  7C 03 02 14 */	add r0, r3, r0
/* 802E7A78 002E49D8  90 61 00 0C */	stw r3, 0xc(r1)
/* 802E7A7C 002E49DC  7C 64 1B 78 */	mr r4, r3
/* 802E7A80 002E49E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7A84 002E49E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E7A88 002E49E8  90 61 00 08 */	stw r3, 8(r1)
/* 802E7A8C 002E49EC  48 00 00 08 */	b lbl_802E7A94
lbl_802E7A90:
/* 802E7A90 002E49F0  38 84 00 02 */	addi r4, r4, 2
lbl_802E7A94:
/* 802E7A94 002E49F4  7C 04 00 40 */	cmplw r4, r0
/* 802E7A98 002E49F8  40 82 FF F8 */	bne lbl_802E7A90
/* 802E7A9C 002E49FC  28 03 00 00 */	cmplwi r3, 0
/* 802E7AA0 002E4A00  41 82 00 08 */	beq lbl_802E7AA8
/* 802E7AA4 002E4A04  48 02 DE 8D */	bl Free__7CMemoryFPCv
lbl_802E7AA8:
/* 802E7AA8 002E4A08  7F C3 F3 78 */	mr r3, r30
/* 802E7AAC 002E4A0C  48 02 DE 85 */	bl Free__7CMemoryFPCv
lbl_802E7AB0:
/* 802E7AB0 002E4A10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E7AB4 002E4A14  7F E3 FB 78 */	mr r3, r31
/* 802E7AB8 002E4A18  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E7ABC 002E4A1C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E7AC0 002E4A20  7C 08 03 A6 */	mtlr r0
/* 802E7AC4 002E4A24  38 21 00 30 */	addi r1, r1, 0x30
/* 802E7AC8 002E4A28  4E 80 00 20 */	blr

.global "__dt__71TObjOwnerDerivedFromIObj<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>Fv"
"__dt__71TObjOwnerDerivedFromIObj<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>Fv":
/* 802E7ACC 002E4A2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E7AD0 002E4A30  7C 08 02 A6 */	mflr r0
/* 802E7AD4 002E4A34  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E7AD8 002E4A38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E7ADC 002E4A3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E7AE0 002E4A40  7C 9E 23 78 */	mr r30, r4
/* 802E7AE4 002E4A44  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802E7AE8 002E4A48  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E7AEC 002E4A4C  41 82 00 9C */	beq lbl_802E7B88
/* 802E7AF0 002E4A50  3C 60 80 3F */	lis r3, lbl_803ECE74@ha
/* 802E7AF4 002E4A54  38 03 CE 74 */	addi r0, r3, lbl_803ECE74@l
/* 802E7AF8 002E4A58  90 1D 00 00 */	stw r0, 0(r29)
/* 802E7AFC 002E4A5C  83 FD 00 04 */	lwz r31, 4(r29)
/* 802E7B00 002E4A60  28 1F 00 00 */	cmplwi r31, 0
/* 802E7B04 002E4A64  41 82 00 50 */	beq lbl_802E7B54
/* 802E7B08 002E4A68  41 82 00 4C */	beq lbl_802E7B54
/* 802E7B0C 002E4A6C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802E7B10 002E4A70  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802E7B14 002E4A74  54 00 08 3C */	slwi r0, r0, 1
/* 802E7B18 002E4A78  7C 03 02 14 */	add r0, r3, r0
/* 802E7B1C 002E4A7C  90 61 00 0C */	stw r3, 0xc(r1)
/* 802E7B20 002E4A80  7C 64 1B 78 */	mr r4, r3
/* 802E7B24 002E4A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7B28 002E4A88  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E7B2C 002E4A8C  90 61 00 08 */	stw r3, 8(r1)
/* 802E7B30 002E4A90  48 00 00 08 */	b lbl_802E7B38
lbl_802E7B34:
/* 802E7B34 002E4A94  38 84 00 02 */	addi r4, r4, 2
lbl_802E7B38:
/* 802E7B38 002E4A98  7C 04 00 40 */	cmplw r4, r0
/* 802E7B3C 002E4A9C  40 82 FF F8 */	bne lbl_802E7B34
/* 802E7B40 002E4AA0  28 03 00 00 */	cmplwi r3, 0
/* 802E7B44 002E4AA4  41 82 00 08 */	beq lbl_802E7B4C
/* 802E7B48 002E4AA8  48 02 DD E9 */	bl Free__7CMemoryFPCv
lbl_802E7B4C:
/* 802E7B4C 002E4AAC  7F E3 FB 78 */	mr r3, r31
/* 802E7B50 002E4AB0  48 02 DD E1 */	bl Free__7CMemoryFPCv
lbl_802E7B54:
/* 802E7B54 002E4AB4  28 1D 00 00 */	cmplwi r29, 0
/* 802E7B58 002E4AB8  41 82 00 20 */	beq lbl_802E7B78
/* 802E7B5C 002E4ABC  3C 60 80 3E */	lis r3, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 802E7B60 002E4AC0  38 03 8D 78 */	addi r0, r3, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 802E7B64 002E4AC4  90 1D 00 00 */	stw r0, 0(r29)
/* 802E7B68 002E4AC8  41 82 00 10 */	beq lbl_802E7B78
/* 802E7B6C 002E4ACC  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 802E7B70 002E4AD0  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 802E7B74 002E4AD4  90 1D 00 00 */	stw r0, 0(r29)
lbl_802E7B78:
/* 802E7B78 002E4AD8  7F C0 07 35 */	extsh. r0, r30
/* 802E7B7C 002E4ADC  40 81 00 0C */	ble lbl_802E7B88
/* 802E7B80 002E4AE0  7F A3 EB 78 */	mr r3, r29
/* 802E7B84 002E4AE4  48 02 DD AD */	bl Free__7CMemoryFPCv
lbl_802E7B88:
/* 802E7B88 002E4AE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E7B8C 002E4AEC  7F A3 EB 78 */	mr r3, r29
/* 802E7B90 002E4AF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E7B94 002E4AF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E7B98 002E4AF8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802E7B9C 002E4AFC  7C 08 03 A6 */	mtlr r0
/* 802E7BA0 002E4B00  38 21 00 30 */	addi r1, r1, 0x30
/* 802E7BA4 002E4B04  4E 80 00 20 */	blr

.global "GetIObjObjectFor__53TToken<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>FRCQ24rstl55auto_ptr<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>"
"GetIObjObjectFor__53TToken<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>FRCQ24rstl55auto_ptr<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>":
/* 802E7BA8 002E4B08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E7BAC 002E4B0C  7C 08 02 A6 */	mflr r0
/* 802E7BB0 002E4B10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7BB4 002E4B14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E7BB8 002E4B18  7C 7F 1B 78 */	mr r31, r3
/* 802E7BBC 002E4B1C  48 00 00 19 */	bl "GetNewDerivedObject__71TObjOwnerDerivedFromIObj<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>FRCQ24rstl55auto_ptr<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>"
/* 802E7BC0 002E4B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E7BC4 002E4B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E7BC8 002E4B28  7C 08 03 A6 */	mtlr r0
/* 802E7BCC 002E4B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E7BD0 002E4B30  4E 80 00 20 */	blr

.global "GetNewDerivedObject__71TObjOwnerDerivedFromIObj<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>FRCQ24rstl55auto_ptr<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>"
"GetNewDerivedObject__71TObjOwnerDerivedFromIObj<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>FRCQ24rstl55auto_ptr<Q24rstl36vector<s,Q24rstl17rmemory_allocator>>":
/* 802E7BD4 002E4B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E7BD8 002E4B38  7C 08 02 A6 */	mflr r0
/* 802E7BDC 002E4B3C  3C A0 80 3D */	lis r5, lbl_803D6DC8@ha
/* 802E7BE0 002E4B40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7BE4 002E4B44  38 05 6D C8 */	addi r0, r5, lbl_803D6DC8@l
/* 802E7BE8 002E4B48  38 A0 00 00 */	li r5, 0
/* 802E7BEC 002E4B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E7BF0 002E4B50  7C 9F 23 78 */	mr r31, r4
/* 802E7BF4 002E4B54  7C 04 03 78 */	mr r4, r0
/* 802E7BF8 002E4B58  93 C1 00 08 */	stw r30, 8(r1)
/* 802E7BFC 002E4B5C  7C 7E 1B 78 */	mr r30, r3
/* 802E7C00 002E4B60  38 60 00 08 */	li r3, 8
/* 802E7C04 002E4B64  48 02 DC 69 */	bl __nw__FUlPCcPCc
/* 802E7C08 002E4B68  28 03 00 00 */	cmplwi r3, 0
/* 802E7C0C 002E4B6C  41 82 00 38 */	beq lbl_802E7C44
/* 802E7C10 002E4B70  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 802E7C14 002E4B74  3C A0 80 3E */	lis r5, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 802E7C18 002E4B78  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 802E7C1C 002E4B7C  3C 80 80 3F */	lis r4, lbl_803ECE74@ha
/* 802E7C20 002E4B80  90 03 00 00 */	stw r0, 0(r3)
/* 802E7C24 002E4B84  38 C5 8D 78 */	addi r6, r5, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 802E7C28 002E4B88  38 A0 00 00 */	li r5, 0
/* 802E7C2C 002E4B8C  38 04 CE 74 */	addi r0, r4, lbl_803ECE74@l
/* 802E7C30 002E4B90  90 C3 00 00 */	stw r6, 0(r3)
/* 802E7C34 002E4B94  98 BF 00 00 */	stb r5, 0(r31)
/* 802E7C38 002E4B98  80 9F 00 04 */	lwz r4, 4(r31)
/* 802E7C3C 002E4B9C  90 83 00 04 */	stw r4, 4(r3)
/* 802E7C40 002E4BA0  90 03 00 00 */	stw r0, 0(r3)
lbl_802E7C44:
/* 802E7C44 002E4BA4  7C 03 00 D0 */	neg r0, r3
/* 802E7C48 002E4BA8  7C 00 1B 78 */	or r0, r0, r3
/* 802E7C4C 002E4BAC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802E7C50 002E4BB0  98 1E 00 00 */	stb r0, 0(r30)
/* 802E7C54 002E4BB4  90 7E 00 04 */	stw r3, 4(r30)
/* 802E7C58 002E4BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E7C5C 002E4BBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E7C60 002E4BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E7C64 002E4BC4  7C 08 03 A6 */	mtlr r0
/* 802E7C68 002E4BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E7C6C 002E4BCC  4E 80 00 20 */	blr

.global DisableAuxCallback__11CSfxManagerFv
DisableAuxCallback__11CSfxManagerFv:
/* 802E7C70 002E4BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E7C74 002E4BD4  7C 08 02 A6 */	mflr r0
/* 802E7C78 002E4BD8  38 60 00 00 */	li r3, 0
/* 802E7C7C 002E4BDC  38 80 00 00 */	li r4, 0
/* 802E7C80 002E4BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E7C84 002E4BE4  38 00 00 00 */	li r0, 0
/* 802E7C88 002E4BE8  38 A0 00 00 */	li r5, 0
/* 802E7C8C 002E4BEC  38 C0 00 FF */	li r6, 0xff
/* 802E7C90 002E4BF0  90 01 00 08 */	stw r0, 8(r1)
/* 802E7C94 002E4BF4  38 E0 00 00 */	li r7, 0
/* 802E7C98 002E4BF8  39 00 00 00 */	li r8, 0
/* 802E7C9C 002E4BFC  39 20 00 00 */	li r9, 0
/* 802E7CA0 002E4C00  39 40 00 FF */	li r10, 0xff
/* 802E7CA4 002E4C04  48 0B 48 91 */	bl sndSetAuxProcessingCallbacks
/* 802E7CA8 002E4C08  80 0D 9B B0 */	lwz r0, lbl_805A8770@sda21(r13)
/* 802E7CAC 002E4C0C  2C 00 00 02 */	cmpwi r0, 2
/* 802E7CB0 002E4C10  41 82 00 44 */	beq lbl_802E7CF4
/* 802E7CB4 002E4C14  40 80 00 14 */	bge lbl_802E7CC8
/* 802E7CB8 002E4C18  2C 00 00 00 */	cmpwi r0, 0
/* 802E7CBC 002E4C1C  41 82 00 18 */	beq lbl_802E7CD4
/* 802E7CC0 002E4C20  40 80 00 24 */	bge lbl_802E7CE4
/* 802E7CC4 002E4C24  48 00 00 4C */	b lbl_802E7D10
lbl_802E7CC8:
/* 802E7CC8 002E4C28  2C 00 00 04 */	cmpwi r0, 4
/* 802E7CCC 002E4C2C  40 80 00 44 */	bge lbl_802E7D10
/* 802E7CD0 002E4C30  48 00 00 34 */	b lbl_802E7D04
lbl_802E7CD4:
/* 802E7CD4 002E4C34  3C 60 80 5A */	lis r3, lbl_805A4B68@ha
/* 802E7CD8 002E4C38  38 63 4B 68 */	addi r3, r3, lbl_805A4B68@l
/* 802E7CDC 002E4C3C  48 0C DE C1 */	bl sndAuxCallbackShutdownReverbHI
/* 802E7CE0 002E4C40  48 00 00 30 */	b lbl_802E7D10
lbl_802E7CE4:
/* 802E7CE4 002E4C44  3C 60 80 5A */	lis r3, lbl_805A4D48@ha
/* 802E7CE8 002E4C48  38 63 4D 48 */	addi r3, r3, lbl_805A4D48@l
/* 802E7CEC 002E4C4C  48 0C F8 05 */	bl sndAuxCallbackShutdownChorus
/* 802E7CF0 002E4C50  48 00 00 20 */	b lbl_802E7D10
lbl_802E7CF4:
/* 802E7CF4 002E4C54  3C 60 80 5A */	lis r3, lbl_805A4DE4@ha
/* 802E7CF8 002E4C58  38 63 4D E4 */	addi r3, r3, lbl_805A4DE4@l
/* 802E7CFC 002E4C5C  48 0C D5 25 */	bl sndAuxCallbackShutdownReverbSTD
/* 802E7D00 002E4C60  48 00 00 10 */	b lbl_802E7D10
lbl_802E7D04:
/* 802E7D04 002E4C64  3C 60 80 5A */	lis r3, lbl_805A4F38@ha
/* 802E7D08 002E4C68  38 63 4F 38 */	addi r3, r3, lbl_805A4F38@l
/* 802E7D0C 002E4C6C  48 0C EF 59 */	bl sndAuxCallbackShutdownDelay
lbl_802E7D10:
/* 802E7D10 002E4C70  38 00 FF FF */	li r0, -1
/* 802E7D14 002E4C74  90 0D 9B B0 */	stw r0, lbl_805A8770@sda21(r13)
/* 802E7D18 002E4C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E7D1C 002E4C7C  7C 08 03 A6 */	mtlr r0
/* 802E7D20 002E4C80  38 21 00 10 */	addi r1, r1, 0x10
/* 802E7D24 002E4C84  4E 80 00 20 */	blr

.global EnableAuxCallback__11CSfxManagerFv
EnableAuxCallback__11CSfxManagerFv:
/* 802E7D28 002E4C88  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E7D2C 002E4C8C  7C 08 02 A6 */	mflr r0
/* 802E7D30 002E4C90  C0 02 C6 04 */	lfs f0, lbl_805AE324@sda21(r2)
/* 802E7D34 002E4C94  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E7D38 002E4C98  BE 01 00 10 */	stmw r16, 0x10(r1)
/* 802E7D3C 002E4C9C  3A 00 00 00 */	li r16, 0
/* 802E7D40 002E4CA0  3B E0 00 00 */	li r31, 0
/* 802E7D44 002E4CA4  D0 0D 9B A8 */	stfs f0, lbl_805A8768@sda21(r13)
/* 802E7D48 002E4CA8  48 00 06 31 */	bl ApplyReverb__11CSfxManagerFv
/* 802E7D4C 002E4CAC  80 0D 9B B0 */	lwz r0, lbl_805A8770@sda21(r13)
/* 802E7D50 002E4CB0  2C 00 FF FF */	cmpwi r0, -1
/* 802E7D54 002E4CB4  41 82 00 08 */	beq lbl_802E7D5C
/* 802E7D58 002E4CB8  4B FF FF 19 */	bl DisableAuxCallback__11CSfxManagerFv
lbl_802E7D5C:
/* 802E7D5C 002E4CBC  80 0D 9B B4 */	lwz r0, lbl_805A8774@sda21(r13)
/* 802E7D60 002E4CC0  2C 00 FF FF */	cmpwi r0, -1
/* 802E7D64 002E4CC4  90 0D 9B B0 */	stw r0, lbl_805A8770@sda21(r13)
/* 802E7D68 002E4CC8  41 82 02 E8 */	beq lbl_802E8050
/* 802E7D6C 002E4CCC  2C 00 00 02 */	cmpwi r0, 2
/* 802E7D70 002E4CD0  41 82 01 34 */	beq lbl_802E7EA4
/* 802E7D74 002E4CD4  40 80 00 14 */	bge lbl_802E7D88
/* 802E7D78 002E4CD8  2C 00 00 00 */	cmpwi r0, 0
/* 802E7D7C 002E4CDC  41 82 00 18 */	beq lbl_802E7D94
/* 802E7D80 002E4CE0  40 80 00 B0 */	bge lbl_802E7E30
/* 802E7D84 002E4CE4  48 00 02 98 */	b lbl_802E801C
lbl_802E7D88:
/* 802E7D88 002E4CE8  2C 00 00 04 */	cmpwi r0, 4
/* 802E7D8C 002E4CEC  40 80 02 90 */	bge lbl_802E801C
/* 802E7D90 002E4CF0  48 00 01 A8 */	b lbl_802E7F38
lbl_802E7D94:
/* 802E7D94 002E4CF4  3C 80 80 5A */	lis r4, lbl_805A4B68@ha
/* 802E7D98 002E4CF8  3C 60 80 5A */	lis r3, lbl_805A4F98@ha
/* 802E7D9C 002E4CFC  38 84 4B 68 */	addi r4, r4, lbl_805A4B68@l
/* 802E7DA0 002E4D00  38 00 00 38 */	li r0, 0x38
/* 802E7DA4 002E4D04  38 63 4F 98 */	addi r3, r3, lbl_805A4F98@l
/* 802E7DA8 002E4D08  38 A4 FF FC */	addi r5, r4, -4
/* 802E7DAC 002E4D0C  38 83 FF FC */	addi r4, r3, -4
/* 802E7DB0 002E4D10  7C 09 03 A6 */	mtctr r0
lbl_802E7DB4:
/* 802E7DB4 002E4D14  80 64 00 04 */	lwz r3, 4(r4)
/* 802E7DB8 002E4D18  84 04 00 08 */	lwzu r0, 8(r4)
/* 802E7DBC 002E4D1C  90 65 00 04 */	stw r3, 4(r5)
/* 802E7DC0 002E4D20  94 05 00 08 */	stwu r0, 8(r5)
/* 802E7DC4 002E4D24  42 00 FF F0 */	bdnz lbl_802E7DB4
/* 802E7DC8 002E4D28  80 04 00 04 */	lwz r0, 4(r4)
/* 802E7DCC 002E4D2C  3C 60 80 5A */	lis r3, lbl_805A4F98@ha
/* 802E7DD0 002E4D30  38 83 4F 98 */	addi r4, r3, lbl_805A4F98@l
/* 802E7DD4 002E4D34  3C 60 80 5A */	lis r3, lbl_805A4B68@ha
/* 802E7DD8 002E4D38  90 05 00 04 */	stw r0, 4(r5)
/* 802E7DDC 002E4D3C  38 63 4B 68 */	addi r3, r3, lbl_805A4B68@l
/* 802E7DE0 002E4D40  88 04 01 C4 */	lbz r0, 0x1c4(r4)
/* 802E7DE4 002E4D44  C0 A4 01 C8 */	lfs f5, 0x1c8(r4)
/* 802E7DE8 002E4D48  7C 7F 1B 78 */	mr r31, r3
/* 802E7DEC 002E4D4C  C0 84 01 CC */	lfs f4, 0x1cc(r4)
/* 802E7DF0 002E4D50  C0 64 01 D0 */	lfs f3, 0x1d0(r4)
/* 802E7DF4 002E4D54  C0 44 01 D4 */	lfs f2, 0x1d4(r4)
/* 802E7DF8 002E4D58  C0 24 01 D8 */	lfs f1, 0x1d8(r4)
/* 802E7DFC 002E4D5C  C0 04 01 DC */	lfs f0, 0x1dc(r4)
/* 802E7E00 002E4D60  98 03 01 C4 */	stb r0, 0x1c4(r3)
/* 802E7E04 002E4D64  D0 A3 01 C8 */	stfs f5, 0x1c8(r3)
/* 802E7E08 002E4D68  D0 83 01 CC */	stfs f4, 0x1cc(r3)
/* 802E7E0C 002E4D6C  D0 63 01 D0 */	stfs f3, 0x1d0(r3)
/* 802E7E10 002E4D70  D0 43 01 D4 */	stfs f2, 0x1d4(r3)
/* 802E7E14 002E4D74  D0 23 01 D8 */	stfs f1, 0x1d8(r3)
/* 802E7E18 002E4D78  D0 03 01 DC */	stfs f0, 0x1dc(r3)
/* 802E7E1C 002E4D7C  48 0C DD 41 */	bl sndAuxCallbackPrepareReverbHI
/* 802E7E20 002E4D80  3C 60 80 3B */	lis r3, sndAuxCallbackReverbHI@ha
/* 802E7E24 002E4D84  38 03 5B 00 */	addi r0, r3, sndAuxCallbackReverbHI@l
/* 802E7E28 002E4D88  7C 10 03 78 */	mr r16, r0
/* 802E7E2C 002E4D8C  48 00 01 F0 */	b lbl_802E801C
lbl_802E7E30:
/* 802E7E30 002E4D90  3C 80 80 5A */	lis r4, lbl_805A4D48@ha
/* 802E7E34 002E4D94  3C 60 80 5A */	lis r3, lbl_805A5178@ha
/* 802E7E38 002E4D98  38 84 4D 48 */	addi r4, r4, lbl_805A4D48@l
/* 802E7E3C 002E4D9C  38 00 00 12 */	li r0, 0x12
/* 802E7E40 002E4DA0  38 63 51 78 */	addi r3, r3, lbl_805A5178@l
/* 802E7E44 002E4DA4  38 A4 FF FC */	addi r5, r4, -4
/* 802E7E48 002E4DA8  38 83 FF FC */	addi r4, r3, -4
/* 802E7E4C 002E4DAC  7C 09 03 A6 */	mtctr r0
lbl_802E7E50:
/* 802E7E50 002E4DB0  80 64 00 04 */	lwz r3, 4(r4)
/* 802E7E54 002E4DB4  84 04 00 08 */	lwzu r0, 8(r4)
/* 802E7E58 002E4DB8  90 65 00 04 */	stw r3, 4(r5)
/* 802E7E5C 002E4DBC  94 05 00 08 */	stwu r0, 8(r5)
/* 802E7E60 002E4DC0  42 00 FF F0 */	bdnz lbl_802E7E50
/* 802E7E64 002E4DC4  3C 80 80 5A */	lis r4, lbl_805A5178@ha
/* 802E7E68 002E4DC8  3C 60 80 5A */	lis r3, lbl_805A4D48@ha
/* 802E7E6C 002E4DCC  38 C4 51 78 */	addi r6, r4, lbl_805A5178@l
/* 802E7E70 002E4DD0  80 A6 00 90 */	lwz r5, 0x90(r6)
/* 802E7E74 002E4DD4  38 63 4D 48 */	addi r3, r3, lbl_805A4D48@l
/* 802E7E78 002E4DD8  80 86 00 94 */	lwz r4, 0x94(r6)
/* 802E7E7C 002E4DDC  7C 7F 1B 78 */	mr r31, r3
/* 802E7E80 002E4DE0  80 06 00 98 */	lwz r0, 0x98(r6)
/* 802E7E84 002E4DE4  90 A3 00 90 */	stw r5, 0x90(r3)
/* 802E7E88 002E4DE8  90 83 00 94 */	stw r4, 0x94(r3)
/* 802E7E8C 002E4DEC  90 03 00 98 */	stw r0, 0x98(r3)
/* 802E7E90 002E4DF0  48 0C F4 61 */	bl sndAuxCallbackPrepareChorus
/* 802E7E94 002E4DF4  3C 60 80 3B */	lis r3, sndAuxCallbackChorus@ha
/* 802E7E98 002E4DF8  38 03 70 34 */	addi r0, r3, sndAuxCallbackChorus@l
/* 802E7E9C 002E4DFC  7C 10 03 78 */	mr r16, r0
/* 802E7EA0 002E4E00  48 00 01 7C */	b lbl_802E801C
lbl_802E7EA4:
/* 802E7EA4 002E4E04  3C 80 80 5A */	lis r4, lbl_805A4DE4@ha
/* 802E7EA8 002E4E08  3C 60 80 5A */	lis r3, lbl_805A5214@ha
/* 802E7EAC 002E4E0C  38 84 4D E4 */	addi r4, r4, lbl_805A4DE4@l
/* 802E7EB0 002E4E10  38 00 00 27 */	li r0, 0x27
/* 802E7EB4 002E4E14  38 63 52 14 */	addi r3, r3, lbl_805A5214@l
/* 802E7EB8 002E4E18  38 A4 FF FC */	addi r5, r4, -4
/* 802E7EBC 002E4E1C  38 83 FF FC */	addi r4, r3, -4
/* 802E7EC0 002E4E20  7C 09 03 A6 */	mtctr r0
lbl_802E7EC4:
/* 802E7EC4 002E4E24  80 64 00 04 */	lwz r3, 4(r4)
/* 802E7EC8 002E4E28  84 04 00 08 */	lwzu r0, 8(r4)
/* 802E7ECC 002E4E2C  90 65 00 04 */	stw r3, 4(r5)
/* 802E7ED0 002E4E30  94 05 00 08 */	stwu r0, 8(r5)
/* 802E7ED4 002E4E34  42 00 FF F0 */	bdnz lbl_802E7EC4
/* 802E7ED8 002E4E38  80 04 00 04 */	lwz r0, 4(r4)
/* 802E7EDC 002E4E3C  3C 60 80 5A */	lis r3, lbl_805A5214@ha
/* 802E7EE0 002E4E40  38 83 52 14 */	addi r4, r3, lbl_805A5214@l
/* 802E7EE4 002E4E44  3C 60 80 5A */	lis r3, lbl_805A4DE4@ha
/* 802E7EE8 002E4E48  90 05 00 04 */	stw r0, 4(r5)
/* 802E7EEC 002E4E4C  38 63 4D E4 */	addi r3, r3, lbl_805A4DE4@l
/* 802E7EF0 002E4E50  88 04 01 3C */	lbz r0, 0x13c(r4)
/* 802E7EF4 002E4E54  C0 84 01 40 */	lfs f4, 0x140(r4)
/* 802E7EF8 002E4E58  7C 7F 1B 78 */	mr r31, r3
/* 802E7EFC 002E4E5C  C0 64 01 44 */	lfs f3, 0x144(r4)
/* 802E7F00 002E4E60  C0 44 01 48 */	lfs f2, 0x148(r4)
/* 802E7F04 002E4E64  C0 24 01 4C */	lfs f1, 0x14c(r4)
/* 802E7F08 002E4E68  C0 04 01 50 */	lfs f0, 0x150(r4)
/* 802E7F0C 002E4E6C  98 03 01 3C */	stb r0, 0x13c(r3)
/* 802E7F10 002E4E70  D0 83 01 40 */	stfs f4, 0x140(r3)
/* 802E7F14 002E4E74  D0 63 01 44 */	stfs f3, 0x144(r3)
/* 802E7F18 002E4E78  D0 43 01 48 */	stfs f2, 0x148(r3)
/* 802E7F1C 002E4E7C  D0 23 01 4C */	stfs f1, 0x14c(r3)
/* 802E7F20 002E4E80  D0 03 01 50 */	stfs f0, 0x150(r3)
/* 802E7F24 002E4E84  48 0C D2 C1 */	bl sndAuxCallbackPrepareReverbSTD
/* 802E7F28 002E4E88  3C 60 80 3B */	lis r3, sndAuxCallbackReverbSTD@ha
/* 802E7F2C 002E4E8C  38 03 51 88 */	addi r0, r3, sndAuxCallbackReverbSTD@l
/* 802E7F30 002E4E90  7C 10 03 78 */	mr r16, r0
/* 802E7F34 002E4E94  48 00 00 E8 */	b lbl_802E801C
lbl_802E7F38:
/* 802E7F38 002E4E98  3C 60 80 5A */	lis r3, lbl_805A5368@ha
/* 802E7F3C 002E4E9C  3C 80 80 5A */	lis r4, lbl_805A4F38@ha
/* 802E7F40 002E4EA0  3A 03 53 68 */	addi r16, r3, lbl_805A5368@l
/* 802E7F44 002E4EA4  38 64 4F 38 */	addi r3, r4, lbl_805A4F38@l
/* 802E7F48 002E4EA8  82 30 00 00 */	lwz r17, 0(r16)
/* 802E7F4C 002E4EAC  82 50 00 04 */	lwz r18, 4(r16)
/* 802E7F50 002E4EB0  7C 7F 1B 78 */	mr r31, r3
/* 802E7F54 002E4EB4  82 70 00 08 */	lwz r19, 8(r16)
/* 802E7F58 002E4EB8  82 90 00 0C */	lwz r20, 0xc(r16)
/* 802E7F5C 002E4EBC  82 B0 00 10 */	lwz r21, 0x10(r16)
/* 802E7F60 002E4EC0  82 D0 00 14 */	lwz r22, 0x14(r16)
/* 802E7F64 002E4EC4  82 F0 00 18 */	lwz r23, 0x18(r16)
/* 802E7F68 002E4EC8  83 10 00 1C */	lwz r24, 0x1c(r16)
/* 802E7F6C 002E4ECC  83 30 00 20 */	lwz r25, 0x20(r16)
/* 802E7F70 002E4ED0  83 50 00 24 */	lwz r26, 0x24(r16)
/* 802E7F74 002E4ED4  83 70 00 28 */	lwz r27, 0x28(r16)
/* 802E7F78 002E4ED8  83 90 00 2C */	lwz r28, 0x2c(r16)
/* 802E7F7C 002E4EDC  83 B0 00 30 */	lwz r29, 0x30(r16)
/* 802E7F80 002E4EE0  83 D0 00 34 */	lwz r30, 0x34(r16)
/* 802E7F84 002E4EE4  81 90 00 38 */	lwz r12, 0x38(r16)
/* 802E7F88 002E4EE8  81 70 00 3C */	lwz r11, 0x3c(r16)
/* 802E7F8C 002E4EEC  81 50 00 40 */	lwz r10, 0x40(r16)
/* 802E7F90 002E4EF0  81 30 00 44 */	lwz r9, 0x44(r16)
/* 802E7F94 002E4EF4  81 10 00 48 */	lwz r8, 0x48(r16)
/* 802E7F98 002E4EF8  80 F0 00 4C */	lwz r7, 0x4c(r16)
/* 802E7F9C 002E4EFC  80 D0 00 50 */	lwz r6, 0x50(r16)
/* 802E7FA0 002E4F00  80 B0 00 54 */	lwz r5, 0x54(r16)
/* 802E7FA4 002E4F04  80 90 00 58 */	lwz r4, 0x58(r16)
/* 802E7FA8 002E4F08  80 10 00 5C */	lwz r0, 0x5c(r16)
/* 802E7FAC 002E4F0C  92 23 00 00 */	stw r17, 0(r3)
/* 802E7FB0 002E4F10  92 43 00 04 */	stw r18, 4(r3)
/* 802E7FB4 002E4F14  92 63 00 08 */	stw r19, 8(r3)
/* 802E7FB8 002E4F18  92 83 00 0C */	stw r20, 0xc(r3)
/* 802E7FBC 002E4F1C  92 A3 00 10 */	stw r21, 0x10(r3)
/* 802E7FC0 002E4F20  92 C3 00 14 */	stw r22, 0x14(r3)
/* 802E7FC4 002E4F24  92 E3 00 18 */	stw r23, 0x18(r3)
/* 802E7FC8 002E4F28  93 03 00 1C */	stw r24, 0x1c(r3)
/* 802E7FCC 002E4F2C  93 23 00 20 */	stw r25, 0x20(r3)
/* 802E7FD0 002E4F30  93 43 00 24 */	stw r26, 0x24(r3)
/* 802E7FD4 002E4F34  93 63 00 28 */	stw r27, 0x28(r3)
/* 802E7FD8 002E4F38  93 83 00 2C */	stw r28, 0x2c(r3)
/* 802E7FDC 002E4F3C  93 A3 00 30 */	stw r29, 0x30(r3)
/* 802E7FE0 002E4F40  93 C3 00 34 */	stw r30, 0x34(r3)
/* 802E7FE4 002E4F44  91 83 00 38 */	stw r12, 0x38(r3)
/* 802E7FE8 002E4F48  91 63 00 3C */	stw r11, 0x3c(r3)
/* 802E7FEC 002E4F4C  91 43 00 40 */	stw r10, 0x40(r3)
/* 802E7FF0 002E4F50  91 23 00 44 */	stw r9, 0x44(r3)
/* 802E7FF4 002E4F54  91 03 00 48 */	stw r8, 0x48(r3)
/* 802E7FF8 002E4F58  90 E3 00 4C */	stw r7, 0x4c(r3)
/* 802E7FFC 002E4F5C  90 C3 00 50 */	stw r6, 0x50(r3)
/* 802E8000 002E4F60  90 A3 00 54 */	stw r5, 0x54(r3)
/* 802E8004 002E4F64  90 83 00 58 */	stw r4, 0x58(r3)
/* 802E8008 002E4F68  90 03 00 5C */	stw r0, 0x5c(r3)
/* 802E800C 002E4F6C  48 0C EC 31 */	bl sndAuxCallbackPrepareDelay
/* 802E8010 002E4F70  3C 60 80 3B */	lis r3, sndAuxCallbackDelay@ha
/* 802E8014 002E4F74  38 03 69 04 */	addi r0, r3, sndAuxCallbackDelay@l
/* 802E8018 002E4F78  7C 10 03 78 */	mr r16, r0
lbl_802E801C:
/* 802E801C 002E4F7C  38 00 00 00 */	li r0, 0
/* 802E8020 002E4F80  7E 04 83 78 */	mr r4, r16
/* 802E8024 002E4F84  90 01 00 08 */	stw r0, 8(r1)
/* 802E8028 002E4F88  7F E5 FB 78 */	mr r5, r31
/* 802E802C 002E4F8C  38 60 00 00 */	li r3, 0
/* 802E8030 002E4F90  38 C0 00 FF */	li r6, 0xff
/* 802E8034 002E4F94  38 E0 00 00 */	li r7, 0
/* 802E8038 002E4F98  39 00 00 00 */	li r8, 0
/* 802E803C 002E4F9C  39 20 00 00 */	li r9, 0
/* 802E8040 002E4FA0  39 40 00 FF */	li r10, 0xff
/* 802E8044 002E4FA4  48 0B 44 F1 */	bl sndSetAuxProcessingCallbacks
/* 802E8048 002E4FA8  38 00 00 01 */	li r0, 1
/* 802E804C 002E4FAC  98 0D A7 18 */	stb r0, lbl_805A92D8@sda21(r13)
lbl_802E8050:
/* 802E8050 002E4FB0  BA 01 00 10 */	lmw r16, 0x10(r1)
/* 802E8054 002E4FB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E8058 002E4FB8  7C 08 03 A6 */	mtlr r0
/* 802E805C 002E4FBC  38 21 00 50 */	addi r1, r1, 0x50
/* 802E8060 002E4FC0  4E 80 00 20 */	blr

.global PrepareDelayCallback__11CSfxManagerFRC13SND_AUX_DELAY
PrepareDelayCallback__11CSfxManagerFRC13SND_AUX_DELAY:
/* 802E8064 002E4FC4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E8068 002E4FC8  7C 08 02 A6 */	mflr r0
/* 802E806C 002E4FCC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E8070 002E4FD0  BE 01 00 10 */	stmw r16, 0x10(r1)
/* 802E8074 002E4FD4  7C 7F 1B 78 */	mr r31, r3
/* 802E8078 002E4FD8  48 00 03 C1 */	bl DisableAuxProcessing__11CSfxManagerFv
/* 802E807C 002E4FDC  C0 22 C6 04 */	lfs f1, lbl_805AE324@sda21(r2)
/* 802E8080 002E4FE0  3C 60 80 5A */	lis r3, lbl_805A5368@ha
/* 802E8084 002E4FE4  C0 0D 9B A8 */	lfs f0, lbl_805A8768@sda21(r13)
/* 802E8088 002E4FE8  3A 00 00 03 */	li r16, 3
/* 802E808C 002E4FEC  82 5F 00 00 */	lwz r18, 0(r31)
/* 802E8090 002E4FF0  3A 23 53 68 */	addi r17, r3, lbl_805A5368@l
/* 802E8094 002E4FF4  82 7F 00 04 */	lwz r19, 4(r31)
/* 802E8098 002E4FF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802E809C 002E4FFC  82 9F 00 08 */	lwz r20, 8(r31)
/* 802E80A0 002E5000  82 BF 00 0C */	lwz r21, 0xc(r31)
/* 802E80A4 002E5004  82 DF 00 10 */	lwz r22, 0x10(r31)
/* 802E80A8 002E5008  82 FF 00 14 */	lwz r23, 0x14(r31)
/* 802E80AC 002E500C  83 1F 00 18 */	lwz r24, 0x18(r31)
/* 802E80B0 002E5010  83 3F 00 1C */	lwz r25, 0x1c(r31)
/* 802E80B4 002E5014  83 5F 00 20 */	lwz r26, 0x20(r31)
/* 802E80B8 002E5018  83 7F 00 24 */	lwz r27, 0x24(r31)
/* 802E80BC 002E501C  83 9F 00 28 */	lwz r28, 0x28(r31)
/* 802E80C0 002E5020  83 BF 00 2C */	lwz r29, 0x2c(r31)
/* 802E80C4 002E5024  83 DF 00 30 */	lwz r30, 0x30(r31)
/* 802E80C8 002E5028  81 9F 00 34 */	lwz r12, 0x34(r31)
/* 802E80CC 002E502C  81 7F 00 38 */	lwz r11, 0x38(r31)
/* 802E80D0 002E5030  81 5F 00 3C */	lwz r10, 0x3c(r31)
/* 802E80D4 002E5034  81 3F 00 40 */	lwz r9, 0x40(r31)
/* 802E80D8 002E5038  81 1F 00 44 */	lwz r8, 0x44(r31)
/* 802E80DC 002E503C  80 FF 00 48 */	lwz r7, 0x48(r31)
/* 802E80E0 002E5040  80 DF 00 4C */	lwz r6, 0x4c(r31)
/* 802E80E4 002E5044  80 BF 00 50 */	lwz r5, 0x50(r31)
/* 802E80E8 002E5048  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 802E80EC 002E504C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 802E80F0 002E5050  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 802E80F4 002E5054  92 0D 9B B4 */	stw r16, lbl_805A8774@sda21(r13)
/* 802E80F8 002E5058  92 51 00 00 */	stw r18, 0(r17)
/* 802E80FC 002E505C  92 71 00 04 */	stw r19, 4(r17)
/* 802E8100 002E5060  92 91 00 08 */	stw r20, 8(r17)
/* 802E8104 002E5064  92 B1 00 0C */	stw r21, 0xc(r17)
/* 802E8108 002E5068  92 D1 00 10 */	stw r22, 0x10(r17)
/* 802E810C 002E506C  92 F1 00 14 */	stw r23, 0x14(r17)
/* 802E8110 002E5070  93 11 00 18 */	stw r24, 0x18(r17)
/* 802E8114 002E5074  93 31 00 1C */	stw r25, 0x1c(r17)
/* 802E8118 002E5078  93 51 00 20 */	stw r26, 0x20(r17)
/* 802E811C 002E507C  93 71 00 24 */	stw r27, 0x24(r17)
/* 802E8120 002E5080  93 91 00 28 */	stw r28, 0x28(r17)
/* 802E8124 002E5084  93 B1 00 2C */	stw r29, 0x2c(r17)
/* 802E8128 002E5088  93 D1 00 30 */	stw r30, 0x30(r17)
/* 802E812C 002E508C  91 91 00 34 */	stw r12, 0x34(r17)
/* 802E8130 002E5090  91 71 00 38 */	stw r11, 0x38(r17)
/* 802E8134 002E5094  91 51 00 3C */	stw r10, 0x3c(r17)
/* 802E8138 002E5098  91 31 00 40 */	stw r9, 0x40(r17)
/* 802E813C 002E509C  91 11 00 44 */	stw r8, 0x44(r17)
/* 802E8140 002E50A0  90 F1 00 48 */	stw r7, 0x48(r17)
/* 802E8144 002E50A4  90 D1 00 4C */	stw r6, 0x4c(r17)
/* 802E8148 002E50A8  90 B1 00 50 */	stw r5, 0x50(r17)
/* 802E814C 002E50AC  90 91 00 54 */	stw r4, 0x54(r17)
/* 802E8150 002E50B0  90 71 00 58 */	stw r3, 0x58(r17)
/* 802E8154 002E50B4  90 11 00 5C */	stw r0, 0x5c(r17)
/* 802E8158 002E50B8  40 82 00 08 */	bne lbl_802E8160
/* 802E815C 002E50BC  4B FF FB CD */	bl EnableAuxCallback__11CSfxManagerFv
lbl_802E8160:
/* 802E8160 002E50C0  BA 01 00 10 */	lmw r16, 0x10(r1)
/* 802E8164 002E50C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E8168 002E50C8  7C 08 03 A6 */	mtlr r0
/* 802E816C 002E50CC  38 21 00 50 */	addi r1, r1, 0x50
/* 802E8170 002E50D0  4E 80 00 20 */	blr

.global PrepareReverbStdCallback__11CSfxManagerFRC17SND_AUX_REVERBSTD
PrepareReverbStdCallback__11CSfxManagerFRC17SND_AUX_REVERBSTD:
/* 802E8174 002E50D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8178 002E50D8  7C 08 02 A6 */	mflr r0
/* 802E817C 002E50DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8180 002E50E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8184 002E50E4  7C 7F 1B 78 */	mr r31, r3
/* 802E8188 002E50E8  48 00 02 B1 */	bl DisableAuxProcessing__11CSfxManagerFv
/* 802E818C 002E50EC  3C 60 80 5A */	lis r3, lbl_805A5214@ha
/* 802E8190 002E50F0  38 80 00 02 */	li r4, 2
/* 802E8194 002E50F4  38 63 52 14 */	addi r3, r3, lbl_805A5214@l
/* 802E8198 002E50F8  38 00 00 27 */	li r0, 0x27
/* 802E819C 002E50FC  90 8D 9B B4 */	stw r4, lbl_805A8774@sda21(r13)
/* 802E81A0 002E5100  38 A3 FF FC */	addi r5, r3, -4
/* 802E81A4 002E5104  38 9F FF FC */	addi r4, r31, -4
/* 802E81A8 002E5108  7C 09 03 A6 */	mtctr r0
lbl_802E81AC:
/* 802E81AC 002E510C  80 64 00 04 */	lwz r3, 4(r4)
/* 802E81B0 002E5110  84 04 00 08 */	lwzu r0, 8(r4)
/* 802E81B4 002E5114  90 65 00 04 */	stw r3, 4(r5)
/* 802E81B8 002E5118  94 05 00 08 */	stwu r0, 8(r5)
/* 802E81BC 002E511C  42 00 FF F0 */	bdnz lbl_802E81AC
/* 802E81C0 002E5120  80 04 00 04 */	lwz r0, 4(r4)
/* 802E81C4 002E5124  3C 60 80 5A */	lis r3, lbl_805A5214@ha
/* 802E81C8 002E5128  C0 22 C6 04 */	lfs f1, lbl_805AE324@sda21(r2)
/* 802E81CC 002E512C  38 63 52 14 */	addi r3, r3, lbl_805A5214@l
/* 802E81D0 002E5130  C0 0D 9B A8 */	lfs f0, lbl_805A8768@sda21(r13)
/* 802E81D4 002E5134  90 05 00 04 */	stw r0, 4(r5)
/* 802E81D8 002E5138  88 1F 01 3C */	lbz r0, 0x13c(r31)
/* 802E81DC 002E513C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802E81E0 002E5140  C0 9F 01 40 */	lfs f4, 0x140(r31)
/* 802E81E4 002E5144  C0 7F 01 44 */	lfs f3, 0x144(r31)
/* 802E81E8 002E5148  C0 5F 01 48 */	lfs f2, 0x148(r31)
/* 802E81EC 002E514C  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 802E81F0 002E5150  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 802E81F4 002E5154  98 03 01 3C */	stb r0, 0x13c(r3)
/* 802E81F8 002E5158  D0 83 01 40 */	stfs f4, 0x140(r3)
/* 802E81FC 002E515C  D0 63 01 44 */	stfs f3, 0x144(r3)
/* 802E8200 002E5160  D0 43 01 48 */	stfs f2, 0x148(r3)
/* 802E8204 002E5164  D0 23 01 4C */	stfs f1, 0x14c(r3)
/* 802E8208 002E5168  D0 03 01 50 */	stfs f0, 0x150(r3)
/* 802E820C 002E516C  40 82 00 08 */	bne lbl_802E8214
/* 802E8210 002E5170  4B FF FB 19 */	bl EnableAuxCallback__11CSfxManagerFv
lbl_802E8214:
/* 802E8214 002E5174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8218 002E5178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E821C 002E517C  7C 08 03 A6 */	mtlr r0
/* 802E8220 002E5180  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8224 002E5184  4E 80 00 20 */	blr

.global PrepareChorusCallback__11CSfxManagerFRC14SND_AUX_CHORUS
PrepareChorusCallback__11CSfxManagerFRC14SND_AUX_CHORUS:
/* 802E8228 002E5188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E822C 002E518C  7C 08 02 A6 */	mflr r0
/* 802E8230 002E5190  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8234 002E5194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8238 002E5198  7C 7F 1B 78 */	mr r31, r3
/* 802E823C 002E519C  48 00 01 FD */	bl DisableAuxProcessing__11CSfxManagerFv
/* 802E8240 002E51A0  3C 60 80 5A */	lis r3, lbl_805A5178@ha
/* 802E8244 002E51A4  38 80 00 01 */	li r4, 1
/* 802E8248 002E51A8  38 63 51 78 */	addi r3, r3, lbl_805A5178@l
/* 802E824C 002E51AC  38 00 00 12 */	li r0, 0x12
/* 802E8250 002E51B0  90 8D 9B B4 */	stw r4, lbl_805A8774@sda21(r13)
/* 802E8254 002E51B4  38 A3 FF FC */	addi r5, r3, -4
/* 802E8258 002E51B8  38 9F FF FC */	addi r4, r31, -4
/* 802E825C 002E51BC  7C 09 03 A6 */	mtctr r0
lbl_802E8260:
/* 802E8260 002E51C0  80 64 00 04 */	lwz r3, 4(r4)
/* 802E8264 002E51C4  84 04 00 08 */	lwzu r0, 8(r4)
/* 802E8268 002E51C8  90 65 00 04 */	stw r3, 4(r5)
/* 802E826C 002E51CC  94 05 00 08 */	stwu r0, 8(r5)
/* 802E8270 002E51D0  42 00 FF F0 */	bdnz lbl_802E8260
/* 802E8274 002E51D4  C0 22 C6 04 */	lfs f1, lbl_805AE324@sda21(r2)
/* 802E8278 002E51D8  3C 60 80 5A */	lis r3, lbl_805A5178@ha
/* 802E827C 002E51DC  C0 0D 9B A8 */	lfs f0, lbl_805A8768@sda21(r13)
/* 802E8280 002E51E0  38 83 51 78 */	addi r4, r3, lbl_805A5178@l
/* 802E8284 002E51E4  80 BF 00 90 */	lwz r5, 0x90(r31)
/* 802E8288 002E51E8  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 802E828C 002E51EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802E8290 002E51F0  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 802E8294 002E51F4  90 A4 00 90 */	stw r5, 0x90(r4)
/* 802E8298 002E51F8  90 64 00 94 */	stw r3, 0x94(r4)
/* 802E829C 002E51FC  90 04 00 98 */	stw r0, 0x98(r4)
/* 802E82A0 002E5200  40 82 00 08 */	bne lbl_802E82A8
/* 802E82A4 002E5204  4B FF FA 85 */	bl EnableAuxCallback__11CSfxManagerFv
lbl_802E82A8:
/* 802E82A8 002E5208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E82AC 002E520C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E82B0 002E5210  7C 08 03 A6 */	mtlr r0
/* 802E82B4 002E5214  38 21 00 10 */	addi r1, r1, 0x10
/* 802E82B8 002E5218  4E 80 00 20 */	blr

.global PrepareReverbHiCallback__11CSfxManagerFRC16SND_AUX_REVERBHI
PrepareReverbHiCallback__11CSfxManagerFRC16SND_AUX_REVERBHI:
/* 802E82BC 002E521C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E82C0 002E5220  7C 08 02 A6 */	mflr r0
/* 802E82C4 002E5224  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E82C8 002E5228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E82CC 002E522C  7C 7F 1B 78 */	mr r31, r3
/* 802E82D0 002E5230  48 00 01 69 */	bl DisableAuxProcessing__11CSfxManagerFv
/* 802E82D4 002E5234  3C 60 80 5A */	lis r3, lbl_805A4F98@ha
/* 802E82D8 002E5238  38 80 00 00 */	li r4, 0
/* 802E82DC 002E523C  38 63 4F 98 */	addi r3, r3, lbl_805A4F98@l
/* 802E82E0 002E5240  38 00 00 38 */	li r0, 0x38
/* 802E82E4 002E5244  90 8D 9B B4 */	stw r4, lbl_805A8774@sda21(r13)
/* 802E82E8 002E5248  38 A3 FF FC */	addi r5, r3, -4
/* 802E82EC 002E524C  38 9F FF FC */	addi r4, r31, -4
/* 802E82F0 002E5250  7C 09 03 A6 */	mtctr r0
lbl_802E82F4:
/* 802E82F4 002E5254  80 64 00 04 */	lwz r3, 4(r4)
/* 802E82F8 002E5258  84 04 00 08 */	lwzu r0, 8(r4)
/* 802E82FC 002E525C  90 65 00 04 */	stw r3, 4(r5)
/* 802E8300 002E5260  94 05 00 08 */	stwu r0, 8(r5)
/* 802E8304 002E5264  42 00 FF F0 */	bdnz lbl_802E82F4
/* 802E8308 002E5268  80 04 00 04 */	lwz r0, 4(r4)
/* 802E830C 002E526C  3C 60 80 5A */	lis r3, lbl_805A4F98@ha
/* 802E8310 002E5270  C0 22 C6 04 */	lfs f1, lbl_805AE324@sda21(r2)
/* 802E8314 002E5274  38 63 4F 98 */	addi r3, r3, lbl_805A4F98@l
/* 802E8318 002E5278  C0 0D 9B A8 */	lfs f0, lbl_805A8768@sda21(r13)
/* 802E831C 002E527C  90 05 00 04 */	stw r0, 4(r5)
/* 802E8320 002E5280  88 1F 01 C4 */	lbz r0, 0x1c4(r31)
/* 802E8324 002E5284  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802E8328 002E5288  C0 BF 01 C8 */	lfs f5, 0x1c8(r31)
/* 802E832C 002E528C  C0 9F 01 CC */	lfs f4, 0x1cc(r31)
/* 802E8330 002E5290  C0 7F 01 D0 */	lfs f3, 0x1d0(r31)
/* 802E8334 002E5294  C0 5F 01 D4 */	lfs f2, 0x1d4(r31)
/* 802E8338 002E5298  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 802E833C 002E529C  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 802E8340 002E52A0  98 03 01 C4 */	stb r0, 0x1c4(r3)
/* 802E8344 002E52A4  D0 A3 01 C8 */	stfs f5, 0x1c8(r3)
/* 802E8348 002E52A8  D0 83 01 CC */	stfs f4, 0x1cc(r3)
/* 802E834C 002E52AC  D0 63 01 D0 */	stfs f3, 0x1d0(r3)
/* 802E8350 002E52B0  D0 43 01 D4 */	stfs f2, 0x1d4(r3)
/* 802E8354 002E52B4  D0 23 01 D8 */	stfs f1, 0x1d8(r3)
/* 802E8358 002E52B8  D0 03 01 DC */	stfs f0, 0x1dc(r3)
/* 802E835C 002E52BC  40 82 00 08 */	bne lbl_802E8364
/* 802E8360 002E52C0  4B FF F9 C9 */	bl EnableAuxCallback__11CSfxManagerFv
lbl_802E8364:
/* 802E8364 002E52C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8368 002E52C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E836C 002E52CC  7C 08 03 A6 */	mtlr r0
/* 802E8370 002E52D0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8374 002E52D4  4E 80 00 20 */	blr

.global ApplyReverb__11CSfxManagerFv
ApplyReverb__11CSfxManagerFv:
/* 802E8378 002E52D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E837C 002E52DC  7C 08 02 A6 */	mflr r0
/* 802E8380 002E52E0  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E8384 002E52E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E8388 002E52E8  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E838C 002E52EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E8390 002E52F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E8394 002E52F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E8398 002E52F8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E839C 002E52FC  80 8D A7 00 */	lwz r4, lbl_805A92C0@sda21(r13)
/* 802E83A0 002E5300  1C 64 01 6C */	mulli r3, r4, 0x16c
/* 802E83A4 002E5304  7F A0 1A 14 */	add r29, r0, r3
/* 802E83A8 002E5308  48 00 00 69 */	bl GetReverbAmount__11CSfxManagerFv
/* 802E83AC 002E530C  7C 7F 1B 78 */	mr r31, r3
/* 802E83B0 002E5310  3B DD 00 4C */	addi r30, r29, 0x4c
/* 802E83B4 002E5314  3B 80 00 00 */	li r28, 0
/* 802E83B8 002E5318  48 00 00 2C */	b lbl_802E83E4
lbl_802E83BC:
/* 802E83BC 002E531C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E83C0 002E5320  28 03 00 00 */	cmplwi r3, 0
/* 802E83C4 002E5324  41 82 00 18 */	beq lbl_802E83DC
/* 802E83C8 002E5328  81 83 00 00 */	lwz r12, 0(r3)
/* 802E83CC 002E532C  7F E4 07 74 */	extsb r4, r31
/* 802E83D0 002E5330  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 802E83D4 002E5334  7D 89 03 A6 */	mtctr r12
/* 802E83D8 002E5338  4E 80 04 21 */	bctrl
lbl_802E83DC:
/* 802E83DC 002E533C  3B DE 00 04 */	addi r30, r30, 4
/* 802E83E0 002E5340  3B 9C 00 01 */	addi r28, r28, 1
lbl_802E83E4:
/* 802E83E4 002E5344  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802E83E8 002E5348  7C 1C 00 00 */	cmpw r28, r0
/* 802E83EC 002E534C  41 80 FF D0 */	blt lbl_802E83BC
/* 802E83F0 002E5350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E83F4 002E5354  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E83F8 002E5358  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E83FC 002E535C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E8400 002E5360  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E8404 002E5364  7C 08 03 A6 */	mtlr r0
/* 802E8408 002E5368  38 21 00 20 */	addi r1, r1, 0x20
/* 802E840C 002E536C  4E 80 00 20 */	blr

.global GetReverbAmount__11CSfxManagerFv
GetReverbAmount__11CSfxManagerFv:
/* 802E8410 002E5370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8414 002E5374  C0 22 C6 08 */	lfs f1, lbl_805AE328@sda21(r2)
/* 802E8418 002E5378  C0 0D 9B A8 */	lfs f0, lbl_805A8768@sda21(r13)
/* 802E841C 002E537C  EC 41 00 32 */	fmuls f2, f1, f0
/* 802E8420 002E5380  F0 41 D0 08 */	psq_st f2, 8(r1), 1, qr5
/* 802E8424 002E5384  A8 61 00 08 */	lha r3, 8(r1)
/* 802E8428 002E5388  38 21 00 10 */	addi r1, r1, 0x10
/* 802E842C 002E538C  4E 80 00 20 */	blr

.global IsAuxProcessingEnabled__11CSfxManagerFv
IsAuxProcessingEnabled__11CSfxManagerFv:
/* 802E8430 002E5390  88 6D A7 18 */	lbz r3, lbl_805A92D8@sda21(r13)
/* 802E8434 002E5394  4E 80 00 20 */	blr

.global DisableAuxProcessing__11CSfxManagerFv
DisableAuxProcessing__11CSfxManagerFv:
/* 802E8438 002E5398  38 60 FF FF */	li r3, -1
/* 802E843C 002E539C  38 00 00 00 */	li r0, 0
/* 802E8440 002E53A0  90 6D 9B B4 */	stw r3, lbl_805A8774@sda21(r13)
/* 802E8444 002E53A4  98 0D A7 18 */	stb r0, lbl_805A92D8@sda21(r13)
/* 802E8448 002E53A8  4E 80 00 20 */	blr

.global AllocateCSfxWrapper__11CSfxManagerFRCQ211CSfxManager11CSfxWrapper
AllocateCSfxWrapper__11CSfxManagerFRCQ211CSfxManager11CSfxWrapper:
/* 802E844C 002E53AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8450 002E53B0  7C 08 02 A6 */	mflr r0
/* 802E8454 002E53B4  3C 80 80 5A */	lis r4, lbl_805A4164@ha
/* 802E8458 002E53B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E845C 002E53BC  BF 41 00 08 */	stmw r26, 8(r1)
/* 802E8460 002E53C0  3B 84 41 64 */	addi r28, r4, lbl_805A4164@l
/* 802E8464 002E53C4  3B FC 00 04 */	addi r31, r28, 4
/* 802E8468 002E53C8  7C 7D 1B 78 */	mr r29, r3
/* 802E846C 002E53CC  3B C0 00 00 */	li r30, 0
/* 802E8470 002E53D0  3B 40 00 00 */	li r26, 0
/* 802E8474 002E53D4  7F FB FB 78 */	mr r27, r31
/* 802E8478 002E53D8  48 00 00 84 */	b lbl_802E84FC
lbl_802E847C:
/* 802E847C 002E53DC  7F 63 DB 78 */	mr r3, r27
/* 802E8480 002E53E0  48 00 2B 61 */	bl Available__Q211CSfxManager15CBaseSfxWrapperCFv
/* 802E8484 002E53E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8488 002E53E8  41 82 00 6C */	beq lbl_802E84F4
/* 802E848C 002E53EC  1C 9A 00 28 */	mulli r4, r26, 0x28
/* 802E8490 002E53F0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802E8494 002E53F4  A8 7D 00 08 */	lha r3, 8(r29)
/* 802E8498 002E53F8  A8 1D 00 0A */	lha r0, 0xa(r29)
/* 802E849C 002E53FC  7C DF 22 14 */	add r6, r31, r4
/* 802E84A0 002E5400  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 802E84A4 002E5404  D0 06 00 04 */	stfs f0, 4(r6)
/* 802E84A8 002E5408  7C DE 33 78 */	mr r30, r6
/* 802E84AC 002E540C  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 802E84B0 002E5410  B0 66 00 08 */	sth r3, 8(r6)
/* 802E84B4 002E5414  88 7D 00 14 */	lbz r3, 0x14(r29)
/* 802E84B8 002E5418  B0 06 00 0A */	sth r0, 0xa(r6)
/* 802E84BC 002E541C  A0 1D 00 18 */	lhz r0, 0x18(r29)
/* 802E84C0 002E5420  90 A6 00 0C */	stw r5, 0xc(r6)
/* 802E84C4 002E5424  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 802E84C8 002E5428  90 86 00 10 */	stw r4, 0x10(r6)
/* 802E84CC 002E542C  A8 9D 00 20 */	lha r4, 0x20(r29)
/* 802E84D0 002E5430  98 66 00 14 */	stb r3, 0x14(r6)
/* 802E84D4 002E5434  A8 7D 00 22 */	lha r3, 0x22(r29)
/* 802E84D8 002E5438  B0 06 00 18 */	sth r0, 0x18(r6)
/* 802E84DC 002E543C  88 1D 00 24 */	lbz r0, 0x24(r29)
/* 802E84E0 002E5440  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 802E84E4 002E5444  B0 86 00 20 */	sth r4, 0x20(r6)
/* 802E84E8 002E5448  B0 66 00 22 */	sth r3, 0x22(r6)
/* 802E84EC 002E544C  98 06 00 24 */	stb r0, 0x24(r6)
/* 802E84F0 002E5450  48 00 00 18 */	b lbl_802E8508
lbl_802E84F4:
/* 802E84F4 002E5454  3B 7B 00 28 */	addi r27, r27, 0x28
/* 802E84F8 002E5458  3B 5A 00 01 */	addi r26, r26, 1
lbl_802E84FC:
/* 802E84FC 002E545C  80 1C 00 00 */	lwz r0, 0(r28)
/* 802E8500 002E5460  7C 1A 00 00 */	cmpw r26, r0
/* 802E8504 002E5464  41 80 FF 78 */	blt lbl_802E847C
lbl_802E8508:
/* 802E8508 002E5468  28 1E 00 00 */	cmplwi r30, 0
/* 802E850C 002E546C  40 82 00 B0 */	bne lbl_802E85BC
/* 802E8510 002E5470  3C 60 80 5A */	lis r3, lbl_805A4164@ha
/* 802E8514 002E5474  80 03 41 64 */	lwz r0, lbl_805A4164@l(r3)
/* 802E8518 002E5478  2C 00 00 40 */	cmpwi r0, 0x40
/* 802E851C 002E547C  41 82 00 A0 */	beq lbl_802E85BC
/* 802E8520 002E5480  1C 00 00 28 */	mulli r0, r0, 0x28
/* 802E8524 002E5484  7C BF 02 15 */	add. r5, r31, r0
/* 802E8528 002E5488  41 82 00 74 */	beq lbl_802E859C
/* 802E852C 002E548C  3C 80 80 3F */	lis r4, lbl_803ECEE4@ha
/* 802E8530 002E5490  3C 60 80 3F */	lis r3, lbl_803ECE10@ha
/* 802E8534 002E5494  38 04 CE E4 */	addi r0, r4, lbl_803ECEE4@l
/* 802E8538 002E5498  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802E853C 002E549C  90 05 00 00 */	stw r0, 0(r5)
/* 802E8540 002E54A0  38 83 CE 10 */	addi r4, r3, lbl_803ECE10@l
/* 802E8544 002E54A4  A8 1D 00 08 */	lha r0, 8(r29)
/* 802E8548 002E54A8  D0 05 00 04 */	stfs f0, 4(r5)
/* 802E854C 002E54AC  A8 7D 00 0A */	lha r3, 0xa(r29)
/* 802E8550 002E54B0  B0 05 00 08 */	sth r0, 8(r5)
/* 802E8554 002E54B4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802E8558 002E54B8  B0 65 00 0A */	sth r3, 0xa(r5)
/* 802E855C 002E54BC  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802E8560 002E54C0  90 05 00 0C */	stw r0, 0xc(r5)
/* 802E8564 002E54C4  88 1D 00 14 */	lbz r0, 0x14(r29)
/* 802E8568 002E54C8  90 65 00 10 */	stw r3, 0x10(r5)
/* 802E856C 002E54CC  A0 7D 00 18 */	lhz r3, 0x18(r29)
/* 802E8570 002E54D0  98 05 00 14 */	stb r0, 0x14(r5)
/* 802E8574 002E54D4  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 802E8578 002E54D8  90 85 00 00 */	stw r4, 0(r5)
/* 802E857C 002E54DC  A8 9D 00 20 */	lha r4, 0x20(r29)
/* 802E8580 002E54E0  B0 65 00 18 */	sth r3, 0x18(r5)
/* 802E8584 002E54E4  A8 7D 00 22 */	lha r3, 0x22(r29)
/* 802E8588 002E54E8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 802E858C 002E54EC  88 1D 00 24 */	lbz r0, 0x24(r29)
/* 802E8590 002E54F0  B0 85 00 20 */	sth r4, 0x20(r5)
/* 802E8594 002E54F4  B0 65 00 22 */	sth r3, 0x22(r5)
/* 802E8598 002E54F8  98 05 00 24 */	stb r0, 0x24(r5)
lbl_802E859C:
/* 802E859C 002E54FC  3C 60 80 5A */	lis r3, lbl_805A4164@ha
/* 802E85A0 002E5500  38 83 41 64 */	addi r4, r3, lbl_805A4164@l
/* 802E85A4 002E5504  80 64 00 00 */	lwz r3, 0(r4)
/* 802E85A8 002E5508  38 63 00 01 */	addi r3, r3, 1
/* 802E85AC 002E550C  38 03 FF FF */	addi r0, r3, -1
/* 802E85B0 002E5510  90 64 00 00 */	stw r3, 0(r4)
/* 802E85B4 002E5514  1C 00 00 28 */	mulli r0, r0, 0x28
/* 802E85B8 002E5518  7F DF 02 14 */	add r30, r31, r0
lbl_802E85BC:
/* 802E85BC 002E551C  7F C3 F3 78 */	mr r3, r30
/* 802E85C0 002E5520  BB 41 00 08 */	lmw r26, 8(r1)
/* 802E85C4 002E5524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E85C8 002E5528  7C 08 03 A6 */	mtlr r0
/* 802E85CC 002E552C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E85D0 002E5530  4E 80 00 20 */	blr

.global sub_802e85d4
sub_802e85d4:
/* 802E85D4 002E5534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E85D8 002E5538  7C 08 02 A6 */	mflr r0
/* 802E85DC 002E553C  3C 80 80 5A */	lis r4, lbl_805A2B60@ha
/* 802E85E0 002E5540  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E85E4 002E5544  BF 41 00 08 */	stmw r26, 8(r1)
/* 802E85E8 002E5548  3B 84 2B 60 */	addi r28, r4, lbl_805A2B60@l
/* 802E85EC 002E554C  3B FC 00 04 */	addi r31, r28, 4
/* 802E85F0 002E5550  7C 7D 1B 78 */	mr r29, r3
/* 802E85F4 002E5554  3B C0 00 00 */	li r30, 0
/* 802E85F8 002E5558  3B 40 00 00 */	li r26, 0
/* 802E85FC 002E555C  7F FB FB 78 */	mr r27, r31
/* 802E8600 002E5560  48 00 00 E4 */	b lbl_802E86E4
lbl_802E8604:
/* 802E8604 002E5564  7F 63 DB 78 */	mr r3, r27
/* 802E8608 002E5568  48 00 29 D9 */	bl Available__Q211CSfxManager15CBaseSfxWrapperCFv
/* 802E860C 002E556C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8610 002E5570  41 82 00 CC */	beq lbl_802E86DC
/* 802E8614 002E5574  1C 9A 00 58 */	mulli r4, r26, 0x58
/* 802E8618 002E5578  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802E861C 002E557C  A8 7D 00 08 */	lha r3, 8(r29)
/* 802E8620 002E5580  A8 1D 00 0A */	lha r0, 0xa(r29)
/* 802E8624 002E5584  7C DF 22 14 */	add r6, r31, r4
/* 802E8628 002E5588  80 BD 00 0C */	lwz r5, 0xc(r29)
/* 802E862C 002E558C  D0 06 00 04 */	stfs f0, 4(r6)
/* 802E8630 002E5590  7C DE 33 78 */	mr r30, r6
/* 802E8634 002E5594  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 802E8638 002E5598  B0 66 00 08 */	sth r3, 8(r6)
/* 802E863C 002E559C  88 7D 00 14 */	lbz r3, 0x14(r29)
/* 802E8640 002E55A0  B0 06 00 0A */	sth r0, 0xa(r6)
/* 802E8644 002E55A4  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 802E8648 002E55A8  90 A6 00 0C */	stw r5, 0xc(r6)
/* 802E864C 002E55AC  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 802E8650 002E55B0  90 86 00 10 */	stw r4, 0x10(r6)
/* 802E8654 002E55B4  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802E8658 002E55B8  98 66 00 14 */	stb r3, 0x14(r6)
/* 802E865C 002E55BC  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 802E8660 002E55C0  90 06 00 18 */	stw r0, 0x18(r6)
/* 802E8664 002E55C4  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 802E8668 002E55C8  90 A6 00 1C */	stw r5, 0x1c(r6)
/* 802E866C 002E55CC  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 802E8670 002E55D0  90 86 00 20 */	stw r4, 0x20(r6)
/* 802E8674 002E55D4  80 9D 00 30 */	lwz r4, 0x30(r29)
/* 802E8678 002E55D8  90 66 00 24 */	stw r3, 0x24(r6)
/* 802E867C 002E55DC  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 802E8680 002E55E0  90 06 00 28 */	stw r0, 0x28(r6)
/* 802E8684 002E55E4  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802E8688 002E55E8  90 A6 00 2C */	stw r5, 0x2c(r6)
/* 802E868C 002E55EC  80 BD 00 3C */	lwz r5, 0x3c(r29)
/* 802E8690 002E55F0  90 86 00 30 */	stw r4, 0x30(r6)
/* 802E8694 002E55F4  80 9D 00 40 */	lwz r4, 0x40(r29)
/* 802E8698 002E55F8  90 66 00 34 */	stw r3, 0x34(r6)
/* 802E869C 002E55FC  80 7D 00 44 */	lwz r3, 0x44(r29)
/* 802E86A0 002E5600  90 06 00 38 */	stw r0, 0x38(r6)
/* 802E86A4 002E5604  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802E86A8 002E5608  90 A6 00 3C */	stw r5, 0x3c(r6)
/* 802E86AC 002E560C  80 BD 00 4C */	lwz r5, 0x4c(r29)
/* 802E86B0 002E5610  90 86 00 40 */	stw r4, 0x40(r6)
/* 802E86B4 002E5614  80 9D 00 50 */	lwz r4, 0x50(r29)
/* 802E86B8 002E5618  90 66 00 44 */	stw r3, 0x44(r6)
/* 802E86BC 002E561C  88 7D 00 54 */	lbz r3, 0x54(r29)
/* 802E86C0 002E5620  90 06 00 48 */	stw r0, 0x48(r6)
/* 802E86C4 002E5624  88 1D 00 55 */	lbz r0, 0x55(r29)
/* 802E86C8 002E5628  90 A6 00 4C */	stw r5, 0x4c(r6)
/* 802E86CC 002E562C  90 86 00 50 */	stw r4, 0x50(r6)
/* 802E86D0 002E5630  98 66 00 54 */	stb r3, 0x54(r6)
/* 802E86D4 002E5634  98 06 00 55 */	stb r0, 0x55(r6)
/* 802E86D8 002E5638  48 00 00 18 */	b lbl_802E86F0
lbl_802E86DC:
/* 802E86DC 002E563C  3B 7B 00 58 */	addi r27, r27, 0x58
/* 802E86E0 002E5640  3B 5A 00 01 */	addi r26, r26, 1
lbl_802E86E4:
/* 802E86E4 002E5644  80 1C 00 00 */	lwz r0, 0(r28)
/* 802E86E8 002E5648  7C 1A 00 00 */	cmpw r26, r0
/* 802E86EC 002E564C  41 80 FF 18 */	blt lbl_802E8604
lbl_802E86F0:
/* 802E86F0 002E5650  28 1E 00 00 */	cmplwi r30, 0
/* 802E86F4 002E5654  40 82 00 38 */	bne lbl_802E872C
/* 802E86F8 002E5658  3C 60 80 5A */	lis r3, lbl_805A2B60@ha
/* 802E86FC 002E565C  38 63 2B 60 */	addi r3, r3, lbl_805A2B60@l
/* 802E8700 002E5660  80 03 00 00 */	lwz r0, 0(r3)
/* 802E8704 002E5664  2C 00 00 40 */	cmpwi r0, 0x40
/* 802E8708 002E5668  41 82 00 24 */	beq lbl_802E872C
/* 802E870C 002E566C  7F A4 EB 78 */	mr r4, r29
/* 802E8710 002E5670  48 00 00 35 */	bl sub_802e8744
/* 802E8714 002E5674  3C 60 80 5A */	lis r3, lbl_805A2B60@ha
/* 802E8718 002E5678  38 63 2B 60 */	addi r3, r3, lbl_805A2B60@l
/* 802E871C 002E567C  80 63 00 00 */	lwz r3, 0(r3)
/* 802E8720 002E5680  38 03 FF FF */	addi r0, r3, -1
/* 802E8724 002E5684  1C 00 00 58 */	mulli r0, r0, 0x58
/* 802E8728 002E5688  7F DF 02 14 */	add r30, r31, r0
lbl_802E872C:
/* 802E872C 002E568C  7F C3 F3 78 */	mr r3, r30
/* 802E8730 002E5690  BB 41 00 08 */	lmw r26, 8(r1)
/* 802E8734 002E5694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E8738 002E5698  7C 08 03 A6 */	mtlr r0
/* 802E873C 002E569C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E8740 002E56A0  4E 80 00 20 */	blr

.global sub_802e8744
sub_802e8744:
/* 802E8744 002E56A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8748 002E56A8  7C 08 02 A6 */	mflr r0
/* 802E874C 002E56AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8750 002E56B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8754 002E56B4  7C 7F 1B 78 */	mr r31, r3
/* 802E8758 002E56B8  80 03 00 00 */	lwz r0, 0(r3)
/* 802E875C 002E56BC  1C 00 00 58 */	mulli r0, r0, 0x58
/* 802E8760 002E56C0  7C 7F 02 14 */	add r3, r31, r0
/* 802E8764 002E56C4  38 63 00 04 */	addi r3, r3, 4
/* 802E8768 002E56C8  48 00 00 25 */	bl sub_802e878c
/* 802E876C 002E56CC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E8770 002E56D0  38 03 00 01 */	addi r0, r3, 1
/* 802E8774 002E56D4  90 1F 00 00 */	stw r0, 0(r31)
/* 802E8778 002E56D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E877C 002E56DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8780 002E56E0  7C 08 03 A6 */	mtlr r0
/* 802E8784 002E56E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8788 002E56E8  4E 80 00 20 */	blr

.global sub_802e878c
sub_802e878c:
/* 802E878C 002E56EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8790 002E56F0  7C 08 02 A6 */	mflr r0
/* 802E8794 002E56F4  28 03 00 00 */	cmplwi r3, 0
/* 802E8798 002E56F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E879C 002E56FC  41 82 00 08 */	beq lbl_802E87A4
/* 802E87A0 002E5700  48 00 00 15 */	bl sub_802e87b4
lbl_802E87A4:
/* 802E87A4 002E5704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E87A8 002E5708  7C 08 03 A6 */	mtlr r0
/* 802E87AC 002E570C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E87B0 002E5710  4E 80 00 20 */	blr

.global sub_802e87b4
sub_802e87b4:
/* 802E87B4 002E5714  3C C0 80 3F */	lis r6, lbl_803ECEE4@ha
/* 802E87B8 002E5718  3C A0 80 3F */	lis r5, lbl_803ECE80@ha
/* 802E87BC 002E571C  38 C6 CE E4 */	addi r6, r6, lbl_803ECEE4@l
/* 802E87C0 002E5720  90 C3 00 00 */	stw r6, 0(r3)
/* 802E87C4 002E5724  38 05 CE 80 */	addi r0, r5, lbl_803ECE80@l
/* 802E87C8 002E5728  C0 04 00 04 */	lfs f0, 4(r4)
/* 802E87CC 002E572C  D0 03 00 04 */	stfs f0, 4(r3)
/* 802E87D0 002E5730  A8 A4 00 08 */	lha r5, 8(r4)
/* 802E87D4 002E5734  B0 A3 00 08 */	sth r5, 8(r3)
/* 802E87D8 002E5738  A8 A4 00 0A */	lha r5, 0xa(r4)
/* 802E87DC 002E573C  B0 A3 00 0A */	sth r5, 0xa(r3)
/* 802E87E0 002E5740  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802E87E4 002E5744  90 A3 00 0C */	stw r5, 0xc(r3)
/* 802E87E8 002E5748  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 802E87EC 002E574C  90 A3 00 10 */	stw r5, 0x10(r3)
/* 802E87F0 002E5750  88 A4 00 14 */	lbz r5, 0x14(r4)
/* 802E87F4 002E5754  98 A3 00 14 */	stb r5, 0x14(r3)
/* 802E87F8 002E5758  90 03 00 00 */	stw r0, 0(r3)
/* 802E87FC 002E575C  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802E8800 002E5760  90 03 00 18 */	stw r0, 0x18(r3)
/* 802E8804 002E5764  80 A4 00 1C */	lwz r5, 0x1c(r4)
/* 802E8808 002E5768  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802E880C 002E576C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 802E8810 002E5770  90 03 00 20 */	stw r0, 0x20(r3)
/* 802E8814 002E5774  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802E8818 002E5778  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802E881C 002E577C  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 802E8820 002E5780  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802E8824 002E5784  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 802E8828 002E5788  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802E882C 002E578C  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 802E8830 002E5790  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802E8834 002E5794  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 802E8838 002E5798  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802E883C 002E579C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 802E8840 002E57A0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802E8844 002E57A4  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 802E8848 002E57A8  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 802E884C 002E57AC  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 802E8850 002E57B0  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 802E8854 002E57B4  80 04 00 44 */	lwz r0, 0x44(r4)
/* 802E8858 002E57B8  90 03 00 44 */	stw r0, 0x44(r3)
/* 802E885C 002E57BC  A0 04 00 48 */	lhz r0, 0x48(r4)
/* 802E8860 002E57C0  B0 03 00 48 */	sth r0, 0x48(r3)
/* 802E8864 002E57C4  88 04 00 4A */	lbz r0, 0x4a(r4)
/* 802E8868 002E57C8  98 03 00 4A */	stb r0, 0x4a(r3)
/* 802E886C 002E57CC  88 04 00 4B */	lbz r0, 0x4b(r4)
/* 802E8870 002E57D0  98 03 00 4B */	stb r0, 0x4b(r3)
/* 802E8874 002E57D4  88 04 00 4C */	lbz r0, 0x4c(r4)
/* 802E8878 002E57D8  98 03 00 4C */	stb r0, 0x4c(r3)
/* 802E887C 002E57DC  88 04 00 4D */	lbz r0, 0x4d(r4)
/* 802E8880 002E57E0  98 03 00 4D */	stb r0, 0x4d(r3)
/* 802E8884 002E57E4  80 04 00 50 */	lwz r0, 0x50(r4)
/* 802E8888 002E57E8  90 03 00 50 */	stw r0, 0x50(r3)
/* 802E888C 002E57EC  88 04 00 54 */	lbz r0, 0x54(r4)
/* 802E8890 002E57F0  98 03 00 54 */	stb r0, 0x54(r3)
/* 802E8894 002E57F4  88 04 00 55 */	lbz r0, 0x55(r4)
/* 802E8898 002E57F8  98 03 00 55 */	stb r0, 0x55(r3)
/* 802E889C 002E57FC  4E 80 00 20 */	blr

.global "SetActiveAreas__11CSfxManagerFRCQ24rstl21reserved_vector<i,10>"
"SetActiveAreas__11CSfxManagerFRCQ24rstl21reserved_vector<i,10>":
/* 802E88A0 002E5800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E88A4 002E5804  7C 08 02 A6 */	mflr r0
/* 802E88A8 002E5808  3C 80 80 5A */	lis r4, lbl_8059FD48@ha
/* 802E88AC 002E580C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E88B0 002E5810  38 04 FD 48 */	addi r0, r4, lbl_8059FD48@l
/* 802E88B4 002E5814  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E88B8 002E5818  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E88BC 002E581C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E88C0 002E5820  3B A0 00 00 */	li r29, 0
/* 802E88C4 002E5824  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E88C8 002E5828  7C 7C 1B 78 */	mr r28, r3
/* 802E88CC 002E582C  80 AD A7 00 */	lwz r5, lbl_805A92C0@sda21(r13)
/* 802E88D0 002E5830  1C 65 01 6C */	mulli r3, r5, 0x16c
/* 802E88D4 002E5834  7F C0 1A 14 */	add r30, r0, r3
/* 802E88D8 002E5838  3B FE 00 4C */	addi r31, r30, 0x4c
/* 802E88DC 002E583C  48 00 00 A4 */	b lbl_802E8980
lbl_802E88E0:
/* 802E88E0 002E5840  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E88E4 002E5844  28 03 00 00 */	cmplwi r3, 0
/* 802E88E8 002E5848  41 82 00 90 */	beq lbl_802E8978
/* 802E88EC 002E584C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E88F0 002E5850  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802E88F4 002E5854  7D 89 03 A6 */	mtctr r12
/* 802E88F8 002E5858  4E 80 04 21 */	bctrl
/* 802E88FC 002E585C  2C 03 FF FF */	cmpwi r3, -1
/* 802E8900 002E5860  40 82 00 20 */	bne lbl_802E8920
/* 802E8904 002E5864  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E8908 002E5868  38 80 00 01 */	li r4, 1
/* 802E890C 002E586C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E8910 002E5870  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802E8914 002E5874  7D 89 03 A6 */	mtctr r12
/* 802E8918 002E5878  4E 80 04 21 */	bctrl
/* 802E891C 002E587C  48 00 00 5C */	b lbl_802E8978
lbl_802E8920:
/* 802E8920 002E5880  80 1C 00 00 */	lwz r0, 0(r28)
/* 802E8924 002E5884  38 DC 00 04 */	addi r6, r28, 4
/* 802E8928 002E5888  38 A0 00 00 */	li r5, 0
/* 802E892C 002E588C  54 00 10 3A */	slwi r0, r0, 2
/* 802E8930 002E5890  7C 9C 02 14 */	add r4, r28, r0
/* 802E8934 002E5894  38 84 00 04 */	addi r4, r4, 4
/* 802E8938 002E5898  48 00 00 18 */	b lbl_802E8950
lbl_802E893C:
/* 802E893C 002E589C  80 06 00 00 */	lwz r0, 0(r6)
/* 802E8940 002E58A0  7C 00 18 00 */	cmpw r0, r3
/* 802E8944 002E58A4  40 82 00 08 */	bne lbl_802E894C
/* 802E8948 002E58A8  38 A0 00 01 */	li r5, 1
lbl_802E894C:
/* 802E894C 002E58AC  38 C6 00 04 */	addi r6, r6, 4
lbl_802E8950:
/* 802E8950 002E58B0  7C 06 20 40 */	cmplw r6, r4
/* 802E8954 002E58B4  40 82 FF E8 */	bne lbl_802E893C
/* 802E8958 002E58B8  38 00 00 01 */	li r0, 1
/* 802E895C 002E58BC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E8960 002E58C0  98 0D A7 04 */	stb r0, lbl_805A92C4@sda21(r13)
/* 802E8964 002E58C4  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 802E8968 002E58C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802E896C 002E58CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802E8970 002E58D0  7D 89 03 A6 */	mtctr r12
/* 802E8974 002E58D4  4E 80 04 21 */	bctrl
lbl_802E8978:
/* 802E8978 002E58D8  3B FF 00 04 */	addi r31, r31, 4
/* 802E897C 002E58DC  3B BD 00 01 */	addi r29, r29, 1
lbl_802E8980:
/* 802E8980 002E58E0  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 802E8984 002E58E4  7F A3 07 34 */	extsh r3, r29
/* 802E8988 002E58E8  7C 03 00 00 */	cmpw r3, r0
/* 802E898C 002E58EC  41 80 FF 54 */	blt lbl_802E88E0
/* 802E8990 002E58F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E8994 002E58F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E8998 002E58F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E899C 002E58FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E89A0 002E5900  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E89A4 002E5904  7C 08 03 A6 */	mtlr r0
/* 802E89A8 002E5908  38 21 00 20 */	addi r1, r1, 0x20
/* 802E89AC 002E590C  4E 80 00 20 */	blr

.global TranslateSFXID__11CSfxManagerFUs
TranslateSFXID__11CSfxManagerFUs:
/* 802E89B0 002E5910  80 8D A7 08 */	lwz r4, lbl_805A92C8@sda21(r13)
/* 802E89B4 002E5914  28 04 00 00 */	cmplwi r4, 0
/* 802E89B8 002E5918  41 82 00 14 */	beq lbl_802E89CC
/* 802E89BC 002E591C  80 04 00 04 */	lwz r0, 4(r4)
/* 802E89C0 002E5920  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802E89C4 002E5924  7C 03 00 00 */	cmpw r3, r0
/* 802E89C8 002E5928  41 80 00 10 */	blt lbl_802E89D8
lbl_802E89CC:
/* 802E89CC 002E592C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 802E89D0 002E5930  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 802E89D4 002E5934  4E 80 00 20 */	blr
lbl_802E89D8:
/* 802E89D8 002E5938  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802E89DC 002E593C  54 60 08 3C */	slwi r0, r3, 1
/* 802E89E0 002E5940  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 802E89E4 002E5944  7C 84 02 AE */	lhax r4, r4, r0
/* 802E89E8 002E5948  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 802E89EC 002E594C  7C 80 07 35 */	extsh. r0, r4
/* 802E89F0 002E5950  4D 80 00 20 */	bltlr
/* 802E89F4 002E5954  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 802E89F8 002E5958  4E 80 00 20 */	blr

.global LoadTranslationTable__11CSfxManagerFP11CSimplePoolPC10SObjectTag
LoadTranslationTable__11CSfxManagerFP11CSimplePoolPC10SObjectTag:
/* 802E89FC 002E595C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E8A00 002E5960  7C 08 02 A6 */	mflr r0
/* 802E8A04 002E5964  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E8A08 002E5968  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802E8A0C 002E596C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802E8A10 002E5970  7C 9E 23 79 */	or. r30, r4, r4
/* 802E8A14 002E5974  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802E8A18 002E5978  7C 7D 1B 78 */	mr r29, r3
/* 802E8A1C 002E597C  93 81 00 30 */	stw r28, 0x30(r1)
/* 802E8A20 002E5980  40 82 00 0C */	bne lbl_802E8A2C
/* 802E8A24 002E5984  38 60 00 00 */	li r3, 0
/* 802E8A28 002E5988  48 00 01 48 */	b lbl_802E8B70
lbl_802E8A2C:
/* 802E8A2C 002E598C  83 ED A7 08 */	lwz r31, lbl_805A92C8@sda21(r13)
/* 802E8A30 002E5990  28 1F 00 00 */	cmplwi r31, 0
/* 802E8A34 002E5994  41 82 00 50 */	beq lbl_802E8A84
/* 802E8A38 002E5998  41 82 00 4C */	beq lbl_802E8A84
/* 802E8A3C 002E599C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802E8A40 002E59A0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802E8A44 002E59A4  54 00 08 3C */	slwi r0, r0, 1
/* 802E8A48 002E59A8  7C 03 02 14 */	add r0, r3, r0
/* 802E8A4C 002E59AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802E8A50 002E59B0  7C 64 1B 78 */	mr r4, r3
/* 802E8A54 002E59B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8A58 002E59B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E8A5C 002E59BC  90 61 00 08 */	stw r3, 8(r1)
/* 802E8A60 002E59C0  48 00 00 08 */	b lbl_802E8A68
lbl_802E8A64:
/* 802E8A64 002E59C4  38 84 00 02 */	addi r4, r4, 2
lbl_802E8A68:
/* 802E8A68 002E59C8  7C 04 00 40 */	cmplw r4, r0
/* 802E8A6C 002E59CC  40 82 FF F8 */	bne lbl_802E8A64
/* 802E8A70 002E59D0  28 03 00 00 */	cmplwi r3, 0
/* 802E8A74 002E59D4  41 82 00 08 */	beq lbl_802E8A7C
/* 802E8A78 002E59D8  48 02 CE B9 */	bl Free__7CMemoryFPCv
lbl_802E8A7C:
/* 802E8A7C 002E59DC  7F E3 FB 78 */	mr r3, r31
/* 802E8A80 002E59E0  48 02 CE B1 */	bl Free__7CMemoryFPCv
lbl_802E8A84:
/* 802E8A84 002E59E4  38 00 00 00 */	li r0, 0
/* 802E8A88 002E59E8  3C 60 80 3D */	lis r3, lbl_803D6DC8@ha
/* 802E8A8C 002E59EC  90 0D A7 08 */	stw r0, lbl_805A92C8@sda21(r13)
/* 802E8A90 002E59F0  38 83 6D C8 */	addi r4, r3, lbl_803D6DC8@l
/* 802E8A94 002E59F4  3B 80 00 00 */	li r28, 0
/* 802E8A98 002E59F8  38 60 00 08 */	li r3, 8
/* 802E8A9C 002E59FC  38 A0 00 00 */	li r5, 0
/* 802E8AA0 002E5A00  48 02 CD CD */	bl __nw__FUlPCcPCc
/* 802E8AA4 002E5A04  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E8AA8 002E5A08  41 82 00 34 */	beq lbl_802E8ADC
/* 802E8AAC 002E5A0C  7F A4 EB 78 */	mr r4, r29
/* 802E8AB0 002E5A10  7F C5 F3 78 */	mr r5, r30
/* 802E8AB4 002E5A14  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E8AB8 002E5A18  38 61 00 20 */	addi r3, r1, 0x20
/* 802E8ABC 002E5A1C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E8AC0 002E5A20  7D 89 03 A6 */	mtctr r12
/* 802E8AC4 002E5A24  4E 80 04 21 */	bctrl
/* 802E8AC8 002E5A28  7F E3 FB 78 */	mr r3, r31
/* 802E8ACC 002E5A2C  38 81 00 20 */	addi r4, r1, 0x20
/* 802E8AD0 002E5A30  3B 80 00 01 */	li r28, 1
/* 802E8AD4 002E5A34  48 05 83 D5 */	bl __ct__6CTokenFRC6CToken
/* 802E8AD8 002E5A38  7C 7F 1B 78 */	mr r31, r3
lbl_802E8ADC:
/* 802E8ADC 002E5A3C  7C 7F 00 D0 */	neg r3, r31
/* 802E8AE0 002E5A40  38 01 00 18 */	addi r0, r1, 0x18
/* 802E8AE4 002E5A44  7C 64 FB 78 */	or r4, r3, r31
/* 802E8AE8 002E5A48  38 6D A7 10 */	addi r3, r13, lbl_805A92D0@sda21
/* 802E8AEC 002E5A4C  54 84 0F FE */	srwi r4, r4, 0x1f
/* 802E8AF0 002E5A50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E8AF4 002E5A54  7C 00 18 40 */	cmplw r0, r3
/* 802E8AF8 002E5A58  98 81 00 18 */	stb r4, 0x18(r1)
/* 802E8AFC 002E5A5C  41 82 00 38 */	beq lbl_802E8B34
/* 802E8B00 002E5A60  88 0D A7 10 */	lbz r0, lbl_805A92D0@sda21(r13)
/* 802E8B04 002E5A64  28 00 00 00 */	cmplwi r0, 0
/* 802E8B08 002E5A68  41 82 00 10 */	beq lbl_802E8B18
/* 802E8B0C 002E5A6C  80 63 00 04 */	lwz r3, 4(r3)
/* 802E8B10 002E5A70  38 80 00 01 */	li r4, 1
/* 802E8B14 002E5A74  48 05 83 2D */	bl __dt__6CTokenFv
lbl_802E8B18:
/* 802E8B18 002E5A78  88 A1 00 18 */	lbz r5, 0x18(r1)
/* 802E8B1C 002E5A7C  38 00 00 00 */	li r0, 0
/* 802E8B20 002E5A80  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 802E8B24 002E5A84  38 6D A7 10 */	addi r3, r13, lbl_805A92D0@sda21
/* 802E8B28 002E5A88  98 AD A7 10 */	stb r5, lbl_805A92D0@sda21(r13)
/* 802E8B2C 002E5A8C  90 83 00 04 */	stw r4, 4(r3)
/* 802E8B30 002E5A90  98 01 00 18 */	stb r0, 0x18(r1)
lbl_802E8B34:
/* 802E8B34 002E5A94  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802E8B38 002E5A98  28 00 00 00 */	cmplwi r0, 0
/* 802E8B3C 002E5A9C  41 82 00 10 */	beq lbl_802E8B4C
/* 802E8B40 002E5AA0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802E8B44 002E5AA4  38 80 00 01 */	li r4, 1
/* 802E8B48 002E5AA8  48 05 82 F9 */	bl __dt__6CTokenFv
lbl_802E8B4C:
/* 802E8B4C 002E5AAC  7F 80 07 75 */	extsb. r0, r28
/* 802E8B50 002E5AB0  41 82 00 10 */	beq lbl_802E8B60
/* 802E8B54 002E5AB4  38 61 00 20 */	addi r3, r1, 0x20
/* 802E8B58 002E5AB8  38 80 FF FF */	li r4, -1
/* 802E8B5C 002E5ABC  48 05 82 E5 */	bl __dt__6CTokenFv
lbl_802E8B60:
/* 802E8B60 002E5AC0  38 6D A7 10 */	addi r3, r13, lbl_805A92D0@sda21
/* 802E8B64 002E5AC4  80 63 00 04 */	lwz r3, 4(r3)
/* 802E8B68 002E5AC8  48 05 82 1D */	bl Lock__6CTokenFv
/* 802E8B6C 002E5ACC  38 60 00 01 */	li r3, 1
lbl_802E8B70:
/* 802E8B70 002E5AD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E8B74 002E5AD4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802E8B78 002E5AD8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802E8B7C 002E5ADC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802E8B80 002E5AE0  83 81 00 30 */	lwz r28, 0x30(r1)
/* 802E8B84 002E5AE4  7C 08 03 A6 */	mtlr r0
/* 802E8B88 002E5AE8  38 21 00 40 */	addi r1, r1, 0x40
/* 802E8B8C 002E5AEC  4E 80 00 20 */	blr

.global sub_802e8b90
sub_802e8b90:
/* 802E8B90 002E5AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E8B94 002E5AF4  7C 08 02 A6 */	mflr r0
/* 802E8B98 002E5AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8B9C 002E5AFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E8BA0 002E5B00  7C 9F 23 78 */	mr r31, r4
/* 802E8BA4 002E5B04  93 C1 00 08 */	stw r30, 8(r1)
/* 802E8BA8 002E5B08  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E8BAC 002E5B0C  41 82 00 2C */	beq lbl_802E8BD8
/* 802E8BB0 002E5B10  88 1E 00 00 */	lbz r0, 0(r30)
/* 802E8BB4 002E5B14  28 00 00 00 */	cmplwi r0, 0
/* 802E8BB8 002E5B18  41 82 00 10 */	beq lbl_802E8BC8
/* 802E8BBC 002E5B1C  80 7E 00 04 */	lwz r3, 4(r30)
/* 802E8BC0 002E5B20  38 80 00 01 */	li r4, 1
/* 802E8BC4 002E5B24  48 05 82 7D */	bl __dt__6CTokenFv
lbl_802E8BC8:
/* 802E8BC8 002E5B28  7F E0 07 35 */	extsh. r0, r31
/* 802E8BCC 002E5B2C  40 81 00 0C */	ble lbl_802E8BD8
/* 802E8BD0 002E5B30  7F C3 F3 78 */	mr r3, r30
/* 802E8BD4 002E5B34  48 02 CD 5D */	bl Free__7CMemoryFPCv
lbl_802E8BD8:
/* 802E8BD8 002E5B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8BDC 002E5B3C  7F C3 F3 78 */	mr r3, r30
/* 802E8BE0 002E5B40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E8BE4 002E5B44  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E8BE8 002E5B48  7C 08 03 A6 */	mtlr r0
/* 802E8BEC 002E5B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8BF0 002E5B50  4E 80 00 20 */	blr

.global GetRank__11CSfxManagerFPQ211CSfxManager15CBaseSfxWrapper
GetRank__11CSfxManagerFPQ211CSfxManager15CBaseSfxWrapper:
/* 802E8BF4 002E5B54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8BF8 002E5B58  7C 08 02 A6 */	mflr r0
/* 802E8BFC 002E5B5C  3C 80 80 5A */	lis r4, lbl_8059FD48@ha
/* 802E8C00 002E5B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E8C04 002E5B64  38 04 FD 48 */	addi r0, r4, lbl_8059FD48@l
/* 802E8C08 002E5B68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E8C0C 002E5B6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E8C10 002E5B70  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E8C14 002E5B74  7C 7D 1B 78 */	mr r29, r3
/* 802E8C18 002E5B78  80 AD A7 00 */	lwz r5, lbl_805A92C0@sda21(r13)
/* 802E8C1C 002E5B7C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E8C20 002E5B80  1C 85 01 6C */	mulli r4, r5, 0x16c
/* 802E8C24 002E5B84  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E8C28 002E5B88  7F E0 22 14 */	add r31, r0, r4
/* 802E8C2C 002E5B8C  7D 89 03 A6 */	mtctr r12
/* 802E8C30 002E5B90  4E 80 04 21 */	bctrl
/* 802E8C34 002E5B94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8C38 002E5B98  40 82 00 0C */	bne lbl_802E8C44
/* 802E8C3C 002E5B9C  38 60 00 00 */	li r3, 0
/* 802E8C40 002E5BA0  48 00 00 D8 */	b lbl_802E8D18
lbl_802E8C44:
/* 802E8C44 002E5BA4  7F A3 EB 78 */	mr r3, r29
/* 802E8C48 002E5BA8  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E8C4C 002E5BAC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802E8C50 002E5BB0  7D 89 03 A6 */	mtctr r12
/* 802E8C54 002E5BB4  4E 80 04 21 */	bctrl
/* 802E8C58 002E5BB8  7C 7E 16 70 */	srawi r30, r3, 2
/* 802E8C5C 002E5BBC  7F A3 EB 78 */	mr r3, r29
/* 802E8C60 002E5BC0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E8C64 002E5BC4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8C68 002E5BC8  7D 89 03 A6 */	mtctr r12
/* 802E8C6C 002E5BCC  4E 80 04 21 */	bctrl
/* 802E8C70 002E5BD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8C74 002E5BD4  41 82 00 08 */	beq lbl_802E8C7C
/* 802E8C78 002E5BD8  3B DE 00 01 */	addi r30, r30, 1
lbl_802E8C7C:
/* 802E8C7C 002E5BDC  7F A3 EB 78 */	mr r3, r29
/* 802E8C80 002E5BE0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E8C84 002E5BE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E8C88 002E5BE8  7D 89 03 A6 */	mtctr r12
/* 802E8C8C 002E5BEC  4E 80 04 21 */	bctrl
/* 802E8C90 002E5BF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8C94 002E5BF4  41 82 00 08 */	beq lbl_802E8C9C
/* 802E8C98 002E5BF8  3B DE FF FE */	addi r30, r30, -2
lbl_802E8C9C:
/* 802E8C9C 002E5BFC  7F A3 EB 78 */	mr r3, r29
/* 802E8CA0 002E5C00  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E8CA4 002E5C04  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802E8CA8 002E5C08  7D 89 03 A6 */	mtctr r12
/* 802E8CAC 002E5C0C  4E 80 04 21 */	bctrl
/* 802E8CB0 002E5C10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8CB4 002E5C14  41 82 00 24 */	beq lbl_802E8CD8
/* 802E8CB8 002E5C18  7F A3 EB 78 */	mr r3, r29
/* 802E8CBC 002E5C1C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E8CC0 002E5C20  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8CC4 002E5C24  7D 89 03 A6 */	mtctr r12
/* 802E8CC8 002E5C28  4E 80 04 21 */	bctrl
/* 802E8CCC 002E5C2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8CD0 002E5C30  40 82 00 08 */	bne lbl_802E8CD8
/* 802E8CD4 002E5C34  3B DE 00 03 */	addi r30, r30, 3
lbl_802E8CD8:
/* 802E8CD8 002E5C38  88 1F 00 44 */	lbz r0, 0x44(r31)
/* 802E8CDC 002E5C3C  28 00 00 00 */	cmplwi r0, 0
/* 802E8CE0 002E5C40  41 82 00 34 */	beq lbl_802E8D14
/* 802E8CE4 002E5C44  7F A3 EB 78 */	mr r3, r29
/* 802E8CE8 002E5C48  7F E4 FB 78 */	mr r4, r31
/* 802E8CEC 002E5C4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E8CF0 002E5C50  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802E8CF4 002E5C54  7D 89 03 A6 */	mtctr r12
/* 802E8CF8 002E5C58  4E 80 04 21 */	bctrl
/* 802E8CFC 002E5C5C  7C 60 07 35 */	extsh. r0, r3
/* 802E8D00 002E5C60  40 82 00 0C */	bne lbl_802E8D0C
/* 802E8D04 002E5C64  3B C0 00 00 */	li r30, 0
/* 802E8D08 002E5C68  48 00 00 0C */	b lbl_802E8D14
lbl_802E8D0C:
/* 802E8D0C 002E5C6C  54 00 08 3C */	slwi r0, r0, 1
/* 802E8D10 002E5C70  7F DE 02 14 */	add r30, r30, r0
lbl_802E8D14:
/* 802E8D14 002E5C74  7F C3 F3 78 */	mr r3, r30
lbl_802E8D18:
/* 802E8D18 002E5C78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E8D1C 002E5C7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E8D20 002E5C80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E8D24 002E5C84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E8D28 002E5C88  7C 08 03 A6 */	mtlr r0
/* 802E8D2C 002E5C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E8D30 002E5C90  4E 80 00 20 */	blr

.global IsHandleValid__11CSfxManagerF10CSfxHandle
IsHandleValid__11CSfxManagerF10CSfxHandle:
/* 802E8D34 002E5C94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8D38 002E5C98  7C 08 02 A6 */	mflr r0
/* 802E8D3C 002E5C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E8D40 002E5CA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E8D44 002E5CA4  7C 7F 1B 78 */	mr r31, r3
/* 802E8D48 002E5CA8  80 8D A7 00 */	lwz r4, lbl_805A92C0@sda21(r13)
/* 802E8D4C 002E5CAC  80 03 00 00 */	lwz r0, 0(r3)
/* 802E8D50 002E5CB0  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E8D54 002E5CB4  1C 84 01 6C */	mulli r4, r4, 0x16c
/* 802E8D58 002E5CB8  54 05 05 3F */	clrlwi. r5, r0, 0x14
/* 802E8D5C 002E5CBC  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E8D60 002E5CC0  7C 60 22 14 */	add r3, r0, r4
/* 802E8D64 002E5CC4  41 80 00 10 */	blt lbl_802E8D74
/* 802E8D68 002E5CC8  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E8D6C 002E5CCC  7C 05 00 00 */	cmpw r5, r0
/* 802E8D70 002E5CD0  41 80 00 0C */	blt lbl_802E8D7C
lbl_802E8D74:
/* 802E8D74 002E5CD4  38 60 00 00 */	li r3, 0
/* 802E8D78 002E5CD8  48 00 00 48 */	b lbl_802E8DC0
lbl_802E8D7C:
/* 802E8D7C 002E5CDC  54 A0 10 3A */	slwi r0, r5, 2
/* 802E8D80 002E5CE0  7C 63 02 14 */	add r3, r3, r0
/* 802E8D84 002E5CE4  80 83 00 4C */	lwz r4, 0x4c(r3)
/* 802E8D88 002E5CE8  28 04 00 00 */	cmplwi r4, 0
/* 802E8D8C 002E5CEC  41 82 00 28 */	beq lbl_802E8DB4
/* 802E8D90 002E5CF0  81 84 00 00 */	lwz r12, 0(r4)
/* 802E8D94 002E5CF4  38 61 00 08 */	addi r3, r1, 8
/* 802E8D98 002E5CF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E8D9C 002E5CFC  7D 89 03 A6 */	mtctr r12
/* 802E8DA0 002E5D00  4E 80 04 21 */	bctrl
/* 802E8DA4 002E5D04  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E8DA8 002E5D08  80 01 00 08 */	lwz r0, 8(r1)
/* 802E8DAC 002E5D0C  7C 03 00 40 */	cmplw r3, r0
/* 802E8DB0 002E5D10  41 82 00 0C */	beq lbl_802E8DBC
lbl_802E8DB4:
/* 802E8DB4 002E5D14  38 60 00 00 */	li r3, 0
/* 802E8DB8 002E5D18  48 00 00 08 */	b lbl_802E8DC0
lbl_802E8DBC:
/* 802E8DBC 002E5D1C  38 60 00 01 */	li r3, 1
lbl_802E8DC0:
/* 802E8DC0 002E5D20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E8DC4 002E5D24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E8DC8 002E5D28  7C 08 03 A6 */	mtlr r0
/* 802E8DCC 002E5D2C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E8DD0 002E5D30  4E 80 00 20 */	blr

.global IsPlaying__11CSfxManagerF10CSfxHandle
IsPlaying__11CSfxManagerF10CSfxHandle:
/* 802E8DD4 002E5D34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8DD8 002E5D38  7C 08 02 A6 */	mflr r0
/* 802E8DDC 002E5D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E8DE0 002E5D40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E8DE4 002E5D44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E8DE8 002E5D48  7C 7E 1B 78 */	mr r30, r3
/* 802E8DEC 002E5D4C  80 8D A7 00 */	lwz r4, lbl_805A92C0@sda21(r13)
/* 802E8DF0 002E5D50  80 03 00 00 */	lwz r0, 0(r3)
/* 802E8DF4 002E5D54  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E8DF8 002E5D58  1C 84 01 6C */	mulli r4, r4, 0x16c
/* 802E8DFC 002E5D5C  54 05 05 3F */	clrlwi. r5, r0, 0x14
/* 802E8E00 002E5D60  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E8E04 002E5D64  7C 60 22 14 */	add r3, r0, r4
/* 802E8E08 002E5D68  41 80 00 10 */	blt lbl_802E8E18
/* 802E8E0C 002E5D6C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E8E10 002E5D70  7C 05 00 00 */	cmpw r5, r0
/* 802E8E14 002E5D74  41 80 00 0C */	blt lbl_802E8E20
lbl_802E8E18:
/* 802E8E18 002E5D78  38 60 00 00 */	li r3, 0
/* 802E8E1C 002E5D7C  48 00 00 78 */	b lbl_802E8E94
lbl_802E8E20:
/* 802E8E20 002E5D80  54 A0 10 3A */	slwi r0, r5, 2
/* 802E8E24 002E5D84  7C 63 02 14 */	add r3, r3, r0
/* 802E8E28 002E5D88  83 E3 00 4C */	lwz r31, 0x4c(r3)
/* 802E8E2C 002E5D8C  28 1F 00 00 */	cmplwi r31, 0
/* 802E8E30 002E5D90  41 82 00 48 */	beq lbl_802E8E78
/* 802E8E34 002E5D94  7F E4 FB 78 */	mr r4, r31
/* 802E8E38 002E5D98  38 61 00 08 */	addi r3, r1, 8
/* 802E8E3C 002E5D9C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8E40 002E5DA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E8E44 002E5DA4  7D 89 03 A6 */	mtctr r12
/* 802E8E48 002E5DA8  4E 80 04 21 */	bctrl
/* 802E8E4C 002E5DAC  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E8E50 002E5DB0  80 01 00 08 */	lwz r0, 8(r1)
/* 802E8E54 002E5DB4  7C 03 00 40 */	cmplw r3, r0
/* 802E8E58 002E5DB8  40 82 00 20 */	bne lbl_802E8E78
/* 802E8E5C 002E5DBC  7F E3 FB 78 */	mr r3, r31
/* 802E8E60 002E5DC0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8E64 002E5DC4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8E68 002E5DC8  7D 89 03 A6 */	mtctr r12
/* 802E8E6C 002E5DCC  4E 80 04 21 */	bctrl
/* 802E8E70 002E5DD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8E74 002E5DD4  40 82 00 0C */	bne lbl_802E8E80
lbl_802E8E78:
/* 802E8E78 002E5DD8  38 60 00 00 */	li r3, 0
/* 802E8E7C 002E5DDC  48 00 00 18 */	b lbl_802E8E94
lbl_802E8E80:
/* 802E8E80 002E5DE0  7F E3 FB 78 */	mr r3, r31
/* 802E8E84 002E5DE4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8E88 002E5DE8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8E8C 002E5DEC  7D 89 03 A6 */	mtctr r12
/* 802E8E90 002E5DF0  4E 80 04 21 */	bctrl
lbl_802E8E94:
/* 802E8E94 002E5DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E8E98 002E5DF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E8E9C 002E5DFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E8EA0 002E5E00  7C 08 03 A6 */	mtlr r0
/* 802E8EA4 002E5E04  38 21 00 20 */	addi r1, r1, 0x20
/* 802E8EA8 002E5E08  4E 80 00 20 */	blr

.global PitchBend__11CSfxManagerF10CSfxHandlei
PitchBend__11CSfxManagerF10CSfxHandlei:
/* 802E8EAC 002E5E0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E8EB0 002E5E10  7C 08 02 A6 */	mflr r0
/* 802E8EB4 002E5E14  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E8EB8 002E5E18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E8EBC 002E5E1C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E8EC0 002E5E20  7C 9E 23 78 */	mr r30, r4
/* 802E8EC4 002E5E24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E8EC8 002E5E28  7C 7D 1B 78 */	mr r29, r3
/* 802E8ECC 002E5E2C  80 AD A7 00 */	lwz r5, lbl_805A92C0@sda21(r13)
/* 802E8ED0 002E5E30  80 03 00 00 */	lwz r0, 0(r3)
/* 802E8ED4 002E5E34  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E8ED8 002E5E38  1C A5 01 6C */	mulli r5, r5, 0x16c
/* 802E8EDC 002E5E3C  38 63 FD 48 */	addi r3, r3, lbl_8059FD48@l
/* 802E8EE0 002E5E40  54 00 14 BA */	rlwinm r0, r0, 2, 0x12, 0x1d
/* 802E8EE4 002E5E44  7C 63 2A 14 */	add r3, r3, r5
/* 802E8EE8 002E5E48  7C 63 02 14 */	add r3, r3, r0
/* 802E8EEC 002E5E4C  83 E3 00 4C */	lwz r31, 0x4c(r3)
/* 802E8EF0 002E5E50  28 1F 00 00 */	cmplwi r31, 0
/* 802E8EF4 002E5E54  41 82 00 94 */	beq lbl_802E8F88
/* 802E8EF8 002E5E58  7F E4 FB 78 */	mr r4, r31
/* 802E8EFC 002E5E5C  38 61 00 08 */	addi r3, r1, 8
/* 802E8F00 002E5E60  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8F04 002E5E64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E8F08 002E5E68  7D 89 03 A6 */	mtctr r12
/* 802E8F0C 002E5E6C  4E 80 04 21 */	bctrl
/* 802E8F10 002E5E70  80 7D 00 00 */	lwz r3, 0(r29)
/* 802E8F14 002E5E74  80 01 00 08 */	lwz r0, 8(r1)
/* 802E8F18 002E5E78  7C 03 00 40 */	cmplw r3, r0
/* 802E8F1C 002E5E7C  41 82 00 08 */	beq lbl_802E8F24
/* 802E8F20 002E5E80  48 00 00 68 */	b lbl_802E8F88
lbl_802E8F24:
/* 802E8F24 002E5E84  7F E3 FB 78 */	mr r3, r31
/* 802E8F28 002E5E88  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8F2C 002E5E8C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8F30 002E5E90  7D 89 03 A6 */	mtctr r12
/* 802E8F34 002E5E94  4E 80 04 21 */	bctrl
/* 802E8F38 002E5E98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8F3C 002E5E9C  40 82 00 0C */	bne lbl_802E8F48
/* 802E8F40 002E5EA0  C0 22 C6 04 */	lfs f1, lbl_805AE324@sda21(r2)
/* 802E8F44 002E5EA4  48 00 00 61 */	bl Update__11CSfxManagerFf
lbl_802E8F48:
/* 802E8F48 002E5EA8  7F E3 FB 78 */	mr r3, r31
/* 802E8F4C 002E5EAC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8F50 002E5EB0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E8F54 002E5EB4  7D 89 03 A6 */	mtctr r12
/* 802E8F58 002E5EB8  4E 80 04 21 */	bctrl
/* 802E8F5C 002E5EBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E8F60 002E5EC0  41 82 00 28 */	beq lbl_802E8F88
/* 802E8F64 002E5EC4  38 00 00 01 */	li r0, 1
/* 802E8F68 002E5EC8  7F E3 FB 78 */	mr r3, r31
/* 802E8F6C 002E5ECC  98 0D A7 04 */	stb r0, lbl_805A92C4@sda21(r13)
/* 802E8F70 002E5ED0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E8F74 002E5ED4  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 802E8F78 002E5ED8  7D 89 03 A6 */	mtctr r12
/* 802E8F7C 002E5EDC  4E 80 04 21 */	bctrl
/* 802E8F80 002E5EE0  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 802E8F84 002E5EE4  48 06 25 BD */	bl SfxPitchBend__9CAudioSysFUlUs
lbl_802E8F88:
/* 802E8F88 002E5EE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E8F8C 002E5EEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E8F90 002E5EF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E8F94 002E5EF4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E8F98 002E5EF8  7C 08 03 A6 */	mtlr r0
/* 802E8F9C 002E5EFC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E8FA0 002E5F00  4E 80 00 20 */	blr

.global Update__11CSfxManagerFf
Update__11CSfxManagerFf:
/* 802E8FA4 002E5F04  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 802E8FA8 002E5F08  7C 08 02 A6 */	mflr r0
/* 802E8FAC 002E5F0C  90 01 01 04 */	stw r0, 0x104(r1)
/* 802E8FB0 002E5F10  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 802E8FB4 002E5F14  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 802E8FB8 002E5F18  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 802E8FBC 002E5F1C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 802E8FC0 002E5F20  BE A1 00 B4 */	stmw r21, 0xb4(r1)
/* 802E8FC4 002E5F24  80 8D A7 00 */	lwz r4, lbl_805A92C0@sda21(r13)
/* 802E8FC8 002E5F28  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E8FCC 002E5F2C  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E8FD0 002E5F30  FF C0 08 90 */	fmr f30, f1
/* 802E8FD4 002E5F34  1C 64 01 6C */	mulli r3, r4, 0x16c
/* 802E8FD8 002E5F38  3B 80 00 00 */	li r28, 0
/* 802E8FDC 002E5F3C  3A E0 00 00 */	li r23, 0
/* 802E8FE0 002E5F40  7F 60 1A 14 */	add r27, r0, r3
/* 802E8FE4 002E5F44  3B BB 00 4C */	addi r29, r27, 0x4c
/* 802E8FE8 002E5F48  7F BA EB 78 */	mr r26, r29
/* 802E8FEC 002E5F4C  48 00 00 70 */	b lbl_802E905C
lbl_802E8FF0:
/* 802E8FF0 002E5F50  80 7A 00 00 */	lwz r3, 0(r26)
/* 802E8FF4 002E5F54  28 03 00 00 */	cmplwi r3, 0
/* 802E8FF8 002E5F58  41 82 00 5C */	beq lbl_802E9054
/* 802E8FFC 002E5F5C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9000 002E5F60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E9004 002E5F64  7D 89 03 A6 */	mtctr r12
/* 802E9008 002E5F68  4E 80 04 21 */	bctrl
/* 802E900C 002E5F6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9010 002E5F70  40 82 00 44 */	bne lbl_802E9054
/* 802E9014 002E5F74  80 7A 00 00 */	lwz r3, 0(r26)
/* 802E9018 002E5F78  48 00 1F A5 */	bl GetTimeRemaining__Q211CSfxManager15CBaseSfxWrapperFv
/* 802E901C 002E5F7C  FF E0 08 90 */	fmr f31, f1
/* 802E9020 002E5F80  80 7A 00 00 */	lwz r3, 0(r26)
/* 802E9024 002E5F84  EC 3F F0 28 */	fsubs f1, f31, f30
/* 802E9028 002E5F88  48 00 1F 8D */	bl SetTimeRemaining__Q211CSfxManager15CBaseSfxWrapperFf
/* 802E902C 002E5F8C  C0 02 C6 04 */	lfs f0, lbl_805AE324@sda21(r2)
/* 802E9030 002E5F90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802E9034 002E5F94  40 80 00 20 */	bge lbl_802E9054
/* 802E9038 002E5F98  80 7A 00 00 */	lwz r3, 0(r26)
/* 802E903C 002E5F9C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9040 002E5FA0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802E9044 002E5FA4  7D 89 03 A6 */	mtctr r12
/* 802E9048 002E5FA8  4E 80 04 21 */	bctrl
/* 802E904C 002E5FAC  38 00 00 01 */	li r0, 1
/* 802E9050 002E5FB0  98 0D A7 04 */	stb r0, lbl_805A92C4@sda21(r13)
lbl_802E9054:
/* 802E9054 002E5FB4  3B 5A 00 04 */	addi r26, r26, 4
/* 802E9058 002E5FB8  3A F7 00 01 */	addi r23, r23, 1
lbl_802E905C:
/* 802E905C 002E5FBC  80 1B 00 48 */	lwz r0, 0x48(r27)
/* 802E9060 002E5FC0  7E E3 07 34 */	extsh r3, r23
/* 802E9064 002E5FC4  7C 03 00 00 */	cmpw r3, r0
/* 802E9068 002E5FC8  41 80 FF 88 */	blt lbl_802E8FF0
/* 802E906C 002E5FCC  88 0D A7 04 */	lbz r0, lbl_805A92C4@sda21(r13)
/* 802E9070 002E5FD0  28 00 00 00 */	cmplwi r0, 0
/* 802E9074 002E5FD4  41 82 01 F4 */	beq lbl_802E9268
/* 802E9078 002E5FD8  7F BE EB 78 */	mr r30, r29
/* 802E907C 002E5FDC  3B 41 00 20 */	addi r26, r1, 0x20
/* 802E9080 002E5FE0  3A E0 00 00 */	li r23, 0
/* 802E9084 002E5FE4  48 00 00 40 */	b lbl_802E90C4
lbl_802E9088:
/* 802E9088 002E5FE8  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E908C 002E5FEC  28 03 00 00 */	cmplwi r3, 0
/* 802E9090 002E5FF0  41 82 00 2C */	beq lbl_802E90BC
/* 802E9094 002E5FF4  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 802E9098 002E5FF8  3B 9C 00 01 */	addi r28, r28, 1
/* 802E909C 002E5FFC  7E FA 03 2E */	sthx r23, r26, r0
/* 802E90A0 002E6000  4B FF FB 55 */	bl GetRank__11CSfxManagerFPQ211CSfxManager15CBaseSfxWrapper
/* 802E90A4 002E6004  7C 64 07 34 */	extsh r4, r3
/* 802E90A8 002E6008  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E90AC 002E600C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E90B0 002E6010  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802E90B4 002E6014  7D 89 03 A6 */	mtctr r12
/* 802E90B8 002E6018  4E 80 04 21 */	bctrl
lbl_802E90BC:
/* 802E90BC 002E601C  3B DE 00 04 */	addi r30, r30, 4
/* 802E90C0 002E6020  3A F7 00 01 */	addi r23, r23, 1
lbl_802E90C4:
/* 802E90C4 002E6024  80 1B 00 48 */	lwz r0, 0x48(r27)
/* 802E90C8 002E6028  7E E3 07 34 */	extsh r3, r23
/* 802E90CC 002E602C  7C 03 00 00 */	cmpw r3, r0
/* 802E90D0 002E6030  41 80 FF B8 */	blt lbl_802E9088
/* 802E90D4 002E6034  57 9E 04 3E */	clrlwi r30, r28, 0x10
/* 802E90D8 002E6038  3A E0 00 00 */	li r23, 0
/* 802E90DC 002E603C  3B 1E FF FF */	addi r24, r30, -1
/* 802E90E0 002E6040  48 00 00 88 */	b lbl_802E9168
lbl_802E90E4:
/* 802E90E4 002E6044  3B 21 00 20 */	addi r25, r1, 0x20
/* 802E90E8 002E6048  3A C0 00 01 */	li r22, 1
/* 802E90EC 002E604C  3A A0 00 00 */	li r21, 0
/* 802E90F0 002E6050  48 00 00 64 */	b lbl_802E9154
lbl_802E90F4:
/* 802E90F4 002E6054  A0 19 00 02 */	lhz r0, 2(r25)
/* 802E90F8 002E6058  A0 99 00 00 */	lhz r4, 0(r25)
/* 802E90FC 002E605C  54 00 10 3A */	slwi r0, r0, 2
/* 802E9100 002E6060  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E9104 002E6064  54 9F 10 3A */	slwi r31, r4, 2
/* 802E9108 002E6068  81 83 00 00 */	lwz r12, 0(r3)
/* 802E910C 002E606C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802E9110 002E6070  7D 89 03 A6 */	mtctr r12
/* 802E9114 002E6074  4E 80 04 21 */	bctrl
/* 802E9118 002E6078  7C 7A 1B 78 */	mr r26, r3
/* 802E911C 002E607C  7C 7D F8 2E */	lwzx r3, r29, r31
/* 802E9120 002E6080  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9124 002E6084  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802E9128 002E6088  7D 89 03 A6 */	mtctr r12
/* 802E912C 002E608C  4E 80 04 21 */	bctrl
/* 802E9130 002E6090  7C 03 D0 00 */	cmpw r3, r26
/* 802E9134 002E6094  40 80 00 18 */	bge lbl_802E914C
/* 802E9138 002E6098  A0 79 00 00 */	lhz r3, 0(r25)
/* 802E913C 002E609C  3A C0 00 00 */	li r22, 0
/* 802E9140 002E60A0  A0 19 00 02 */	lhz r0, 2(r25)
/* 802E9144 002E60A4  B0 19 00 00 */	sth r0, 0(r25)
/* 802E9148 002E60A8  B0 79 00 02 */	sth r3, 2(r25)
lbl_802E914C:
/* 802E914C 002E60AC  3B 39 00 02 */	addi r25, r25, 2
/* 802E9150 002E60B0  3A B5 00 01 */	addi r21, r21, 1
lbl_802E9154:
/* 802E9154 002E60B4  7C 15 C0 00 */	cmpw r21, r24
/* 802E9158 002E60B8  41 80 FF 9C */	blt lbl_802E90F4
/* 802E915C 002E60BC  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 802E9160 002E60C0  40 82 00 14 */	bne lbl_802E9174
/* 802E9164 002E60C4  3A F7 00 01 */	addi r23, r23, 1
lbl_802E9168:
/* 802E9168 002E60C8  7E E0 07 34 */	extsh r0, r23
/* 802E916C 002E60CC  7C 00 F0 00 */	cmpw r0, r30
/* 802E9170 002E60D0  41 80 FF 74 */	blt lbl_802E90E4
lbl_802E9174:
/* 802E9174 002E60D4  3B 01 00 80 */	addi r24, r1, 0x80
/* 802E9178 002E60D8  3B 20 00 30 */	li r25, 0x30
/* 802E917C 002E60DC  48 00 00 54 */	b lbl_802E91D0
lbl_802E9180:
/* 802E9180 002E60E0  A0 18 00 00 */	lhz r0, 0(r24)
/* 802E9184 002E60E4  54 00 10 3A */	slwi r0, r0, 2
/* 802E9188 002E60E8  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E918C 002E60EC  28 03 00 00 */	cmplwi r3, 0
/* 802E9190 002E60F0  41 82 00 38 */	beq lbl_802E91C8
/* 802E9194 002E60F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9198 002E60F8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E919C 002E60FC  7D 89 03 A6 */	mtctr r12
/* 802E91A0 002E6100  4E 80 04 21 */	bctrl
/* 802E91A4 002E6104  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E91A8 002E6108  41 82 00 20 */	beq lbl_802E91C8
/* 802E91AC 002E610C  A0 18 00 00 */	lhz r0, 0(r24)
/* 802E91B0 002E6110  54 00 10 3A */	slwi r0, r0, 2
/* 802E91B4 002E6114  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E91B8 002E6118  81 83 00 00 */	lwz r12, 0(r3)
/* 802E91BC 002E611C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802E91C0 002E6120  7D 89 03 A6 */	mtctr r12
/* 802E91C4 002E6124  4E 80 04 21 */	bctrl
lbl_802E91C8:
/* 802E91C8 002E6128  3B 18 00 02 */	addi r24, r24, 2
/* 802E91CC 002E612C  3B 39 00 01 */	addi r25, r25, 1
lbl_802E91D0:
/* 802E91D0 002E6130  7F 20 07 34 */	extsh r0, r25
/* 802E91D4 002E6134  7C 00 F0 00 */	cmpw r0, r30
/* 802E91D8 002E6138  41 80 FF A8 */	blt lbl_802E9180
/* 802E91DC 002E613C  3B 01 00 20 */	addi r24, r1, 0x20
/* 802E91E0 002E6140  3B 20 00 00 */	li r25, 0
/* 802E91E4 002E6144  48 00 00 78 */	b lbl_802E925C
lbl_802E91E8:
/* 802E91E8 002E6148  A0 18 00 00 */	lhz r0, 0(r24)
/* 802E91EC 002E614C  54 00 10 3A */	slwi r0, r0, 2
/* 802E91F0 002E6150  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E91F4 002E6154  28 03 00 00 */	cmplwi r3, 0
/* 802E91F8 002E6158  41 82 00 5C */	beq lbl_802E9254
/* 802E91FC 002E615C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9200 002E6160  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E9204 002E6164  7D 89 03 A6 */	mtctr r12
/* 802E9208 002E6168  4E 80 04 21 */	bctrl
/* 802E920C 002E616C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9210 002E6170  41 82 00 44 */	beq lbl_802E9254
/* 802E9214 002E6174  A0 18 00 00 */	lhz r0, 0(r24)
/* 802E9218 002E6178  54 00 10 3A */	slwi r0, r0, 2
/* 802E921C 002E617C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E9220 002E6180  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9224 002E6184  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E9228 002E6188  7D 89 03 A6 */	mtctr r12
/* 802E922C 002E618C  4E 80 04 21 */	bctrl
/* 802E9230 002E6190  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9234 002E6194  40 82 00 20 */	bne lbl_802E9254
/* 802E9238 002E6198  A0 18 00 00 */	lhz r0, 0(r24)
/* 802E923C 002E619C  54 00 10 3A */	slwi r0, r0, 2
/* 802E9240 002E61A0  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E9244 002E61A4  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9248 002E61A8  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802E924C 002E61AC  7D 89 03 A6 */	mtctr r12
/* 802E9250 002E61B0  4E 80 04 21 */	bctrl
lbl_802E9254:
/* 802E9254 002E61B4  3B 18 00 02 */	addi r24, r24, 2
/* 802E9258 002E61B8  3B 39 00 01 */	addi r25, r25, 1
lbl_802E925C:
/* 802E925C 002E61BC  7F 20 07 34 */	extsh r0, r25
/* 802E9260 002E61C0  7C 00 F0 00 */	cmpw r0, r30
/* 802E9264 002E61C4  41 80 FF 84 */	blt lbl_802E91E8
lbl_802E9268:
/* 802E9268 002E61C8  48 06 18 65 */	bl S3dFlushUnusedEmitters__9CAudioSysFv
/* 802E926C 002E61CC  88 0D A7 04 */	lbz r0, lbl_805A92C4@sda21(r13)
/* 802E9270 002E61D0  28 00 00 00 */	cmplwi r0, 0
/* 802E9274 002E61D4  41 82 00 D4 */	beq lbl_802E9348
/* 802E9278 002E61D8  3B E1 00 20 */	addi r31, r1, 0x20
/* 802E927C 002E61DC  57 9E 04 3E */	clrlwi r30, r28, 0x10
/* 802E9280 002E61E0  3B 80 00 30 */	li r28, 0x30
/* 802E9284 002E61E4  3B 40 00 00 */	li r26, 0
/* 802E9288 002E61E8  48 00 00 A8 */	b lbl_802E9330
lbl_802E928C:
/* 802E928C 002E61EC  A0 1F 00 00 */	lhz r0, 0(r31)
/* 802E9290 002E61F0  54 00 10 3A */	slwi r0, r0, 2
/* 802E9294 002E61F4  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E9298 002E61F8  28 03 00 00 */	cmplwi r3, 0
/* 802E929C 002E61FC  41 82 00 8C */	beq lbl_802E9328
/* 802E92A0 002E6200  81 83 00 00 */	lwz r12, 0(r3)
/* 802E92A4 002E6204  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E92A8 002E6208  7D 89 03 A6 */	mtctr r12
/* 802E92AC 002E620C  4E 80 04 21 */	bctrl
/* 802E92B0 002E6210  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E92B4 002E6214  41 82 00 0C */	beq lbl_802E92C0
/* 802E92B8 002E6218  3B 9C FF FF */	addi r28, r28, -1
/* 802E92BC 002E621C  48 00 00 6C */	b lbl_802E9328
lbl_802E92C0:
/* 802E92C0 002E6220  A0 1F 00 00 */	lhz r0, 0(r31)
/* 802E92C4 002E6224  54 00 10 3A */	slwi r0, r0, 2
/* 802E92C8 002E6228  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E92CC 002E622C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E92D0 002E6230  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 802E92D4 002E6234  7D 89 03 A6 */	mtctr r12
/* 802E92D8 002E6238  4E 80 04 21 */	bctrl
/* 802E92DC 002E623C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E92E0 002E6240  41 82 00 48 */	beq lbl_802E9328
/* 802E92E4 002E6244  A0 1F 00 00 */	lhz r0, 0(r31)
/* 802E92E8 002E6248  54 00 10 3A */	slwi r0, r0, 2
/* 802E92EC 002E624C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E92F0 002E6250  81 83 00 00 */	lwz r12, 0(r3)
/* 802E92F4 002E6254  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802E92F8 002E6258  7D 89 03 A6 */	mtctr r12
/* 802E92FC 002E625C  4E 80 04 21 */	bctrl
/* 802E9300 002E6260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9304 002E6264  41 82 00 24 */	beq lbl_802E9328
/* 802E9308 002E6268  A0 1F 00 00 */	lhz r0, 0(r31)
/* 802E930C 002E626C  54 00 10 3A */	slwi r0, r0, 2
/* 802E9310 002E6270  7C 7D 00 2E */	lwzx r3, r29, r0
/* 802E9314 002E6274  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9318 002E6278  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802E931C 002E627C  7D 89 03 A6 */	mtctr r12
/* 802E9320 002E6280  4E 80 04 21 */	bctrl
/* 802E9324 002E6284  3B 9C FF FF */	addi r28, r28, -1
lbl_802E9328:
/* 802E9328 002E6288  3B FF 00 02 */	addi r31, r31, 2
/* 802E932C 002E628C  3B 5A 00 01 */	addi r26, r26, 1
lbl_802E9330:
/* 802E9330 002E6290  7C 1A F0 00 */	cmpw r26, r30
/* 802E9334 002E6294  40 80 00 0C */	bge lbl_802E9340
/* 802E9338 002E6298  2C 1C 00 00 */	cmpwi r28, 0
/* 802E933C 002E629C  40 82 FF 50 */	bne lbl_802E928C
lbl_802E9340:
/* 802E9340 002E62A0  38 00 00 00 */	li r0, 0
/* 802E9344 002E62A4  98 0D A7 04 */	stb r0, lbl_805A92C4@sda21(r13)
lbl_802E9348:
/* 802E9348 002E62A8  3A A0 00 00 */	li r21, 0
/* 802E934C 002E62AC  48 00 00 64 */	b lbl_802E93B0
lbl_802E9350:
/* 802E9350 002E62B0  80 7D 00 00 */	lwz r3, 0(r29)
/* 802E9354 002E62B4  28 03 00 00 */	cmplwi r3, 0
/* 802E9358 002E62B8  41 82 00 50 */	beq lbl_802E93A8
/* 802E935C 002E62BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9360 002E62C0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E9364 002E62C4  7D 89 03 A6 */	mtctr r12
/* 802E9368 002E62C8  4E 80 04 21 */	bctrl
/* 802E936C 002E62CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9370 002E62D0  40 82 00 38 */	bne lbl_802E93A8
/* 802E9374 002E62D4  80 7D 00 00 */	lwz r3, 0(r29)
/* 802E9378 002E62D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802E937C 002E62DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E9380 002E62E0  7D 89 03 A6 */	mtctr r12
/* 802E9384 002E62E4  4E 80 04 21 */	bctrl
/* 802E9388 002E62E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E938C 002E62EC  40 82 00 1C */	bne lbl_802E93A8
/* 802E9390 002E62F0  80 7D 00 00 */	lwz r3, 0(r29)
/* 802E9394 002E62F4  48 00 1C 31 */	bl Release__Q211CSfxManager15CBaseSfxWrapperFv
/* 802E9398 002E62F8  38 60 00 00 */	li r3, 0
/* 802E939C 002E62FC  38 00 00 01 */	li r0, 1
/* 802E93A0 002E6300  90 7D 00 00 */	stw r3, 0(r29)
/* 802E93A4 002E6304  98 0D A7 04 */	stb r0, lbl_805A92C4@sda21(r13)
lbl_802E93A8:
/* 802E93A8 002E6308  3B BD 00 04 */	addi r29, r29, 4
/* 802E93AC 002E630C  3A B5 00 01 */	addi r21, r21, 1
lbl_802E93B0:
/* 802E93B0 002E6310  80 1B 00 48 */	lwz r0, 0x48(r27)
/* 802E93B4 002E6314  7C 15 00 00 */	cmpw r21, r0
/* 802E93B8 002E6318  41 80 FF 98 */	blt lbl_802E9350
/* 802E93BC 002E631C  88 0D A7 18 */	lbz r0, lbl_805A92D8@sda21(r13)
/* 802E93C0 002E6320  28 00 00 00 */	cmplwi r0, 0
/* 802E93C4 002E6324  41 82 00 4C */	beq lbl_802E9410
/* 802E93C8 002E6328  C0 4D 9B A8 */	lfs f2, lbl_805A8768@sda21(r13)
/* 802E93CC 002E632C  C0 02 C6 0C */	lfs f0, lbl_805AE32C@sda21(r2)
/* 802E93D0 002E6330  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802E93D4 002E6334  40 80 00 3C */	bge lbl_802E9410
/* 802E93D8 002E6338  C0 2D 9B AC */	lfs f1, lbl_805A876C@sda21(r13)
/* 802E93DC 002E633C  C0 0D 9B B8 */	lfs f0, lbl_805A8778@sda21(r13)
/* 802E93E0 002E6340  EC 3E 08 24 */	fdivs f1, f30, f1
/* 802E93E4 002E6344  EC 22 08 2A */	fadds f1, f2, f1
/* 802E93E8 002E6348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E93EC 002E634C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802E93F0 002E6350  40 80 00 0C */	bge lbl_802E93FC
/* 802E93F4 002E6354  38 61 00 0C */	addi r3, r1, 0xc
/* 802E93F8 002E6358  48 00 00 08 */	b lbl_802E9400
lbl_802E93FC:
/* 802E93FC 002E635C  38 6D 9B B8 */	addi r3, r13, lbl_805A8778@sda21
lbl_802E9400:
/* 802E9400 002E6360  C0 03 00 00 */	lfs f0, 0(r3)
/* 802E9404 002E6364  D0 0D 9B A8 */	stfs f0, lbl_805A8768@sda21(r13)
/* 802E9408 002E6368  4B FF EF 71 */	bl ApplyReverb__11CSfxManagerFv
/* 802E940C 002E636C  48 00 00 70 */	b lbl_802E947C
lbl_802E9410:
/* 802E9410 002E6370  28 00 00 00 */	cmplwi r0, 0
/* 802E9414 002E6374  40 82 00 68 */	bne lbl_802E947C
/* 802E9418 002E6378  C0 6D 9B A8 */	lfs f3, lbl_805A8768@sda21(r13)
/* 802E941C 002E637C  C0 02 C6 04 */	lfs f0, lbl_805AE324@sda21(r2)
/* 802E9420 002E6380  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 802E9424 002E6384  40 81 00 58 */	ble lbl_802E947C
/* 802E9428 002E6388  C0 42 C6 10 */	lfs f2, lbl_805AE330@sda21(r2)
/* 802E942C 002E638C  C0 2D 9B AC */	lfs f1, lbl_805A876C@sda21(r13)
/* 802E9430 002E6390  C0 0D 9B BC */	lfs f0, lbl_805A877C@sda21(r13)
/* 802E9434 002E6394  EC 22 00 72 */	fmuls f1, f2, f1
/* 802E9438 002E6398  EC 3E 08 24 */	fdivs f1, f30, f1
/* 802E943C 002E639C  EC 23 08 28 */	fsubs f1, f3, f1
/* 802E9440 002E63A0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802E9444 002E63A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 802E9448 002E63A8  40 80 00 0C */	bge lbl_802E9454
/* 802E944C 002E63AC  38 61 00 08 */	addi r3, r1, 8
/* 802E9450 002E63B0  48 00 00 08 */	b lbl_802E9458
lbl_802E9454:
/* 802E9454 002E63B4  38 6D 9B BC */	addi r3, r13, lbl_805A877C@sda21
lbl_802E9458:
/* 802E9458 002E63B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 802E945C 002E63BC  D0 0D 9B A8 */	stfs f0, lbl_805A8768@sda21(r13)
/* 802E9460 002E63C0  4B FF EF 19 */	bl ApplyReverb__11CSfxManagerFv
/* 802E9464 002E63C4  C0 22 C6 04 */	lfs f1, lbl_805AE324@sda21(r2)
/* 802E9468 002E63C8  C0 0D 9B A8 */	lfs f0, lbl_805A8768@sda21(r13)
/* 802E946C 002E63CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802E9470 002E63D0  40 82 00 0C */	bne lbl_802E947C
/* 802E9474 002E63D4  4B FF E7 FD */	bl DisableAuxCallback__11CSfxManagerFv
/* 802E9478 002E63D8  4B FF E8 B1 */	bl EnableAuxCallback__11CSfxManagerFv
lbl_802E947C:
/* 802E947C 002E63DC  3B AD A7 10 */	addi r29, r13, lbl_805A92D0@sda21
/* 802E9480 002E63E0  80 9D 00 04 */	lwz r4, 4(r29)
/* 802E9484 002E63E4  28 04 00 00 */	cmplwi r4, 0
/* 802E9488 002E63E8  41 82 01 B4 */	beq lbl_802E963C
/* 802E948C 002E63EC  88 04 00 04 */	lbz r0, 4(r4)
/* 802E9490 002E63F0  28 00 00 00 */	cmplwi r0, 0
/* 802E9494 002E63F4  41 82 01 A8 */	beq lbl_802E963C
/* 802E9498 002E63F8  80 64 00 00 */	lwz r3, 0(r4)
/* 802E949C 002E63FC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802E94A0 002E6400  28 00 00 00 */	cmplwi r0, 0
/* 802E94A4 002E6404  41 82 01 98 */	beq lbl_802E963C
/* 802E94A8 002E6408  80 0D A7 08 */	lwz r0, lbl_805A92C8@sda21(r13)
/* 802E94AC 002E640C  28 00 00 00 */	cmplwi r0, 0
/* 802E94B0 002E6410  40 82 01 28 */	bne lbl_802E95D8
/* 802E94B4 002E6414  38 61 00 18 */	addi r3, r1, 0x18
/* 802E94B8 002E6418  48 05 79 F1 */	bl __ct__6CTokenFRC6CToken
/* 802E94BC 002E641C  3C 80 80 3D */	lis r4, lbl_803D6DC8@ha
/* 802E94C0 002E6420  38 60 00 10 */	li r3, 0x10
/* 802E94C4 002E6424  38 84 6D C8 */	addi r4, r4, lbl_803D6DC8@l
/* 802E94C8 002E6428  38 A0 00 00 */	li r5, 0
/* 802E94CC 002E642C  48 02 C3 A1 */	bl __nw__FUlPCcPCc
/* 802E94D0 002E6430  7C 7A 1B 79 */	or. r26, r3, r3
/* 802E94D4 002E6434  41 82 00 A4 */	beq lbl_802E9578
/* 802E94D8 002E6438  38 61 00 18 */	addi r3, r1, 0x18
/* 802E94DC 002E643C  48 05 79 31 */	bl GetObj__6CTokenFv
/* 802E94E0 002E6440  83 63 00 04 */	lwz r27, 4(r3)
/* 802E94E4 002E6444  80 1B 00 04 */	lwz r0, 4(r27)
/* 802E94E8 002E6448  90 1A 00 04 */	stw r0, 4(r26)
/* 802E94EC 002E644C  80 1B 00 08 */	lwz r0, 8(r27)
/* 802E94F0 002E6450  90 1A 00 08 */	stw r0, 8(r26)
/* 802E94F4 002E6454  80 1B 00 04 */	lwz r0, 4(r27)
/* 802E94F8 002E6458  2C 00 00 00 */	cmpwi r0, 0
/* 802E94FC 002E645C  40 82 00 1C */	bne lbl_802E9518
/* 802E9500 002E6460  80 1B 00 08 */	lwz r0, 8(r27)
/* 802E9504 002E6464  2C 00 00 00 */	cmpwi r0, 0
/* 802E9508 002E6468  40 82 00 10 */	bne lbl_802E9518
/* 802E950C 002E646C  38 00 00 00 */	li r0, 0
/* 802E9510 002E6470  90 1A 00 0C */	stw r0, 0xc(r26)
/* 802E9514 002E6474  48 00 00 64 */	b lbl_802E9578
lbl_802E9518:
/* 802E9518 002E6478  80 1A 00 08 */	lwz r0, 8(r26)
/* 802E951C 002E647C  54 03 08 3D */	rlwinm. r3, r0, 1, 0, 0x1e
/* 802E9520 002E6480  40 82 00 10 */	bne lbl_802E9530
/* 802E9524 002E6484  38 00 00 00 */	li r0, 0
/* 802E9528 002E6488  90 1A 00 0C */	stw r0, 0xc(r26)
/* 802E952C 002E648C  48 00 00 18 */	b lbl_802E9544
lbl_802E9530:
/* 802E9530 002E6490  3C 80 80 3D */	lis r4, lbl_803D6DC8@ha
/* 802E9534 002E6494  38 A0 00 00 */	li r5, 0
/* 802E9538 002E6498  38 84 6D C8 */	addi r4, r4, lbl_803D6DC8@l
/* 802E953C 002E649C  48 02 C2 DD */	bl __nwa__FUlPCcPCc
/* 802E9540 002E64A0  90 7A 00 0C */	stw r3, 0xc(r26)
lbl_802E9544:
/* 802E9544 002E64A4  80 1A 00 04 */	lwz r0, 4(r26)
/* 802E9548 002E64A8  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 802E954C 002E64AC  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802E9550 002E64B0  7C 09 03 A6 */	mtctr r0
/* 802E9554 002E64B4  2C 00 00 00 */	cmpwi r0, 0
/* 802E9558 002E64B8  40 81 00 20 */	ble lbl_802E9578
lbl_802E955C:
/* 802E955C 002E64BC  28 03 00 00 */	cmplwi r3, 0
/* 802E9560 002E64C0  41 82 00 0C */	beq lbl_802E956C
/* 802E9564 002E64C4  A8 04 00 00 */	lha r0, 0(r4)
/* 802E9568 002E64C8  B0 03 00 00 */	sth r0, 0(r3)
lbl_802E956C:
/* 802E956C 002E64CC  38 63 00 02 */	addi r3, r3, 2
/* 802E9570 002E64D0  38 84 00 02 */	addi r4, r4, 2
/* 802E9574 002E64D4  42 00 FF E8 */	bdnz lbl_802E955C
lbl_802E9578:
/* 802E9578 002E64D8  93 4D A7 08 */	stw r26, lbl_805A92C8@sda21(r13)
/* 802E957C 002E64DC  38 61 00 18 */	addi r3, r1, 0x18
/* 802E9580 002E64E0  3A A0 00 00 */	li r21, 0
/* 802E9584 002E64E4  48 05 78 89 */	bl GetObj__6CTokenFv
/* 802E9588 002E64E8  80 63 00 04 */	lwz r3, 4(r3)
/* 802E958C 002E64EC  83 43 00 0C */	lwz r26, 0xc(r3)
/* 802E9590 002E64F0  48 00 00 18 */	b lbl_802E95A8
lbl_802E9594:
/* 802E9594 002E64F4  A8 1A 00 00 */	lha r0, 0(r26)
/* 802E9598 002E64F8  7C 00 A8 00 */	cmpw r0, r21
/* 802E959C 002E64FC  40 81 00 08 */	ble lbl_802E95A4
/* 802E95A0 002E6500  7C 15 03 78 */	mr r21, r0
lbl_802E95A4:
/* 802E95A4 002E6504  3B 5A 00 02 */	addi r26, r26, 2
lbl_802E95A8:
/* 802E95A8 002E6508  38 61 00 18 */	addi r3, r1, 0x18
/* 802E95AC 002E650C  48 05 78 61 */	bl GetObj__6CTokenFv
/* 802E95B0 002E6510  80 63 00 04 */	lwz r3, 4(r3)
/* 802E95B4 002E6514  80 03 00 04 */	lwz r0, 4(r3)
/* 802E95B8 002E6518  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802E95BC 002E651C  54 00 08 3C */	slwi r0, r0, 1
/* 802E95C0 002E6520  7C 03 02 14 */	add r0, r3, r0
/* 802E95C4 002E6524  7C 1A 00 40 */	cmplw r26, r0
/* 802E95C8 002E6528  40 82 FF CC */	bne lbl_802E9594
/* 802E95CC 002E652C  38 61 00 18 */	addi r3, r1, 0x18
/* 802E95D0 002E6530  38 80 00 00 */	li r4, 0
/* 802E95D4 002E6534  48 05 78 6D */	bl __dt__6CTokenFv
lbl_802E95D8:
/* 802E95D8 002E6538  38 61 00 10 */	addi r3, r1, 0x10
/* 802E95DC 002E653C  38 0D A7 10 */	addi r0, r13, lbl_805A92D0@sda21
/* 802E95E0 002E6540  38 80 00 00 */	li r4, 0
/* 802E95E4 002E6544  7C 03 00 40 */	cmplw r3, r0
/* 802E95E8 002E6548  98 81 00 10 */	stb r4, 0x10(r1)
/* 802E95EC 002E654C  90 81 00 14 */	stw r4, 0x14(r1)
/* 802E95F0 002E6550  41 82 00 34 */	beq lbl_802E9624
/* 802E95F4 002E6554  88 0D A7 10 */	lbz r0, lbl_805A92D0@sda21(r13)
/* 802E95F8 002E6558  28 00 00 00 */	cmplwi r0, 0
/* 802E95FC 002E655C  41 82 00 10 */	beq lbl_802E960C
/* 802E9600 002E6560  80 7D 00 04 */	lwz r3, 4(r29)
/* 802E9604 002E6564  38 80 00 01 */	li r4, 1
/* 802E9608 002E6568  48 05 78 39 */	bl __dt__6CTokenFv
lbl_802E960C:
/* 802E960C 002E656C  88 81 00 10 */	lbz r4, 0x10(r1)
/* 802E9610 002E6570  38 00 00 00 */	li r0, 0
/* 802E9614 002E6574  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802E9618 002E6578  98 8D A7 10 */	stb r4, lbl_805A92D0@sda21(r13)
/* 802E961C 002E657C  90 7D 00 04 */	stw r3, 4(r29)
/* 802E9620 002E6580  98 01 00 10 */	stb r0, 0x10(r1)
lbl_802E9624:
/* 802E9624 002E6584  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802E9628 002E6588  28 00 00 00 */	cmplwi r0, 0
/* 802E962C 002E658C  41 82 00 10 */	beq lbl_802E963C
/* 802E9630 002E6590  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802E9634 002E6594  38 80 00 01 */	li r4, 1
/* 802E9638 002E6598  48 05 78 09 */	bl __dt__6CTokenFv
lbl_802E963C:
/* 802E963C 002E659C  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 802E9640 002E65A0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 802E9644 002E65A4  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 802E9648 002E65A8  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 802E964C 002E65AC  BA A1 00 B4 */	lmw r21, 0xb4(r1)
/* 802E9650 002E65B0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 802E9654 002E65B4  7C 08 03 A6 */	mtlr r0
/* 802E9658 002E65B8  38 21 01 00 */	addi r1, r1, 0x100
/* 802E965C 002E65BC  4E 80 00 20 */	blr

.global LocateHandle__11CSfxManagerFs
LocateHandle__11CSfxManagerFs:
/* 802E9660 002E65C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9664 002E65C4  7C 08 02 A6 */	mflr r0
/* 802E9668 002E65C8  3C 80 80 5A */	lis r4, lbl_8059FD48@ha
/* 802E966C 002E65CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9670 002E65D0  38 04 FD 48 */	addi r0, r4, lbl_8059FD48@l
/* 802E9674 002E65D4  38 80 00 00 */	li r4, 0
/* 802E9678 002E65D8  80 AD A7 00 */	lwz r5, lbl_805A92C0@sda21(r13)
/* 802E967C 002E65DC  1C A5 01 6C */	mulli r5, r5, 0x16c
/* 802E9680 002E65E0  7D 00 2A 14 */	add r8, r0, r5
/* 802E9684 002E65E4  80 C8 00 48 */	lwz r6, 0x48(r8)
/* 802E9688 002E65E8  38 E8 00 4C */	addi r7, r8, 0x4c
/* 802E968C 002E65EC  7C E5 3B 78 */	mr r5, r7
/* 802E9690 002E65F0  7C C9 03 A6 */	mtctr r6
/* 802E9694 002E65F4  2C 06 00 00 */	cmpwi r6, 0
/* 802E9698 002E65F8  40 81 00 24 */	ble lbl_802E96BC
lbl_802E969C:
/* 802E969C 002E65FC  80 05 00 00 */	lwz r0, 0(r5)
/* 802E96A0 002E6600  28 00 00 00 */	cmplwi r0, 0
/* 802E96A4 002E6604  40 82 00 0C */	bne lbl_802E96B0
/* 802E96A8 002E6608  4B FF E1 C5 */	bl __ct__10CSfxHandleFUi
/* 802E96AC 002E660C  48 00 00 50 */	b lbl_802E96FC
lbl_802E96B0:
/* 802E96B0 002E6610  38 A5 00 04 */	addi r5, r5, 4
/* 802E96B4 002E6614  38 84 00 01 */	addi r4, r4, 1
/* 802E96B8 002E6618  42 00 FF E4 */	bdnz lbl_802E969C
lbl_802E96BC:
/* 802E96BC 002E661C  2C 06 00 48 */	cmpwi r6, 0x48
/* 802E96C0 002E6620  40 82 00 10 */	bne lbl_802E96D0
/* 802E96C4 002E6624  38 00 00 00 */	li r0, 0
/* 802E96C8 002E6628  90 03 00 00 */	stw r0, 0(r3)
/* 802E96CC 002E662C  48 00 00 30 */	b lbl_802E96FC
lbl_802E96D0:
/* 802E96D0 002E6630  54 C0 10 3A */	slwi r0, r6, 2
/* 802E96D4 002E6634  7C 87 02 15 */	add. r4, r7, r0
/* 802E96D8 002E6638  41 82 00 0C */	beq lbl_802E96E4
/* 802E96DC 002E663C  38 00 00 00 */	li r0, 0
/* 802E96E0 002E6640  90 04 00 00 */	stw r0, 0(r4)
lbl_802E96E4:
/* 802E96E4 002E6644  80 88 00 48 */	lwz r4, 0x48(r8)
/* 802E96E8 002E6648  38 04 00 01 */	addi r0, r4, 1
/* 802E96EC 002E664C  90 08 00 48 */	stw r0, 0x48(r8)
/* 802E96F0 002E6650  80 88 00 48 */	lwz r4, 0x48(r8)
/* 802E96F4 002E6654  38 84 FF FF */	addi r4, r4, -1
/* 802E96F8 002E6658  4B FF E1 75 */	bl __ct__10CSfxHandleFUi
lbl_802E96FC:
/* 802E96FC 002E665C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9700 002E6660  7C 08 03 A6 */	mtlr r0
/* 802E9704 002E6664  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9708 002E6668  4E 80 00 20 */	blr

.global TurnOnChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
TurnOnChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels:
/* 802E970C 002E666C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E9710 002E6670  7C 08 02 A6 */	mflr r0
/* 802E9714 002E6674  1C C3 01 6C */	mulli r6, r3, 0x16c
/* 802E9718 002E6678  3C A0 80 5A */	lis r5, lbl_8059FD48@ha
/* 802E971C 002E667C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E9720 002E6680  38 80 00 01 */	li r4, 1
/* 802E9724 002E6684  38 05 FD 48 */	addi r0, r5, lbl_8059FD48@l
/* 802E9728 002E6688  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E972C 002E668C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E9730 002E6690  7F C0 32 14 */	add r30, r0, r6
/* 802E9734 002E6694  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E9738 002E6698  88 1E 00 44 */	lbz r0, 0x44(r30)
/* 802E973C 002E669C  90 6D A7 00 */	stw r3, lbl_805A92C0@sda21(r13)
/* 802E9740 002E66A0  28 00 00 00 */	cmplwi r0, 0
/* 802E9744 002E66A4  98 8D A7 04 */	stb r4, lbl_805A92C4@sda21(r13)
/* 802E9748 002E66A8  41 82 00 40 */	beq lbl_802E9788
/* 802E974C 002E66AC  3B FE 00 4C */	addi r31, r30, 0x4c
/* 802E9750 002E66B0  3B A0 00 00 */	li r29, 0
/* 802E9754 002E66B4  48 00 00 28 */	b lbl_802E977C
lbl_802E9758:
/* 802E9758 002E66B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E975C 002E66BC  28 03 00 00 */	cmplwi r3, 0
/* 802E9760 002E66C0  41 82 00 14 */	beq lbl_802E9774
/* 802E9764 002E66C4  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9768 002E66C8  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 802E976C 002E66CC  7D 89 03 A6 */	mtctr r12
/* 802E9770 002E66D0  4E 80 04 21 */	bctrl
lbl_802E9774:
/* 802E9774 002E66D4  3B FF 00 04 */	addi r31, r31, 4
/* 802E9778 002E66D8  3B BD 00 01 */	addi r29, r29, 1
lbl_802E977C:
/* 802E977C 002E66DC  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 802E9780 002E66E0  7C 1D 00 00 */	cmpw r29, r0
/* 802E9784 002E66E4  41 80 FF D4 */	blt lbl_802E9758
lbl_802E9788:
/* 802E9788 002E66E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E978C 002E66EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E9790 002E66F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E9794 002E66F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E9798 002E66F8  7C 08 03 A6 */	mtlr r0
/* 802E979C 002E66FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E97A0 002E6700  4E 80 00 20 */	blr

.global TurnOffChannel__11CSfxManagerFi
TurnOffChannel__11CSfxManagerFi:
/* 802E97A4 002E6704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E97A8 002E6708  7C 08 02 A6 */	mflr r0
/* 802E97AC 002E670C  1C 83 01 6C */	mulli r4, r3, 0x16c
/* 802E97B0 002E6710  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E97B4 002E6714  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E97B8 002E6718  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E97BC 002E671C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E97C0 002E6720  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E97C4 002E6724  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E97C8 002E6728  7F A0 22 14 */	add r29, r0, r4
/* 802E97CC 002E672C  3B DD 00 4C */	addi r30, r29, 0x4c
/* 802E97D0 002E6730  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E97D4 002E6734  3B 80 00 00 */	li r28, 0
/* 802E97D8 002E6738  7F DF F3 78 */	mr r31, r30
/* 802E97DC 002E673C  48 00 00 5C */	b lbl_802E9838
lbl_802E97E0:
/* 802E97E0 002E6740  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E97E4 002E6744  28 03 00 00 */	cmplwi r3, 0
/* 802E97E8 002E6748  41 82 00 48 */	beq lbl_802E9830
/* 802E97EC 002E674C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E97F0 002E6750  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E97F4 002E6754  7D 89 03 A6 */	mtctr r12
/* 802E97F8 002E6758  4E 80 04 21 */	bctrl
/* 802E97FC 002E675C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9800 002E6760  41 82 00 1C */	beq lbl_802E981C
/* 802E9804 002E6764  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E9808 002E6768  81 83 00 00 */	lwz r12, 0(r3)
/* 802E980C 002E676C  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802E9810 002E6770  7D 89 03 A6 */	mtctr r12
/* 802E9814 002E6774  4E 80 04 21 */	bctrl
/* 802E9818 002E6778  48 00 00 18 */	b lbl_802E9830
lbl_802E981C:
/* 802E981C 002E677C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E9820 002E6780  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9824 002E6784  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802E9828 002E6788  7D 89 03 A6 */	mtctr r12
/* 802E982C 002E678C  4E 80 04 21 */	bctrl
lbl_802E9830:
/* 802E9830 002E6790  3B FF 00 04 */	addi r31, r31, 4
/* 802E9834 002E6794  3B 9C 00 01 */	addi r28, r28, 1
lbl_802E9838:
/* 802E9838 002E6798  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802E983C 002E679C  7C 1C 00 00 */	cmpw r28, r0
/* 802E9840 002E67A0  41 80 FF A0 */	blt lbl_802E97E0
/* 802E9844 002E67A4  3B 80 00 00 */	li r28, 0
/* 802E9848 002E67A8  3B E0 00 00 */	li r31, 0
/* 802E984C 002E67AC  48 00 00 3C */	b lbl_802E9888
lbl_802E9850:
/* 802E9850 002E67B0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E9854 002E67B4  28 03 00 00 */	cmplwi r3, 0
/* 802E9858 002E67B8  41 82 00 28 */	beq lbl_802E9880
/* 802E985C 002E67BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802E9860 002E67C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802E9864 002E67C4  7D 89 03 A6 */	mtctr r12
/* 802E9868 002E67C8  4E 80 04 21 */	bctrl
/* 802E986C 002E67CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9870 002E67D0  40 82 00 10 */	bne lbl_802E9880
/* 802E9874 002E67D4  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E9878 002E67D8  48 00 17 4D */	bl Release__Q211CSfxManager15CBaseSfxWrapperFv
/* 802E987C 002E67DC  93 FE 00 00 */	stw r31, 0(r30)
lbl_802E9880:
/* 802E9880 002E67E0  3B DE 00 04 */	addi r30, r30, 4
/* 802E9884 002E67E4  3B 9C 00 01 */	addi r28, r28, 1
lbl_802E9888:
/* 802E9888 002E67E8  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802E988C 002E67EC  7C 1C 00 00 */	cmpw r28, r0
/* 802E9890 002E67F0  41 80 FF C0 */	blt lbl_802E9850
/* 802E9894 002E67F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E9898 002E67F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E989C 002E67FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E98A0 002E6800  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E98A4 002E6804  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E98A8 002E6808  7C 08 03 A6 */	mtlr r0
/* 802E98AC 002E680C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E98B0 002E6810  4E 80 00 20 */	blr

.global SetChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
SetChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels:
/* 802E98B4 002E6814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E98B8 002E6818  7C 08 02 A6 */	mflr r0
/* 802E98BC 002E681C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E98C0 002E6820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E98C4 002E6824  7C 7F 1B 78 */	mr r31, r3
/* 802E98C8 002E6828  80 0D A7 00 */	lwz r0, lbl_805A92C0@sda21(r13)
/* 802E98CC 002E682C  7C 1F 00 00 */	cmpw r31, r0
/* 802E98D0 002E6830  41 82 00 20 */	beq lbl_802E98F0
/* 802E98D4 002E6834  2C 00 FF FF */	cmpwi r0, -1
/* 802E98D8 002E6838  41 82 00 0C */	beq lbl_802E98E4
/* 802E98DC 002E683C  7C 03 03 78 */	mr r3, r0
/* 802E98E0 002E6840  4B FF FE C5 */	bl TurnOffChannel__11CSfxManagerFi
lbl_802E98E4:
/* 802E98E4 002E6844  7F E3 FB 78 */	mr r3, r31
/* 802E98E8 002E6848  4B FF FE 25 */	bl TurnOnChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
/* 802E98EC 002E684C  93 ED A7 00 */	stw r31, lbl_805A92C0@sda21(r13)
lbl_802E98F0:
/* 802E98F0 002E6850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E98F4 002E6854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E98F8 002E6858  7C 08 03 A6 */	mtlr r0
/* 802E98FC 002E685C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9900 002E6860  4E 80 00 20 */	blr

.global SetDuration__10CSfxHandleFf
SetDuration__10CSfxHandleFf:
/* 802E9904 002E6864  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E9908 002E6868  7C 08 02 A6 */	mflr r0
/* 802E990C 002E686C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E9910 002E6870  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802E9914 002E6874  FF E0 08 90 */	fmr f31, f1
/* 802E9918 002E6878  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802E991C 002E687C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802E9920 002E6880  7C 7E 1B 78 */	mr r30, r3
/* 802E9924 002E6884  80 8D A7 00 */	lwz r4, lbl_805A92C0@sda21(r13)
/* 802E9928 002E6888  80 03 00 00 */	lwz r0, 0(r3)
/* 802E992C 002E688C  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E9930 002E6890  1C 84 01 6C */	mulli r4, r4, 0x16c
/* 802E9934 002E6894  54 05 05 3F */	clrlwi. r5, r0, 0x14
/* 802E9938 002E6898  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E993C 002E689C  7C 60 22 14 */	add r3, r0, r4
/* 802E9940 002E68A0  41 80 00 60 */	blt lbl_802E99A0
/* 802E9944 002E68A4  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E9948 002E68A8  7C 05 00 00 */	cmpw r5, r0
/* 802E994C 002E68AC  41 80 00 08 */	blt lbl_802E9954
/* 802E9950 002E68B0  48 00 00 50 */	b lbl_802E99A0
lbl_802E9954:
/* 802E9954 002E68B4  54 A0 10 3A */	slwi r0, r5, 2
/* 802E9958 002E68B8  7C 63 02 14 */	add r3, r3, r0
/* 802E995C 002E68BC  83 E3 00 4C */	lwz r31, 0x4c(r3)
/* 802E9960 002E68C0  28 1F 00 00 */	cmplwi r31, 0
/* 802E9964 002E68C4  41 82 00 3C */	beq lbl_802E99A0
/* 802E9968 002E68C8  7F E4 FB 78 */	mr r4, r31
/* 802E996C 002E68CC  38 61 00 08 */	addi r3, r1, 8
/* 802E9970 002E68D0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9974 002E68D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E9978 002E68D8  7D 89 03 A6 */	mtctr r12
/* 802E997C 002E68DC  4E 80 04 21 */	bctrl
/* 802E9980 002E68E0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E9984 002E68E4  80 01 00 08 */	lwz r0, 8(r1)
/* 802E9988 002E68E8  7C 03 00 40 */	cmplw r3, r0
/* 802E998C 002E68EC  41 82 00 08 */	beq lbl_802E9994
/* 802E9990 002E68F0  48 00 00 10 */	b lbl_802E99A0
lbl_802E9994:
/* 802E9994 002E68F4  FC 20 F8 90 */	fmr f1, f31
/* 802E9998 002E68F8  7F E3 FB 78 */	mr r3, r31
/* 802E999C 002E68FC  48 00 16 19 */	bl SetTimeRemaining__Q211CSfxManager15CBaseSfxWrapperFf
lbl_802E99A0:
/* 802E99A0 002E6900  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E99A4 002E6904  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802E99A8 002E6908  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802E99AC 002E690C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802E99B0 002E6910  7C 08 03 A6 */	mtlr r0
/* 802E99B4 002E6914  38 21 00 20 */	addi r1, r1, 0x20
/* 802E99B8 002E6918  4E 80 00 20 */	blr

.global StopSound__11CSfxManagerFRC10CSfxHandle
StopSound__11CSfxManagerFRC10CSfxHandle:
/* 802E99BC 002E691C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E99C0 002E6920  7C 08 02 A6 */	mflr r0
/* 802E99C4 002E6924  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E99C8 002E6928  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E99CC 002E692C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E99D0 002E6930  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E99D4 002E6934  7C 7D 1B 78 */	mr r29, r3
/* 802E99D8 002E6938  80 8D A7 00 */	lwz r4, lbl_805A92C0@sda21(r13)
/* 802E99DC 002E693C  80 03 00 00 */	lwz r0, 0(r3)
/* 802E99E0 002E6940  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E99E4 002E6944  1C 84 01 6C */	mulli r4, r4, 0x16c
/* 802E99E8 002E6948  54 05 05 3F */	clrlwi. r5, r0, 0x14
/* 802E99EC 002E694C  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E99F0 002E6950  7C 60 22 14 */	add r3, r0, r4
/* 802E99F4 002E6954  41 80 00 A4 */	blt lbl_802E9A98
/* 802E99F8 002E6958  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E99FC 002E695C  7C 05 00 00 */	cmpw r5, r0
/* 802E9A00 002E6960  41 80 00 08 */	blt lbl_802E9A08
/* 802E9A04 002E6964  48 00 00 94 */	b lbl_802E9A98
lbl_802E9A08:
/* 802E9A08 002E6968  3B E3 00 4C */	addi r31, r3, 0x4c
/* 802E9A0C 002E696C  54 A0 10 3A */	slwi r0, r5, 2
/* 802E9A10 002E6970  7F DF 00 2E */	lwzx r30, r31, r0
/* 802E9A14 002E6974  28 1E 00 00 */	cmplwi r30, 0
/* 802E9A18 002E6978  41 82 00 80 */	beq lbl_802E9A98
/* 802E9A1C 002E697C  7F C4 F3 78 */	mr r4, r30
/* 802E9A20 002E6980  38 61 00 08 */	addi r3, r1, 8
/* 802E9A24 002E6984  81 9E 00 00 */	lwz r12, 0(r30)
/* 802E9A28 002E6988  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E9A2C 002E698C  7D 89 03 A6 */	mtctr r12
/* 802E9A30 002E6990  4E 80 04 21 */	bctrl
/* 802E9A34 002E6994  80 7D 00 00 */	lwz r3, 0(r29)
/* 802E9A38 002E6998  80 01 00 08 */	lwz r0, 8(r1)
/* 802E9A3C 002E699C  7C 03 00 40 */	cmplw r3, r0
/* 802E9A40 002E69A0  41 82 00 08 */	beq lbl_802E9A48
/* 802E9A44 002E69A4  48 00 00 54 */	b lbl_802E9A98
lbl_802E9A48:
/* 802E9A48 002E69A8  38 00 00 01 */	li r0, 1
/* 802E9A4C 002E69AC  7F C3 F3 78 */	mr r3, r30
/* 802E9A50 002E69B0  98 0D A7 04 */	stb r0, lbl_805A92C4@sda21(r13)
/* 802E9A54 002E69B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802E9A58 002E69B8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E9A5C 002E69BC  7D 89 03 A6 */	mtctr r12
/* 802E9A60 002E69C0  4E 80 04 21 */	bctrl
/* 802E9A64 002E69C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9A68 002E69C8  41 82 00 18 */	beq lbl_802E9A80
/* 802E9A6C 002E69CC  7F C3 F3 78 */	mr r3, r30
/* 802E9A70 002E69D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802E9A74 002E69D4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802E9A78 002E69D8  7D 89 03 A6 */	mtctr r12
/* 802E9A7C 002E69DC  4E 80 04 21 */	bctrl
lbl_802E9A80:
/* 802E9A80 002E69E0  7F C3 F3 78 */	mr r3, r30
/* 802E9A84 002E69E4  48 00 15 41 */	bl Release__Q211CSfxManager15CBaseSfxWrapperFv
/* 802E9A88 002E69E8  80 1D 00 00 */	lwz r0, 0(r29)
/* 802E9A8C 002E69EC  38 60 00 00 */	li r3, 0
/* 802E9A90 002E69F0  54 00 14 BA */	rlwinm r0, r0, 2, 0x12, 0x1d
/* 802E9A94 002E69F4  7C 7F 01 2E */	stwx r3, r31, r0
lbl_802E9A98:
/* 802E9A98 002E69F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E9A9C 002E69FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E9AA0 002E6A00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E9AA4 002E6A04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E9AA8 002E6A08  7C 08 03 A6 */	mtlr r0
/* 802E9AAC 002E6A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E9AB0 002E6A10  4E 80 00 20 */	blr

.global KillAll__11CSfxManagerFQ211CSfxManager12ESfxChannels
KillAll__11CSfxManagerFQ211CSfxManager12ESfxChannels:
/* 802E9AB4 002E6A14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E9AB8 002E6A18  7C 08 02 A6 */	mflr r0
/* 802E9ABC 002E6A1C  1C 83 01 6C */	mulli r4, r3, 0x16c
/* 802E9AC0 002E6A20  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E9AC4 002E6A24  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E9AC8 002E6A28  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E9ACC 002E6A2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E9AD0 002E6A30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E9AD4 002E6A34  7F C0 22 14 */	add r30, r0, r4
/* 802E9AD8 002E6A38  3B FE 00 4C */	addi r31, r30, 0x4c
/* 802E9ADC 002E6A3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E9AE0 002E6A40  3B A0 00 00 */	li r29, 0
/* 802E9AE4 002E6A44  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E9AE8 002E6A48  48 00 00 60 */	b lbl_802E9B48
lbl_802E9AEC:
/* 802E9AEC 002E6A4C  83 9F 00 00 */	lwz r28, 0(r31)
/* 802E9AF0 002E6A50  28 1C 00 00 */	cmplwi r28, 0
/* 802E9AF4 002E6A54  41 82 00 34 */	beq lbl_802E9B28
/* 802E9AF8 002E6A58  7F 83 E3 78 */	mr r3, r28
/* 802E9AFC 002E6A5C  81 9C 00 00 */	lwz r12, 0(r28)
/* 802E9B00 002E6A60  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E9B04 002E6A64  7D 89 03 A6 */	mtctr r12
/* 802E9B08 002E6A68  4E 80 04 21 */	bctrl
/* 802E9B0C 002E6A6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9B10 002E6A70  41 82 00 18 */	beq lbl_802E9B28
/* 802E9B14 002E6A74  7F 83 E3 78 */	mr r3, r28
/* 802E9B18 002E6A78  81 9C 00 00 */	lwz r12, 0(r28)
/* 802E9B1C 002E6A7C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802E9B20 002E6A80  7D 89 03 A6 */	mtctr r12
/* 802E9B24 002E6A84  4E 80 04 21 */	bctrl
lbl_802E9B28:
/* 802E9B28 002E6A88  28 1C 00 00 */	cmplwi r28, 0
/* 802E9B2C 002E6A8C  41 82 00 0C */	beq lbl_802E9B38
/* 802E9B30 002E6A90  7F 83 E3 78 */	mr r3, r28
/* 802E9B34 002E6A94  48 00 14 91 */	bl Release__Q211CSfxManager15CBaseSfxWrapperFv
lbl_802E9B38:
/* 802E9B38 002E6A98  38 00 00 00 */	li r0, 0
/* 802E9B3C 002E6A9C  3B BD 00 01 */	addi r29, r29, 1
/* 802E9B40 002E6AA0  90 1F 00 00 */	stw r0, 0(r31)
/* 802E9B44 002E6AA4  3B FF 00 04 */	addi r31, r31, 4
lbl_802E9B48:
/* 802E9B48 002E6AA8  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 802E9B4C 002E6AAC  7C 1D 00 00 */	cmpw r29, r0
/* 802E9B50 002E6AB0  41 80 FF 9C */	blt lbl_802E9AEC
/* 802E9B54 002E6AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E9B58 002E6AB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E9B5C 002E6ABC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E9B60 002E6AC0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E9B64 002E6AC4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E9B68 002E6AC8  7C 08 03 A6 */	mtlr r0
/* 802E9B6C 002E6ACC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E9B70 002E6AD0  4E 80 00 20 */	blr

.global SfxSpan__11CSfxManagerF10CSfxHandleUc
SfxSpan__11CSfxManagerF10CSfxHandleUc:
/* 802E9B74 002E6AD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E9B78 002E6AD8  7C 08 02 A6 */	mflr r0
/* 802E9B7C 002E6ADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E9B80 002E6AE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E9B84 002E6AE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E9B88 002E6AE8  7C 9E 23 78 */	mr r30, r4
/* 802E9B8C 002E6AEC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E9B90 002E6AF0  7C 7D 1B 78 */	mr r29, r3
/* 802E9B94 002E6AF4  80 AD A7 00 */	lwz r5, lbl_805A92C0@sda21(r13)
/* 802E9B98 002E6AF8  80 03 00 00 */	lwz r0, 0(r3)
/* 802E9B9C 002E6AFC  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E9BA0 002E6B00  1C A5 01 6C */	mulli r5, r5, 0x16c
/* 802E9BA4 002E6B04  54 04 05 3F */	clrlwi. r4, r0, 0x14
/* 802E9BA8 002E6B08  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E9BAC 002E6B0C  7C 60 2A 14 */	add r3, r0, r5
/* 802E9BB0 002E6B10  41 80 00 8C */	blt lbl_802E9C3C
/* 802E9BB4 002E6B14  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E9BB8 002E6B18  7C 04 00 00 */	cmpw r4, r0
/* 802E9BBC 002E6B1C  41 80 00 08 */	blt lbl_802E9BC4
/* 802E9BC0 002E6B20  48 00 00 7C */	b lbl_802E9C3C
lbl_802E9BC4:
/* 802E9BC4 002E6B24  54 80 10 3A */	slwi r0, r4, 2
/* 802E9BC8 002E6B28  7C 63 02 14 */	add r3, r3, r0
/* 802E9BCC 002E6B2C  83 E3 00 4C */	lwz r31, 0x4c(r3)
/* 802E9BD0 002E6B30  28 1F 00 00 */	cmplwi r31, 0
/* 802E9BD4 002E6B34  41 82 00 68 */	beq lbl_802E9C3C
/* 802E9BD8 002E6B38  7F E4 FB 78 */	mr r4, r31
/* 802E9BDC 002E6B3C  38 61 00 08 */	addi r3, r1, 8
/* 802E9BE0 002E6B40  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9BE4 002E6B44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E9BE8 002E6B48  7D 89 03 A6 */	mtctr r12
/* 802E9BEC 002E6B4C  4E 80 04 21 */	bctrl
/* 802E9BF0 002E6B50  80 7D 00 00 */	lwz r3, 0(r29)
/* 802E9BF4 002E6B54  80 01 00 08 */	lwz r0, 8(r1)
/* 802E9BF8 002E6B58  7C 03 00 40 */	cmplw r3, r0
/* 802E9BFC 002E6B5C  41 82 00 08 */	beq lbl_802E9C04
/* 802E9C00 002E6B60  48 00 00 3C */	b lbl_802E9C3C
lbl_802E9C04:
/* 802E9C04 002E6B64  7F E3 FB 78 */	mr r3, r31
/* 802E9C08 002E6B68  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9C0C 002E6B6C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E9C10 002E6B70  7D 89 03 A6 */	mtctr r12
/* 802E9C14 002E6B74  4E 80 04 21 */	bctrl
/* 802E9C18 002E6B78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9C1C 002E6B7C  41 82 00 20 */	beq lbl_802E9C3C
/* 802E9C20 002E6B80  7F E3 FB 78 */	mr r3, r31
/* 802E9C24 002E6B84  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9C28 002E6B88  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 802E9C2C 002E6B8C  7D 89 03 A6 */	mtctr r12
/* 802E9C30 002E6B90  4E 80 04 21 */	bctrl
/* 802E9C34 002E6B94  7F C4 F3 78 */	mr r4, r30
/* 802E9C38 002E6B98  48 06 19 61 */	bl SfxSpan__9CAudioSysFUlUc
lbl_802E9C3C:
/* 802E9C3C 002E6B9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E9C40 002E6BA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E9C44 002E6BA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E9C48 002E6BA8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E9C4C 002E6BAC  7C 08 03 A6 */	mtlr r0
/* 802E9C50 002E6BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E9C54 002E6BB4  4E 80 00 20 */	blr

.global SfxVolume__11CSfxManagerF10CSfxHandleUc
SfxVolume__11CSfxManagerF10CSfxHandleUc:
/* 802E9C58 002E6BB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E9C5C 002E6BBC  7C 08 02 A6 */	mflr r0
/* 802E9C60 002E6BC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E9C64 002E6BC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E9C68 002E6BC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E9C6C 002E6BCC  7C 9E 23 78 */	mr r30, r4
/* 802E9C70 002E6BD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E9C74 002E6BD4  7C 7D 1B 78 */	mr r29, r3
/* 802E9C78 002E6BD8  80 AD A7 00 */	lwz r5, lbl_805A92C0@sda21(r13)
/* 802E9C7C 002E6BDC  80 03 00 00 */	lwz r0, 0(r3)
/* 802E9C80 002E6BE0  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E9C84 002E6BE4  1C A5 01 6C */	mulli r5, r5, 0x16c
/* 802E9C88 002E6BE8  54 04 05 3F */	clrlwi. r4, r0, 0x14
/* 802E9C8C 002E6BEC  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E9C90 002E6BF0  7C 60 2A 14 */	add r3, r0, r5
/* 802E9C94 002E6BF4  41 80 00 98 */	blt lbl_802E9D2C
/* 802E9C98 002E6BF8  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E9C9C 002E6BFC  7C 04 00 00 */	cmpw r4, r0
/* 802E9CA0 002E6C00  41 80 00 08 */	blt lbl_802E9CA8
/* 802E9CA4 002E6C04  48 00 00 88 */	b lbl_802E9D2C
lbl_802E9CA8:
/* 802E9CA8 002E6C08  54 80 10 3A */	slwi r0, r4, 2
/* 802E9CAC 002E6C0C  7C 63 02 14 */	add r3, r3, r0
/* 802E9CB0 002E6C10  83 E3 00 4C */	lwz r31, 0x4c(r3)
/* 802E9CB4 002E6C14  28 1F 00 00 */	cmplwi r31, 0
/* 802E9CB8 002E6C18  41 82 00 74 */	beq lbl_802E9D2C
/* 802E9CBC 002E6C1C  7F E4 FB 78 */	mr r4, r31
/* 802E9CC0 002E6C20  38 61 00 08 */	addi r3, r1, 8
/* 802E9CC4 002E6C24  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9CC8 002E6C28  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E9CCC 002E6C2C  7D 89 03 A6 */	mtctr r12
/* 802E9CD0 002E6C30  4E 80 04 21 */	bctrl
/* 802E9CD4 002E6C34  80 7D 00 00 */	lwz r3, 0(r29)
/* 802E9CD8 002E6C38  80 01 00 08 */	lwz r0, 8(r1)
/* 802E9CDC 002E6C3C  7C 03 00 40 */	cmplw r3, r0
/* 802E9CE0 002E6C40  41 82 00 08 */	beq lbl_802E9CE8
/* 802E9CE4 002E6C44  48 00 00 48 */	b lbl_802E9D2C
lbl_802E9CE8:
/* 802E9CE8 002E6C48  7F E3 FB 78 */	mr r3, r31
/* 802E9CEC 002E6C4C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802E9CF0 002E6C50  48 00 0A 7D */	bl SetVolume__Q211CSfxManager11CSfxWrapperFs
/* 802E9CF4 002E6C54  7F E3 FB 78 */	mr r3, r31
/* 802E9CF8 002E6C58  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9CFC 002E6C5C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E9D00 002E6C60  7D 89 03 A6 */	mtctr r12
/* 802E9D04 002E6C64  4E 80 04 21 */	bctrl
/* 802E9D08 002E6C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9D0C 002E6C6C  41 82 00 20 */	beq lbl_802E9D2C
/* 802E9D10 002E6C70  7F E3 FB 78 */	mr r3, r31
/* 802E9D14 002E6C74  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E9D18 002E6C78  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 802E9D1C 002E6C7C  7D 89 03 A6 */	mtctr r12
/* 802E9D20 002E6C80  4E 80 04 21 */	bctrl
/* 802E9D24 002E6C84  7F C4 F3 78 */	mr r4, r30
/* 802E9D28 002E6C88  48 06 18 45 */	bl SfxVolume__9CAudioSysFUlUc
lbl_802E9D2C:
/* 802E9D2C 002E6C8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E9D30 002E6C90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E9D34 002E6C94  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E9D38 002E6C98  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E9D3C 002E6C9C  7C 08 03 A6 */	mtlr r0
/* 802E9D40 002E6CA0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E9D44 002E6CA4  4E 80 00 20 */	blr

.global SfxStop__11CSfxManagerFRC10CSfxHandle
SfxStop__11CSfxManagerFRC10CSfxHandle:
/* 802E9D48 002E6CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9D4C 002E6CAC  7C 08 02 A6 */	mflr r0
/* 802E9D50 002E6CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9D54 002E6CB4  80 03 00 00 */	lwz r0, 0(r3)
/* 802E9D58 002E6CB8  38 61 00 08 */	addi r3, r1, 8
/* 802E9D5C 002E6CBC  90 01 00 08 */	stw r0, 8(r1)
/* 802E9D60 002E6CC0  4B FF FC 5D */	bl StopSound__11CSfxManagerFRC10CSfxHandle
/* 802E9D64 002E6CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9D68 002E6CC8  7C 08 03 A6 */	mtlr r0
/* 802E9D6C 002E6CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9D70 002E6CD0  4E 80 00 20 */	blr

.global SfxStart__11CSfxManagerFUsssbsbi
SfxStart__11CSfxManagerFUsssbsbi:
/* 802E9D74 002E6CD4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802E9D78 002E6CD8  7C 08 02 A6 */	mflr r0
/* 802E9D7C 002E6CDC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802E9D80 002E6CE0  BE E1 00 4C */	stmw r23, 0x4c(r1)
/* 802E9D84 002E6CE4  7C 7D 1B 78 */	mr r29, r3
/* 802E9D88 002E6CE8  7C 9E 23 78 */	mr r30, r4
/* 802E9D8C 002E6CEC  7C BF 2B 78 */	mr r31, r5
/* 802E9D90 002E6CF0  7C D7 33 78 */	mr r23, r6
/* 802E9D94 002E6CF4  7C F8 3B 78 */	mr r24, r7
/* 802E9D98 002E6CF8  7D 19 43 78 */	mr r25, r8
/* 802E9D9C 002E6CFC  7D 3A 4B 78 */	mr r26, r9
/* 802E9DA0 002E6D00  7D 5B 53 78 */	mr r27, r10
/* 802E9DA4 002E6D04  88 0D A7 0C */	lbz r0, lbl_805A92CC@sda21(r13)
/* 802E9DA8 002E6D08  28 00 00 00 */	cmplwi r0, 0
/* 802E9DAC 002E6D0C  40 82 00 1C */	bne lbl_802E9DC8
/* 802E9DB0 002E6D10  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 802E9DB4 002E6D14  3C 03 00 01 */	addis r0, r3, 1
/* 802E9DB8 002E6D18  28 00 FF FF */	cmplwi r0, 0xffff
/* 802E9DBC 002E6D1C  41 82 00 0C */	beq lbl_802E9DC8
/* 802E9DC0 002E6D20  28 03 FF FF */	cmplwi r3, 0xffff
/* 802E9DC4 002E6D24  40 82 00 10 */	bne lbl_802E9DD4
lbl_802E9DC8:
/* 802E9DC8 002E6D28  38 00 00 00 */	li r0, 0
/* 802E9DCC 002E6D2C  90 1D 00 00 */	stw r0, 0(r29)
/* 802E9DD0 002E6D30  48 00 00 A0 */	b lbl_802E9E70
lbl_802E9DD4:
/* 802E9DD4 002E6D34  80 0D A7 00 */	lwz r0, lbl_805A92C0@sda21(r13)
/* 802E9DD8 002E6D38  38 60 00 01 */	li r3, 1
/* 802E9DDC 002E6D3C  3C 80 80 5A */	lis r4, lbl_8059FD48@ha
/* 802E9DE0 002E6D40  98 6D A7 04 */	stb r3, lbl_805A92C4@sda21(r13)
/* 802E9DE4 002E6D44  1C A0 01 6C */	mulli r5, r0, 0x16c
/* 802E9DE8 002E6D48  38 61 00 14 */	addi r3, r1, 0x14
/* 802E9DEC 002E6D4C  38 04 FD 48 */	addi r0, r4, lbl_8059FD48@l
/* 802E9DF0 002E6D50  7F 24 07 34 */	extsh r4, r25
/* 802E9DF4 002E6D54  7F 80 2A 14 */	add r28, r0, r5
/* 802E9DF8 002E6D58  4B FF F8 69 */	bl LocateHandle__11CSfxManagerFs
/* 802E9DFC 002E6D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9E00 002E6D60  28 00 00 00 */	cmplwi r0, 0
/* 802E9E04 002E6D64  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E9E08 002E6D68  41 82 00 60 */	beq lbl_802E9E68
/* 802E9E0C 002E6D6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E9E10 002E6D70  7F 44 D3 78 */	mr r4, r26
/* 802E9E14 002E6D74  7F 25 CB 78 */	mr r5, r25
/* 802E9E18 002E6D78  7F C6 F3 78 */	mr r6, r30
/* 802E9E1C 002E6D7C  93 61 00 08 */	stw r27, 8(r1)
/* 802E9E20 002E6D80  7F E7 FB 78 */	mr r7, r31
/* 802E9E24 002E6D84  7E E8 BB 78 */	mr r8, r23
/* 802E9E28 002E6D88  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9E2C 002E6D8C  39 21 00 10 */	addi r9, r1, 0x10
/* 802E9E30 002E6D90  57 0A 06 3E */	clrlwi r10, r24, 0x18
/* 802E9E34 002E6D94  48 00 0B 95 */	bl __ct__Q211CSfxManager11CSfxWrapperFbsUsss10CSfxHandlebi
/* 802E9E38 002E6D98  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9E3C 002E6D9C  4B FF E6 11 */	bl AllocateCSfxWrapper__11CSfxManagerFRCQ211CSfxManager11CSfxWrapper
/* 802E9E40 002E6DA0  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 802E9E44 002E6DA4  3C 80 80 3F */	lis r4, lbl_803ECE10@ha
/* 802E9E48 002E6DA8  38 04 CE 10 */	addi r0, r4, lbl_803ECE10@l
/* 802E9E4C 002E6DAC  54 A5 14 BA */	rlwinm r5, r5, 2, 0x12, 0x1d
/* 802E9E50 002E6DB0  3C 80 80 3F */	lis r4, lbl_803ECEE4@ha
/* 802E9E54 002E6DB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E9E58 002E6DB8  7C BC 2A 14 */	add r5, r28, r5
/* 802E9E5C 002E6DBC  38 04 CE E4 */	addi r0, r4, lbl_803ECEE4@l
/* 802E9E60 002E6DC0  90 65 00 4C */	stw r3, 0x4c(r5)
/* 802E9E64 002E6DC4  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802E9E68:
/* 802E9E68 002E6DC8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802E9E6C 002E6DCC  90 1D 00 00 */	stw r0, 0(r29)
lbl_802E9E70:
/* 802E9E70 002E6DD0  BA E1 00 4C */	lmw r23, 0x4c(r1)
/* 802E9E74 002E6DD4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802E9E78 002E6DD8  7C 08 03 A6 */	mtlr r0
/* 802E9E7C 002E6DDC  38 21 00 70 */	addi r1, r1, 0x70
/* 802E9E80 002E6DE0  4E 80 00 20 */	blr

.global RemoveEmitter__11CSfxManagerF10CSfxHandle
RemoveEmitter__11CSfxManagerF10CSfxHandle:
/* 802E9E84 002E6DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E9E88 002E6DE8  7C 08 02 A6 */	mflr r0
/* 802E9E8C 002E6DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9E90 002E6DF0  80 03 00 00 */	lwz r0, 0(r3)
/* 802E9E94 002E6DF4  38 61 00 08 */	addi r3, r1, 8
/* 802E9E98 002E6DF8  90 01 00 08 */	stw r0, 8(r1)
/* 802E9E9C 002E6DFC  4B FF FB 21 */	bl StopSound__11CSfxManagerFRC10CSfxHandle
/* 802E9EA0 002E6E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9EA4 002E6E04  7C 08 03 A6 */	mtlr r0
/* 802E9EA8 002E6E08  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9EAC 002E6E0C  4E 80 00 20 */	blr

.global UpdateEmitter__11CSfxManagerF10CSfxHandleRC9CVector3fRC9CVector3fUc
UpdateEmitter__11CSfxManagerF10CSfxHandleRC9CVector3fRC9CVector3fUc:
/* 802E9EB0 002E6E10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E9EB4 002E6E14  7C 08 02 A6 */	mflr r0
/* 802E9EB8 002E6E18  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E9EBC 002E6E1C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802E9EC0 002E6E20  7C 7E 1B 78 */	mr r30, r3
/* 802E9EC4 002E6E24  7C 9F 23 78 */	mr r31, r4
/* 802E9EC8 002E6E28  7C BB 2B 78 */	mr r27, r5
/* 802E9ECC 002E6E2C  7C DC 33 78 */	mr r28, r6
/* 802E9ED0 002E6E30  80 ED A7 00 */	lwz r7, lbl_805A92C0@sda21(r13)
/* 802E9ED4 002E6E34  80 03 00 00 */	lwz r0, 0(r3)
/* 802E9ED8 002E6E38  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802E9EDC 002E6E3C  1C E7 01 6C */	mulli r7, r7, 0x16c
/* 802E9EE0 002E6E40  54 04 05 3F */	clrlwi. r4, r0, 0x14
/* 802E9EE4 002E6E44  38 03 FD 48 */	addi r0, r3, lbl_8059FD48@l
/* 802E9EE8 002E6E48  7C 60 3A 14 */	add r3, r0, r7
/* 802E9EEC 002E6E4C  41 80 00 E0 */	blt lbl_802E9FCC
/* 802E9EF0 002E6E50  80 03 00 48 */	lwz r0, 0x48(r3)
/* 802E9EF4 002E6E54  7C 04 00 00 */	cmpw r4, r0
/* 802E9EF8 002E6E58  41 80 00 08 */	blt lbl_802E9F00
/* 802E9EFC 002E6E5C  48 00 00 D0 */	b lbl_802E9FCC
lbl_802E9F00:
/* 802E9F00 002E6E60  54 80 10 3A */	slwi r0, r4, 2
/* 802E9F04 002E6E64  7C 63 02 14 */	add r3, r3, r0
/* 802E9F08 002E6E68  83 A3 00 4C */	lwz r29, 0x4c(r3)
/* 802E9F0C 002E6E6C  28 1D 00 00 */	cmplwi r29, 0
/* 802E9F10 002E6E70  41 82 00 BC */	beq lbl_802E9FCC
/* 802E9F14 002E6E74  7F A4 EB 78 */	mr r4, r29
/* 802E9F18 002E6E78  38 61 00 08 */	addi r3, r1, 8
/* 802E9F1C 002E6E7C  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E9F20 002E6E80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802E9F24 002E6E84  7D 89 03 A6 */	mtctr r12
/* 802E9F28 002E6E88  4E 80 04 21 */	bctrl
/* 802E9F2C 002E6E8C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802E9F30 002E6E90  80 01 00 08 */	lwz r0, 8(r1)
/* 802E9F34 002E6E94  7C 03 00 40 */	cmplw r3, r0
/* 802E9F38 002E6E98  40 82 00 94 */	bne lbl_802E9FCC
/* 802E9F3C 002E6E9C  7F A3 EB 78 */	mr r3, r29
/* 802E9F40 002E6EA0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802E9F44 002E6EA4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802E9F48 002E6EA8  7D 89 03 A6 */	mtctr r12
/* 802E9F4C 002E6EAC  4E 80 04 21 */	bctrl
/* 802E9F50 002E6EB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E9F54 002E6EB4  40 82 00 08 */	bne lbl_802E9F5C
/* 802E9F58 002E6EB8  48 00 00 74 */	b lbl_802E9FCC
lbl_802E9F5C:
/* 802E9F5C 002E6EBC  38 00 00 01 */	li r0, 1
/* 802E9F60 002E6EC0  7F A3 EB 78 */	mr r3, r29
/* 802E9F64 002E6EC4  98 0D A7 04 */	stb r0, lbl_805A92C4@sda21(r13)
/* 802E9F68 002E6EC8  48 00 0D 31 */	bl GetEmitter__Q211CSfxManager18CSfxEmitterWrapperFv
/* 802E9F6C 002E6ECC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802E9F70 002E6ED0  D0 03 00 00 */	stfs f0, 0(r3)
/* 802E9F74 002E6ED4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802E9F78 002E6ED8  D0 03 00 04 */	stfs f0, 4(r3)
/* 802E9F7C 002E6EDC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802E9F80 002E6EE0  D0 03 00 08 */	stfs f0, 8(r3)
/* 802E9F84 002E6EE4  7F A3 EB 78 */	mr r3, r29
/* 802E9F88 002E6EE8  48 00 0D 11 */	bl GetEmitter__Q211CSfxManager18CSfxEmitterWrapperFv
/* 802E9F8C 002E6EEC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 802E9F90 002E6EF0  57 9E 06 3E */	clrlwi r30, r28, 0x18
/* 802E9F94 002E6EF4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802E9F98 002E6EF8  C0 1B 00 04 */	lfs f0, 4(r27)
/* 802E9F9C 002E6EFC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802E9FA0 002E6F00  C0 1B 00 08 */	lfs f0, 8(r27)
/* 802E9FA4 002E6F04  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802E9FA8 002E6F08  7F A3 EB 78 */	mr r3, r29
/* 802E9FAC 002E6F0C  48 00 0C ED */	bl GetEmitter__Q211CSfxManager18CSfxEmitterWrapperFv
/* 802E9FB0 002E6F10  9B C3 00 26 */	stb r30, 0x26(r3)
/* 802E9FB4 002E6F14  7F A3 EB 78 */	mr r3, r29
/* 802E9FB8 002E6F18  48 00 0C D9 */	bl GetHandle__Q211CSfxManager18CSfxEmitterWrapperCFv
/* 802E9FBC 002E6F1C  7F E4 FB 78 */	mr r4, r31
/* 802E9FC0 002E6F20  7F 65 DB 78 */	mr r5, r27
/* 802E9FC4 002E6F24  7F 86 E3 78 */	mr r6, r28
/* 802E9FC8 002E6F28  48 06 0C 79 */	bl S3dUpdateEmitter__9CAudioSysFUiRC9CVector3fRC9CVector3fUc
lbl_802E9FCC:
/* 802E9FCC 002E6F2C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802E9FD0 002E6F30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E9FD4 002E6F34  7C 08 03 A6 */	mtlr r0
/* 802E9FD8 002E6F38  38 21 00 30 */	addi r1, r1, 0x30
/* 802E9FDC 002E6F3C  4E 80 00 20 */	blr

.global AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi:
/* 802E9FE0 002E6F40  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802E9FE4 002E6F44  7C 08 02 A6 */	mflr r0
/* 802E9FE8 002E6F48  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802E9FEC 002E6F4C  BF 41 00 98 */	stmw r26, 0x98(r1)
/* 802E9FF0 002E6F50  7C 7B 1B 78 */	mr r27, r3
/* 802E9FF4 002E6F54  7C BC 2B 78 */	mr r28, r5
/* 802E9FF8 002E6F58  7C DD 33 78 */	mr r29, r6
/* 802E9FFC 002E6F5C  7C FE 3B 78 */	mr r30, r7
/* 802EA000 002E6F60  7D 1F 43 78 */	mr r31, r8
/* 802EA004 002E6F64  88 0D A7 0C */	lbz r0, lbl_805A92CC@sda21(r13)
/* 802EA008 002E6F68  28 00 00 00 */	cmplwi r0, 0
/* 802EA00C 002E6F6C  40 82 00 1C */	bne lbl_802EA028
/* 802EA010 002E6F70  A0 64 00 24 */	lhz r3, 0x24(r4)
/* 802EA014 002E6F74  3C 03 00 01 */	addis r0, r3, 1
/* 802EA018 002E6F78  28 00 FF FF */	cmplwi r0, 0xffff
/* 802EA01C 002E6F7C  41 82 00 0C */	beq lbl_802EA028
/* 802EA020 002E6F80  28 03 FF FF */	cmplwi r3, 0xffff
/* 802EA024 002E6F84  40 82 00 10 */	bne lbl_802EA034
lbl_802EA028:
/* 802EA028 002E6F88  38 00 00 00 */	li r0, 0
/* 802EA02C 002E6F8C  90 1B 00 00 */	stw r0, 0(r27)
/* 802EA030 002E6F90  48 00 01 18 */	b lbl_802EA148
lbl_802EA034:
/* 802EA034 002E6F94  C0 04 00 00 */	lfs f0, 0(r4)
/* 802EA038 002E6F98  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802EA03C 002E6F9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802EA040 002E6FA0  C0 04 00 04 */	lfs f0, 4(r4)
/* 802EA044 002E6FA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802EA048 002E6FA8  C0 04 00 08 */	lfs f0, 8(r4)
/* 802EA04C 002E6FAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802EA050 002E6FB0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802EA054 002E6FB4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802EA058 002E6FB8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 802EA05C 002E6FBC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802EA060 002E6FC0  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 802EA064 002E6FC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802EA068 002E6FC8  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802EA06C 002E6FCC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802EA070 002E6FD0  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802EA074 002E6FD4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 802EA078 002E6FD8  80 64 00 20 */	lwz r3, 0x20(r4)
/* 802EA07C 002E6FDC  90 61 00 34 */	stw r3, 0x34(r1)
/* 802EA080 002E6FE0  A0 04 00 24 */	lhz r0, 0x24(r4)
/* 802EA084 002E6FE4  B0 01 00 38 */	sth r0, 0x38(r1)
/* 802EA088 002E6FE8  88 04 00 26 */	lbz r0, 0x26(r4)
/* 802EA08C 002E6FEC  98 01 00 3A */	stb r0, 0x3a(r1)
/* 802EA090 002E6FF0  88 04 00 27 */	lbz r0, 0x27(r4)
/* 802EA094 002E6FF4  98 01 00 3B */	stb r0, 0x3b(r1)
/* 802EA098 002E6FF8  88 04 00 28 */	lbz r0, 0x28(r4)
/* 802EA09C 002E6FFC  98 01 00 3C */	stb r0, 0x3c(r1)
/* 802EA0A0 002E7000  88 04 00 29 */	lbz r0, 0x29(r4)
/* 802EA0A4 002E7004  98 01 00 3D */	stb r0, 0x3d(r1)
/* 802EA0A8 002E7008  41 82 00 0C */	beq lbl_802EA0B4
/* 802EA0AC 002E700C  60 60 00 06 */	ori r0, r3, 6
/* 802EA0B0 002E7010  90 01 00 34 */	stw r0, 0x34(r1)
lbl_802EA0B4:
/* 802EA0B4 002E7014  80 0D A7 00 */	lwz r0, lbl_805A92C0@sda21(r13)
/* 802EA0B8 002E7018  38 60 00 01 */	li r3, 1
/* 802EA0BC 002E701C  3C 80 80 5A */	lis r4, lbl_8059FD48@ha
/* 802EA0C0 002E7020  98 6D A7 04 */	stb r3, lbl_805A92C4@sda21(r13)
/* 802EA0C4 002E7024  1C A0 01 6C */	mulli r5, r0, 0x16c
/* 802EA0C8 002E7028  38 61 00 0C */	addi r3, r1, 0xc
/* 802EA0CC 002E702C  38 04 FD 48 */	addi r0, r4, lbl_8059FD48@l
/* 802EA0D0 002E7030  7F A4 07 34 */	extsh r4, r29
/* 802EA0D4 002E7034  7F 40 2A 14 */	add r26, r0, r5
/* 802EA0D8 002E7038  4B FF F5 89 */	bl LocateHandle__11CSfxManagerFs
/* 802EA0DC 002E703C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802EA0E0 002E7040  28 00 00 00 */	cmplwi r0, 0
/* 802EA0E4 002E7044  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EA0E8 002E7048  41 82 00 58 */	beq lbl_802EA140
/* 802EA0EC 002E704C  90 01 00 08 */	stw r0, 8(r1)
/* 802EA0F0 002E7050  7F C4 F3 78 */	mr r4, r30
/* 802EA0F4 002E7054  7F A5 EB 78 */	mr r5, r29
/* 802EA0F8 002E7058  7F E9 FB 78 */	mr r9, r31
/* 802EA0FC 002E705C  38 61 00 40 */	addi r3, r1, 0x40
/* 802EA100 002E7060  38 C1 00 14 */	addi r6, r1, 0x14
/* 802EA104 002E7064  38 E1 00 08 */	addi r7, r1, 8
/* 802EA108 002E7068  57 88 06 3E */	clrlwi r8, r28, 0x18
/* 802EA10C 002E706C  48 00 0D 35 */	bl __ct__Q211CSfxManager18CSfxEmitterWrapperFbsRQ29CAudioSys18C3DEmitterParmData10CSfxHandlebi
/* 802EA110 002E7070  38 61 00 40 */	addi r3, r1, 0x40
/* 802EA114 002E7074  4B FF E4 C1 */	bl sub_802e85d4
/* 802EA118 002E7078  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 802EA11C 002E707C  3C 80 80 3F */	lis r4, lbl_803ECE80@ha
/* 802EA120 002E7080  38 04 CE 80 */	addi r0, r4, lbl_803ECE80@l
/* 802EA124 002E7084  54 A5 14 BA */	rlwinm r5, r5, 2, 0x12, 0x1d
/* 802EA128 002E7088  3C 80 80 3F */	lis r4, lbl_803ECEE4@ha
/* 802EA12C 002E708C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802EA130 002E7090  7C BA 2A 14 */	add r5, r26, r5
/* 802EA134 002E7094  38 04 CE E4 */	addi r0, r4, lbl_803ECEE4@l
/* 802EA138 002E7098  90 65 00 4C */	stw r3, 0x4c(r5)
/* 802EA13C 002E709C  90 01 00 40 */	stw r0, 0x40(r1)
lbl_802EA140:
/* 802EA140 002E70A0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802EA144 002E70A4  90 1B 00 00 */	stw r0, 0(r27)
lbl_802EA148:
/* 802EA148 002E70A8  BB 41 00 98 */	lmw r26, 0x98(r1)
/* 802EA14C 002E70AC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802EA150 002E70B0  7C 08 03 A6 */	mtlr r0
/* 802EA154 002E70B4  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802EA158 002E70B8  4E 80 00 20 */	blr

.global __dt__Q211CSfxManager18CSfxEmitterWrapperFv
__dt__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EA15C 002E70BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA160 002E70C0  7C 08 02 A6 */	mflr r0
/* 802EA164 002E70C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA168 002E70C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA16C 002E70CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EA170 002E70D0  41 82 00 30 */	beq lbl_802EA1A0
/* 802EA174 002E70D4  3C 60 80 3F */	lis r3, lbl_803ECE80@ha
/* 802EA178 002E70D8  38 03 CE 80 */	addi r0, r3, lbl_803ECE80@l
/* 802EA17C 002E70DC  90 1F 00 00 */	stw r0, 0(r31)
/* 802EA180 002E70E0  41 82 00 10 */	beq lbl_802EA190
/* 802EA184 002E70E4  3C 60 80 3F */	lis r3, lbl_803ECEE4@ha
/* 802EA188 002E70E8  38 03 CE E4 */	addi r0, r3, lbl_803ECEE4@l
/* 802EA18C 002E70EC  90 1F 00 00 */	stw r0, 0(r31)
lbl_802EA190:
/* 802EA190 002E70F0  7C 80 07 35 */	extsh. r0, r4
/* 802EA194 002E70F4  40 81 00 0C */	ble lbl_802EA1A0
/* 802EA198 002E70F8  7F E3 FB 78 */	mr r3, r31
/* 802EA19C 002E70FC  48 02 B7 95 */	bl Free__7CMemoryFPCv
lbl_802EA1A0:
/* 802EA1A0 002E7100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA1A4 002E7104  7F E3 FB 78 */	mr r3, r31
/* 802EA1A8 002E7108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA1AC 002E710C  7C 08 03 A6 */	mtlr r0
/* 802EA1B0 002E7110  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA1B4 002E7114  4E 80 00 20 */	blr

.global AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi
AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi:
/* 802EA1B8 002E7118  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802EA1BC 002E711C  7C 08 02 A6 */	mflr r0
/* 802EA1C0 002E7120  C0 42 C6 04 */	lfs f2, lbl_805AE324@sda21(r2)
/* 802EA1C4 002E7124  39 60 00 01 */	li r11, 1
/* 802EA1C8 002E7128  90 01 00 54 */	stw r0, 0x54(r1)
/* 802EA1CC 002E712C  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802EA1D0 002E7130  C0 22 C6 14 */	lfs f1, lbl_805AE334@sda21(r2)
/* 802EA1D4 002E7134  38 E0 00 00 */	li r7, 0
/* 802EA1D8 002E7138  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802EA1DC 002E713C  28 00 00 14 */	cmplwi r0, 0x14
/* 802EA1E0 002E7140  C0 02 C6 18 */	lfs f0, lbl_805AE338@sda21(r2)
/* 802EA1E4 002E7144  3B E0 00 15 */	li r31, 0x15
/* 802EA1E8 002E7148  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802EA1EC 002E714C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802EA1F0 002E7150  93 A1 00 44 */	stw r29, 0x44(r1)
/* 802EA1F4 002E7154  7C 7D 1B 78 */	mr r29, r3
/* 802EA1F8 002E7158  D0 41 00 08 */	stfs f2, 8(r1)
/* 802EA1FC 002E715C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802EA200 002E7160  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802EA204 002E7164  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802EA208 002E7168  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802EA20C 002E716C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802EA210 002E7170  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 802EA214 002E7174  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802EA218 002E7178  91 61 00 28 */	stw r11, 0x28(r1)
/* 802EA21C 002E717C  B0 E1 00 2C */	sth r7, 0x2c(r1)
/* 802EA220 002E7180  40 81 00 08 */	ble lbl_802EA228
/* 802EA224 002E7184  7C 1F 03 78 */	mr r31, r0
lbl_802EA228:
/* 802EA228 002E7188  88 02 CC 41 */	lbz r0, lbl_805AE961@sda21(r2)
/* 802EA22C 002E718C  39 80 00 14 */	li r12, 0x14
/* 802EA230 002E7190  C0 A5 00 00 */	lfs f5, 0(r5)
/* 802EA234 002E7194  39 60 00 00 */	li r11, 0
/* 802EA238 002E7198  C0 85 00 04 */	lfs f4, 4(r5)
/* 802EA23C 002E719C  7F A3 EB 78 */	mr r3, r29
/* 802EA240 002E71A0  C0 65 00 08 */	lfs f3, 8(r5)
/* 802EA244 002E71A4  7D 05 43 78 */	mr r5, r8
/* 802EA248 002E71A8  C0 46 00 00 */	lfs f2, 0(r6)
/* 802EA24C 002E71AC  7D 27 4B 78 */	mr r7, r9
/* 802EA250 002E71B0  C0 26 00 04 */	lfs f1, 4(r6)
/* 802EA254 002E71B4  7F C8 F3 78 */	mr r8, r30
/* 802EA258 002E71B8  C0 06 00 08 */	lfs f0, 8(r6)
/* 802EA25C 002E71BC  7D 46 53 78 */	mr r6, r10
/* 802EA260 002E71C0  B0 81 00 2C */	sth r4, 0x2c(r1)
/* 802EA264 002E71C4  38 81 00 08 */	addi r4, r1, 8
/* 802EA268 002E71C8  9B E1 00 2E */	stb r31, 0x2e(r1)
/* 802EA26C 002E71CC  99 81 00 2F */	stb r12, 0x2f(r1)
/* 802EA270 002E71D0  99 61 00 30 */	stb r11, 0x30(r1)
/* 802EA274 002E71D4  98 01 00 31 */	stb r0, 0x31(r1)
/* 802EA278 002E71D8  D0 A1 00 08 */	stfs f5, 8(r1)
/* 802EA27C 002E71DC  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 802EA280 002E71E0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 802EA284 002E71E4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802EA288 002E71E8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802EA28C 002E71EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802EA290 002E71F0  4B FF FD 51 */	bl AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
/* 802EA294 002E71F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802EA298 002E71F8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802EA29C 002E71FC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802EA2A0 002E7200  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 802EA2A4 002E7204  7C 08 03 A6 */	mtlr r0
/* 802EA2A8 002E7208  38 21 00 50 */	addi r1, r1, 0x50
/* 802EA2AC 002E720C  4E 80 00 20 */	blr

.global AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi:
/* 802EA2B0 002E7210  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802EA2B4 002E7214  7C 08 02 A6 */	mflr r0
/* 802EA2B8 002E7218  C1 02 C6 04 */	lfs f8, lbl_805AE324@sda21(r2)
/* 802EA2BC 002E721C  39 80 00 7F */	li r12, 0x7f
/* 802EA2C0 002E7220  90 01 00 54 */	stw r0, 0x54(r1)
/* 802EA2C4 002E7224  39 60 00 14 */	li r11, 0x14
/* 802EA2C8 002E7228  C0 E2 C6 14 */	lfs f7, lbl_805AE334@sda21(r2)
/* 802EA2CC 002E722C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802EA2D0 002E7230  3B E0 00 00 */	li r31, 0
/* 802EA2D4 002E7234  C0 C2 C6 18 */	lfs f6, lbl_805AE338@sda21(r2)
/* 802EA2D8 002E7238  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802EA2DC 002E723C  3B C0 00 01 */	li r30, 1
/* 802EA2E0 002E7240  88 02 CC 41 */	lbz r0, lbl_805AE961@sda21(r2)
/* 802EA2E4 002E7244  93 A1 00 44 */	stw r29, 0x44(r1)
/* 802EA2E8 002E7248  7C FD 3B 78 */	mr r29, r7
/* 802EA2EC 002E724C  7D 07 43 78 */	mr r7, r8
/* 802EA2F0 002E7250  7D 48 53 78 */	mr r8, r10
/* 802EA2F4 002E7254  93 81 00 40 */	stw r28, 0x40(r1)
/* 802EA2F8 002E7258  7C 7C 1B 78 */	mr r28, r3
/* 802EA2FC 002E725C  B3 E1 00 2C */	sth r31, 0x2c(r1)
/* 802EA300 002E7260  C0 A5 00 00 */	lfs f5, 0(r5)
/* 802EA304 002E7264  D1 01 00 08 */	stfs f8, 8(r1)
/* 802EA308 002E7268  C0 85 00 04 */	lfs f4, 4(r5)
/* 802EA30C 002E726C  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 802EA310 002E7270  C0 65 00 08 */	lfs f3, 8(r5)
/* 802EA314 002E7274  7F A5 EB 78 */	mr r5, r29
/* 802EA318 002E7278  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 802EA31C 002E727C  C0 46 00 00 */	lfs f2, 0(r6)
/* 802EA320 002E7280  D1 01 00 14 */	stfs f8, 0x14(r1)
/* 802EA324 002E7284  C0 26 00 04 */	lfs f1, 4(r6)
/* 802EA328 002E7288  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 802EA32C 002E728C  C0 06 00 08 */	lfs f0, 8(r6)
/* 802EA330 002E7290  7D 26 4B 78 */	mr r6, r9
/* 802EA334 002E7294  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 802EA338 002E7298  B0 81 00 2C */	sth r4, 0x2c(r1)
/* 802EA33C 002E729C  38 81 00 08 */	addi r4, r1, 8
/* 802EA340 002E72A0  D0 E1 00 20 */	stfs f7, 0x20(r1)
/* 802EA344 002E72A4  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 802EA348 002E72A8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802EA34C 002E72AC  99 81 00 2E */	stb r12, 0x2e(r1)
/* 802EA350 002E72B0  99 61 00 2F */	stb r11, 0x2f(r1)
/* 802EA354 002E72B4  9B E1 00 30 */	stb r31, 0x30(r1)
/* 802EA358 002E72B8  98 01 00 31 */	stb r0, 0x31(r1)
/* 802EA35C 002E72BC  D0 A1 00 08 */	stfs f5, 8(r1)
/* 802EA360 002E72C0  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 802EA364 002E72C4  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 802EA368 002E72C8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802EA36C 002E72CC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802EA370 002E72D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802EA374 002E72D4  4B FF FC 6D */	bl AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
/* 802EA378 002E72D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802EA37C 002E72DC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802EA380 002E72E0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802EA384 002E72E4  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 802EA388 002E72E8  83 81 00 40 */	lwz r28, 0x40(r1)
/* 802EA38C 002E72EC  7C 08 03 A6 */	mtlr r0
/* 802EA390 002E72F0  38 21 00 50 */	addi r1, r1, 0x50
/* 802EA394 002E72F4  4E 80 00 20 */	blr

.global UpdateListener__11CSfxManagerFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3fUc
UpdateListener__11CSfxManagerFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3fUc:
/* 802EA398 002E72F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA39C 002E72FC  7C 08 02 A6 */	mflr r0
/* 802EA3A0 002E7300  3D 00 80 5A */	lis r8, lbl_8059FD48@ha
/* 802EA3A4 002E7304  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA3A8 002E7308  39 08 FD 48 */	addi r8, r8, lbl_8059FD48@l
/* 802EA3AC 002E730C  80 0D A7 00 */	lwz r0, lbl_805A92C0@sda21(r13)
/* 802EA3B0 002E7310  C0 23 00 00 */	lfs f1, 0(r3)
/* 802EA3B4 002E7314  1D 20 01 6C */	mulli r9, r0, 0x16c
/* 802EA3B8 002E7318  C0 03 00 04 */	lfs f0, 4(r3)
/* 802EA3BC 002E731C  C0 83 00 08 */	lfs f4, 8(r3)
/* 802EA3C0 002E7320  38 00 00 01 */	li r0, 1
/* 802EA3C4 002E7324  C0 64 00 00 */	lfs f3, 0(r4)
/* 802EA3C8 002E7328  7D 08 4A 14 */	add r8, r8, r9
/* 802EA3CC 002E732C  D0 28 00 00 */	stfs f1, 0(r8)
/* 802EA3D0 002E7330  C0 44 00 04 */	lfs f2, 4(r4)
/* 802EA3D4 002E7334  D0 08 00 04 */	stfs f0, 4(r8)
/* 802EA3D8 002E7338  C0 24 00 08 */	lfs f1, 8(r4)
/* 802EA3DC 002E733C  D0 88 00 08 */	stfs f4, 8(r8)
/* 802EA3E0 002E7340  C0 05 00 00 */	lfs f0, 0(r5)
/* 802EA3E4 002E7344  D0 68 00 0C */	stfs f3, 0xc(r8)
/* 802EA3E8 002E7348  C0 85 00 04 */	lfs f4, 4(r5)
/* 802EA3EC 002E734C  D0 48 00 10 */	stfs f2, 0x10(r8)
/* 802EA3F0 002E7350  C0 65 00 08 */	lfs f3, 8(r5)
/* 802EA3F4 002E7354  D0 28 00 14 */	stfs f1, 0x14(r8)
/* 802EA3F8 002E7358  C0 46 00 00 */	lfs f2, 0(r6)
/* 802EA3FC 002E735C  D0 08 00 18 */	stfs f0, 0x18(r8)
/* 802EA400 002E7360  C0 26 00 04 */	lfs f1, 4(r6)
/* 802EA404 002E7364  D0 88 00 1C */	stfs f4, 0x1c(r8)
/* 802EA408 002E7368  C0 06 00 08 */	lfs f0, 8(r6)
/* 802EA40C 002E736C  D0 68 00 20 */	stfs f3, 0x20(r8)
/* 802EA410 002E7370  D0 48 00 24 */	stfs f2, 0x24(r8)
/* 802EA414 002E7374  D0 28 00 28 */	stfs f1, 0x28(r8)
/* 802EA418 002E7378  D0 08 00 2C */	stfs f0, 0x2c(r8)
/* 802EA41C 002E737C  98 E8 00 40 */	stb r7, 0x40(r8)
/* 802EA420 002E7380  98 08 00 44 */	stb r0, 0x44(r8)
/* 802EA424 002E7384  48 06 0A 55 */	bl S3dUpdateListener__9CAudioSysFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3fUc
/* 802EA428 002E7388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA42C 002E738C  7C 08 03 A6 */	mtlr r0
/* 802EA430 002E7390  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA434 002E7394  4E 80 00 20 */	blr

.global AddListener__11CSfxManagerFQ211CSfxManager12ESfxChannelsRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ffffUiUc
AddListener__11CSfxManagerFQ211CSfxManager12ESfxChannelsRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ffffUiUc:
/* 802EA438 002E7398  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802EA43C 002E739C  7C 08 02 A6 */	mflr r0
/* 802EA440 002E73A0  1D 83 01 6C */	mulli r12, r3, 0x16c
/* 802EA444 002E73A4  3D 60 80 5A */	lis r11, lbl_8059FD48@ha
/* 802EA448 002E73A8  90 01 00 84 */	stw r0, 0x84(r1)
/* 802EA44C 002E73AC  FC A0 08 18 */	frsp f5, f1
/* 802EA450 002E73B0  38 6B FD 48 */	addi r3, r11, lbl_8059FD48@l
/* 802EA454 002E73B4  FC 80 10 18 */	frsp f4, f2
/* 802EA458 002E73B8  80 04 00 00 */	lwz r0, 0(r4)
/* 802EA45C 002E73BC  81 44 00 04 */	lwz r10, 4(r4)
/* 802EA460 002E73C0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802EA464 002E73C4  80 04 00 08 */	lwz r0, 8(r4)
/* 802EA468 002E73C8  91 41 00 30 */	stw r10, 0x30(r1)
/* 802EA46C 002E73CC  7D 43 62 14 */	add r10, r3, r12
/* 802EA470 002E73D0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802EA474 002E73D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EA478 002E73D8  80 05 00 00 */	lwz r0, 0(r5)
/* 802EA47C 002E73DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802EA480 002E73E0  FC 00 18 18 */	frsp f0, f3
/* 802EA484 002E73E4  C0 C1 00 30 */	lfs f6, 0x30(r1)
/* 802EA488 002E73E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802EA48C 002E73EC  80 05 00 04 */	lwz r0, 4(r5)
/* 802EA490 002E73F0  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 802EA494 002E73F4  C0 C1 00 34 */	lfs f6, 0x34(r1)
/* 802EA498 002E73F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EA49C 002E73FC  80 05 00 08 */	lwz r0, 8(r5)
/* 802EA4A0 002E7400  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802EA4A4 002E7404  90 01 00 28 */	stw r0, 0x28(r1)
/* 802EA4A8 002E7408  80 06 00 00 */	lwz r0, 0(r6)
/* 802EA4AC 002E740C  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 802EA4B0 002E7410  C0 C1 00 20 */	lfs f6, 0x20(r1)
/* 802EA4B4 002E7414  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA4B8 002E7418  80 06 00 04 */	lwz r0, 4(r6)
/* 802EA4BC 002E741C  90 6A 00 00 */	stw r3, 0(r10)
/* 802EA4C0 002E7420  80 61 00 40 */	lwz r3, 0x40(r1)
/* 802EA4C4 002E7424  90 01 00 18 */	stw r0, 0x18(r1)
/* 802EA4C8 002E7428  80 06 00 08 */	lwz r0, 8(r6)
/* 802EA4CC 002E742C  D0 C1 00 44 */	stfs f6, 0x44(r1)
/* 802EA4D0 002E7430  C0 C1 00 24 */	lfs f6, 0x24(r1)
/* 802EA4D4 002E7434  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802EA4D8 002E7438  80 07 00 00 */	lwz r0, 0(r7)
/* 802EA4DC 002E743C  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 802EA4E0 002E7440  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 802EA4E4 002E7444  90 01 00 08 */	stw r0, 8(r1)
/* 802EA4E8 002E7448  80 07 00 04 */	lwz r0, 4(r7)
/* 802EA4EC 002E744C  D0 C1 00 4C */	stfs f6, 0x4c(r1)
/* 802EA4F0 002E7450  C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 802EA4F4 002E7454  90 01 00 0C */	stw r0, 0xc(r1)
/* 802EA4F8 002E7458  80 07 00 08 */	lwz r0, 8(r7)
/* 802EA4FC 002E745C  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 802EA500 002E7460  C0 C1 00 18 */	lfs f6, 0x18(r1)
/* 802EA504 002E7464  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EA508 002E7468  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802EA50C 002E746C  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 802EA510 002E7470  C0 C1 00 1C */	lfs f6, 0x1c(r1)
/* 802EA514 002E7474  90 0A 00 04 */	stw r0, 4(r10)
/* 802EA518 002E7478  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 802EA51C 002E747C  90 6A 00 08 */	stw r3, 8(r10)
/* 802EA520 002E7480  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802EA524 002E7484  D0 C1 00 58 */	stfs f6, 0x58(r1)
/* 802EA528 002E7488  C0 C1 00 08 */	lfs f6, 8(r1)
/* 802EA52C 002E748C  90 0A 00 0C */	stw r0, 0xc(r10)
/* 802EA530 002E7490  80 61 00 48 */	lwz r3, 0x48(r1)
/* 802EA534 002E7494  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 802EA538 002E7498  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 802EA53C 002E749C  90 6A 00 10 */	stw r3, 0x10(r10)
/* 802EA540 002E74A0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802EA544 002E74A4  80 61 00 50 */	lwz r3, 0x50(r1)
/* 802EA548 002E74A8  90 0A 00 14 */	stw r0, 0x14(r10)
/* 802EA54C 002E74AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802EA550 002E74B0  90 6A 00 18 */	stw r3, 0x18(r10)
/* 802EA554 002E74B4  80 61 00 58 */	lwz r3, 0x58(r1)
/* 802EA558 002E74B8  90 0A 00 1C */	stw r0, 0x1c(r10)
/* 802EA55C 002E74BC  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 802EA560 002E74C0  90 6A 00 20 */	stw r3, 0x20(r10)
/* 802EA564 002E74C4  D0 E1 00 60 */	stfs f7, 0x60(r1)
/* 802EA568 002E74C8  80 61 00 60 */	lwz r3, 0x60(r1)
/* 802EA56C 002E74CC  90 0A 00 24 */	stw r0, 0x24(r10)
/* 802EA570 002E74D0  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 802EA574 002E74D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802EA578 002E74D8  90 6A 00 28 */	stw r3, 0x28(r10)
/* 802EA57C 002E74DC  90 0A 00 2C */	stw r0, 0x2c(r10)
/* 802EA580 002E74E0  D0 AA 00 30 */	stfs f5, 0x30(r10)
/* 802EA584 002E74E4  D0 8A 00 34 */	stfs f4, 0x34(r10)
/* 802EA588 002E74E8  D0 0A 00 38 */	stfs f0, 0x38(r10)
/* 802EA58C 002E74EC  91 0A 00 3C */	stw r8, 0x3c(r10)
/* 802EA590 002E74F0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 802EA594 002E74F4  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 802EA598 002E74F8  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 802EA59C 002E74FC  91 01 00 74 */	stw r8, 0x74(r1)
/* 802EA5A0 002E7500  99 21 00 78 */	stb r9, 0x78(r1)
/* 802EA5A4 002E7504  99 2A 00 40 */	stb r9, 0x40(r10)
/* 802EA5A8 002E7508  38 00 00 01 */	li r0, 1
/* 802EA5AC 002E750C  7C 83 23 78 */	mr r3, r4
/* 802EA5B0 002E7510  98 0A 00 44 */	stb r0, 0x44(r10)
/* 802EA5B4 002E7514  7C A4 2B 78 */	mr r4, r5
/* 802EA5B8 002E7518  7C C5 33 78 */	mr r5, r6
/* 802EA5BC 002E751C  7C E6 3B 78 */	mr r6, r7
/* 802EA5C0 002E7520  7D 07 43 78 */	mr r7, r8
/* 802EA5C4 002E7524  7D 28 4B 78 */	mr r8, r9
/* 802EA5C8 002E7528  48 06 09 65 */	bl S3dAddListener__9CAudioSysFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ffffUiUc
/* 802EA5CC 002E752C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802EA5D0 002E7530  7C 08 03 A6 */	mtlr r0
/* 802EA5D4 002E7534  38 21 00 80 */	addi r1, r1, 0x80
/* 802EA5D8 002E7538  4E 80 00 20 */	blr

.global StopAndRemoveAllEmitters__11CSfxManagerFv
StopAndRemoveAllEmitters__11CSfxManagerFv:
/* 802EA5DC 002E753C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EA5E0 002E7540  7C 08 02 A6 */	mflr r0
/* 802EA5E4 002E7544  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802EA5E8 002E7548  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EA5EC 002E754C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802EA5F0 002E7550  3B 80 00 00 */	li r28, 0
/* 802EA5F4 002E7554  3B A3 FD 48 */	addi r29, r3, lbl_8059FD48@l
lbl_802EA5F8:
/* 802EA5F8 002E7558  3B DD 00 4C */	addi r30, r29, 0x4c
/* 802EA5FC 002E755C  3B 60 00 00 */	li r27, 0
/* 802EA600 002E7560  3B E0 00 00 */	li r31, 0
/* 802EA604 002E7564  48 00 00 50 */	b lbl_802EA654
lbl_802EA608:
/* 802EA608 002E7568  80 7E 00 00 */	lwz r3, 0(r30)
/* 802EA60C 002E756C  28 03 00 00 */	cmplwi r3, 0
/* 802EA610 002E7570  41 82 00 3C */	beq lbl_802EA64C
/* 802EA614 002E7574  81 83 00 00 */	lwz r12, 0(r3)
/* 802EA618 002E7578  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802EA61C 002E757C  7D 89 03 A6 */	mtctr r12
/* 802EA620 002E7580  4E 80 04 21 */	bctrl
/* 802EA624 002E7584  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EA628 002E7588  41 82 00 18 */	beq lbl_802EA640
/* 802EA62C 002E758C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802EA630 002E7590  81 83 00 00 */	lwz r12, 0(r3)
/* 802EA634 002E7594  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802EA638 002E7598  7D 89 03 A6 */	mtctr r12
/* 802EA63C 002E759C  4E 80 04 21 */	bctrl
lbl_802EA640:
/* 802EA640 002E75A0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802EA644 002E75A4  48 00 09 81 */	bl Release__Q211CSfxManager15CBaseSfxWrapperFv
/* 802EA648 002E75A8  93 FE 00 00 */	stw r31, 0(r30)
lbl_802EA64C:
/* 802EA64C 002E75AC  3B DE 00 04 */	addi r30, r30, 4
/* 802EA650 002E75B0  3B 7B 00 01 */	addi r27, r27, 1
lbl_802EA654:
/* 802EA654 002E75B4  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 802EA658 002E75B8  7C 1B 00 00 */	cmpw r27, r0
/* 802EA65C 002E75BC  41 80 FF AC */	blt lbl_802EA608
/* 802EA660 002E75C0  3B 9C 00 01 */	addi r28, r28, 1
/* 802EA664 002E75C4  3B BD 01 6C */	addi r29, r29, 0x16c
/* 802EA668 002E75C8  2C 1C 00 04 */	cmpwi r28, 4
/* 802EA66C 002E75CC  41 80 FF 8C */	blt lbl_802EA5F8
/* 802EA670 002E75D0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802EA674 002E75D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EA678 002E75D8  7C 08 03 A6 */	mtlr r0
/* 802EA67C 002E75DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802EA680 002E75E0  4E 80 00 20 */	blr

.global Shutdown__11CSfxManagerFv
Shutdown__11CSfxManagerFv:
/* 802EA684 002E75E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EA688 002E75E8  7C 08 02 A6 */	mflr r0
/* 802EA68C 002E75EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EA690 002E75F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EA694 002E75F4  83 ED A7 08 */	lwz r31, lbl_805A92C8@sda21(r13)
/* 802EA698 002E75F8  28 1F 00 00 */	cmplwi r31, 0
/* 802EA69C 002E75FC  41 82 00 4C */	beq lbl_802EA6E8
/* 802EA6A0 002E7600  80 1F 00 04 */	lwz r0, 4(r31)
/* 802EA6A4 002E7604  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802EA6A8 002E7608  54 00 08 3C */	slwi r0, r0, 1
/* 802EA6AC 002E760C  7C 03 02 14 */	add r0, r3, r0
/* 802EA6B0 002E7610  90 61 00 0C */	stw r3, 0xc(r1)
/* 802EA6B4 002E7614  7C 64 1B 78 */	mr r4, r3
/* 802EA6B8 002E7618  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA6BC 002E761C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802EA6C0 002E7620  90 61 00 08 */	stw r3, 8(r1)
/* 802EA6C4 002E7624  48 00 00 08 */	b lbl_802EA6CC
lbl_802EA6C8:
/* 802EA6C8 002E7628  38 84 00 02 */	addi r4, r4, 2
lbl_802EA6CC:
/* 802EA6CC 002E762C  7C 04 00 40 */	cmplw r4, r0
/* 802EA6D0 002E7630  40 82 FF F8 */	bne lbl_802EA6C8
/* 802EA6D4 002E7634  28 03 00 00 */	cmplwi r3, 0
/* 802EA6D8 002E7638  41 82 00 08 */	beq lbl_802EA6E0
/* 802EA6DC 002E763C  48 02 B2 55 */	bl Free__7CMemoryFPCv
lbl_802EA6E0:
/* 802EA6E0 002E7640  7F E3 FB 78 */	mr r3, r31
/* 802EA6E4 002E7644  48 02 B2 4D */	bl Free__7CMemoryFPCv
lbl_802EA6E8:
/* 802EA6E8 002E7648  38 00 00 00 */	li r0, 0
/* 802EA6EC 002E764C  90 0D A7 08 */	stw r0, lbl_805A92C8@sda21(r13)
/* 802EA6F0 002E7650  4B FF FE ED */	bl StopAndRemoveAllEmitters__11CSfxManagerFv
/* 802EA6F4 002E7654  80 0D 9B B0 */	lwz r0, lbl_805A8770@sda21(r13)
/* 802EA6F8 002E7658  2C 00 FF FF */	cmpwi r0, -1
/* 802EA6FC 002E765C  41 82 00 08 */	beq lbl_802EA704
/* 802EA700 002E7660  4B FF D5 71 */	bl DisableAuxCallback__11CSfxManagerFv
lbl_802EA704:
/* 802EA704 002E7664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EA708 002E7668  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EA70C 002E766C  7C 08 03 A6 */	mtlr r0
/* 802EA710 002E7670  38 21 00 20 */	addi r1, r1, 0x20
/* 802EA714 002E7674  4E 80 00 20 */	blr

.global UpdateEmitter__Q211CSfxManager11CSfxWrapperFv
UpdateEmitter__Q211CSfxManager11CSfxWrapperFv:
/* 802EA718 002E7678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA71C 002E767C  7C 08 02 A6 */	mflr r0
/* 802EA720 002E7680  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA724 002E7684  A8 03 00 20 */	lha r0, 0x20(r3)
/* 802EA728 002E7688  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802EA72C 002E768C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EA730 002E7690  48 06 0E 3D */	bl SfxVolume__9CAudioSysFUlUc
/* 802EA734 002E7694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA738 002E7698  7C 08 03 A6 */	mtlr r0
/* 802EA73C 002E769C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA740 002E76A0  4E 80 00 20 */	blr

.global UpdateEmitterSilent__Q211CSfxManager11CSfxWrapperFv
UpdateEmitterSilent__Q211CSfxManager11CSfxWrapperFv:
/* 802EA744 002E76A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA748 002E76A8  7C 08 02 A6 */	mflr r0
/* 802EA74C 002E76AC  38 80 00 01 */	li r4, 1
/* 802EA750 002E76B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA754 002E76B4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802EA758 002E76B8  48 06 0E 15 */	bl SfxVolume__9CAudioSysFUlUc
/* 802EA75C 002E76BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA760 002E76C0  7C 08 03 A6 */	mtlr r0
/* 802EA764 002E76C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA768 002E76C8  4E 80 00 20 */	blr

.global SetVolume__Q211CSfxManager11CSfxWrapperFs
SetVolume__Q211CSfxManager11CSfxWrapperFs:
/* 802EA76C 002E76CC  B0 83 00 20 */	sth r4, 0x20(r3)
/* 802EA770 002E76D0  4E 80 00 20 */	blr

.global GetVoice__Q211CSfxManager11CSfxWrapperCFv
GetVoice__Q211CSfxManager11CSfxWrapperCFv:
/* 802EA774 002E76D4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802EA778 002E76D8  4E 80 00 20 */	blr

.global GetAudible__Q211CSfxManager11CSfxWrapperFRC9CVector3f
GetAudible__Q211CSfxManager11CSfxWrapperFRC9CVector3f:
/* 802EA77C 002E76DC  38 60 00 03 */	li r3, 3
/* 802EA780 002E76E0  4E 80 00 20 */	blr

.global Ready__Q211CSfxManager11CSfxWrapperFv
Ready__Q211CSfxManager11CSfxWrapperFv:
/* 802EA784 002E76E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA788 002E76E8  7C 08 02 A6 */	mflr r0
/* 802EA78C 002E76EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA790 002E76F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA794 002E76F4  3B E0 00 00 */	li r31, 0
/* 802EA798 002E76F8  93 C1 00 08 */	stw r30, 8(r1)
/* 802EA79C 002E76FC  7C 7E 1B 78 */	mr r30, r3
/* 802EA7A0 002E7700  81 83 00 00 */	lwz r12, 0(r3)
/* 802EA7A4 002E7704  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802EA7A8 002E7708  7D 89 03 A6 */	mtctr r12
/* 802EA7AC 002E770C  4E 80 04 21 */	bctrl
/* 802EA7B0 002E7710  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EA7B4 002E7714  40 82 00 10 */	bne lbl_802EA7C4
/* 802EA7B8 002E7718  88 1E 00 24 */	lbz r0, 0x24(r30)
/* 802EA7BC 002E771C  28 00 00 00 */	cmplwi r0, 0
/* 802EA7C0 002E7720  41 82 00 08 */	beq lbl_802EA7C8
lbl_802EA7C4:
/* 802EA7C4 002E7724  3B E0 00 01 */	li r31, 1
lbl_802EA7C8:
/* 802EA7C8 002E7728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA7CC 002E772C  7F E3 FB 78 */	mr r3, r31
/* 802EA7D0 002E7730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA7D4 002E7734  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EA7D8 002E7738  7C 08 03 A6 */	mtlr r0
/* 802EA7DC 002E773C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA7E0 002E7740  4E 80 00 20 */	blr

.global IsPlaying__Q211CSfxManager11CSfxWrapperCFv
IsPlaying__Q211CSfxManager11CSfxWrapperCFv:
/* 802EA7E4 002E7744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA7E8 002E7748  7C 08 02 A6 */	mflr r0
/* 802EA7EC 002E774C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA7F0 002E7750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA7F4 002E7754  3B E0 00 00 */	li r31, 0
/* 802EA7F8 002E7758  93 C1 00 08 */	stw r30, 8(r1)
/* 802EA7FC 002E775C  7C 7E 1B 78 */	mr r30, r3
/* 802EA800 002E7760  48 00 07 59 */	bl IsPlaying__Q211CSfxManager15CBaseSfxWrapperCFv
/* 802EA804 002E7764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EA808 002E7768  41 82 00 1C */	beq lbl_802EA824
/* 802EA80C 002E776C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802EA810 002E7770  48 06 0D B5 */	bl SfxCheck__9CAudioSysFUl
/* 802EA814 002E7774  3C 03 00 01 */	addis r0, r3, 1
/* 802EA818 002E7778  28 00 FF FF */	cmplwi r0, 0xffff
/* 802EA81C 002E777C  41 82 00 08 */	beq lbl_802EA824
/* 802EA820 002E7780  3B E0 00 01 */	li r31, 1
lbl_802EA824:
/* 802EA824 002E7784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA828 002E7788  7F E3 FB 78 */	mr r3, r31
/* 802EA82C 002E778C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA830 002E7790  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EA834 002E7794  7C 08 03 A6 */	mtlr r0
/* 802EA838 002E7798  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA83C 002E779C  4E 80 00 20 */	blr

.global Stop__Q211CSfxManager11CSfxWrapperFv
Stop__Q211CSfxManager11CSfxWrapperFv:
/* 802EA840 002E77A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA844 002E77A4  7C 08 02 A6 */	mflr r0
/* 802EA848 002E77A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA84C 002E77AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA850 002E77B0  7C 7F 1B 78 */	mr r31, r3
/* 802EA854 002E77B4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802EA858 002E77B8  3C 03 00 01 */	addis r0, r3, 1
/* 802EA85C 002E77BC  28 00 FF FF */	cmplwi r0, 0xffff
/* 802EA860 002E77C0  41 82 00 28 */	beq lbl_802EA888
/* 802EA864 002E77C4  48 06 0D 81 */	bl SfxStop__9CAudioSysFUl
/* 802EA868 002E77C8  7F E3 FB 78 */	mr r3, r31
/* 802EA86C 002E77CC  38 80 00 00 */	li r4, 0
/* 802EA870 002E77D0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EA874 002E77D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EA878 002E77D8  7D 89 03 A6 */	mtctr r12
/* 802EA87C 002E77DC  4E 80 04 21 */	bctrl
/* 802EA880 002E77E0  38 00 FF FF */	li r0, -1
/* 802EA884 002E77E4  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_802EA888:
/* 802EA888 002E77E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA88C 002E77EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA890 002E77F0  7C 08 03 A6 */	mtlr r0
/* 802EA894 002E77F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA898 002E77F8  4E 80 00 20 */	blr

.global GetSFXId__Q211CSfxManager11CSfxWrapperCFv
GetSFXId__Q211CSfxManager11CSfxWrapperCFv:
/* 802EA89C 002E77FC  A0 63 00 18 */	lhz r3, 0x18(r3)
/* 802EA8A0 002E7800  4E 80 00 20 */	blr

.global Play__Q211CSfxManager11CSfxWrapperFv
Play__Q211CSfxManager11CSfxWrapperFv:
/* 802EA8A4 002E7804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA8A8 002E7808  7C 08 02 A6 */	mflr r0
/* 802EA8AC 002E780C  38 C0 00 00 */	li r6, 0
/* 802EA8B0 002E7810  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA8B4 002E7814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA8B8 002E7818  7C 7F 1B 78 */	mr r31, r3
/* 802EA8BC 002E781C  A8 9F 00 20 */	lha r4, 0x20(r31)
/* 802EA8C0 002E7820  A8 1F 00 22 */	lha r0, 0x22(r31)
/* 802EA8C4 002E7824  A0 63 00 18 */	lhz r3, 0x18(r3)
/* 802EA8C8 002E7828  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 802EA8CC 002E782C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802EA8D0 002E7830  48 06 0D 35 */	bl SfxStart__9CAudioSysFUsUcUcUc
/* 802EA8D4 002E7834  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 802EA8D8 002E7838  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802EA8DC 002E783C  3C 03 00 01 */	addis r0, r3, 1
/* 802EA8E0 002E7840  28 00 FF FF */	cmplwi r0, 0xffff
/* 802EA8E4 002E7844  41 82 00 5C */	beq lbl_802EA940
/* 802EA8E8 002E7848  4B FF DB 49 */	bl IsAuxProcessingEnabled__11CSfxManagerFv
/* 802EA8EC 002E784C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EA8F0 002E7850  41 82 00 38 */	beq lbl_802EA928
/* 802EA8F4 002E7854  7F E3 FB 78 */	mr r3, r31
/* 802EA8F8 002E7858  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EA8FC 002E785C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802EA900 002E7860  7D 89 03 A6 */	mtctr r12
/* 802EA904 002E7864  4E 80 04 21 */	bctrl
/* 802EA908 002E7868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EA90C 002E786C  41 82 00 1C */	beq lbl_802EA928
/* 802EA910 002E7870  4B FF DB 01 */	bl GetReverbAmount__11CSfxManagerFv
/* 802EA914 002E7874  7C 60 1B 78 */	mr r0, r3
/* 802EA918 002E7878  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802EA91C 002E787C  38 80 00 5B */	li r4, 0x5b
/* 802EA920 002E7880  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 802EA924 002E7884  48 06 0B FD */	bl SfxCtrl__9CAudioSysFUlUcUc
lbl_802EA928:
/* 802EA928 002E7888  7F E3 FB 78 */	mr r3, r31
/* 802EA92C 002E788C  38 80 00 01 */	li r4, 1
/* 802EA930 002E7890  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EA934 002E7894  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EA938 002E7898  7D 89 03 A6 */	mtctr r12
/* 802EA93C 002E789C  4E 80 04 21 */	bctrl
lbl_802EA940:
/* 802EA940 002E78A0  38 00 00 00 */	li r0, 0
/* 802EA944 002E78A4  98 1F 00 24 */	stb r0, 0x24(r31)
/* 802EA948 002E78A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA94C 002E78AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA950 002E78B0  7C 08 03 A6 */	mtlr r0
/* 802EA954 002E78B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA958 002E78B8  4E 80 00 20 */	blr

.global SetReverb__Q211CSfxManager11CSfxWrapperFc
SetReverb__Q211CSfxManager11CSfxWrapperFc:
/* 802EA95C 002E78BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA960 002E78C0  7C 08 02 A6 */	mflr r0
/* 802EA964 002E78C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA968 002E78C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA96C 002E78CC  7C 9F 23 78 */	mr r31, r4
/* 802EA970 002E78D0  93 C1 00 08 */	stw r30, 8(r1)
/* 802EA974 002E78D4  7C 7E 1B 78 */	mr r30, r3
/* 802EA978 002E78D8  4B FF DA B9 */	bl IsAuxProcessingEnabled__11CSfxManagerFv
/* 802EA97C 002E78DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EA980 002E78E0  41 82 00 30 */	beq lbl_802EA9B0
/* 802EA984 002E78E4  7F C3 F3 78 */	mr r3, r30
/* 802EA988 002E78E8  81 9E 00 00 */	lwz r12, 0(r30)
/* 802EA98C 002E78EC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802EA990 002E78F0  7D 89 03 A6 */	mtctr r12
/* 802EA994 002E78F4  4E 80 04 21 */	bctrl
/* 802EA998 002E78F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EA99C 002E78FC  41 82 00 14 */	beq lbl_802EA9B0
/* 802EA9A0 002E7900  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802EA9A4 002E7904  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 802EA9A8 002E7908  38 80 00 5B */	li r4, 0x5b
/* 802EA9AC 002E790C  48 06 0B 75 */	bl SfxCtrl__9CAudioSysFUlUcUc
lbl_802EA9B0:
/* 802EA9B0 002E7910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA9B4 002E7914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA9B8 002E7918  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EA9BC 002E791C  7C 08 03 A6 */	mtlr r0
/* 802EA9C0 002E7920  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA9C4 002E7924  4E 80 00 20 */	blr

.global __ct__Q211CSfxManager11CSfxWrapperFbsUsss10CSfxHandlebi
__ct__Q211CSfxManager11CSfxWrapperFbsUsss10CSfxHandlebi:
/* 802EA9C8 002E7928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EA9CC 002E792C  7C 08 02 A6 */	mflr r0
/* 802EA9D0 002E7930  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EA9D4 002E7934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EA9D8 002E7938  7D 1F 43 78 */	mr r31, r8
/* 802EA9DC 002E793C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EA9E0 002E7940  7C FE 3B 78 */	mr r30, r7
/* 802EA9E4 002E7944  7D 47 53 78 */	mr r7, r10
/* 802EA9E8 002E7948  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EA9EC 002E794C  7C DD 33 78 */	mr r29, r6
/* 802EA9F0 002E7950  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 802EA9F4 002E7954  93 81 00 10 */	stw r28, 0x10(r1)
/* 802EA9F8 002E7958  7C 7C 1B 78 */	mr r28, r3
/* 802EA9FC 002E795C  7C C8 33 78 */	mr r8, r6
/* 802EAA00 002E7960  38 C1 00 08 */	addi r6, r1, 8
/* 802EAA04 002E7964  80 09 00 00 */	lwz r0, 0(r9)
/* 802EAA08 002E7968  90 01 00 08 */	stw r0, 8(r1)
/* 802EAA0C 002E796C  48 00 05 E1 */	bl __ct__Q211CSfxManager15CBaseSfxWrapperFbs10CSfxHandlebi
/* 802EAA10 002E7970  3C 60 80 3F */	lis r3, lbl_803ECE10@ha
/* 802EAA14 002E7974  38 80 FF FF */	li r4, -1
/* 802EAA18 002E7978  38 63 CE 10 */	addi r3, r3, lbl_803ECE10@l
/* 802EAA1C 002E797C  38 00 00 01 */	li r0, 1
/* 802EAA20 002E7980  90 7C 00 00 */	stw r3, 0(r28)
/* 802EAA24 002E7984  7F 83 E3 78 */	mr r3, r28
/* 802EAA28 002E7988  B3 BC 00 18 */	sth r29, 0x18(r28)
/* 802EAA2C 002E798C  90 9C 00 1C */	stw r4, 0x1c(r28)
/* 802EAA30 002E7990  B3 DC 00 20 */	sth r30, 0x20(r28)
/* 802EAA34 002E7994  B3 FC 00 22 */	sth r31, 0x22(r28)
/* 802EAA38 002E7998  98 1C 00 24 */	stb r0, 0x24(r28)
/* 802EAA3C 002E799C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EAA40 002E79A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EAA44 002E79A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EAA48 002E79A8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EAA4C 002E79AC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802EAA50 002E79B0  7C 08 03 A6 */	mtlr r0
/* 802EAA54 002E79B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802EAA58 002E79B8  4E 80 00 20 */	blr

.global UpdateEmitter__Q211CSfxManager18CSfxEmitterWrapperFv
UpdateEmitter__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EAA5C 002E79BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EAA60 002E79C0  7C 08 02 A6 */	mflr r0
/* 802EAA64 002E79C4  7C 65 1B 78 */	mr r5, r3
/* 802EAA68 002E79C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EAA6C 002E79CC  38 85 00 24 */	addi r4, r5, 0x24
/* 802EAA70 002E79D0  38 A5 00 30 */	addi r5, r5, 0x30
/* 802EAA74 002E79D4  88 C3 00 55 */	lbz r6, 0x55(r3)
/* 802EAA78 002E79D8  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802EAA7C 002E79DC  48 06 01 C5 */	bl S3dUpdateEmitter__9CAudioSysFUiRC9CVector3fRC9CVector3fUc
/* 802EAA80 002E79E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAA84 002E79E4  7C 08 03 A6 */	mtlr r0
/* 802EAA88 002E79E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAA8C 002E79EC  4E 80 00 20 */	blr

.global UpdateEmitterSilent__Q211CSfxManager18CSfxEmitterWrapperFv
UpdateEmitterSilent__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EAA90 002E79F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EAA94 002E79F4  7C 08 02 A6 */	mflr r0
/* 802EAA98 002E79F8  38 83 00 24 */	addi r4, r3, 0x24
/* 802EAA9C 002E79FC  38 A3 00 30 */	addi r5, r3, 0x30
/* 802EAAA0 002E7A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EAAA4 002E7A04  38 C0 00 01 */	li r6, 1
/* 802EAAA8 002E7A08  88 03 00 4A */	lbz r0, 0x4a(r3)
/* 802EAAAC 002E7A0C  98 03 00 55 */	stb r0, 0x55(r3)
/* 802EAAB0 002E7A10  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802EAAB4 002E7A14  48 06 01 8D */	bl S3dUpdateEmitter__9CAudioSysFUiRC9CVector3fRC9CVector3fUc
/* 802EAAB8 002E7A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAABC 002E7A1C  7C 08 03 A6 */	mtlr r0
/* 802EAAC0 002E7A20  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAAC4 002E7A24  4E 80 00 20 */	blr

.global GetVoice__Q211CSfxManager18CSfxEmitterWrapperCFv
GetVoice__Q211CSfxManager18CSfxEmitterWrapperCFv:
/* 802EAAC8 002E7A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EAACC 002E7A2C  7C 08 02 A6 */	mflr r0
/* 802EAAD0 002E7A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EAAD4 002E7A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EAAD8 002E7A38  7C 7F 1B 78 */	mr r31, r3
/* 802EAADC 002E7A3C  81 83 00 00 */	lwz r12, 0(r3)
/* 802EAAE0 002E7A40  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802EAAE4 002E7A44  7D 89 03 A6 */	mtctr r12
/* 802EAAE8 002E7A48  4E 80 04 21 */	bctrl
/* 802EAAEC 002E7A4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAAF0 002E7A50  41 82 00 10 */	beq lbl_802EAB00
/* 802EAAF4 002E7A54  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802EAAF8 002E7A58  48 05 FF 25 */	bl S3dEmitterVoiceID__9CAudioSysFUi
/* 802EAAFC 002E7A5C  48 00 00 08 */	b lbl_802EAB04
lbl_802EAB00:
/* 802EAB00 002E7A60  38 60 FF FF */	li r3, -1
lbl_802EAB04:
/* 802EAB04 002E7A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAB08 002E7A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EAB0C 002E7A6C  7C 08 03 A6 */	mtlr r0
/* 802EAB10 002E7A70  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAB14 002E7A74  4E 80 00 20 */	blr

.global GetAudible__Q211CSfxManager18CSfxEmitterWrapperFRC9CVector3f
GetAudible__Q211CSfxManager18CSfxEmitterWrapperFRC9CVector3f:
/* 802EAB18 002E7A78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EAB1C 002E7A7C  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 802EAB20 002E7A80  C0 04 00 04 */	lfs f0, 4(r4)
/* 802EAB24 002E7A84  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 802EAB28 002E7A88  EC A2 00 28 */	fsubs f5, f2, f0
/* 802EAB2C 002E7A8C  C0 04 00 00 */	lfs f0, 0(r4)
/* 802EAB30 002E7A90  C0 63 00 3C */	lfs f3, 0x3c(r3)
/* 802EAB34 002E7A94  EC 21 00 28 */	fsubs f1, f1, f0
/* 802EAB38 002E7A98  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 802EAB3C 002E7A9C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802EAB40 002E7AA0  EC C3 00 F2 */	fmuls f6, f3, f3
/* 802EAB44 002E7AA4  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 802EAB48 002E7AA8  EC 82 00 28 */	fsubs f4, f2, f0
/* 802EAB4C 002E7AAC  EC 41 00 72 */	fmuls f2, f1, f1
/* 802EAB50 002E7AB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 802EAB54 002E7AB4  EC 25 01 72 */	fmuls f1, f5, f5
/* 802EAB58 002E7AB8  C0 02 C6 1C */	lfs f0, lbl_805AE33C@sda21(r2)
/* 802EAB5C 002E7ABC  EC 64 01 32 */	fmuls f3, f4, f4
/* 802EAB60 002E7AC0  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 802EAB64 002E7AC4  EC 22 08 2A */	fadds f1, f2, f1
/* 802EAB68 002E7AC8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 802EAB6C 002E7ACC  EC 23 08 2A */	fadds f1, f3, f1
/* 802EAB70 002E7AD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802EAB74 002E7AD4  40 80 00 0C */	bge lbl_802EAB80
/* 802EAB78 002E7AD8  38 60 00 03 */	li r3, 3
/* 802EAB7C 002E7ADC  48 00 00 2C */	b lbl_802EABA8
lbl_802EAB80:
/* 802EAB80 002E7AE0  C0 02 C6 20 */	lfs f0, lbl_805AE340@sda21(r2)
/* 802EAB84 002E7AE4  EC 00 01 B2 */	fmuls f0, f0, f6
/* 802EAB88 002E7AE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802EAB8C 002E7AEC  40 80 00 0C */	bge lbl_802EAB98
/* 802EAB90 002E7AF0  38 60 00 02 */	li r3, 2
/* 802EAB94 002E7AF4  48 00 00 14 */	b lbl_802EABA8
lbl_802EAB98:
/* 802EAB98 002E7AF8  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 802EAB9C 002E7AFC  7C 00 00 26 */	mfcr r0
/* 802EABA0 002E7B00  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802EABA4 002E7B04  7C 03 07 34 */	extsh r3, r0
lbl_802EABA8:
/* 802EABA8 002E7B08  38 21 00 20 */	addi r1, r1, 0x20
/* 802EABAC 002E7B0C  4E 80 00 20 */	blr

.global Ready__Q211CSfxManager18CSfxEmitterWrapperFv
Ready__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EABB0 002E7B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EABB4 002E7B14  7C 08 02 A6 */	mflr r0
/* 802EABB8 002E7B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EABBC 002E7B1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EABC0 002E7B20  3B E0 00 00 */	li r31, 0
/* 802EABC4 002E7B24  93 C1 00 08 */	stw r30, 8(r1)
/* 802EABC8 002E7B28  7C 7E 1B 78 */	mr r30, r3
/* 802EABCC 002E7B2C  81 83 00 00 */	lwz r12, 0(r3)
/* 802EABD0 002E7B30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802EABD4 002E7B34  7D 89 03 A6 */	mtctr r12
/* 802EABD8 002E7B38  4E 80 04 21 */	bctrl
/* 802EABDC 002E7B3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EABE0 002E7B40  40 82 00 10 */	bne lbl_802EABF0
/* 802EABE4 002E7B44  88 1E 00 54 */	lbz r0, 0x54(r30)
/* 802EABE8 002E7B48  28 00 00 00 */	cmplwi r0, 0
/* 802EABEC 002E7B4C  41 82 00 08 */	beq lbl_802EABF4
lbl_802EABF0:
/* 802EABF0 002E7B50  3B E0 00 01 */	li r31, 1
lbl_802EABF4:
/* 802EABF4 002E7B54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EABF8 002E7B58  7F E3 FB 78 */	mr r3, r31
/* 802EABFC 002E7B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EAC00 002E7B60  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EAC04 002E7B64  7C 08 03 A6 */	mtlr r0
/* 802EAC08 002E7B68  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAC0C 002E7B6C  4E 80 00 20 */	blr

.global IsPlaying__Q211CSfxManager18CSfxEmitterWrapperCFv
IsPlaying__Q211CSfxManager18CSfxEmitterWrapperCFv:
/* 802EAC10 002E7B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EAC14 002E7B74  7C 08 02 A6 */	mflr r0
/* 802EAC18 002E7B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EAC1C 002E7B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EAC20 002E7B80  93 C1 00 08 */	stw r30, 8(r1)
/* 802EAC24 002E7B84  7C 7E 1B 78 */	mr r30, r3
/* 802EAC28 002E7B88  81 83 00 00 */	lwz r12, 0(r3)
/* 802EAC2C 002E7B8C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802EAC30 002E7B90  7D 89 03 A6 */	mtctr r12
/* 802EAC34 002E7B94  4E 80 04 21 */	bctrl
/* 802EAC38 002E7B98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAC3C 002E7B9C  41 82 00 10 */	beq lbl_802EAC4C
/* 802EAC40 002E7BA0  7F C3 F3 78 */	mr r3, r30
/* 802EAC44 002E7BA4  48 00 03 15 */	bl IsPlaying__Q211CSfxManager15CBaseSfxWrapperCFv
/* 802EAC48 002E7BA8  48 00 00 30 */	b lbl_802EAC78
lbl_802EAC4C:
/* 802EAC4C 002E7BAC  7F C3 F3 78 */	mr r3, r30
/* 802EAC50 002E7BB0  3B E0 00 00 */	li r31, 0
/* 802EAC54 002E7BB4  48 00 03 05 */	bl IsPlaying__Q211CSfxManager15CBaseSfxWrapperCFv
/* 802EAC58 002E7BB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAC5C 002E7BBC  41 82 00 18 */	beq lbl_802EAC74
/* 802EAC60 002E7BC0  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802EAC64 002E7BC4  48 05 FE 11 */	bl S3dCheckEmitter__9CAudioSysFUi
/* 802EAC68 002E7BC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAC6C 002E7BCC  41 82 00 08 */	beq lbl_802EAC74
/* 802EAC70 002E7BD0  3B E0 00 01 */	li r31, 1
lbl_802EAC74:
/* 802EAC74 002E7BD4  7F E3 FB 78 */	mr r3, r31
lbl_802EAC78:
/* 802EAC78 002E7BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAC7C 002E7BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EAC80 002E7BE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EAC84 002E7BE4  7C 08 03 A6 */	mtlr r0
/* 802EAC88 002E7BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAC8C 002E7BEC  4E 80 00 20 */	blr

.global GetHandle__Q211CSfxManager18CSfxEmitterWrapperCFv
GetHandle__Q211CSfxManager18CSfxEmitterWrapperCFv:
/* 802EAC90 002E7BF0  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802EAC94 002E7BF4  4E 80 00 20 */	blr

.global GetEmitter__Q211CSfxManager18CSfxEmitterWrapperFv
GetEmitter__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EAC98 002E7BF8  38 63 00 24 */	addi r3, r3, 0x24
/* 802EAC9C 002E7BFC  4E 80 00 20 */	blr

.global Stop__Q211CSfxManager18CSfxEmitterWrapperFv
Stop__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EACA0 002E7C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EACA4 002E7C04  7C 08 02 A6 */	mflr r0
/* 802EACA8 002E7C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EACAC 002E7C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EACB0 002E7C10  7C 7F 1B 78 */	mr r31, r3
/* 802EACB4 002E7C14  80 63 00 50 */	lwz r3, 0x50(r3)
/* 802EACB8 002E7C18  3C 03 00 01 */	addis r0, r3, 1
/* 802EACBC 002E7C1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 802EACC0 002E7C20  41 82 00 28 */	beq lbl_802EACE8
/* 802EACC4 002E7C24  48 05 FF 15 */	bl S3dRemoveEmitter__9CAudioSysFUi
/* 802EACC8 002E7C28  7F E3 FB 78 */	mr r3, r31
/* 802EACCC 002E7C2C  38 80 00 00 */	li r4, 0
/* 802EACD0 002E7C30  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EACD4 002E7C34  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EACD8 002E7C38  7D 89 03 A6 */	mtctr r12
/* 802EACDC 002E7C3C  4E 80 04 21 */	bctrl
/* 802EACE0 002E7C40  38 00 FF FF */	li r0, -1
/* 802EACE4 002E7C44  90 1F 00 50 */	stw r0, 0x50(r31)
lbl_802EACE8:
/* 802EACE8 002E7C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EACEC 002E7C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EACF0 002E7C50  7C 08 03 A6 */	mtlr r0
/* 802EACF4 002E7C54  38 21 00 10 */	addi r1, r1, 0x10
/* 802EACF8 002E7C58  4E 80 00 20 */	blr

.global GetSfxId__Q211CSfxManager18CSfxEmitterWrapperFv
GetSfxId__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EACFC 002E7C5C  A0 63 00 48 */	lhz r3, 0x48(r3)
/* 802EAD00 002E7C60  4E 80 00 20 */	blr

.global Play__Q211CSfxManager18CSfxEmitterWrapperFv
Play__Q211CSfxManager18CSfxEmitterWrapperFv:
/* 802EAD04 002E7C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EAD08 002E7C68  7C 08 02 A6 */	mflr r0
/* 802EAD0C 002E7C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EAD10 002E7C70  38 00 00 01 */	li r0, 1
/* 802EAD14 002E7C74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EAD18 002E7C78  7C 7F 1B 78 */	mr r31, r3
/* 802EAD1C 002E7C7C  98 03 00 1C */	stb r0, 0x1c(r3)
/* 802EAD20 002E7C80  38 7F 00 18 */	addi r3, r31, 0x18
/* 802EAD24 002E7C84  38 00 00 5B */	li r0, 0x5b
/* 802EAD28 002E7C88  90 7F 00 20 */	stw r3, 0x20(r31)
/* 802EAD2C 002E7C8C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802EAD30 002E7C90  4B FF D7 01 */	bl IsAuxProcessingEnabled__11CSfxManagerFv
/* 802EAD34 002E7C94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAD38 002E7C98  41 82 00 2C */	beq lbl_802EAD64
/* 802EAD3C 002E7C9C  7F E3 FB 78 */	mr r3, r31
/* 802EAD40 002E7CA0  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EAD44 002E7CA4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802EAD48 002E7CA8  7D 89 03 A6 */	mtctr r12
/* 802EAD4C 002E7CAC  4E 80 04 21 */	bctrl
/* 802EAD50 002E7CB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAD54 002E7CB4  41 82 00 10 */	beq lbl_802EAD64
/* 802EAD58 002E7CB8  4B FF D6 B9 */	bl GetReverbAmount__11CSfxManagerFv
/* 802EAD5C 002E7CBC  98 7F 00 1A */	stb r3, 0x1a(r31)
/* 802EAD60 002E7CC0  48 00 00 0C */	b lbl_802EAD6C
lbl_802EAD64:
/* 802EAD64 002E7CC4  38 00 00 00 */	li r0, 0
/* 802EAD68 002E7CC8  98 1F 00 1A */	stb r0, 0x1a(r31)
lbl_802EAD6C:
/* 802EAD6C 002E7CCC  7F E4 FB 78 */	mr r4, r31
/* 802EAD70 002E7CD0  38 61 00 08 */	addi r3, r1, 8
/* 802EAD74 002E7CD4  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EAD78 002E7CD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802EAD7C 002E7CDC  7D 89 03 A6 */	mtctr r12
/* 802EAD80 002E7CE0  4E 80 04 21 */	bctrl
/* 802EAD84 002E7CE4  80 01 00 08 */	lwz r0, 8(r1)
/* 802EAD88 002E7CE8  38 7F 00 24 */	addi r3, r31, 0x24
/* 802EAD8C 002E7CEC  38 BF 00 1C */	addi r5, r31, 0x1c
/* 802EAD90 002E7CF0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802EAD94 002E7CF4  48 05 FF 31 */	bl S3dAddEmitterParaEx__9CAudioSysFRCQ29CAudioSys18C3DEmitterParmDataUsP18SND_PARAMETER_INFO
/* 802EAD98 002E7CF8  90 7F 00 50 */	stw r3, 0x50(r31)
/* 802EAD9C 002E7CFC  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802EADA0 002E7D00  3C 03 00 01 */	addis r0, r3, 1
/* 802EADA4 002E7D04  28 00 FF FF */	cmplwi r0, 0xffff
/* 802EADA8 002E7D08  41 82 00 1C */	beq lbl_802EADC4
/* 802EADAC 002E7D0C  7F E3 FB 78 */	mr r3, r31
/* 802EADB0 002E7D10  38 80 00 01 */	li r4, 1
/* 802EADB4 002E7D14  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EADB8 002E7D18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EADBC 002E7D1C  7D 89 03 A6 */	mtctr r12
/* 802EADC0 002E7D20  4E 80 04 21 */	bctrl
lbl_802EADC4:
/* 802EADC4 002E7D24  38 00 00 00 */	li r0, 0
/* 802EADC8 002E7D28  98 1F 00 54 */	stb r0, 0x54(r31)
/* 802EADCC 002E7D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EADD0 002E7D30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EADD4 002E7D34  7C 08 03 A6 */	mtlr r0
/* 802EADD8 002E7D38  38 21 00 20 */	addi r1, r1, 0x20
/* 802EADDC 002E7D3C  4E 80 00 20 */	blr

.global SetReverb__Q211CSfxManager18CSfxEmitterWrapperFc
SetReverb__Q211CSfxManager18CSfxEmitterWrapperFc:
/* 802EADE0 002E7D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EADE4 002E7D44  7C 08 02 A6 */	mflr r0
/* 802EADE8 002E7D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EADEC 002E7D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EADF0 002E7D50  7C 9F 23 78 */	mr r31, r4
/* 802EADF4 002E7D54  93 C1 00 08 */	stw r30, 8(r1)
/* 802EADF8 002E7D58  7C 7E 1B 78 */	mr r30, r3
/* 802EADFC 002E7D5C  4B FF D6 35 */	bl IsAuxProcessingEnabled__11CSfxManagerFv
/* 802EAE00 002E7D60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAE04 002E7D64  41 82 00 24 */	beq lbl_802EAE28
/* 802EAE08 002E7D68  7F C3 F3 78 */	mr r3, r30
/* 802EAE0C 002E7D6C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802EAE10 002E7D70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802EAE14 002E7D74  7D 89 03 A6 */	mtctr r12
/* 802EAE18 002E7D78  4E 80 04 21 */	bctrl
/* 802EAE1C 002E7D7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EAE20 002E7D80  41 82 00 08 */	beq lbl_802EAE28
/* 802EAE24 002E7D84  9B FE 00 1A */	stb r31, 0x1a(r30)
lbl_802EAE28:
/* 802EAE28 002E7D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EAE2C 002E7D8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EAE30 002E7D90  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EAE34 002E7D94  7C 08 03 A6 */	mtlr r0
/* 802EAE38 002E7D98  38 21 00 10 */	addi r1, r1, 0x10
/* 802EAE3C 002E7D9C  4E 80 00 20 */	blr

.global __ct__Q211CSfxManager18CSfxEmitterWrapperFbsRQ29CAudioSys18C3DEmitterParmData10CSfxHandlebi
__ct__Q211CSfxManager18CSfxEmitterWrapperFbsRQ29CAudioSys18C3DEmitterParmData10CSfxHandlebi:
/* 802EAE40 002E7DA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EAE44 002E7DA4  7C 08 02 A6 */	mflr r0
/* 802EAE48 002E7DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EAE4C 002E7DAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EAE50 002E7DB0  7C DF 33 78 */	mr r31, r6
/* 802EAE54 002E7DB4  38 C1 00 08 */	addi r6, r1, 8
/* 802EAE58 002E7DB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EAE5C 002E7DBC  7C 7E 1B 78 */	mr r30, r3
/* 802EAE60 002E7DC0  80 07 00 00 */	lwz r0, 0(r7)
/* 802EAE64 002E7DC4  7D 07 43 78 */	mr r7, r8
/* 802EAE68 002E7DC8  7D 28 4B 78 */	mr r8, r9
/* 802EAE6C 002E7DCC  90 01 00 08 */	stw r0, 8(r1)
/* 802EAE70 002E7DD0  48 00 01 7D */	bl __ct__Q211CSfxManager15CBaseSfxWrapperFbs10CSfxHandlebi
/* 802EAE74 002E7DD4  3C 60 80 3F */	lis r3, lbl_803ECE80@ha
/* 802EAE78 002E7DD8  38 80 FF FF */	li r4, -1
/* 802EAE7C 002E7DDC  38 63 CE 80 */	addi r3, r3, lbl_803ECE80@l
/* 802EAE80 002E7DE0  38 00 00 01 */	li r0, 1
/* 802EAE84 002E7DE4  90 7E 00 00 */	stw r3, 0(r30)
/* 802EAE88 002E7DE8  7F C3 F3 78 */	mr r3, r30
/* 802EAE8C 002E7DEC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802EAE90 002E7DF0  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 802EAE94 002E7DF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802EAE98 002E7DF8  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 802EAE9C 002E7DFC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 802EAEA0 002E7E00  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 802EAEA4 002E7E04  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802EAEA8 002E7E08  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 802EAEAC 002E7E0C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 802EAEB0 002E7E10  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 802EAEB4 002E7E14  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 802EAEB8 002E7E18  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 802EAEBC 002E7E1C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 802EAEC0 002E7E20  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 802EAEC4 002E7E24  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 802EAEC8 002E7E28  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 802EAECC 002E7E2C  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 802EAED0 002E7E30  90 BE 00 44 */	stw r5, 0x44(r30)
/* 802EAED4 002E7E34  A0 BF 00 24 */	lhz r5, 0x24(r31)
/* 802EAED8 002E7E38  B0 BE 00 48 */	sth r5, 0x48(r30)
/* 802EAEDC 002E7E3C  88 BF 00 26 */	lbz r5, 0x26(r31)
/* 802EAEE0 002E7E40  98 BE 00 4A */	stb r5, 0x4a(r30)
/* 802EAEE4 002E7E44  88 BF 00 27 */	lbz r5, 0x27(r31)
/* 802EAEE8 002E7E48  98 BE 00 4B */	stb r5, 0x4b(r30)
/* 802EAEEC 002E7E4C  88 BF 00 28 */	lbz r5, 0x28(r31)
/* 802EAEF0 002E7E50  98 BE 00 4C */	stb r5, 0x4c(r30)
/* 802EAEF4 002E7E54  88 BF 00 29 */	lbz r5, 0x29(r31)
/* 802EAEF8 002E7E58  98 BE 00 4D */	stb r5, 0x4d(r30)
/* 802EAEFC 002E7E5C  90 9E 00 50 */	stw r4, 0x50(r30)
/* 802EAF00 002E7E60  98 1E 00 54 */	stb r0, 0x54(r30)
/* 802EAF04 002E7E64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EAF08 002E7E68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EAF0C 002E7E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EAF10 002E7E70  7C 08 03 A6 */	mtlr r0
/* 802EAF14 002E7E74  38 21 00 20 */	addi r1, r1, 0x20
/* 802EAF18 002E7E78  4E 80 00 20 */	blr

.global GetArea__Q211CSfxManager15CBaseSfxWrapperCFv
GetArea__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF1C 002E7E7C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802EAF20 002E7E80  4E 80 00 20 */	blr

.global GetSfxHandle__Q211CSfxManager15CBaseSfxWrapperCFv
GetSfxHandle__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF24 002E7E84  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802EAF28 002E7E88  90 03 00 00 */	stw r0, 0(r3)
/* 802EAF2C 002E7E8C  4E 80 00 20 */	blr

.global GetPriority__Q211CSfxManager15CBaseSfxWrapperCFv
GetPriority__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF30 002E7E90  A8 63 00 0A */	lha r3, 0xa(r3)
/* 802EAF34 002E7E94  4E 80 00 20 */	blr

.global GetRank__Q211CSfxManager15CBaseSfxWrapperCFv
GetRank__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF38 002E7E98  A8 63 00 08 */	lha r3, 8(r3)
/* 802EAF3C 002E7E9C  4E 80 00 20 */	blr

.global UseAcoustics__Q211CSfxManager15CBaseSfxWrapperCFv
UseAcoustics__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF40 002E7EA0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAF44 002E7EA4  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 802EAF48 002E7EA8  4E 80 00 20 */	blr

.global IsActive__Q211CSfxManager15CBaseSfxWrapperCFv
IsActive__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF4C 002E7EAC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAF50 002E7EB0  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 802EAF54 002E7EB4  4E 80 00 20 */	blr

.global IsPlaying__Q211CSfxManager15CBaseSfxWrapperCFv
IsPlaying__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF58 002E7EB8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAF5C 002E7EBC  54 03 D7 FE */	rlwinm r3, r0, 0x1a, 0x1f, 0x1f
/* 802EAF60 002E7EC0  4E 80 00 20 */	blr

.global IsInArea__Q211CSfxManager15CBaseSfxWrapperCFv
IsInArea__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF64 002E7EC4  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAF68 002E7EC8  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 802EAF6C 002E7ECC  4E 80 00 20 */	blr

.global IsLooped__Q211CSfxManager15CBaseSfxWrapperCFv
IsLooped__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAF70 002E7ED0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAF74 002E7ED4  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 802EAF78 002E7ED8  4E 80 00 20 */	blr

.global SetRank__Q211CSfxManager15CBaseSfxWrapperFs
SetRank__Q211CSfxManager15CBaseSfxWrapperFs:
/* 802EAF7C 002E7EDC  B0 83 00 08 */	sth r4, 8(r3)
/* 802EAF80 002E7EE0  4E 80 00 20 */	blr

.global SetInArea__Q211CSfxManager15CBaseSfxWrapperFb
SetInArea__Q211CSfxManager15CBaseSfxWrapperFb:
/* 802EAF84 002E7EE4  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAF88 002E7EE8  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 802EAF8C 002E7EEC  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EAF90 002E7EF0  4E 80 00 20 */	blr

.global SetPlaying__Q211CSfxManager15CBaseSfxWrapperFb
SetPlaying__Q211CSfxManager15CBaseSfxWrapperFb:
/* 802EAF94 002E7EF4  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAF98 002E7EF8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 802EAF9C 002E7EFC  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EAFA0 002E7F00  4E 80 00 20 */	blr

.global SetActive__Q211CSfxManager15CBaseSfxWrapperFb
SetActive__Q211CSfxManager15CBaseSfxWrapperFb:
/* 802EAFA4 002E7F04  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAFA8 002E7F08  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802EAFAC 002E7F0C  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EAFB0 002E7F10  4E 80 00 20 */	blr

.global SetTimeRemaining__Q211CSfxManager15CBaseSfxWrapperFf
SetTimeRemaining__Q211CSfxManager15CBaseSfxWrapperFf:
/* 802EAFB4 002E7F14  D0 23 00 04 */	stfs f1, 4(r3)
/* 802EAFB8 002E7F18  4E 80 00 20 */	blr

.global GetTimeRemaining__Q211CSfxManager15CBaseSfxWrapperFv
GetTimeRemaining__Q211CSfxManager15CBaseSfxWrapperFv:
/* 802EAFBC 002E7F1C  C0 23 00 04 */	lfs f1, 4(r3)
/* 802EAFC0 002E7F20  4E 80 00 20 */	blr

.global Release__Q211CSfxManager15CBaseSfxWrapperFv
Release__Q211CSfxManager15CBaseSfxWrapperFv:
/* 802EAFC4 002E7F24  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAFC8 002E7F28  38 80 00 01 */	li r4, 1
/* 802EAFCC 002E7F2C  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 802EAFD0 002E7F30  C0 02 C6 24 */	lfs f0, lbl_805AE344@sda21(r2)
/* 802EAFD4 002E7F34  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EAFD8 002E7F38  D0 03 00 04 */	stfs f0, 4(r3)
/* 802EAFDC 002E7F3C  4E 80 00 20 */	blr

.global Available__Q211CSfxManager15CBaseSfxWrapperCFv
Available__Q211CSfxManager15CBaseSfxWrapperCFv:
/* 802EAFE0 002E7F40  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EAFE4 002E7F44  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 802EAFE8 002E7F48  4E 80 00 20 */	blr

.global __ct__Q211CSfxManager15CBaseSfxWrapperFbs10CSfxHandlebi
__ct__Q211CSfxManager15CBaseSfxWrapperFbs10CSfxHandlebi:
/* 802EAFEC 002E7F4C  3D 20 80 3F */	lis r9, lbl_803ECEE4@ha
/* 802EAFF0 002E7F50  C0 02 C6 24 */	lfs f0, lbl_805AE344@sda21(r2)
/* 802EAFF4 002E7F54  38 09 CE E4 */	addi r0, r9, lbl_803ECEE4@l
/* 802EAFF8 002E7F58  39 60 00 00 */	li r11, 0
/* 802EAFFC 002E7F5C  90 03 00 00 */	stw r0, 0(r3)
/* 802EB000 002E7F60  39 40 00 01 */	li r10, 1
/* 802EB004 002E7F64  D0 03 00 04 */	stfs f0, 4(r3)
/* 802EB008 002E7F68  B1 63 00 08 */	sth r11, 8(r3)
/* 802EB00C 002E7F6C  B0 A3 00 0A */	sth r5, 0xa(r3)
/* 802EB010 002E7F70  80 06 00 00 */	lwz r0, 0(r6)
/* 802EB014 002E7F74  90 03 00 0C */	stw r0, 0xc(r3)
/* 802EB018 002E7F78  91 03 00 10 */	stw r8, 0x10(r3)
/* 802EB01C 002E7F7C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EB020 002E7F80  51 40 3E 30 */	rlwimi r0, r10, 7, 0x18, 0x18
/* 802EB024 002E7F84  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EB028 002E7F88  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EB02C 002E7F8C  51 60 36 72 */	rlwimi r0, r11, 6, 0x19, 0x19
/* 802EB030 002E7F90  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EB034 002E7F94  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EB038 002E7F98  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 802EB03C 002E7F9C  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EB040 002E7FA0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EB044 002E7FA4  51 40 26 F6 */	rlwimi r0, r10, 4, 0x1b, 0x1b
/* 802EB048 002E7FA8  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EB04C 002E7FAC  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EB050 002E7FB0  51 60 1F 38 */	rlwimi r0, r11, 3, 0x1c, 0x1c
/* 802EB054 002E7FB4  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EB058 002E7FB8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 802EB05C 002E7FBC  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 802EB060 002E7FC0  98 03 00 14 */	stb r0, 0x14(r3)
/* 802EB064 002E7FC4  4E 80 00 20 */	blr

.global "reserve__Q24rstl36vector<s,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl36vector<s,Q24rstl17rmemory_allocator>Fi":
/* 802EB068 002E7FC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EB06C 002E7FCC  7C 08 02 A6 */	mflr r0
/* 802EB070 002E7FD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EB074 002E7FD4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802EB078 002E7FD8  7C 9F 23 78 */	mr r31, r4
/* 802EB07C 002E7FDC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802EB080 002E7FE0  7C 7E 1B 78 */	mr r30, r3
/* 802EB084 002E7FE4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802EB088 002E7FE8  80 03 00 08 */	lwz r0, 8(r3)
/* 802EB08C 002E7FEC  7C 1F 00 00 */	cmpw r31, r0
/* 802EB090 002E7FF0  40 81 00 A8 */	ble lbl_802EB138
/* 802EB094 002E7FF4  57 E3 08 3D */	rlwinm. r3, r31, 1, 0, 0x1e
/* 802EB098 002E7FF8  40 82 00 0C */	bne lbl_802EB0A4
/* 802EB09C 002E7FFC  3B A0 00 00 */	li r29, 0
/* 802EB0A0 002E8000  48 00 00 18 */	b lbl_802EB0B8
lbl_802EB0A4:
/* 802EB0A4 002E8004  3C 80 80 3D */	lis r4, lbl_803D6DC8@ha
/* 802EB0A8 002E8008  38 A0 00 00 */	li r5, 0
/* 802EB0AC 002E800C  38 84 6D C8 */	addi r4, r4, lbl_803D6DC8@l
/* 802EB0B0 002E8010  48 02 A7 69 */	bl __nwa__FUlPCcPCc
/* 802EB0B4 002E8014  7C 7D 1B 78 */	mr r29, r3
lbl_802EB0B8:
/* 802EB0B8 002E8018  80 1E 00 04 */	lwz r0, 4(r30)
/* 802EB0BC 002E801C  7F A4 EB 78 */	mr r4, r29
/* 802EB0C0 002E8020  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802EB0C4 002E8024  54 00 08 3C */	slwi r0, r0, 1
/* 802EB0C8 002E8028  7C 65 02 14 */	add r3, r5, r0
/* 802EB0CC 002E802C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802EB0D0 002E8030  90 61 00 08 */	stw r3, 8(r1)
/* 802EB0D4 002E8034  90 61 00 0C */	stw r3, 0xc(r1)
/* 802EB0D8 002E8038  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802EB0DC 002E803C  48 00 00 1C */	b lbl_802EB0F8
lbl_802EB0E0:
/* 802EB0E0 002E8040  28 04 00 00 */	cmplwi r4, 0
/* 802EB0E4 002E8044  41 82 00 0C */	beq lbl_802EB0F0
/* 802EB0E8 002E8048  A8 05 00 00 */	lha r0, 0(r5)
/* 802EB0EC 002E804C  B0 04 00 00 */	sth r0, 0(r4)
lbl_802EB0F0:
/* 802EB0F0 002E8050  38 84 00 02 */	addi r4, r4, 2
/* 802EB0F4 002E8054  38 A5 00 02 */	addi r5, r5, 2
lbl_802EB0F8:
/* 802EB0F8 002E8058  7C 05 18 40 */	cmplw r5, r3
/* 802EB0FC 002E805C  40 82 FF E4 */	bne lbl_802EB0E0
/* 802EB100 002E8060  80 1E 00 04 */	lwz r0, 4(r30)
/* 802EB104 002E8064  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802EB108 002E8068  54 00 08 3C */	slwi r0, r0, 1
/* 802EB10C 002E806C  7C 64 1B 78 */	mr r4, r3
/* 802EB110 002E8070  7C 03 02 14 */	add r0, r3, r0
/* 802EB114 002E8074  48 00 00 08 */	b lbl_802EB11C
lbl_802EB118:
/* 802EB118 002E8078  38 84 00 02 */	addi r4, r4, 2
lbl_802EB11C:
/* 802EB11C 002E807C  7C 04 00 40 */	cmplw r4, r0
/* 802EB120 002E8080  40 82 FF F8 */	bne lbl_802EB118
/* 802EB124 002E8084  28 03 00 00 */	cmplwi r3, 0
/* 802EB128 002E8088  41 82 00 08 */	beq lbl_802EB130
/* 802EB12C 002E808C  48 02 A8 05 */	bl Free__7CMemoryFPCv
lbl_802EB130:
/* 802EB130 002E8090  93 BE 00 0C */	stw r29, 0xc(r30)
/* 802EB134 002E8094  93 FE 00 08 */	stw r31, 8(r30)
lbl_802EB138:
/* 802EB138 002E8098  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EB13C 002E809C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802EB140 002E80A0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802EB144 002E80A4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802EB148 002E80A8  7C 08 03 A6 */	mtlr r0
/* 802EB14C 002E80AC  38 21 00 30 */	addi r1, r1, 0x30
/* 802EB150 002E80B0  4E 80 00 20 */	blr

.global __sinit_CSfxManager_cpp
__sinit_CSfxManager_cpp:
/* 802EB154 002E80B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB158 002E80B8  7C 08 02 A6 */	mflr r0
/* 802EB15C 002E80BC  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802EB160 002E80C0  3C 80 80 2F */	lis r4, __ct__Q211CSfxManager11CSfxChannelFv@ha
/* 802EB164 002E80C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB168 002E80C8  3C A0 80 2F */	lis r5, __dt__Q211CSfxManager11CSfxChannelFv@ha
/* 802EB16C 002E80CC  3C C0 80 48 */	lis r6, lbl_80479BA0@ha
/* 802EB170 002E80D0  38 63 FD 48 */	addi r3, r3, lbl_8059FD48@l
/* 802EB174 002E80D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB178 002E80D8  3B E6 9B A0 */	addi r31, r6, lbl_80479BA0@l
/* 802EB17C 002E80DC  38 84 B4 20 */	addi r4, r4, __ct__Q211CSfxManager11CSfxChannelFv@l
/* 802EB180 002E80E0  38 A5 B3 84 */	addi r5, r5, __dt__Q211CSfxManager11CSfxChannelFv@l
/* 802EB184 002E80E4  38 C0 01 6C */	li r6, 0x16c
/* 802EB188 002E80E8  38 E0 00 04 */	li r7, 4
/* 802EB18C 002E80EC  48 09 E5 C1 */	bl __construct_array
/* 802EB190 002E80F0  3C 60 80 2F */	lis r3, __arraydtor$2309@ha
/* 802EB194 002E80F4  38 BF 00 00 */	addi r5, r31, 0
/* 802EB198 002E80F8  38 83 B3 4C */	addi r4, r3, __arraydtor$2309@l
/* 802EB19C 002E80FC  38 60 00 00 */	li r3, 0
/* 802EB1A0 002E8100  48 09 E4 ED */	bl __register_global_object
/* 802EB1A4 002E8104  38 00 00 00 */	li r0, 0
/* 802EB1A8 002E8108  38 CD A7 10 */	addi r6, r13, lbl_805A92D0@sda21
/* 802EB1AC 002E810C  3C 60 80 2F */	lis r3, sub_802e8b90@ha
/* 802EB1B0 002E8110  98 0D A7 10 */	stb r0, lbl_805A92D0@sda21(r13)
/* 802EB1B4 002E8114  38 83 8B 90 */	addi r4, r3, sub_802e8b90@l
/* 802EB1B8 002E8118  38 BF 00 0C */	addi r5, r31, 0xc
/* 802EB1BC 002E811C  90 06 00 04 */	stw r0, 4(r6)
/* 802EB1C0 002E8120  38 6D A7 10 */	addi r3, r13, lbl_805A92D0@sda21
/* 802EB1C4 002E8124  48 09 E4 C9 */	bl __register_global_object
/* 802EB1C8 002E8128  38 00 00 00 */	li r0, 0
/* 802EB1CC 002E812C  3C 60 80 5A */	lis r3, lbl_805A2B60@ha
/* 802EB1D0 002E8130  3C 80 80 2F */	lis r4, "__dt__Q24rstl56reserved_vector<Q211CSfxManager18CSfxEmitterWrapper,128>Fv"@ha
/* 802EB1D4 002E8134  94 03 2B 60 */	stwu r0, lbl_805A2B60@l(r3)
/* 802EB1D8 002E8138  38 84 B2 B0 */	addi r4, r4, "__dt__Q24rstl56reserved_vector<Q211CSfxManager18CSfxEmitterWrapper,128>Fv"@l
/* 802EB1DC 002E813C  38 BF 00 18 */	addi r5, r31, 0x18
/* 802EB1E0 002E8140  48 09 E4 AD */	bl __register_global_object
/* 802EB1E4 002E8144  38 00 00 00 */	li r0, 0
/* 802EB1E8 002E8148  3C 60 80 5A */	lis r3, lbl_805A4164@ha
/* 802EB1EC 002E814C  3C 80 80 2F */	lis r4, "__dt__Q24rstl49reserved_vector<Q211CSfxManager11CSfxWrapper,128>Fv"@ha
/* 802EB1F0 002E8150  94 03 41 64 */	stwu r0, lbl_805A4164@l(r3)
/* 802EB1F4 002E8154  38 84 B2 14 */	addi r4, r4, "__dt__Q24rstl49reserved_vector<Q211CSfxManager11CSfxWrapper,128>Fv"@l
/* 802EB1F8 002E8158  38 BF 00 24 */	addi r5, r31, 0x24
/* 802EB1FC 002E815C  48 09 E4 91 */	bl __register_global_object
/* 802EB200 002E8160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB204 002E8164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB208 002E8168  7C 08 03 A6 */	mtlr r0
/* 802EB20C 002E816C  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB210 002E8170  4E 80 00 20 */	blr

.global "__dt__Q24rstl49reserved_vector<Q211CSfxManager11CSfxWrapper,128>Fv"
"__dt__Q24rstl49reserved_vector<Q211CSfxManager11CSfxWrapper,128>Fv":
/* 802EB214 002E8174  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EB218 002E8178  7C 08 02 A6 */	mflr r0
/* 802EB21C 002E817C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EB220 002E8180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EB224 002E8184  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EB228 002E8188  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EB22C 002E818C  7C 9D 23 78 */	mr r29, r4
/* 802EB230 002E8190  93 81 00 10 */	stw r28, 0x10(r1)
/* 802EB234 002E8194  7C 7C 1B 79 */	or. r28, r3, r3
/* 802EB238 002E8198  41 82 00 54 */	beq lbl_802EB28C
/* 802EB23C 002E819C  3B DC 00 04 */	addi r30, r28, 4
/* 802EB240 002E81A0  3B E0 00 00 */	li r31, 0
/* 802EB244 002E81A4  48 00 00 24 */	b lbl_802EB268
lbl_802EB248:
/* 802EB248 002E81A8  7F C3 F3 78 */	mr r3, r30
/* 802EB24C 002E81AC  38 80 FF FF */	li r4, -1
/* 802EB250 002E81B0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802EB254 002E81B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EB258 002E81B8  7D 89 03 A6 */	mtctr r12
/* 802EB25C 002E81BC  4E 80 04 21 */	bctrl
/* 802EB260 002E81C0  3B DE 00 28 */	addi r30, r30, 0x28
/* 802EB264 002E81C4  3B FF 00 01 */	addi r31, r31, 1
lbl_802EB268:
/* 802EB268 002E81C8  80 1C 00 00 */	lwz r0, 0(r28)
/* 802EB26C 002E81CC  7C 1F 00 00 */	cmpw r31, r0
/* 802EB270 002E81D0  41 80 FF D8 */	blt lbl_802EB248
/* 802EB274 002E81D4  38 60 00 00 */	li r3, 0
/* 802EB278 002E81D8  7F A0 07 35 */	extsh. r0, r29
/* 802EB27C 002E81DC  90 7C 00 00 */	stw r3, 0(r28)
/* 802EB280 002E81E0  40 81 00 0C */	ble lbl_802EB28C
/* 802EB284 002E81E4  7F 83 E3 78 */	mr r3, r28
/* 802EB288 002E81E8  48 02 A6 A9 */	bl Free__7CMemoryFPCv
lbl_802EB28C:
/* 802EB28C 002E81EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EB290 002E81F0  7F 83 E3 78 */	mr r3, r28
/* 802EB294 002E81F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EB298 002E81F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EB29C 002E81FC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EB2A0 002E8200  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802EB2A4 002E8204  7C 08 03 A6 */	mtlr r0
/* 802EB2A8 002E8208  38 21 00 20 */	addi r1, r1, 0x20
/* 802EB2AC 002E820C  4E 80 00 20 */	blr

.global "__dt__Q24rstl56reserved_vector<Q211CSfxManager18CSfxEmitterWrapper,128>Fv"
"__dt__Q24rstl56reserved_vector<Q211CSfxManager18CSfxEmitterWrapper,128>Fv":
/* 802EB2B0 002E8210  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802EB2B4 002E8214  7C 08 02 A6 */	mflr r0
/* 802EB2B8 002E8218  90 01 00 24 */	stw r0, 0x24(r1)
/* 802EB2BC 002E821C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802EB2C0 002E8220  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802EB2C4 002E8224  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EB2C8 002E8228  7C 9D 23 78 */	mr r29, r4
/* 802EB2CC 002E822C  93 81 00 10 */	stw r28, 0x10(r1)
/* 802EB2D0 002E8230  7C 7C 1B 79 */	or. r28, r3, r3
/* 802EB2D4 002E8234  41 82 00 54 */	beq lbl_802EB328
/* 802EB2D8 002E8238  3B DC 00 04 */	addi r30, r28, 4
/* 802EB2DC 002E823C  3B E0 00 00 */	li r31, 0
/* 802EB2E0 002E8240  48 00 00 24 */	b lbl_802EB304
lbl_802EB2E4:
/* 802EB2E4 002E8244  7F C3 F3 78 */	mr r3, r30
/* 802EB2E8 002E8248  38 80 FF FF */	li r4, -1
/* 802EB2EC 002E824C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802EB2F0 002E8250  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EB2F4 002E8254  7D 89 03 A6 */	mtctr r12
/* 802EB2F8 002E8258  4E 80 04 21 */	bctrl
/* 802EB2FC 002E825C  3B DE 00 58 */	addi r30, r30, 0x58
/* 802EB300 002E8260  3B FF 00 01 */	addi r31, r31, 1
lbl_802EB304:
/* 802EB304 002E8264  80 1C 00 00 */	lwz r0, 0(r28)
/* 802EB308 002E8268  7C 1F 00 00 */	cmpw r31, r0
/* 802EB30C 002E826C  41 80 FF D8 */	blt lbl_802EB2E4
/* 802EB310 002E8270  38 60 00 00 */	li r3, 0
/* 802EB314 002E8274  7F A0 07 35 */	extsh. r0, r29
/* 802EB318 002E8278  90 7C 00 00 */	stw r3, 0(r28)
/* 802EB31C 002E827C  40 81 00 0C */	ble lbl_802EB328
/* 802EB320 002E8280  7F 83 E3 78 */	mr r3, r28
/* 802EB324 002E8284  48 02 A6 0D */	bl Free__7CMemoryFPCv
lbl_802EB328:
/* 802EB328 002E8288  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802EB32C 002E828C  7F 83 E3 78 */	mr r3, r28
/* 802EB330 002E8290  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802EB334 002E8294  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802EB338 002E8298  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802EB33C 002E829C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802EB340 002E82A0  7C 08 03 A6 */	mtlr r0
/* 802EB344 002E82A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802EB348 002E82A8  4E 80 00 20 */	blr

.global __arraydtor$2309
__arraydtor$2309:
/* 802EB34C 002E82AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB350 002E82B0  7C 08 02 A6 */	mflr r0
/* 802EB354 002E82B4  3C 60 80 5A */	lis r3, lbl_8059FD48@ha
/* 802EB358 002E82B8  3C 80 80 2F */	lis r4, __dt__Q211CSfxManager11CSfxChannelFv@ha
/* 802EB35C 002E82BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB360 002E82C0  38 63 FD 48 */	addi r3, r3, lbl_8059FD48@l
/* 802EB364 002E82C4  38 A0 01 6C */	li r5, 0x16c
/* 802EB368 002E82C8  38 84 B3 84 */	addi r4, r4, __dt__Q211CSfxManager11CSfxChannelFv@l
/* 802EB36C 002E82CC  38 C0 00 04 */	li r6, 4
/* 802EB370 002E82D0  48 09 E3 65 */	bl __destroy_arr
/* 802EB374 002E82D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB378 002E82D8  7C 08 03 A6 */	mtlr r0
/* 802EB37C 002E82DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB380 002E82E0  4E 80 00 20 */	blr

.global __dt__Q211CSfxManager11CSfxChannelFv
__dt__Q211CSfxManager11CSfxChannelFv:
/* 802EB384 002E82E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB388 002E82E8  7C 08 02 A6 */	mflr r0
/* 802EB38C 002E82EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB390 002E82F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB394 002E82F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EB398 002E82F8  41 82 00 70 */	beq lbl_802EB408
/* 802EB39C 002E82FC  34 1F 00 48 */	addic. r0, r31, 0x48
/* 802EB3A0 002E8300  41 82 00 58 */	beq lbl_802EB3F8
/* 802EB3A4 002E8304  80 DF 00 48 */	lwz r6, 0x48(r31)
/* 802EB3A8 002E8308  38 60 00 00 */	li r3, 0
/* 802EB3AC 002E830C  2C 06 00 00 */	cmpwi r6, 0
/* 802EB3B0 002E8310  40 81 00 40 */	ble lbl_802EB3F0
/* 802EB3B4 002E8314  2C 06 00 08 */	cmpwi r6, 8
/* 802EB3B8 002E8318  38 A6 FF F8 */	addi r5, r6, -8
/* 802EB3BC 002E831C  40 81 00 20 */	ble lbl_802EB3DC
/* 802EB3C0 002E8320  38 05 00 07 */	addi r0, r5, 7
/* 802EB3C4 002E8324  54 00 E8 FE */	srwi r0, r0, 3
/* 802EB3C8 002E8328  7C 09 03 A6 */	mtctr r0
/* 802EB3CC 002E832C  2C 05 00 00 */	cmpwi r5, 0
/* 802EB3D0 002E8330  40 81 00 0C */	ble lbl_802EB3DC
lbl_802EB3D4:
/* 802EB3D4 002E8334  38 63 00 08 */	addi r3, r3, 8
/* 802EB3D8 002E8338  42 00 FF FC */	bdnz lbl_802EB3D4
lbl_802EB3DC:
/* 802EB3DC 002E833C  7C 03 30 50 */	subf r0, r3, r6
/* 802EB3E0 002E8340  7C 09 03 A6 */	mtctr r0
/* 802EB3E4 002E8344  7C 03 30 00 */	cmpw r3, r6
/* 802EB3E8 002E8348  40 80 00 08 */	bge lbl_802EB3F0
lbl_802EB3EC:
/* 802EB3EC 002E834C  42 00 00 00 */	bdnz lbl_802EB3EC
lbl_802EB3F0:
/* 802EB3F0 002E8350  38 00 00 00 */	li r0, 0
/* 802EB3F4 002E8354  90 1F 00 48 */	stw r0, 0x48(r31)
lbl_802EB3F8:
/* 802EB3F8 002E8358  7C 80 07 35 */	extsh. r0, r4
/* 802EB3FC 002E835C  40 81 00 0C */	ble lbl_802EB408
/* 802EB400 002E8360  7F E3 FB 78 */	mr r3, r31
/* 802EB404 002E8364  48 02 A5 2D */	bl Free__7CMemoryFPCv
lbl_802EB408:
/* 802EB408 002E8368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB40C 002E836C  7F E3 FB 78 */	mr r3, r31
/* 802EB410 002E8370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB414 002E8374  7C 08 03 A6 */	mtlr r0
/* 802EB418 002E8378  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB41C 002E837C  4E 80 00 20 */	blr

.global __ct__Q211CSfxManager11CSfxChannelFv
__ct__Q211CSfxManager11CSfxChannelFv:
/* 802EB420 002E8380  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802EB424 002E8384  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 802EB428 002E8388  C0 02 C6 04 */	lfs f0, lbl_805AE324@sda21(r2)
/* 802EB42C 002E838C  38 00 00 00 */	li r0, 0
/* 802EB430 002E8390  84 C4 66 A0 */	lwzu r6, sZeroVector__9CVector3f@l(r4)
/* 802EB434 002E8394  80 A4 00 04 */	lwz r5, 4(r4)
/* 802EB438 002E8398  90 C1 00 38 */	stw r6, 0x38(r1)
/* 802EB43C 002E839C  80 84 00 08 */	lwz r4, 8(r4)
/* 802EB440 002E83A0  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 802EB444 002E83A4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 802EB448 002E83A8  90 81 00 40 */	stw r4, 0x40(r1)
/* 802EB44C 002E83AC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 802EB450 002E83B0  D0 43 00 00 */	stfs f2, 0(r3)
/* 802EB454 002E83B4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 802EB458 002E83B8  D0 23 00 04 */	stfs f1, 4(r3)
/* 802EB45C 002E83BC  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 802EB460 002E83C0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802EB464 002E83C4  D0 43 00 08 */	stfs f2, 8(r3)
/* 802EB468 002E83C8  90 A1 00 30 */	stw r5, 0x30(r1)
/* 802EB46C 002E83CC  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 802EB470 002E83D0  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 802EB474 002E83D4  90 81 00 34 */	stw r4, 0x34(r1)
/* 802EB478 002E83D8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 802EB47C 002E83DC  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 802EB480 002E83E0  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802EB484 002E83E4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 802EB488 002E83E8  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 802EB48C 002E83EC  90 A1 00 24 */	stw r5, 0x24(r1)
/* 802EB490 002E83F0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 802EB494 002E83F4  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 802EB498 002E83F8  90 81 00 28 */	stw r4, 0x28(r1)
/* 802EB49C 002E83FC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 802EB4A0 002E8400  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 802EB4A4 002E8404  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802EB4A8 002E8408  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 802EB4AC 002E840C  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 802EB4B0 002E8410  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802EB4B4 002E8414  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 802EB4B8 002E8418  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 802EB4BC 002E841C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802EB4C0 002E8420  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 802EB4C4 002E8424  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 802EB4C8 002E8428  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 802EB4CC 002E842C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802EB4D0 002E8430  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802EB4D4 002E8434  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802EB4D8 002E8438  90 03 00 3C */	stw r0, 0x3c(r3)
/* 802EB4DC 002E843C  98 03 00 40 */	stb r0, 0x40(r3)
/* 802EB4E0 002E8440  98 03 00 44 */	stb r0, 0x44(r3)
/* 802EB4E4 002E8444  90 C1 00 08 */	stw r6, 8(r1)
/* 802EB4E8 002E8448  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802EB4EC 002E844C  90 81 00 10 */	stw r4, 0x10(r1)
/* 802EB4F0 002E8450  90 03 00 48 */	stw r0, 0x48(r3)
/* 802EB4F4 002E8454  38 21 00 50 */	addi r1, r1, 0x50
/* 802EB4F8 002E8458  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8

.section .sdata2, "a"
.balign 8
.global lbl_805AE318
lbl_805AE318:
	# ROM: 0x3FABB8
	.2byte 0x000000FF

.global kMedPriority__11CSfxManager
kMedPriority__11CSfxManager:
	# ROM: 0x3FABBA
	.2byte 0x0000007F

.global lbl_805AE31C
lbl_805AE31C:
	# ROM: 0x3FABBC
	.4byte 0xFFFF0000

.global lbl_805AE320
lbl_805AE320:
	# ROM: 0x3FABC0
	.4byte 0xFFFFFFFF

.global lbl_805AE324
lbl_805AE324:
	# ROM: 0x3FABC4
	.4byte 0

.global lbl_805AE328
lbl_805AE328:
	# ROM: 0x3FABC8
	.4byte 0x42FE0000

.global lbl_805AE32C
lbl_805AE32C:
	# ROM: 0x3FABCC
	.float 1.0

.global lbl_805AE330
lbl_805AE330:
	# ROM: 0x3FABD0
	.float 2.0

.global lbl_805AE334
lbl_805AE334:
	# ROM: 0x3FABD4
	.float 150.0

.global lbl_805AE338
lbl_805AE338:
	# ROM: 0x3FABD8
	.float 0.1

.global lbl_805AE33C
lbl_805AE33C:
	# ROM: 0x3FABDC
	.float 0.25

.global lbl_805AE340
lbl_805AE340:
	# ROM: 0x3FABE0
	.float 0.5

.global lbl_805AE344
lbl_805AE344:
	# ROM: 0x3FABE4
	.float 15.0


.section .rodata
.balign 8
.global lbl_803D6DC8
lbl_803D6DC8:
	# ROM: 0x3D3DC8
	.asciz "??(??)"
	.balign 4

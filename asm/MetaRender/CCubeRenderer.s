.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CCubeRenderer_cpp

.section .sbss, "wa"
.balign 8

.global sRenderer__13CCubeRenderer
sRenderer__13CCubeRenderer:
	.skip 0x4
.global skNormalFlag
skNormalFlag:
	.skip 0x8
.global skNormalFlagNoUpdate
skNormalFlagNoUpdate:
	.skip 0x8
.global skWorstMinMaxDistance__7Buckets
skWorstMinMaxDistance__7Buckets:
	.skip 0x8
.global sData__7Buckets
sData__7Buckets:
	.skip 0x4
.global sBuckets__7Buckets
sBuckets__7Buckets:
	.skip 0x4
.global sMinMaxDistance__7Buckets
sMinMaxDistance__7Buckets:
	.skip 0x8
.global sPlaneObjectData__7Buckets
sPlaneObjectData__7Buckets:
	.skip 0x4
.global sPlaneObjectBucket__7Buckets
sPlaneObjectBucket__7Buckets:
	.skip 0x4
.global "@4756"
"@4756":
	.skip 0x1
.balign 4
.global "@4808"
"@4808":
	.skip 0x1
.global "init$6480"
"init$6480":
	.skip 0x1
.balign 4
.global "@8522"
"@8522":
	.skip 0x1
.balign 4
.global "sReferenceCount$9005"
"sReferenceCount$9005":
	.skip 0x4
.global "init$9006"
"init$9006":
	.skip 0x1
.balign 4

.section .data
.balign 8

.global __vt__13CCubeRenderer
__vt__13CCubeRenderer:
	# ROM: 0x3E95D8
	.4byte 0
	.4byte 0
	.4byte __dt__13CCubeRendererFv
	.4byte "AddStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>PC12CAreaOctTreei"
	.4byte EnablePVS__13CCubeRendererFPC10CPVSVisSeti
	.4byte DisablePVS__13CCubeRendererFv
	.4byte "RemoveStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>"
	.4byte "DrawUnsortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
	.4byte "DrawSortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
	.4byte "DrawStaticGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
	.4byte DrawAreaGeometry__13CCubeRendererFiii
	.4byte PostRenderFogs__13CCubeRendererFv
	.4byte SetModelMatrix__13CCubeRendererFRC12CTransform4f
	.4byte AddParticleGen__13CCubeRendererFRC12CParticleGen
	.4byte sub_802bdb04
	.4byte AddPlaneObject__13CCubeRendererFPCvRC6CAABoxRC6CPlanei
	.4byte AddDrawable__13CCubeRendererFPCvRC9CVector3fRC6CAABoxiQ29IRenderer16EDrawableSorting
	.4byte SetDrawableCallback__13CCubeRendererFPFPCvPCvi_vPCv
	.4byte SetWorldViewpoint__13CCubeRendererFRC12CTransform4f
	.4byte SetPerspective__13CCubeRendererFfffff
	.4byte SetPerspective__13CCubeRendererFffff
	.4byte SetViewportOrtho__13CCubeRendererFbff
	.4byte SetClippingPlanes__13CCubeRendererFRC14CFrustumPlanes
	.4byte SetViewport__13CCubeRendererFiiii
	.4byte SetDepthReadWrite__13CCubeRendererFbb
	.4byte SetBlendMode_AdditiveAlpha__13CCubeRendererFv
	.4byte SetBlendMode_AlphaBlended__13CCubeRendererFv
	.4byte SetBlendMode_NoColorWrite__13CCubeRendererFv
	.4byte SetBlendMode_ColorMultiply__13CCubeRendererFv
	.4byte SetBlendMode_InvertDst__13CCubeRendererFv
	.4byte SetBlendMode_InvertSrc__13CCubeRendererFv
	.4byte SetBlendMode_Replace__13CCubeRendererFv
	.4byte SetBlendMode_AdditiveDestColor__13CCubeRendererFv
	.4byte SetDebugOption__13CCubeRendererFQ29IRenderer12EDebugOptioni
	.4byte BeginScene__13CCubeRendererFv
	.4byte EndScene__13CCubeRendererFv
	.4byte BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei
	.4byte BeginLines__13CCubeRendererFi
	.4byte BeginLineStrip__13CCubeRendererFi
	.4byte BeginTriangles__13CCubeRendererFi
	.4byte BeginTriangleStrip__13CCubeRendererFi
	.4byte BeginTriangleFan__13CCubeRendererFi
	.4byte PrimVertex__13CCubeRendererFRC9CVector3f
	.4byte PrimNormal__13CCubeRendererFRC9CVector3f
	.4byte PrimColor__13CCubeRendererFffff
	.4byte PrimColor__13CCubeRendererFRC6CColor
	.4byte EndPrimitive__13CCubeRendererFv
	.4byte SetAmbientColor__13CCubeRendererFRC6CColor
	.4byte DrawString__13CCubeRendererFPCcii
	.4byte GetFPS__13CCubeRendererFv
	.4byte CacheReflection__13CCubeRendererFPFPvRC9CVector3f_vPvb
	.4byte DrawSpaceWarp__13CCubeRendererFRC9CVector3ff
	.4byte DrawThermalModel__13CCubeRendererFRC6CModelRC6CColorRC6CColorPCfPCfRC11CModelFlags
	.4byte DrawModelDisintegrate__13CCubeRendererFRC6CModelRC8CTextureRC6CColorPCfPCf
	.4byte DrawModelFlat__13CCubeRendererFRC6CModelRC11CModelFlagsbPCfPCf
	.4byte SetWireframeFlags__13CCubeRendererFi
	.4byte SetWorldFog__13CCubeRendererF11ERglFogModeffRC6CColor
	.4byte "RenderFogVolume__13CCubeRendererFRC6CColorRC6CAABoxPC21TLockedToken<6CModel>PC13CSkinnedModel"
	.4byte SetThermal__13CCubeRendererFbfRC6CColor
	.4byte SetThermalColdScale__13CCubeRendererFf
	.4byte DoThermalBlendCold__13CCubeRendererFv
	.4byte DoThermalBlendHot__13CCubeRendererFv
	.4byte GetStaticWorldDataSize__13CCubeRendererFv
	.4byte SetGXRegister1Color__13CCubeRendererFRC6CColor
	.4byte SetWorldLightFadeLevel__13CCubeRendererFf
	.4byte sub_802b7c28
	.4byte "PrepareDynamicLights__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>"
	.4byte 0
	.4byte 0
	.4byte "@4@__dt__13CCubeRendererFv"
	.4byte "@4@AddParticleGen__13CCubeRendererFRC12CParticleGen"
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A8658
lbl_805A8658:
	# ROM: 0x3F5FF8
	.4byte 0x47C34F80

.global lbl_805A865C
lbl_805A865C:
	# ROM: 0x3F5FFC
	.4byte 0xC7C34F80

.global lbl_805A8660
lbl_805A8660:
	# ROM: 0x3F6000
	.float 1.0

.global lbl_805A8664
lbl_805A8664:
	# ROM: 0x3F6004
	.4byte 0x00000031

.global lbl_805A8668
lbl_805A8668:
	# ROM: 0x3F6008
	.4byte 0x00000001

.global lbl_805A866C
lbl_805A866C:
	# ROM: 0x3F600C
	.4byte 0

.global lbl_805A8670
lbl_805A8670:
	# ROM: 0x3F6010
	.4byte 0

.global lbl_805A8674
lbl_805A8674:
	# ROM: 0x3F6014
	.float 255.0

.global lbl_805A8678
lbl_805A8678:
	# ROM: 0x3F6018
	.4byte 0

.global lbl_805A867C
lbl_805A867C:
	# ROM: 0x3F601C
	.float 255.0

.global lbl_805A8680
lbl_805A8680:
	# ROM: 0x3F6020
	.4byte 0

.global lbl_805A8684
lbl_805A8684:
	# ROM: 0x3F6024
	.float 1.0

.global lbl_805A8688
lbl_805A8688:
	# ROM: 0x3F6028
	.4byte 0

.global lbl_805A868C
lbl_805A868C:
	# ROM: 0x3F602C
	.float 1.0

.global lbl_805A8690
lbl_805A8690:
	# ROM: 0x3F6030
	.4byte 0

.global lbl_805A8694
lbl_805A8694:
	# ROM: 0x3F6034
	.float 0.5

.global lbl_805A8698
lbl_805A8698:
	# ROM: 0x3F6038
	.4byte 0

.global lbl_805A869C
lbl_805A869C:
	# ROM: 0x3F603C
	.4byte 0

.global lbl_805A86A0
lbl_805A86A0:
	# ROM: 0x3F6040
	.4byte 0

.global lbl_805A86A4
lbl_805A86A4:
	# ROM: 0x3F6044
	.float 1.0

.global lbl_805A86A8
lbl_805A86A8:
	# ROM: 0x3F6048
	.4byte 0

.global lbl_805A86AC
lbl_805A86AC:
	# ROM: 0x3F604C
	.4byte 0

.section .sbss2, "", @nobits
.balign 8

# CCubeRenderer
.global lbl_805AF490
lbl_805AF490:
	.skip 0x4
.global lbl_805AF494
lbl_805AF494:
	.skip 0x4
.global lbl_805AF498
lbl_805AF498:
	.skip 0x8

.section .bss
.balign 8

.lcomm "@4370", 0xC, 4
.lcomm sBucketIndex__7Buckets, 0x68, 4
.lcomm "sDataHolder$4374", 0x4808, 4
.lcomm "sBucketsHolder$4375", 0x64D0, 4
.lcomm "sPlaneObjectDataHolder$4376", 0x208, 4
.lcomm "sPlaneObjectBucketHolder$4377", 0x18, 4
.lcomm "sOptimalPlane$6479", 0xC, 4
.lcomm "sAllocSpace$9000", 0x320, 4

.section .text, "ax"

.global DrawString__13CCubeRendererFPCcii
DrawString__13CCubeRendererFPCcii:
/* 802B5D50 002B2CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B5D54 002B2CB4  7C 08 02 A6 */	mflr r0
/* 802B5D58 002B2CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B5D5C 002B2CBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B5D60 002B2CC0  7C DF 33 78 */	mr r31, r6
/* 802B5D64 002B2CC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B5D68 002B2CC8  7C BE 2B 78 */	mr r30, r5
/* 802B5D6C 002B2CCC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B5D70 002B2CD0  7C 9D 23 78 */	mr r29, r4
/* 802B5D74 002B2CD4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802B5D78 002B2CD8  7C 7C 1B 78 */	mr r28, r3
/* 802B5D7C 002B2CDC  48 09 42 31 */	bl White__6CColorFv
/* 802B5D80 002B2CE0  7C 67 1B 78 */	mr r7, r3
/* 802B5D84 002B2CE4  7F A4 EB 78 */	mr r4, r29
/* 802B5D88 002B2CE8  7F C5 F3 78 */	mr r5, r30
/* 802B5D8C 002B2CEC  7F E6 FB 78 */	mr r6, r31
/* 802B5D90 002B2CF0  38 7C 00 10 */	addi r3, r28, 0x10
/* 802B5D94 002B2CF4  48 05 02 05 */	bl DrawString__5CFontCFPCcllRC6CColor
/* 802B5D98 002B2CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B5D9C 002B2CFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B5DA0 002B2D00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B5DA4 002B2D04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B5DA8 002B2D08  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802B5DAC 002B2D0C  7C 08 03 A6 */	mtlr r0
/* 802B5DB0 002B2D10  38 21 00 20 */	addi r1, r1, 0x20
/* 802B5DB4 002B2D14  4E 80 00 20 */	blr

.global DrawXRayOutline__13CCubeRendererFRC6CModelPCfPCf
DrawXRayOutline__13CCubeRendererFRC6CModelPCfPCf:
/* 802B5DB8 002B2D18  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802B5DBC 002B2D1C  7C 08 02 A6 */	mflr r0
/* 802B5DC0 002B2D20  90 01 00 74 */	stw r0, 0x74(r1)
/* 802B5DC4 002B2D24  BE C1 00 48 */	stmw r22, 0x48(r1)
/* 802B5DC8 002B2D28  7C 76 1B 78 */	mr r22, r3
/* 802B5DCC 002B2D2C  7C 97 23 78 */	mr r23, r4
/* 802B5DD0 002B2D30  83 A3 00 20 */	lwz r29, 0x20(r3)
/* 802B5DD4 002B2D34  48 00 01 7C */	b lbl_802B5F50
lbl_802B5DD8:
/* 802B5DD8 002B2D38  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 802B5DDC 002B2D3C  28 1F 00 00 */	cmplwi r31, 0
/* 802B5DE0 002B2D40  41 82 01 6C */	beq lbl_802B5F4C
/* 802B5DE4 002B2D44  38 00 00 00 */	li r0, 0
/* 802B5DE8 002B2D48  7F E3 FB 78 */	mr r3, r31
/* 802B5DEC 002B2D4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B5DF0 002B2D50  7E E5 BB 78 */	mr r5, r23
/* 802B5DF4 002B2D54  38 81 00 20 */	addi r4, r1, 0x20
/* 802B5DF8 002B2D58  90 01 00 28 */	stw r0, 0x28(r1)
/* 802B5DFC 002B2D5C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802B5E00 002B2D60  4B FF 8A 55 */	bl "FindOverlappingModels__18CAreaRenderOctTreeFRQ24rstl10vector<Ui>RC6CAABox"
/* 802B5E04 002B2D64  3B 60 00 00 */	li r27, 0
/* 802B5E08 002B2D68  3B 40 00 00 */	li r26, 0
/* 802B5E0C 002B2D6C  3B 80 00 00 */	li r28, 0
/* 802B5E10 002B2D70  48 00 00 F0 */	b lbl_802B5F00
lbl_802B5E14:
/* 802B5E14 002B2D74  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 802B5E18 002B2D78  7F 23 E0 2E */	lwzx r25, r3, r28
/* 802B5E1C 002B2D7C  28 19 00 00 */	cmplwi r25, 0
/* 802B5E20 002B2D80  41 82 00 D4 */	beq lbl_802B5EF4
/* 802B5E24 002B2D84  3B 00 00 00 */	li r24, 0
lbl_802B5E28:
/* 802B5E28 002B2D88  38 00 00 01 */	li r0, 1
/* 802B5E2C 002B2D8C  7C 00 C0 30 */	slw r0, r0, r24
/* 802B5E30 002B2D90  7F 20 00 39 */	and. r0, r25, r0
/* 802B5E34 002B2D94  41 82 00 B4 */	beq lbl_802B5EE8
/* 802B5E38 002B2D98  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 802B5E3C 002B2D9C  7C 1A C2 14 */	add r0, r26, r24
/* 802B5E40 002B2DA0  54 03 18 38 */	slwi r3, r0, 3
/* 802B5E44 002B2DA4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802B5E48 002B2DA8  38 03 00 04 */	addi r0, r3, 4
/* 802B5E4C 002B2DAC  7F C4 00 2E */	lwzx r30, r4, r0
/* 802B5E50 002B2DB0  7F C3 F3 78 */	mr r3, r30
/* 802B5E54 002B2DB4  48 05 17 CD */	bl SetArraysCurrent__10CCubeModelCFv
/* 802B5E58 002B2DB8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802B5E5C 002B2DBC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B5E60 002B2DC0  48 00 00 7C */	b lbl_802B5EDC
lbl_802B5E64:
/* 802B5E64 002B2DC4  38 61 00 30 */	addi r3, r1, 0x30
/* 802B5E68 002B2DC8  38 81 00 1C */	addi r4, r1, 0x1c
/* 802B5E6C 002B2DCC  48 09 24 45 */	bl GetBounds__12CCubeSurfaceCFv
/* 802B5E70 002B2DD0  7E E4 BB 78 */	mr r4, r23
/* 802B5E74 002B2DD4  38 61 00 30 */	addi r3, r1, 0x30
/* 802B5E78 002B2DD8  48 08 1D 0D */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 802B5E7C 002B2DDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B5E80 002B2DE0  41 82 00 50 */	beq lbl_802B5ED0
/* 802B5E84 002B2DE4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 802B5E88 002B2DE8  7F C4 F3 78 */	mr r4, r30
/* 802B5E8C 002B2DEC  38 61 00 18 */	addi r3, r1, 0x18
/* 802B5E90 002B2DF0  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802B5E94 002B2DF4  48 05 16 79 */	bl GetMaterialByIndex__10CCubeModelCFi
/* 802B5E98 002B2DF8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 802B5E9C 002B2DFC  80 04 00 04 */	lwz r0, 4(r4)
/* 802B5EA0 002B2E00  54 03 10 3A */	slwi r3, r0, 2
/* 802B5EA4 002B2E04  38 03 00 08 */	addi r0, r3, 8
/* 802B5EA8 002B2E08  7C 64 00 2E */	lwzx r3, r4, r0
/* 802B5EAC 002B2E0C  48 05 20 51 */	bl SetVtxDescv_Compressed__3CGXFUi
/* 802B5EB0 002B2E10  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 802B5EB4 002B2E14  80 65 00 1C */	lwz r3, 0x1c(r5)
/* 802B5EB8 002B2E18  80 05 00 10 */	lwz r0, 0x10(r5)
/* 802B5EBC 002B2E1C  38 63 00 4B */	addi r3, r3, 0x4b
/* 802B5EC0 002B2E20  54 63 00 34 */	rlwinm r3, r3, 0, 0, 0x1a
/* 802B5EC4 002B2E24  54 04 00 7E */	clrlwi r4, r0, 1
/* 802B5EC8 002B2E28  7C 65 1A 14 */	add r3, r5, r3
/* 802B5ECC 002B2E2C  48 05 27 21 */	bl CallDisplayList__3CGXFPCvUl
lbl_802B5ED0:
/* 802B5ED0 002B2E30  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802B5ED4 002B2E34  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B5ED8 002B2E38  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802B5EDC:
/* 802B5EDC 002B2E3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802B5EE0 002B2E40  28 00 00 00 */	cmplwi r0, 0
/* 802B5EE4 002B2E44  40 82 FF 80 */	bne lbl_802B5E64
lbl_802B5EE8:
/* 802B5EE8 002B2E48  3B 18 00 01 */	addi r24, r24, 1
/* 802B5EEC 002B2E4C  2C 18 00 20 */	cmpwi r24, 0x20
/* 802B5EF0 002B2E50  41 80 FF 38 */	blt lbl_802B5E28
lbl_802B5EF4:
/* 802B5EF4 002B2E54  3B 9C 00 04 */	addi r28, r28, 4
/* 802B5EF8 002B2E58  3B 7B 00 01 */	addi r27, r27, 1
/* 802B5EFC 002B2E5C  3B 5A 00 20 */	addi r26, r26, 0x20
lbl_802B5F00:
/* 802B5F00 002B2E60  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802B5F04 002B2E64  7C 1B 00 40 */	cmplw r27, r0
/* 802B5F08 002B2E68  41 80 FF 0C */	blt lbl_802B5E14
/* 802B5F0C 002B2E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B5F10 002B2E70  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 802B5F14 002B2E74  54 00 10 3A */	slwi r0, r0, 2
/* 802B5F18 002B2E78  7C 03 02 14 */	add r0, r3, r0
/* 802B5F1C 002B2E7C  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B5F20 002B2E80  7C 64 1B 78 */	mr r4, r3
/* 802B5F24 002B2E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B5F28 002B2E88  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B5F2C 002B2E8C  90 61 00 08 */	stw r3, 8(r1)
/* 802B5F30 002B2E90  48 00 00 08 */	b lbl_802B5F38
lbl_802B5F34:
/* 802B5F34 002B2E94  38 84 00 04 */	addi r4, r4, 4
lbl_802B5F38:
/* 802B5F38 002B2E98  7C 04 00 40 */	cmplw r4, r0
/* 802B5F3C 002B2E9C  40 82 FF F8 */	bne lbl_802B5F34
/* 802B5F40 002B2EA0  28 03 00 00 */	cmplwi r3, 0
/* 802B5F44 002B2EA4  41 82 00 08 */	beq lbl_802B5F4C
/* 802B5F48 002B2EA8  48 05 F9 E9 */	bl Free__7CMemoryFPCv
lbl_802B5F4C:
/* 802B5F4C 002B2EAC  83 BD 00 04 */	lwz r29, 4(r29)
lbl_802B5F50:
/* 802B5F50 002B2EB0  80 16 00 24 */	lwz r0, 0x24(r22)
/* 802B5F54 002B2EB4  7C 1D 00 40 */	cmplw r29, r0
/* 802B5F58 002B2EB8  40 82 FE 80 */	bne lbl_802B5DD8
/* 802B5F5C 002B2EBC  BA C1 00 48 */	lmw r22, 0x48(r1)
/* 802B5F60 002B2EC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802B5F64 002B2EC4  7C 08 03 A6 */	mtlr r0
/* 802B5F68 002B2EC8  38 21 00 70 */	addi r1, r1, 0x70
/* 802B5F6C 002B2ECC  4E 80 00 20 */	blr

.global AllocatePhazonSuitMaskTexture__13CCubeRendererFv
AllocatePhazonSuitMaskTexture__13CCubeRendererFv:
/* 802B5F70 002B2ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B5F74 002B2ED4  7C 08 02 A6 */	mflr r0
/* 802B5F78 002B2ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B5F7C 002B2EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B5F80 002B2EE0  93 C1 00 08 */	stw r30, 8(r1)
/* 802B5F84 002B2EE4  7C 7E 1B 78 */	mr r30, r3
/* 802B5F88 002B2EE8  38 60 00 01 */	li r3, 1
/* 802B5F8C 002B2EEC  88 1E 03 18 */	lbz r0, 0x318(r30)
/* 802B5F90 002B2EF0  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802B5F94 002B2EF4  98 1E 03 18 */	stb r0, 0x318(r30)
/* 802B5F98 002B2EF8  80 1E 03 14 */	lwz r0, 0x314(r30)
/* 802B5F9C 002B2EFC  28 00 00 00 */	cmplwi r0, 0
/* 802B5FA0 002B2F00  40 82 00 60 */	bne lbl_802B6000
/* 802B5FA4 002B2F04  3C 80 80 3D */	lis r4, lbl_803D685C@ha
/* 802B5FA8 002B2F08  38 60 00 68 */	li r3, 0x68
/* 802B5FAC 002B2F0C  38 84 68 5C */	addi r4, r4, lbl_803D685C@l
/* 802B5FB0 002B2F10  38 A0 00 00 */	li r5, 0
/* 802B5FB4 002B2F14  48 05 F8 B9 */	bl __nw__FUlPCcPCc
/* 802B5FB8 002B2F18  7C 7F 1B 79 */	or. r31, r3, r3
/* 802B5FBC 002B2F1C  41 82 00 34 */	beq lbl_802B5FF0
/* 802B5FC0 002B2F20  3C A0 80 3F */	lis r5, mViewport__9CGraphics@ha
/* 802B5FC4 002B2F24  38 80 00 01 */	li r4, 1
/* 802B5FC8 002B2F28  38 C5 D9 10 */	addi r6, r5, mViewport__9CGraphics@l
/* 802B5FCC 002B2F2C  38 E0 00 01 */	li r7, 1
/* 802B5FD0 002B2F30  80 A6 00 08 */	lwz r5, 8(r6)
/* 802B5FD4 002B2F34  80 06 00 0C */	lwz r0, 0xc(r6)
/* 802B5FD8 002B2F38  7C A5 16 70 */	srawi r5, r5, 2
/* 802B5FDC 002B2F3C  7C 00 16 70 */	srawi r0, r0, 2
/* 802B5FE0 002B2F40  7C A5 07 34 */	extsh r5, r5
/* 802B5FE4 002B2F44  7C 06 07 34 */	extsh r6, r0
/* 802B5FE8 002B2F48  48 05 9E 45 */	bl __ct__8CTextureF12ETexelFormatssi
/* 802B5FEC 002B2F4C  7C 7F 1B 78 */	mr r31, r3
lbl_802B5FF0:
/* 802B5FF0 002B2F50  80 7E 03 14 */	lwz r3, 0x314(r30)
/* 802B5FF4 002B2F54  38 80 00 01 */	li r4, 1
/* 802B5FF8 002B2F58  48 05 9A 01 */	bl __dt__8CTextureFv
/* 802B5FFC 002B2F5C  93 FE 03 14 */	stw r31, 0x314(r30)
lbl_802B6000:
/* 802B6000 002B2F60  38 00 00 02 */	li r0, 2
/* 802B6004 002B2F64  90 1E 03 10 */	stw r0, 0x310(r30)
/* 802B6008 002B2F68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B600C 002B2F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6010 002B2F70  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B6014 002B2F74  7C 08 03 A6 */	mtlr r0
/* 802B6018 002B2F78  38 21 00 10 */	addi r1, r1, 0x10
/* 802B601C 002B2F7C  4E 80 00 20 */	blr

.global "DrawPhazonSuitIndirectEffect__13CCubeRendererFRC6CColorRC23TLockedToken<8CTexture>RC6CColorffff"
"DrawPhazonSuitIndirectEffect__13CCubeRendererFRC6CColorRC23TLockedToken<8CTexture>RC6CColorffff":
/* 802B6020 002B2F80  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802B6024 002B2F84  7C 08 02 A6 */	mflr r0
/* 802B6028 002B2F88  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802B602C 002B2F8C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 802B6030 002B2F90  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 802B6034 002B2F94  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 802B6038 002B2F98  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 802B603C 002B2F9C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 802B6040 002B2FA0  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 802B6044 002B2FA4  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 802B6048 002B2FA8  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 802B604C 002B2FAC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802B6050 002B2FB0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 802B6054 002B2FB4  93 A1 00 64 */	stw r29, 0x64(r1)
/* 802B6058 002B2FB8  93 81 00 60 */	stw r28, 0x60(r1)
/* 802B605C 002B2FBC  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802B6060 002B2FC0  FF 80 08 90 */	fmr f28, f1
/* 802B6064 002B2FC4  FF A0 10 90 */	fmr f29, f2
/* 802B6068 002B2FC8  7C 7C 1B 78 */	mr r28, r3
/* 802B606C 002B2FCC  FF C0 18 90 */	fmr f30, f3
/* 802B6070 002B2FD0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 802B6074 002B2FD4  FF E0 20 90 */	fmr f31, f4
/* 802B6078 002B2FD8  7C 9D 23 78 */	mr r29, r4
/* 802B607C 002B2FDC  7C BE 2B 78 */	mr r30, r5
/* 802B6080 002B2FE0  7C DF 33 78 */	mr r31, r6
/* 802B6084 002B2FE4  41 82 01 70 */	beq lbl_802B61F4
/* 802B6088 002B2FE8  80 1C 03 10 */	lwz r0, 0x310(r28)
/* 802B608C 002B2FEC  2C 00 00 00 */	cmpwi r0, 0
/* 802B6090 002B2FF0  41 82 01 64 */	beq lbl_802B61F4
/* 802B6094 002B2FF4  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802B6098 002B2FF8  38 61 00 28 */	addi r3, r1, 0x28
/* 802B609C 002B2FFC  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 802B60A0 002B3000  48 05 CA D5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B60A4 002B3004  48 05 3D B9 */	bl GetProjectionState__9CGraphicsFv
/* 802B60A8 002B3008  88 03 00 00 */	lbz r0, 0(r3)
/* 802B60AC 002B300C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802B60B0 002B3010  C0 03 00 04 */	lfs f0, 4(r3)
/* 802B60B4 002B3014  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802B60B8 002B3018  C0 03 00 08 */	lfs f0, 8(r3)
/* 802B60BC 002B301C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802B60C0 002B3020  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802B60C4 002B3024  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802B60C8 002B3028  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802B60CC 002B302C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802B60D0 002B3030  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802B60D4 002B3034  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802B60D8 002B3038  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802B60DC 002B303C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802B60E0 002B3040  80 BC 03 14 */	lwz r5, 0x314(r28)
/* 802B60E4 002B3044  28 05 00 00 */	cmplwi r5, 0
/* 802B60E8 002B3048  41 82 01 18 */	beq lbl_802B6200
/* 802B60EC 002B304C  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 802B60F0 002B3050  A8 85 00 04 */	lha r4, 4(r5)
/* 802B60F4 002B3054  38 63 D9 10 */	addi r3, r3, mViewport__9CGraphics@l
/* 802B60F8 002B3058  80 03 00 08 */	lwz r0, 8(r3)
/* 802B60FC 002B305C  7C 00 16 70 */	srawi r0, r0, 2
/* 802B6100 002B3060  7C 04 00 00 */	cmpw r4, r0
/* 802B6104 002B3064  40 82 00 FC */	bne lbl_802B6200
/* 802B6108 002B3068  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802B610C 002B306C  A8 65 00 06 */	lha r3, 6(r5)
/* 802B6110 002B3070  7C 00 16 70 */	srawi r0, r0, 2
/* 802B6114 002B3074  7C 03 00 00 */	cmpw r3, r0
/* 802B6118 002B3078  41 82 00 08 */	beq lbl_802B6120
/* 802B611C 002B307C  48 00 00 E4 */	b lbl_802B6200
lbl_802B6120:
/* 802B6120 002B3080  FC 20 E0 90 */	fmr f1, f28
/* 802B6124 002B3084  7F 83 E3 78 */	mr r3, r28
/* 802B6128 002B3088  FC 40 E0 90 */	fmr f2, f28
/* 802B612C 002B308C  48 00 0A 4D */	bl DoPhazonSuitIndirectAlphaBlur__13CCubeRendererFff
/* 802B6130 002B3090  80 7C 03 14 */	lwz r3, 0x314(r28)
/* 802B6134 002B3094  38 A0 00 01 */	li r5, 1
/* 802B6138 002B3098  38 80 00 00 */	li r4, 0
/* 802B613C 002B309C  88 03 00 0A */	lbz r0, 0xa(r3)
/* 802B6140 002B30A0  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 802B6144 002B30A4  98 03 00 0A */	stb r0, 0xa(r3)
/* 802B6148 002B30A8  80 7C 03 14 */	lwz r3, 0x314(r28)
/* 802B614C 002B30AC  48 05 84 89 */	bl GetBitMapData__8CTextureFi
/* 802B6150 002B30B0  7C 66 1B 78 */	mr r6, r3
/* 802B6154 002B30B4  7F 83 E3 78 */	mr r3, r28
/* 802B6158 002B30B8  38 80 00 04 */	li r4, 4
/* 802B615C 002B30BC  38 A0 00 00 */	li r5, 0
/* 802B6160 002B30C0  38 E0 00 27 */	li r7, 0x27
/* 802B6164 002B30C4  39 00 00 01 */	li r8, 1
/* 802B6168 002B30C8  48 00 11 E5 */	bl CopyTex__13CCubeRendererFibPv8GXTexFmtb
/* 802B616C 002B30CC  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 802B6170 002B30D0  28 00 00 00 */	cmplwi r0, 0
/* 802B6174 002B30D4  41 82 00 50 */	beq lbl_802B61C4
/* 802B6178 002B30D8  83 DE 00 08 */	lwz r30, 8(r30)
/* 802B617C 002B30DC  28 1E 00 00 */	cmplwi r30, 0
/* 802B6180 002B30E0  41 82 00 44 */	beq lbl_802B61C4
/* 802B6184 002B30E4  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B6188 002B30E8  38 61 00 08 */	addi r3, r1, 8
/* 802B618C 002B30EC  FC 40 08 90 */	fmr f2, f1
/* 802B6190 002B30F0  FC 60 08 90 */	fmr f3, f1
/* 802B6194 002B30F4  FC 80 08 90 */	fmr f4, f1
/* 802B6198 002B30F8  48 0A D2 55 */	bl __ct__6CColorFffff
/* 802B619C 002B30FC  FC 20 E8 90 */	fmr f1, f29
/* 802B61A0 002B3100  7C 64 1B 78 */	mr r4, r3
/* 802B61A4 002B3104  FC 40 F0 90 */	fmr f2, f30
/* 802B61A8 002B3108  80 BC 03 14 */	lwz r5, 0x314(r28)
/* 802B61AC 002B310C  FC 60 F8 90 */	fmr f3, f31
/* 802B61B0 002B3110  7F 83 E3 78 */	mr r3, r28
/* 802B61B4 002B3114  7F C6 F3 78 */	mr r6, r30
/* 802B61B8 002B3118  7F E7 FB 78 */	mr r7, r31
/* 802B61BC 002B311C  48 00 00 85 */	bl ReallyDrawPhazonSuitIndirectEffect__13CCubeRendererFRC6CColorRC8CTextureRC8CTextureRC6CColor
/* 802B61C0 002B3120  48 00 00 14 */	b lbl_802B61D4
lbl_802B61C4:
/* 802B61C4 002B3124  80 BC 03 14 */	lwz r5, 0x314(r28)
/* 802B61C8 002B3128  7F 83 E3 78 */	mr r3, r28
/* 802B61CC 002B312C  7F A4 EB 78 */	mr r4, r29
/* 802B61D0 002B3130  48 00 07 69 */	bl ReallyDrawPhazonSuitEffect__13CCubeRendererFRC6CColorRC8CTexture
lbl_802B61D4:
/* 802B61D4 002B3134  80 7C 03 14 */	lwz r3, 0x314(r28)
/* 802B61D8 002B3138  48 05 87 45 */	bl UnLock__8CTextureFv
/* 802B61DC 002B313C  38 61 00 28 */	addi r3, r1, 0x28
/* 802B61E0 002B3140  48 05 65 6D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802B61E4 002B3144  38 61 00 0C */	addi r3, r1, 0xc
/* 802B61E8 002B3148  48 05 3C 19 */	bl SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState
/* 802B61EC 002B314C  38 00 00 02 */	li r0, 2
/* 802B61F0 002B3150  90 1C 03 10 */	stw r0, 0x310(r28)
lbl_802B61F4:
/* 802B61F4 002B3154  38 60 00 00 */	li r3, 0
/* 802B61F8 002B3158  38 80 00 00 */	li r4, 0
/* 802B61FC 002B315C  48 0C 5E E5 */	bl GXSetDstAlpha
lbl_802B6200:
/* 802B6200 002B3160  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 802B6204 002B3164  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 802B6208 002B3168  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 802B620C 002B316C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 802B6210 002B3170  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 802B6214 002B3174  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 802B6218 002B3178  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 802B621C 002B317C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 802B6220 002B3180  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802B6224 002B3184  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 802B6228 002B3188  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 802B622C 002B318C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802B6230 002B3190  83 81 00 60 */	lwz r28, 0x60(r1)
/* 802B6234 002B3194  7C 08 03 A6 */	mtlr r0
/* 802B6238 002B3198  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802B623C 002B319C  4E 80 00 20 */	blr

.global ReallyDrawPhazonSuitIndirectEffect__13CCubeRendererFRC6CColorRC8CTextureRC8CTextureRC6CColor
ReallyDrawPhazonSuitIndirectEffect__13CCubeRendererFRC6CColorRC8CTextureRC8CTextureRC6CColor:
/* 802B6240 002B31A0  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 802B6244 002B31A4  7C 08 02 A6 */	mflr r0
/* 802B6248 002B31A8  90 01 01 64 */	stw r0, 0x164(r1)
/* 802B624C 002B31AC  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 802B6250 002B31B0  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 802B6254 002B31B4  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 802B6258 002B31B8  F3 C1 01 48 */	psq_st f30, 328(r1), 0, qr0
/* 802B625C 002B31BC  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 802B6260 002B31C0  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 802B6264 002B31C4  BF 41 01 18 */	stmw r26, 0x118(r1)
/* 802B6268 002B31C8  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 802B626C 002B31CC  7C 9D 23 78 */	mr r29, r4
/* 802B6270 002B31D0  38 63 D9 10 */	addi r3, r3, mViewport__9CGraphics@l
/* 802B6274 002B31D4  FF A0 08 90 */	fmr f29, f1
/* 802B6278 002B31D8  FF C0 10 90 */	fmr f30, f2
/* 802B627C 002B31DC  83 E3 00 08 */	lwz r31, 8(r3)
/* 802B6280 002B31E0  7C BA 2B 78 */	mr r26, r5
/* 802B6284 002B31E4  FF E0 18 90 */	fmr f31, f3
/* 802B6288 002B31E8  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 802B628C 002B31EC  7C DB 33 78 */	mr r27, r6
/* 802B6290 002B31F0  7C FC 3B 78 */	mr r28, r7
/* 802B6294 002B31F4  38 61 00 5C */	addi r3, r1, 0x5c
/* 802B6298 002B31F8  38 80 00 00 */	li r4, 0
/* 802B629C 002B31FC  38 A0 00 00 */	li r5, 0
/* 802B62A0 002B3200  48 05 E0 AD */	bl __ct__9CVector2iFii
/* 802B62A4 002B3204  7F E4 FB 78 */	mr r4, r31
/* 802B62A8 002B3208  7F C5 F3 78 */	mr r5, r30
/* 802B62AC 002B320C  38 61 00 54 */	addi r3, r1, 0x54
/* 802B62B0 002B3210  48 05 E0 9D */	bl __ct__9CVector2iFii
/* 802B62B4 002B3214  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802B62B8 002B3218  38 61 00 4C */	addi r3, r1, 0x4c
/* 802B62BC 002B321C  FC 40 08 90 */	fmr f2, f1
/* 802B62C0 002B3220  48 05 DF 41 */	bl __ct__9CVector2fFff
/* 802B62C4 002B3224  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B62C8 002B3228  38 61 00 44 */	addi r3, r1, 0x44
/* 802B62CC 002B322C  FC 40 08 90 */	fmr f2, f1
/* 802B62D0 002B3230  48 05 DF 31 */	bl __ct__9CVector2fFff
/* 802B62D4 002B3234  38 61 00 1C */	addi r3, r1, 0x1c
/* 802B62D8 002B3238  38 81 00 54 */	addi r4, r1, 0x54
/* 802B62DC 002B323C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 802B62E0 002B3240  48 05 DF FD */	bl __mi__FRC9CVector2iRC9CVector2i
/* 802B62E4 002B3244  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 802B62E8 002B3248  38 61 00 14 */	addi r3, r1, 0x14
/* 802B62EC 002B324C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802B62F0 002B3250  38 81 00 3C */	addi r4, r1, 0x3c
/* 802B62F4 002B3254  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 802B62F8 002B3258  38 A0 00 02 */	li r5, 2
/* 802B62FC 002B325C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802B6300 002B3260  48 05 DF 4D */	bl __dv__FRC9CVector2ii
/* 802B6304 002B3264  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802B6308 002B3268  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802B630C 002B326C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 802B6310 002B3270  2C 00 00 00 */	cmpwi r0, 0
/* 802B6314 002B3274  90 61 00 34 */	stw r3, 0x34(r1)
/* 802B6318 002B3278  90 81 00 38 */	stw r4, 0x38(r1)
/* 802B631C 002B327C  40 81 05 F0 */	ble lbl_802B690C
/* 802B6320 002B3280  80 01 00 40 */	lwz r0, 0x40(r1)
/* 802B6324 002B3284  2C 00 00 00 */	cmpwi r0, 0
/* 802B6328 002B3288  41 81 00 08 */	bgt lbl_802B6330
/* 802B632C 002B328C  48 00 05 E0 */	b lbl_802B690C
lbl_802B6330:
/* 802B6330 002B3290  80 CD A8 28 */	lwz r6, mpSpareBuffer__9CGraphics@sda21(r13)
/* 802B6334 002B3294  38 A0 00 04 */	li r5, 4
/* 802B6338 002B3298  80 E2 C7 A8 */	lwz r7, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B633C 002B329C  48 05 3C E5 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802B6340 002B32A0  7F 63 DB 78 */	mr r3, r27
/* 802B6344 002B32A4  38 80 00 01 */	li r4, 1
/* 802B6348 002B32A8  38 A0 00 01 */	li r5, 1
/* 802B634C 002B32AC  48 05 93 F1 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 802B6350 002B32B0  7F 43 D3 78 */	mr r3, r26
/* 802B6354 002B32B4  38 80 00 02 */	li r4, 2
/* 802B6358 002B32B8  38 A0 00 01 */	li r5, 1
/* 802B635C 002B32BC  48 05 93 E1 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 802B6360 002B32C0  38 60 00 00 */	li r3, 0
/* 802B6364 002B32C4  38 80 00 0F */	li r4, 0xf
/* 802B6368 002B32C8  38 A0 00 0E */	li r5, 0xe
/* 802B636C 002B32CC  38 C0 00 08 */	li r6, 8
/* 802B6370 002B32D0  38 E0 00 0F */	li r7, 0xf
/* 802B6374 002B32D4  48 05 28 79 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B6378 002B32D8  38 60 00 00 */	li r3, 0
/* 802B637C 002B32DC  38 80 00 00 */	li r4, 0
/* 802B6380 002B32E0  38 A0 00 00 */	li r5, 0
/* 802B6384 002B32E4  38 C0 00 00 */	li r6, 0
/* 802B6388 002B32E8  38 E0 00 01 */	li r7, 1
/* 802B638C 002B32EC  39 00 00 00 */	li r8, 0
/* 802B6390 002B32F0  48 05 27 A9 */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B6394 002B32F4  38 60 00 00 */	li r3, 0
/* 802B6398 002B32F8  38 80 00 00 */	li r4, 0
/* 802B639C 002B32FC  38 A0 00 04 */	li r5, 4
/* 802B63A0 002B3300  38 C0 00 3C */	li r6, 0x3c
/* 802B63A4 002B3304  38 E0 00 00 */	li r7, 0
/* 802B63A8 002B3308  39 00 00 7D */	li r8, 0x7d
/* 802B63AC 002B330C  48 05 23 21 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B63B0 002B3310  E0 3C A0 00 */	psq_l f1, 0(r28), 1, qr2
/* 802B63B4 002B3314  E0 5C A0 03 */	psq_l f2, 3(r28), 1, qr2
/* 802B63B8 002B3318  E0 BC A0 01 */	psq_l f5, 1(r28), 1, qr2
/* 802B63BC 002B331C  E1 1C A0 03 */	psq_l f8, 3(r28), 1, qr2
/* 802B63C0 002B3320  E1 3C A0 02 */	psq_l f9, 2(r28), 1, qr2
/* 802B63C4 002B3324  E1 5C A0 03 */	psq_l f10, 3(r28), 1, qr2
/* 802B63C8 002B3328  E0 1C A0 03 */	psq_l f0, 3(r28), 1, qr2
/* 802B63CC 002B332C  38 61 00 10 */	addi r3, r1, 0x10
/* 802B63D0 002B3330  C0 62 C2 78 */	lfs f3, lbl_805ADF98@sda21(r2)
/* 802B63D4 002B3334  C0 82 C2 7C */	lfs f4, lbl_805ADF9C@sda21(r2)
/* 802B63D8 002B3338  EC 03 00 32 */	fmuls f0, f3, f0
/* 802B63DC 002B333C  EC E3 00 72 */	fmuls f7, f3, f1
/* 802B63E0 002B3340  EC 23 00 B2 */	fmuls f1, f3, f2
/* 802B63E4 002B3344  EC C3 01 72 */	fmuls f6, f3, f5
/* 802B63E8 002B3348  EC 43 02 32 */	fmuls f2, f3, f8
/* 802B63EC 002B334C  EC A3 02 72 */	fmuls f5, f3, f9
/* 802B63F0 002B3350  EC 63 02 B2 */	fmuls f3, f3, f10
/* 802B63F4 002B3354  EC 27 00 72 */	fmuls f1, f7, f1
/* 802B63F8 002B3358  EC 46 00 B2 */	fmuls f2, f6, f2
/* 802B63FC 002B335C  EC 65 00 F2 */	fmuls f3, f5, f3
/* 802B6400 002B3360  EC 84 00 32 */	fmuls f4, f4, f0
/* 802B6404 002B3364  48 0A CF E9 */	bl __ct__6CColorFffff
/* 802B6408 002B3368  38 81 00 10 */	addi r4, r1, 0x10
/* 802B640C 002B336C  38 60 00 00 */	li r3, 0
/* 802B6410 002B3370  48 05 28 35 */	bl SetTevKColor__3CGXF14_GXTevKColorIDRC8_GXColor
/* 802B6414 002B3374  38 60 00 00 */	li r3, 0
/* 802B6418 002B3378  38 80 00 0C */	li r4, 0xc
/* 802B641C 002B337C  48 05 25 C5 */	bl SetTevKColorSel__3CGXF13_GXTevStageID15_GXTevKColorSel
/* 802B6420 002B3380  38 60 00 01 */	li r3, 1
/* 802B6424 002B3384  38 80 00 00 */	li r4, 0
/* 802B6428 002B3388  38 A0 00 05 */	li r5, 5
/* 802B642C 002B338C  38 C0 00 3C */	li r6, 0x3c
/* 802B6430 002B3390  38 E0 00 00 */	li r7, 0
/* 802B6434 002B3394  39 00 00 7D */	li r8, 0x7d
/* 802B6438 002B3398  48 05 22 95 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B643C 002B339C  38 60 00 02 */	li r3, 2
/* 802B6440 002B33A0  38 80 00 00 */	li r4, 0
/* 802B6444 002B33A4  38 A0 00 06 */	li r5, 6
/* 802B6448 002B33A8  38 C0 00 3C */	li r6, 0x3c
/* 802B644C 002B33AC  38 E0 00 00 */	li r7, 0
/* 802B6450 002B33B0  39 00 00 7D */	li r8, 0x7d
/* 802B6454 002B33B4  48 05 22 79 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B6458 002B33B8  80 A2 C7 A8 */	lwz r5, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B645C 002B33BC  38 60 00 00 */	li r3, 0
/* 802B6460 002B33C0  38 80 00 00 */	li r4, 0
/* 802B6464 002B33C4  38 C0 00 FF */	li r6, 0xff
/* 802B6468 002B33C8  48 05 24 E5 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B646C 002B33CC  38 60 00 01 */	li r3, 1
/* 802B6470 002B33D0  38 80 00 02 */	li r4, 2
/* 802B6474 002B33D4  38 A0 00 02 */	li r5, 2
/* 802B6478 002B33D8  38 C0 00 04 */	li r6, 4
/* 802B647C 002B33DC  48 05 24 D1 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B6480 002B33E0  38 60 00 01 */	li r3, 1
/* 802B6484 002B33E4  38 80 00 0F */	li r4, 0xf
/* 802B6488 002B33E8  38 A0 00 09 */	li r5, 9
/* 802B648C 002B33EC  38 C0 00 00 */	li r6, 0
/* 802B6490 002B33F0  38 E0 00 0F */	li r7, 0xf
/* 802B6494 002B33F4  48 05 27 59 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B6498 002B33F8  38 60 00 01 */	li r3, 1
/* 802B649C 002B33FC  38 80 00 00 */	li r4, 0
/* 802B64A0 002B3400  38 A0 00 00 */	li r5, 0
/* 802B64A4 002B3404  38 C0 00 00 */	li r6, 0
/* 802B64A8 002B3408  38 E0 00 01 */	li r7, 1
/* 802B64AC 002B340C  39 00 00 00 */	li r8, 0
/* 802B64B0 002B3410  48 05 26 89 */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B64B4 002B3414  38 60 00 01 */	li r3, 1
/* 802B64B8 002B3418  38 80 00 1C */	li r4, 0x1c
/* 802B64BC 002B341C  48 05 24 E1 */	bl SetTevKAlphaSel__3CGXF13_GXTevStageID15_GXTevKAlphaSel
/* 802B64C0 002B3420  38 60 00 01 */	li r3, 1
/* 802B64C4 002B3424  38 80 00 07 */	li r4, 7
/* 802B64C8 002B3428  38 A0 00 04 */	li r5, 4
/* 802B64CC 002B342C  38 C0 00 06 */	li r6, 6
/* 802B64D0 002B3430  38 E0 00 07 */	li r7, 7
/* 802B64D4 002B3434  48 05 26 C1 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B64D8 002B3438  38 60 00 01 */	li r3, 1
/* 802B64DC 002B343C  38 80 00 00 */	li r4, 0
/* 802B64E0 002B3440  38 A0 00 00 */	li r5, 0
/* 802B64E4 002B3444  38 C0 00 00 */	li r6, 0
/* 802B64E8 002B3448  38 E0 00 01 */	li r7, 1
/* 802B64EC 002B344C  39 00 00 00 */	li r8, 0
/* 802B64F0 002B3450  48 05 25 91 */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B64F4 002B3454  38 60 00 00 */	li r3, 0
/* 802B64F8 002B3458  38 80 00 00 */	li r4, 0
/* 802B64FC 002B345C  38 A0 00 00 */	li r5, 0
/* 802B6500 002B3460  38 C0 00 01 */	li r6, 1
/* 802B6504 002B3464  38 E0 00 00 */	li r7, 0
/* 802B6508 002B3468  39 00 00 00 */	li r8, 0
/* 802B650C 002B346C  39 20 00 02 */	li r9, 2
/* 802B6510 002B3470  48 05 27 BD */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 802B6514 002B3474  48 09 3A A1 */	bl Black__6CColorFv
/* 802B6518 002B3478  7C 64 1B 78 */	mr r4, r3
/* 802B651C 002B347C  38 60 00 00 */	li r3, 0
/* 802B6520 002B3480  48 05 28 A5 */	bl SetChanAmbColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 802B6524 002B3484  FC 60 E8 90 */	fmr f3, f29
/* 802B6528 002B3488  C0 42 C2 80 */	lfs f2, lbl_805ADFA0@sda21(r2)
/* 802B652C 002B348C  C0 02 C2 84 */	lfs f0, lbl_805ADFA4@sda21(r2)
/* 802B6530 002B3490  38 A0 00 01 */	li r5, 1
/* 802B6534 002B3494  48 00 00 0C */	b lbl_802B6540
lbl_802B6538:
/* 802B6538 002B3498  EC 63 00 B2 */	fmuls f3, f3, f2
/* 802B653C 002B349C  38 A5 00 01 */	addi r5, r5, 1
lbl_802B6540:
/* 802B6540 002B34A0  FC 20 1A 10 */	fabs f1, f3
/* 802B6544 002B34A4  FC 20 08 18 */	frsp f1, f1
/* 802B6548 002B34A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B654C 002B34AC  4C 41 13 82 */	cror 2, 1, 2
/* 802B6550 002B34B0  41 82 FF E8 */	beq lbl_802B6538
/* 802B6554 002B34B4  C0 42 C2 88 */	lfs f2, lbl_805ADFA8@sda21(r2)
/* 802B6558 002B34B8  C0 02 C2 8C */	lfs f0, lbl_805ADFAC@sda21(r2)
/* 802B655C 002B34BC  48 00 00 0C */	b lbl_802B6568
lbl_802B6560:
/* 802B6560 002B34C0  EC 63 00 B2 */	fmuls f3, f3, f2
/* 802B6564 002B34C4  38 A5 FF FF */	addi r5, r5, -1
lbl_802B6568:
/* 802B6568 002B34C8  FC 20 1A 10 */	fabs f1, f3
/* 802B656C 002B34CC  FC 20 08 18 */	frsp f1, f1
/* 802B6570 002B34D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B6574 002B34D4  41 80 FF EC */	blt lbl_802B6560
/* 802B6578 002B34D8  3C 60 80 3D */	lis r3, lbl_803D6814@ha
/* 802B657C 002B34DC  EC 3E 00 F2 */	fmuls f1, f30, f3
/* 802B6580 002B34E0  39 23 68 14 */	addi r9, r3, lbl_803D6814@l
/* 802B6584 002B34E4  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 802B6588 002B34E8  81 09 00 00 */	lwz r8, 0(r9)
/* 802B658C 002B34EC  38 81 00 80 */	addi r4, r1, 0x80
/* 802B6590 002B34F0  80 E9 00 08 */	lwz r7, 8(r9)
/* 802B6594 002B34F4  80 C9 00 10 */	lwz r6, 0x10(r9)
/* 802B6598 002B34F8  7C A5 07 74 */	extsb r5, r5
/* 802B659C 002B34FC  80 09 00 14 */	lwz r0, 0x14(r9)
/* 802B65A0 002B3500  38 60 00 01 */	li r3, 1
/* 802B65A4 002B3504  91 01 00 80 */	stw r8, 0x80(r1)
/* 802B65A8 002B3508  81 09 00 04 */	lwz r8, 4(r9)
/* 802B65AC 002B350C  90 E1 00 88 */	stw r7, 0x88(r1)
/* 802B65B0 002B3510  80 E9 00 0C */	lwz r7, 0xc(r9)
/* 802B65B4 002B3514  90 C1 00 90 */	stw r6, 0x90(r1)
/* 802B65B8 002B3518  90 01 00 94 */	stw r0, 0x94(r1)
/* 802B65BC 002B351C  91 01 00 84 */	stw r8, 0x84(r1)
/* 802B65C0 002B3520  90 E1 00 8C */	stw r7, 0x8c(r1)
/* 802B65C4 002B3524  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 802B65C8 002B3528  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 802B65CC 002B352C  D0 61 00 90 */	stfs f3, 0x90(r1)
/* 802B65D0 002B3530  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 802B65D4 002B3534  48 0C 48 F5 */	bl GXSetIndTexMtx
/* 802B65D8 002B3538  38 60 00 00 */	li r3, 0
/* 802B65DC 002B353C  38 80 00 01 */	li r4, 1
/* 802B65E0 002B3540  38 A0 00 01 */	li r5, 1
/* 802B65E4 002B3544  48 0C 4B C1 */	bl GXSetIndTexOrder
/* 802B65E8 002B3548  38 00 00 00 */	li r0, 0
/* 802B65EC 002B354C  38 60 00 00 */	li r3, 0
/* 802B65F0 002B3550  90 01 00 08 */	stw r0, 8(r1)
/* 802B65F4 002B3554  38 80 00 00 */	li r4, 0
/* 802B65F8 002B3558  38 A0 00 00 */	li r5, 0
/* 802B65FC 002B355C  38 C0 00 07 */	li r6, 7
/* 802B6600 002B3560  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B6604 002B3564  38 E0 00 01 */	li r7, 1
/* 802B6608 002B3568  39 00 00 00 */	li r8, 0
/* 802B660C 002B356C  39 20 00 00 */	li r9, 0
/* 802B6610 002B3570  39 40 00 00 */	li r10, 0
/* 802B6614 002B3574  48 05 21 79 */	bl SetTevIndirect__3CGXF13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
/* 802B6618 002B3578  38 60 00 01 */	li r3, 1
/* 802B661C 002B357C  48 05 20 75 */	bl SetNumIndStages__3CGXFUc
/* 802B6620 002B3580  38 60 00 02 */	li r3, 2
/* 802B6624 002B3584  48 05 26 6D */	bl SetNumTevStages__3CGXFUc
/* 802B6628 002B3588  38 60 00 03 */	li r3, 3
/* 802B662C 002B358C  48 05 27 E9 */	bl SetNumTexGens__3CGXFUc
/* 802B6630 002B3590  38 60 00 01 */	li r3, 1
/* 802B6634 002B3594  48 05 28 1D */	bl SetNumChans__3CGXFUc
/* 802B6638 002B3598  38 60 00 01 */	li r3, 1
/* 802B663C 002B359C  38 80 00 01 */	li r4, 1
/* 802B6640 002B35A0  38 A0 00 05 */	li r5, 5
/* 802B6644 002B35A4  38 C0 00 00 */	li r6, 0
/* 802B6648 002B35A8  48 05 22 89 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B664C 002B35AC  3C 60 80 3D */	lis r3, lbl_803D682C@ha
/* 802B6650 002B35B0  38 63 68 2C */	addi r3, r3, lbl_803D682C@l
/* 802B6654 002B35B4  48 05 17 D5 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802B6658 002B35B8  48 05 38 05 */	bl GetProjectionState__9CGraphicsFv
/* 802B665C 002B35BC  88 03 00 00 */	lbz r0, 0(r3)
/* 802B6660 002B35C0  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802B6664 002B35C4  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 802B6668 002B35C8  98 01 00 64 */	stb r0, 0x64(r1)
/* 802B666C 002B35CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 802B6670 002B35D0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 802B6674 002B35D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 802B6678 002B35D8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 802B667C 002B35DC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802B6680 002B35E0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 802B6684 002B35E4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802B6688 002B35E8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 802B668C 002B35EC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802B6690 002B35F0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 802B6694 002B35F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802B6698 002B35F8  38 61 00 98 */	addi r3, r1, 0x98
/* 802B669C 002B35FC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 802B66A0 002B3600  48 05 C4 D5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B66A4 002B3604  3C 60 43 30 */	lis r3, 0x4330
/* 802B66A8 002B3608  6F E4 80 00 */	xoris r4, r31, 0x8000
/* 802B66AC 002B360C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802B66B0 002B3610  90 81 00 CC */	stw r4, 0xcc(r1)
/* 802B66B4 002B3614  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802B66B8 002B3618  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 802B66BC 002B361C  C8 82 C2 A0 */	lfd f4, lbl_805ADFC0@sda21(r2)
/* 802B66C0 002B3620  FC 60 08 90 */	fmr f3, f1
/* 802B66C4 002B3624  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 802B66C8 002B3628  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802B66CC 002B362C  EC 40 20 28 */	fsubs f2, f0, f4
/* 802B66D0 002B3630  C0 A2 C2 90 */	lfs f5, lbl_805ADFB0@sda21(r2)
/* 802B66D4 002B3634  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 802B66D8 002B3638  C0 C2 C2 94 */	lfs f6, lbl_805ADFB4@sda21(r2)
/* 802B66DC 002B363C  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 802B66E0 002B3640  EC 80 20 28 */	fsubs f4, f0, f4
/* 802B66E4 002B3644  48 05 5E 71 */	bl SetOrtho__9CGraphicsFffffff
/* 802B66E8 002B3648  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802B66EC 002B364C  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802B66F0 002B3650  48 05 60 5D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802B66F4 002B3654  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802B66F8 002B3658  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802B66FC 002B365C  48 05 5E E5 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802B6700 002B3660  38 60 00 00 */	li r3, 0
/* 802B6704 002B3664  38 80 00 07 */	li r4, 7
/* 802B6708 002B3668  38 A0 00 00 */	li r5, 0
/* 802B670C 002B366C  48 05 21 71 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B6710 002B3670  38 60 00 00 */	li r3, 0
/* 802B6714 002B3674  48 0C 24 45 */	bl GXSetCullMode
/* 802B6718 002B3678  38 60 00 01 */	li r3, 1
/* 802B671C 002B367C  38 80 00 00 */	li r4, 0
/* 802B6720 002B3680  48 0C 59 C1 */	bl GXSetDstAlpha
/* 802B6724 002B3684  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802B6728 002B3688  38 61 00 2C */	addi r3, r1, 0x2c
/* 802B672C 002B368C  83 BD 00 00 */	lwz r29, 0(r29)
/* 802B6730 002B3690  FC 40 08 90 */	fmr f2, f1
/* 802B6734 002B3694  48 05 DA CD */	bl __ct__9CVector2fFff
/* 802B6738 002B3698  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B673C 002B369C  38 61 00 24 */	addi r3, r1, 0x24
/* 802B6740 002B36A0  FC 40 08 90 */	fmr f2, f1
/* 802B6744 002B36A4  48 05 DA BD */	bl __ct__9CVector2fFff
/* 802B6748 002B36A8  38 60 00 A0 */	li r3, 0xa0
/* 802B674C 002B36AC  38 80 00 00 */	li r4, 0
/* 802B6750 002B36B0  38 A0 00 04 */	li r5, 4
/* 802B6754 002B36B4  48 05 1E 31 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802B6758 002B36B8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 802B675C 002B36BC  3C 80 43 30 */	lis r4, 0x4330
/* 802B6760 002B36C0  90 81 00 D8 */	stw r4, 0xd8(r1)
/* 802B6764 002B36C4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 802B6768 002B36C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802B676C 002B36CC  C8 E2 C2 A0 */	lfd f7, lbl_805ADFC0@sda21(r2)
/* 802B6770 002B36D0  90 01 00 DC */	stw r0, 0xdc(r1)
/* 802B6774 002B36D4  C0 C2 C2 80 */	lfs f6, lbl_805ADFA0@sda21(r2)
/* 802B6778 002B36D8  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 802B677C 002B36DC  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 802B6780 002B36E0  EC 00 38 28 */	fsubs f0, f0, f7
/* 802B6784 002B36E4  C0 A2 C2 98 */	lfs f5, lbl_805ADFB8@sda21(r2)
/* 802B6788 002B36E8  90 01 00 EC */	stw r0, 0xec(r1)
/* 802B678C 002B36EC  C0 82 C2 84 */	lfs f4, lbl_805ADFA4@sda21(r2)
/* 802B6790 002B36F0  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6794 002B36F4  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802B6798 002B36F8  80 01 00 60 */	lwz r0, 0x60(r1)
/* 802B679C 002B36FC  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 802B67A0 002B3700  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802B67A4 002B3704  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802B67A8 002B3708  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 802B67AC 002B370C  C8 41 00 E0 */	lfd f2, 0xe0(r1)
/* 802B67B0 002B3710  EC 20 38 28 */	fsubs f1, f0, f7
/* 802B67B4 002B3714  90 81 00 F0 */	stw r4, 0xf0(r1)
/* 802B67B8 002B3718  EC 02 38 28 */	fsubs f0, f2, f7
/* 802B67BC 002B371C  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 802B67C0 002B3720  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B67C4 002B3724  93 A3 80 00 */	stw r29, 0xCC008000@l(r3)
/* 802B67C8 002B3728  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802B67CC 002B372C  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802B67D0 002B3730  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 802B67D4 002B3734  90 81 01 00 */	stw r4, 0x100(r1)
/* 802B67D8 002B3738  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B67DC 002B373C  C1 41 00 50 */	lfs f10, 0x50(r1)
/* 802B67E0 002B3740  90 81 01 08 */	stw r4, 0x108(r1)
/* 802B67E4 002B3744  D1 43 80 00 */	stfs f10, 0xCC008000@l(r3)
/* 802B67E8 002B3748  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802B67EC 002B374C  90 01 01 14 */	stw r0, 0x114(r1)
/* 802B67F0 002B3750  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B67F4 002B3754  C1 61 00 30 */	lfs f11, 0x30(r1)
/* 802B67F8 002B3758  90 81 01 10 */	stw r4, 0x110(r1)
/* 802B67FC 002B375C  D1 63 80 00 */	stfs f11, 0xCC008000@l(r3)
/* 802B6800 002B3760  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802B6804 002B3764  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6808 002B3768  EC 00 38 28 */	fsubs f0, f0, f7
/* 802B680C 002B376C  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802B6810 002B3770  80 01 00 58 */	lwz r0, 0x58(r1)
/* 802B6814 002B3774  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802B6818 002B3778  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802B681C 002B377C  C8 21 00 F0 */	lfd f1, 0xf0(r1)
/* 802B6820 002B3780  90 01 01 04 */	stw r0, 0x104(r1)
/* 802B6824 002B3784  EC 41 38 28 */	fsubs f2, f1, f7
/* 802B6828 002B3788  C8 21 01 00 */	lfd f1, 0x100(r1)
/* 802B682C 002B378C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6830 002B3790  EC 41 38 28 */	fsubs f2, f1, f7
/* 802B6834 002B3794  93 A3 80 00 */	stw r29, 0xCC008000@l(r3)
/* 802B6838 002B3798  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802B683C 002B379C  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802B6840 002B37A0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 802B6844 002B37A4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6848 002B37A8  C1 01 00 48 */	lfs f8, 0x48(r1)
/* 802B684C 002B37AC  D1 03 80 00 */	stfs f8, 0xCC008000@l(r3)
/* 802B6850 002B37B0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802B6854 002B37B4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6858 002B37B8  C1 21 00 28 */	lfs f9, 0x28(r1)
/* 802B685C 002B37BC  D1 23 80 00 */	stfs f9, 0xCC008000@l(r3)
/* 802B6860 002B37C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802B6864 002B37C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802B6868 002B37C8  90 01 00 FC */	stw r0, 0xfc(r1)
/* 802B686C 002B37CC  C8 21 00 F8 */	lfd f1, 0xf8(r1)
/* 802B6870 002B37D0  90 01 01 0C */	stw r0, 0x10c(r1)
/* 802B6874 002B37D4  EC 61 38 28 */	fsubs f3, f1, f7
/* 802B6878 002B37D8  C8 21 01 08 */	lfd f1, 0x108(r1)
/* 802B687C 002B37DC  D0 63 80 00 */	stfs f3, 0xCC008000@l(r3)
/* 802B6880 002B37E0  EC 21 38 28 */	fsubs f1, f1, f7
/* 802B6884 002B37E4  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802B6888 002B37E8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B688C 002B37EC  93 A3 80 00 */	stw r29, 0xCC008000@l(r3)
/* 802B6890 002B37F0  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802B6894 002B37F4  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802B6898 002B37F8  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 802B689C 002B37FC  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B68A0 002B3800  D1 03 80 00 */	stfs f8, 0xCC008000@l(r3)
/* 802B68A4 002B3804  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 802B68A8 002B3808  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B68AC 002B380C  D1 23 80 00 */	stfs f9, 0xCC008000@l(r3)
/* 802B68B0 002B3810  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B68B4 002B3814  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802B68B8 002B3818  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B68BC 002B381C  93 A3 80 00 */	stw r29, 0xCC008000@l(r3)
/* 802B68C0 002B3820  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802B68C4 002B3824  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802B68C8 002B3828  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802B68CC 002B382C  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B68D0 002B3830  D1 43 80 00 */	stfs f10, 0xCC008000@l(r3)
/* 802B68D4 002B3834  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802B68D8 002B3838  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B68DC 002B383C  D1 63 80 00 */	stfs f11, 0xCC008000@l(r3)
/* 802B68E0 002B3840  48 05 1C A1 */	bl End__3CGXFv
/* 802B68E4 002B3844  38 60 00 01 */	li r3, 1
/* 802B68E8 002B3848  48 0C 22 71 */	bl GXSetCullMode
/* 802B68EC 002B384C  38 60 00 00 */	li r3, 0
/* 802B68F0 002B3850  48 05 1E 55 */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802B68F4 002B3854  38 60 00 00 */	li r3, 0
/* 802B68F8 002B3858  48 05 1D 99 */	bl SetNumIndStages__3CGXFUc
/* 802B68FC 002B385C  38 61 00 64 */	addi r3, r1, 0x64
/* 802B6900 002B3860  48 05 35 01 */	bl SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState
/* 802B6904 002B3864  38 61 00 98 */	addi r3, r1, 0x98
/* 802B6908 002B3868  48 05 5E 45 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
lbl_802B690C:
/* 802B690C 002B386C  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 802B6910 002B3870  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 802B6914 002B3874  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 802B6918 002B3878  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 802B691C 002B387C  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 802B6920 002B3880  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 802B6924 002B3884  BB 41 01 18 */	lmw r26, 0x118(r1)
/* 802B6928 002B3888  80 01 01 64 */	lwz r0, 0x164(r1)
/* 802B692C 002B388C  7C 08 03 A6 */	mtlr r0
/* 802B6930 002B3890  38 21 01 60 */	addi r1, r1, 0x160
/* 802B6934 002B3894  4E 80 00 20 */	blr

.global ReallyDrawPhazonSuitEffect__13CCubeRendererFRC6CColorRC8CTexture
ReallyDrawPhazonSuitEffect__13CCubeRendererFRC6CColorRC8CTexture:
/* 802B6938 002B3898  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B693C 002B389C  7C 08 02 A6 */	mflr r0
/* 802B6940 002B38A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B6944 002B38A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B6948 002B38A8  7C 9F 23 78 */	mr r31, r4
/* 802B694C 002B38AC  80 82 C7 A8 */	lwz r4, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B6950 002B38B0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802B6954 002B38B4  7C 7E 1B 78 */	mr r30, r3
/* 802B6958 002B38B8  7C A3 2B 78 */	mr r3, r5
/* 802B695C 002B38BC  38 A0 00 01 */	li r5, 1
/* 802B6960 002B38C0  48 05 8D DD */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 802B6964 002B38C4  3C 80 80 3D */	lis r4, lbl_803D67F4@ha
/* 802B6968 002B38C8  38 61 00 08 */	addi r3, r1, 8
/* 802B696C 002B38CC  39 64 67 F4 */	addi r11, r4, lbl_803D67F4@l
/* 802B6970 002B38D0  81 4B 00 00 */	lwz r10, 0(r11)
/* 802B6974 002B38D4  81 2B 00 04 */	lwz r9, 4(r11)
/* 802B6978 002B38D8  81 0B 00 08 */	lwz r8, 8(r11)
/* 802B697C 002B38DC  80 EB 00 0C */	lwz r7, 0xc(r11)
/* 802B6980 002B38E0  80 CB 00 10 */	lwz r6, 0x10(r11)
/* 802B6984 002B38E4  80 AB 00 14 */	lwz r5, 0x14(r11)
/* 802B6988 002B38E8  80 8B 00 18 */	lwz r4, 0x18(r11)
/* 802B698C 002B38EC  80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 802B6990 002B38F0  91 41 00 08 */	stw r10, 8(r1)
/* 802B6994 002B38F4  91 21 00 0C */	stw r9, 0xc(r1)
/* 802B6998 002B38F8  91 01 00 10 */	stw r8, 0x10(r1)
/* 802B699C 002B38FC  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802B69A0 002B3900  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802B69A4 002B3904  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 802B69A8 002B3908  90 81 00 20 */	stw r4, 0x20(r1)
/* 802B69AC 002B390C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B69B0 002B3910  48 05 14 79 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802B69B4 002B3914  7F C3 F3 78 */	mr r3, r30
/* 802B69B8 002B3918  81 9E 00 00 */	lwz r12, 0(r30)
/* 802B69BC 002B391C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 802B69C0 002B3920  7D 89 03 A6 */	mtctr r12
/* 802B69C4 002B3924  4E 80 04 21 */	bctrl
/* 802B69C8 002B3928  38 60 00 01 */	li r3, 1
/* 802B69CC 002B392C  48 05 24 85 */	bl SetNumChans__3CGXFUc
/* 802B69D0 002B3930  38 60 00 01 */	li r3, 1
/* 802B69D4 002B3934  48 05 24 41 */	bl SetNumTexGens__3CGXFUc
/* 802B69D8 002B3938  38 60 00 01 */	li r3, 1
/* 802B69DC 002B393C  48 05 22 B5 */	bl SetNumTevStages__3CGXFUc
/* 802B69E0 002B3940  80 A2 C7 A8 */	lwz r5, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B69E4 002B3944  38 60 00 00 */	li r3, 0
/* 802B69E8 002B3948  38 80 00 00 */	li r4, 0
/* 802B69EC 002B394C  38 C0 00 04 */	li r6, 4
/* 802B69F0 002B3950  48 05 1F 5D */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B69F4 002B3954  38 60 00 00 */	li r3, 0
/* 802B69F8 002B3958  38 80 00 0F */	li r4, 0xf
/* 802B69FC 002B395C  38 A0 00 09 */	li r5, 9
/* 802B6A00 002B3960  38 C0 00 0A */	li r6, 0xa
/* 802B6A04 002B3964  38 E0 00 0F */	li r7, 0xf
/* 802B6A08 002B3968  48 05 21 E5 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B6A0C 002B396C  38 60 00 00 */	li r3, 0
/* 802B6A10 002B3970  38 80 00 00 */	li r4, 0
/* 802B6A14 002B3974  38 A0 00 00 */	li r5, 0
/* 802B6A18 002B3978  38 C0 00 00 */	li r6, 0
/* 802B6A1C 002B397C  38 E0 00 01 */	li r7, 1
/* 802B6A20 002B3980  39 00 00 00 */	li r8, 0
/* 802B6A24 002B3984  48 05 21 15 */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B6A28 002B3988  38 60 00 00 */	li r3, 0
/* 802B6A2C 002B398C  38 80 00 07 */	li r4, 7
/* 802B6A30 002B3990  38 A0 00 04 */	li r5, 4
/* 802B6A34 002B3994  38 C0 00 05 */	li r6, 5
/* 802B6A38 002B3998  38 E0 00 07 */	li r7, 7
/* 802B6A3C 002B399C  48 05 21 59 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B6A40 002B39A0  38 60 00 00 */	li r3, 0
/* 802B6A44 002B39A4  38 80 00 00 */	li r4, 0
/* 802B6A48 002B39A8  38 A0 00 00 */	li r5, 0
/* 802B6A4C 002B39AC  38 C0 00 00 */	li r6, 0
/* 802B6A50 002B39B0  38 E0 00 01 */	li r7, 1
/* 802B6A54 002B39B4  39 00 00 00 */	li r8, 0
/* 802B6A58 002B39B8  48 05 20 29 */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B6A5C 002B39BC  38 60 00 00 */	li r3, 0
/* 802B6A60 002B39C0  38 80 00 00 */	li r4, 0
/* 802B6A64 002B39C4  38 A0 00 00 */	li r5, 0
/* 802B6A68 002B39C8  38 C0 00 01 */	li r6, 1
/* 802B6A6C 002B39CC  38 E0 00 00 */	li r7, 0
/* 802B6A70 002B39D0  39 00 00 00 */	li r8, 0
/* 802B6A74 002B39D4  39 20 00 02 */	li r9, 2
/* 802B6A78 002B39D8  48 05 22 55 */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 802B6A7C 002B39DC  38 60 00 01 */	li r3, 1
/* 802B6A80 002B39E0  38 80 00 01 */	li r4, 1
/* 802B6A84 002B39E4  38 A0 00 01 */	li r5, 1
/* 802B6A88 002B39E8  38 C0 00 00 */	li r6, 0
/* 802B6A8C 002B39EC  48 05 1E 45 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B6A90 002B39F0  38 60 00 07 */	li r3, 7
/* 802B6A94 002B39F4  38 80 00 00 */	li r4, 0
/* 802B6A98 002B39F8  38 A0 00 01 */	li r5, 1
/* 802B6A9C 002B39FC  38 C0 00 07 */	li r6, 7
/* 802B6AA0 002B3A00  38 E0 00 00 */	li r7, 0
/* 802B6AA4 002B3A04  48 05 1D 71 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B6AA8 002B3A08  48 09 35 0D */	bl Black__6CColorFv
/* 802B6AAC 002B3A0C  7C 64 1B 78 */	mr r4, r3
/* 802B6AB0 002B3A10  38 60 00 00 */	li r3, 0
/* 802B6AB4 002B3A14  48 05 23 11 */	bl SetChanAmbColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 802B6AB8 002B3A18  38 60 00 01 */	li r3, 1
/* 802B6ABC 002B3A1C  38 80 00 00 */	li r4, 0
/* 802B6AC0 002B3A20  48 0C 56 21 */	bl GXSetDstAlpha
/* 802B6AC4 002B3A24  38 60 00 01 */	li r3, 1
/* 802B6AC8 002B3A28  48 0C 54 39 */	bl GXSetColorUpdate
/* 802B6ACC 002B3A2C  83 FF 00 00 */	lwz r31, 0(r31)
/* 802B6AD0 002B3A30  38 60 00 98 */	li r3, 0x98
/* 802B6AD4 002B3A34  38 80 00 00 */	li r4, 0
/* 802B6AD8 002B3A38  38 A0 00 04 */	li r5, 4
/* 802B6ADC 002B3A3C  48 05 1A A9 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802B6AE0 002B3A40  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802B6AE4 002B3A44  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 802B6AE8 002B3A48  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802B6AEC 002B3A4C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6AF0 002B3A50  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6AF4 002B3A54  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6AF8 002B3A58  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 802B6AFC 002B3A5C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B00 002B3A60  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B04 002B3A64  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B08 002B3A68  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B0C 002B3A6C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B10 002B3A70  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 802B6B14 002B3A74  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B18 002B3A78  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B1C 002B3A7C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B20 002B3A80  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B24 002B3A84  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B28 002B3A88  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 802B6B2C 002B3A8C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B30 002B3A90  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B34 002B3A94  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B38 002B3A98  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B3C 002B3A9C  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B40 002B3AA0  93 E3 80 00 */	stw r31, 0xCC008000@l(r3)
/* 802B6B44 002B3AA4  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6B48 002B3AA8  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6B4C 002B3AAC  48 05 1A 35 */	bl End__3CGXFv
/* 802B6B50 002B3AB0  38 60 00 01 */	li r3, 1
/* 802B6B54 002B3AB4  38 80 00 03 */	li r4, 3
/* 802B6B58 002B3AB8  38 A0 00 01 */	li r5, 1
/* 802B6B5C 002B3ABC  48 05 4F 39 */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 802B6B60 002B3AC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B6B64 002B3AC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B6B68 002B3AC8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802B6B6C 002B3ACC  7C 08 03 A6 */	mtlr r0
/* 802B6B70 002B3AD0  38 21 00 30 */	addi r1, r1, 0x30
/* 802B6B74 002B3AD4  4E 80 00 20 */	blr

.global DoPhazonSuitIndirectAlphaBlur__13CCubeRendererFff
DoPhazonSuitIndirectAlphaBlur__13CCubeRendererFff:
/* 802B6B78 002B3AD8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802B6B7C 002B3ADC  7C 08 02 A6 */	mflr r0
/* 802B6B80 002B3AE0  90 01 01 14 */	stw r0, 0x114(r1)
/* 802B6B84 002B3AE4  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 802B6B88 002B3AE8  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 802B6B8C 002B3AEC  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 802B6B90 002B3AF0  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 802B6B94 002B3AF4  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 802B6B98 002B3AF8  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 802B6B9C 002B3AFC  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 802B6BA0 002B3B00  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 802B6BA4 002B3B04  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 802B6BA8 002B3B08  F3 61 00 C8 */	psq_st f27, 200(r1), 0, qr0
/* 802B6BAC 002B3B0C  BE A1 00 94 */	stmw r21, 0x94(r1)
/* 802B6BB0 002B3B10  FF 60 08 90 */	fmr f27, f1
/* 802B6BB4 002B3B14  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802B6BB8 002B3B18  FF C0 10 90 */	fmr f30, f2
/* 802B6BBC 002B3B1C  C0 42 C2 70 */	lfs f2, lbl_805ADF90@sda21(r2)
/* 802B6BC0 002B3B20  3C 80 80 3F */	lis r4, mViewport__9CGraphics@ha
/* 802B6BC4 002B3B24  FC 80 08 90 */	fmr f4, f1
/* 802B6BC8 002B3B28  38 84 D9 10 */	addi r4, r4, mViewport__9CGraphics@l
/* 802B6BCC 002B3B2C  FC 60 10 90 */	fmr f3, f2
/* 802B6BD0 002B3B30  FC C0 10 90 */	fmr f6, f2
/* 802B6BD4 002B3B34  83 A4 00 08 */	lwz r29, 8(r4)
/* 802B6BD8 002B3B38  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 802B6BDC 002B3B3C  7C 7C 1B 78 */	mr r28, r3
/* 802B6BE0 002B3B40  C0 A2 C2 A8 */	lfs f5, lbl_805ADFC8@sda21(r2)
/* 802B6BE4 002B3B44  48 05 59 71 */	bl SetOrtho__9CGraphicsFffffff
/* 802B6BE8 002B3B48  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802B6BEC 002B3B4C  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802B6BF0 002B3B50  48 05 5B 5D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802B6BF4 002B3B54  81 9C 00 00 */	lwz r12, 0(r28)
/* 802B6BF8 002B3B58  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 802B6BFC 002B3B5C  7F 83 E3 78 */	mr r3, r28
/* 802B6C00 002B3B60  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802B6C04 002B3B64  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 802B6C08 002B3B68  7D 89 03 A6 */	mtctr r12
/* 802B6C0C 002B3B6C  4E 80 04 21 */	bctrl
/* 802B6C10 002B3B70  38 60 00 00 */	li r3, 0
/* 802B6C14 002B3B74  38 80 00 06 */	li r4, 6
/* 802B6C18 002B3B78  38 A0 00 00 */	li r5, 0
/* 802B6C1C 002B3B7C  48 05 4E 79 */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 802B6C20 002B3B80  38 60 00 08 */	li r3, 8
/* 802B6C24 002B3B84  48 00 08 31 */	bl GetRenderToTexBuffer__13CCubeRendererFi
/* 802B6C28 002B3B88  7C 66 1B 78 */	mr r6, r3
/* 802B6C2C 002B3B8C  7F 83 E3 78 */	mr r3, r28
/* 802B6C30 002B3B90  38 80 00 01 */	li r4, 1
/* 802B6C34 002B3B94  38 A0 00 01 */	li r5, 1
/* 802B6C38 002B3B98  38 E0 00 27 */	li r7, 0x27
/* 802B6C3C 002B3B9C  39 00 00 01 */	li r8, 1
/* 802B6C40 002B3BA0  48 00 07 0D */	bl CopyTex__13CCubeRendererFibPv8GXTexFmtb
/* 802B6C44 002B3BA4  38 60 00 01 */	li r3, 1
/* 802B6C48 002B3BA8  38 80 00 00 */	li r4, 0
/* 802B6C4C 002B3BAC  48 0C 54 95 */	bl GXSetDstAlpha
/* 802B6C50 002B3BB0  38 60 00 08 */	li r3, 8
/* 802B6C54 002B3BB4  48 00 08 01 */	bl GetRenderToTexBuffer__13CCubeRendererFi
/* 802B6C58 002B3BB8  57 A4 0F FE */	srwi r4, r29, 0x1f
/* 802B6C5C 002B3BBC  57 E0 0F FE */	srwi r0, r31, 0x1f
/* 802B6C60 002B3BC0  7C 84 EA 14 */	add r4, r4, r29
/* 802B6C64 002B3BC4  7C 66 1B 78 */	mr r6, r3
/* 802B6C68 002B3BC8  7C 83 0E 70 */	srawi r3, r4, 1
/* 802B6C6C 002B3BCC  7C 00 FA 14 */	add r0, r0, r31
/* 802B6C70 002B3BD0  80 E2 C7 A8 */	lwz r7, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B6C74 002B3BD4  7C 04 0E 70 */	srawi r4, r0, 1
/* 802B6C78 002B3BD8  38 A0 00 01 */	li r5, 1
/* 802B6C7C 002B3BDC  48 05 33 A5 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802B6C80 002B3BE0  3C 80 80 3D */	lis r4, lbl_803D6794@ha
/* 802B6C84 002B3BE4  38 61 00 24 */	addi r3, r1, 0x24
/* 802B6C88 002B3BE8  39 64 67 94 */	addi r11, r4, lbl_803D6794@l
/* 802B6C8C 002B3BEC  81 4B 00 00 */	lwz r10, 0(r11)
/* 802B6C90 002B3BF0  81 2B 00 04 */	lwz r9, 4(r11)
/* 802B6C94 002B3BF4  81 0B 00 08 */	lwz r8, 8(r11)
/* 802B6C98 002B3BF8  80 EB 00 0C */	lwz r7, 0xc(r11)
/* 802B6C9C 002B3BFC  80 CB 00 10 */	lwz r6, 0x10(r11)
/* 802B6CA0 002B3C00  80 AB 00 14 */	lwz r5, 0x14(r11)
/* 802B6CA4 002B3C04  80 8B 00 18 */	lwz r4, 0x18(r11)
/* 802B6CA8 002B3C08  80 0B 00 1C */	lwz r0, 0x1c(r11)
/* 802B6CAC 002B3C0C  91 41 00 24 */	stw r10, 0x24(r1)
/* 802B6CB0 002B3C10  91 21 00 28 */	stw r9, 0x28(r1)
/* 802B6CB4 002B3C14  91 01 00 2C */	stw r8, 0x2c(r1)
/* 802B6CB8 002B3C18  90 E1 00 30 */	stw r7, 0x30(r1)
/* 802B6CBC 002B3C1C  90 C1 00 34 */	stw r6, 0x34(r1)
/* 802B6CC0 002B3C20  90 A1 00 38 */	stw r5, 0x38(r1)
/* 802B6CC4 002B3C24  90 81 00 3C */	stw r4, 0x3c(r1)
/* 802B6CC8 002B3C28  90 01 00 40 */	stw r0, 0x40(r1)
/* 802B6CCC 002B3C2C  48 05 11 5D */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802B6CD0 002B3C30  38 60 00 01 */	li r3, 1
/* 802B6CD4 002B3C34  48 05 21 7D */	bl SetNumChans__3CGXFUc
/* 802B6CD8 002B3C38  38 60 00 01 */	li r3, 1
/* 802B6CDC 002B3C3C  48 05 21 39 */	bl SetNumTexGens__3CGXFUc
/* 802B6CE0 002B3C40  38 60 00 01 */	li r3, 1
/* 802B6CE4 002B3C44  48 05 1F AD */	bl SetNumTevStages__3CGXFUc
/* 802B6CE8 002B3C48  80 A2 C7 A8 */	lwz r5, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B6CEC 002B3C4C  38 60 00 00 */	li r3, 0
/* 802B6CF0 002B3C50  38 80 00 00 */	li r4, 0
/* 802B6CF4 002B3C54  38 C0 00 04 */	li r6, 4
/* 802B6CF8 002B3C58  48 05 1C 55 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B6CFC 002B3C5C  38 60 00 00 */	li r3, 0
/* 802B6D00 002B3C60  38 80 00 0F */	li r4, 0xf
/* 802B6D04 002B3C64  38 A0 00 09 */	li r5, 9
/* 802B6D08 002B3C68  38 C0 00 0A */	li r6, 0xa
/* 802B6D0C 002B3C6C  38 E0 00 0F */	li r7, 0xf
/* 802B6D10 002B3C70  48 05 1E DD */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B6D14 002B3C74  38 60 00 00 */	li r3, 0
/* 802B6D18 002B3C78  38 80 00 00 */	li r4, 0
/* 802B6D1C 002B3C7C  38 A0 00 00 */	li r5, 0
/* 802B6D20 002B3C80  38 C0 00 00 */	li r6, 0
/* 802B6D24 002B3C84  38 E0 00 01 */	li r7, 1
/* 802B6D28 002B3C88  39 00 00 00 */	li r8, 0
/* 802B6D2C 002B3C8C  48 05 1E 0D */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B6D30 002B3C90  38 60 00 00 */	li r3, 0
/* 802B6D34 002B3C94  38 80 00 07 */	li r4, 7
/* 802B6D38 002B3C98  38 A0 00 04 */	li r5, 4
/* 802B6D3C 002B3C9C  38 C0 00 05 */	li r6, 5
/* 802B6D40 002B3CA0  38 E0 00 07 */	li r7, 7
/* 802B6D44 002B3CA4  48 05 1E 51 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B6D48 002B3CA8  38 60 00 00 */	li r3, 0
/* 802B6D4C 002B3CAC  38 80 00 00 */	li r4, 0
/* 802B6D50 002B3CB0  38 A0 00 00 */	li r5, 0
/* 802B6D54 002B3CB4  38 C0 00 00 */	li r6, 0
/* 802B6D58 002B3CB8  38 E0 00 01 */	li r7, 1
/* 802B6D5C 002B3CBC  39 00 00 00 */	li r8, 0
/* 802B6D60 002B3CC0  48 05 1D 21 */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B6D64 002B3CC4  38 60 00 00 */	li r3, 0
/* 802B6D68 002B3CC8  38 80 00 00 */	li r4, 0
/* 802B6D6C 002B3CCC  38 A0 00 00 */	li r5, 0
/* 802B6D70 002B3CD0  38 C0 00 01 */	li r6, 1
/* 802B6D74 002B3CD4  38 E0 00 00 */	li r7, 0
/* 802B6D78 002B3CD8  39 00 00 00 */	li r8, 0
/* 802B6D7C 002B3CDC  39 20 00 02 */	li r9, 2
/* 802B6D80 002B3CE0  48 05 1F 4D */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 802B6D84 002B3CE4  38 60 00 01 */	li r3, 1
/* 802B6D88 002B3CE8  38 80 00 01 */	li r4, 1
/* 802B6D8C 002B3CEC  38 A0 00 01 */	li r5, 1
/* 802B6D90 002B3CF0  38 C0 00 00 */	li r6, 0
/* 802B6D94 002B3CF4  48 05 1B 3D */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B6D98 002B3CF8  38 60 00 00 */	li r3, 0
/* 802B6D9C 002B3CFC  48 0C 51 65 */	bl GXSetColorUpdate
/* 802B6DA0 002B3D00  38 60 00 07 */	li r3, 7
/* 802B6DA4 002B3D04  38 80 00 00 */	li r4, 0
/* 802B6DA8 002B3D08  38 A0 00 01 */	li r5, 1
/* 802B6DAC 002B3D0C  38 C0 00 07 */	li r6, 7
/* 802B6DB0 002B3D10  38 E0 00 00 */	li r7, 0
/* 802B6DB4 002B3D14  48 05 1A 61 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B6DB8 002B3D18  48 09 31 F5 */	bl White__6CColorFv
/* 802B6DBC 002B3D1C  7C 64 1B 78 */	mr r4, r3
/* 802B6DC0 002B3D20  38 60 00 00 */	li r3, 0
/* 802B6DC4 002B3D24  48 05 1F 99 */	bl SetChanMatColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 802B6DC8 002B3D28  48 09 31 ED */	bl Black__6CColorFv
/* 802B6DCC 002B3D2C  7C 64 1B 78 */	mr r4, r3
/* 802B6DD0 002B3D30  38 60 00 00 */	li r3, 0
/* 802B6DD4 002B3D34  48 05 1F F1 */	bl SetChanAmbColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 802B6DD8 002B3D38  48 09 31 D5 */	bl White__6CColorFv
/* 802B6DDC 002B3D3C  82 A3 00 00 */	lwz r21, 0(r3)
/* 802B6DE0 002B3D40  38 60 00 00 */	li r3, 0
/* 802B6DE4 002B3D44  38 80 00 00 */	li r4, 0
/* 802B6DE8 002B3D48  48 0C 52 F9 */	bl GXSetDstAlpha
/* 802B6DEC 002B3D4C  38 60 00 98 */	li r3, 0x98
/* 802B6DF0 002B3D50  38 80 00 00 */	li r4, 0
/* 802B6DF4 002B3D54  38 A0 00 04 */	li r5, 4
/* 802B6DF8 002B3D58  48 05 17 8D */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802B6DFC 002B3D5C  C0 42 C2 74 */	lfs f2, lbl_805ADF94@sda21(r2)
/* 802B6E00 002B3D60  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 802B6E04 002B3D64  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B6E08 002B3D68  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E0C 002B3D6C  C0 02 C2 80 */	lfs f0, lbl_805ADFA0@sda21(r2)
/* 802B6E10 002B3D70  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E14 002B3D74  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E18 002B3D78  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B6E1C 002B3D7C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E20 002B3D80  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6E24 002B3D84  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6E28 002B3D88  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E2C 002B3D8C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E30 002B3D90  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B6E34 002B3D94  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6E38 002B3D98  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6E3C 002B3D9C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E40 002B3DA0  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E44 002B3DA4  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6E48 002B3DA8  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B6E4C 002B3DAC  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E50 002B3DB0  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E54 002B3DB4  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6E58 002B3DB8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E5C 002B3DBC  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B6E60 002B3DC0  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B6E64 002B3DC4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B6E68 002B3DC8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B6E6C 002B3DCC  48 05 17 15 */	bl End__3CGXFv
/* 802B6E70 002B3DD0  38 60 00 08 */	li r3, 8
/* 802B6E74 002B3DD4  48 00 05 E1 */	bl GetRenderToTexBuffer__13CCubeRendererFi
/* 802B6E78 002B3DD8  7C 66 1B 78 */	mr r6, r3
/* 802B6E7C 002B3DDC  7F 83 E3 78 */	mr r3, r28
/* 802B6E80 002B3DE0  38 80 00 02 */	li r4, 2
/* 802B6E84 002B3DE4  38 A0 00 01 */	li r5, 1
/* 802B6E88 002B3DE8  38 E0 00 27 */	li r7, 0x27
/* 802B6E8C 002B3DEC  39 00 00 01 */	li r8, 1
/* 802B6E90 002B3DF0  48 00 04 BD */	bl CopyTex__13CCubeRendererFibPv8GXTexFmtb
/* 802B6E94 002B3DF4  38 60 00 00 */	li r3, 0
/* 802B6E98 002B3DF8  48 0C 50 69 */	bl GXSetColorUpdate
/* 802B6E9C 002B3DFC  38 60 00 08 */	li r3, 8
/* 802B6EA0 002B3E00  48 00 05 B5 */	bl GetRenderToTexBuffer__13CCubeRendererFi
/* 802B6EA4 002B3E04  7F BE 16 70 */	srawi r30, r29, 2
/* 802B6EA8 002B3E08  7C 66 1B 78 */	mr r6, r3
/* 802B6EAC 002B3E0C  7F FF 16 70 */	srawi r31, r31, 2
/* 802B6EB0 002B3E10  80 E2 C7 A8 */	lwz r7, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B6EB4 002B3E14  7F C3 F3 78 */	mr r3, r30
/* 802B6EB8 002B3E18  38 A0 00 01 */	li r5, 1
/* 802B6EBC 002B3E1C  7F E4 FB 78 */	mr r4, r31
/* 802B6EC0 002B3E20  48 05 31 61 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802B6EC4 002B3E24  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 802B6EC8 002B3E28  3C 00 43 30 */	lis r0, 0x4330
/* 802B6ECC 002B3E2C  90 61 00 8C */	stw r3, 0x8c(r1)
/* 802B6ED0 002B3E30  3C 60 80 3D */	lis r3, lbl_803D67B4@ha
/* 802B6ED4 002B3E34  3A A3 67 B4 */	addi r21, r3, lbl_803D67B4@l
/* 802B6ED8 002B3E38  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B6EDC 002B3E3C  90 01 00 88 */	stw r0, 0x88(r1)
/* 802B6EE0 002B3E40  38 61 00 10 */	addi r3, r1, 0x10
/* 802B6EE4 002B3E44  C8 82 C2 A0 */	lfd f4, lbl_805ADFC0@sda21(r2)
/* 802B6EE8 002B3E48  FC 40 08 90 */	fmr f2, f1
/* 802B6EEC 002B3E4C  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 802B6EF0 002B3E50  FC 60 08 90 */	fmr f3, f1
/* 802B6EF4 002B3E54  C0 A2 C2 88 */	lfs f5, lbl_805ADFA8@sda21(r2)
/* 802B6EF8 002B3E58  EC 00 20 28 */	fsubs f0, f0, f4
/* 802B6EFC 002B3E5C  82 D5 00 00 */	lwz r22, 0(r21)
/* 802B6F00 002B3E60  82 F5 00 04 */	lwz r23, 4(r21)
/* 802B6F04 002B3E64  83 15 00 08 */	lwz r24, 8(r21)
/* 802B6F08 002B3E68  EC 05 00 24 */	fdivs f0, f5, f0
/* 802B6F0C 002B3E6C  83 35 00 0C */	lwz r25, 0xc(r21)
/* 802B6F10 002B3E70  83 55 00 10 */	lwz r26, 0x10(r21)
/* 802B6F14 002B3E74  83 75 00 14 */	lwz r27, 0x14(r21)
/* 802B6F18 002B3E78  81 95 00 18 */	lwz r12, 0x18(r21)
/* 802B6F1C 002B3E7C  81 75 00 1C */	lwz r11, 0x1c(r21)
/* 802B6F20 002B3E80  81 55 00 20 */	lwz r10, 0x20(r21)
/* 802B6F24 002B3E84  EF FB 00 32 */	fmuls f31, f27, f0
/* 802B6F28 002B3E88  81 35 00 24 */	lwz r9, 0x24(r21)
/* 802B6F2C 002B3E8C  81 15 00 28 */	lwz r8, 0x28(r21)
/* 802B6F30 002B3E90  80 F5 00 2C */	lwz r7, 0x2c(r21)
/* 802B6F34 002B3E94  80 D5 00 30 */	lwz r6, 0x30(r21)
/* 802B6F38 002B3E98  80 B5 00 34 */	lwz r5, 0x34(r21)
/* 802B6F3C 002B3E9C  80 95 00 38 */	lwz r4, 0x38(r21)
/* 802B6F40 002B3EA0  80 15 00 3C */	lwz r0, 0x3c(r21)
/* 802B6F44 002B3EA4  92 C1 00 44 */	stw r22, 0x44(r1)
/* 802B6F48 002B3EA8  C0 82 C2 AC */	lfs f4, lbl_805ADFCC@sda21(r2)
/* 802B6F4C 002B3EAC  92 E1 00 48 */	stw r23, 0x48(r1)
/* 802B6F50 002B3EB0  93 01 00 4C */	stw r24, 0x4c(r1)
/* 802B6F54 002B3EB4  93 21 00 50 */	stw r25, 0x50(r1)
/* 802B6F58 002B3EB8  93 41 00 54 */	stw r26, 0x54(r1)
/* 802B6F5C 002B3EBC  93 61 00 58 */	stw r27, 0x58(r1)
/* 802B6F60 002B3EC0  91 81 00 5C */	stw r12, 0x5c(r1)
/* 802B6F64 002B3EC4  91 61 00 60 */	stw r11, 0x60(r1)
/* 802B6F68 002B3EC8  91 41 00 64 */	stw r10, 0x64(r1)
/* 802B6F6C 002B3ECC  91 21 00 68 */	stw r9, 0x68(r1)
/* 802B6F70 002B3ED0  91 01 00 6C */	stw r8, 0x6c(r1)
/* 802B6F74 002B3ED4  90 E1 00 70 */	stw r7, 0x70(r1)
/* 802B6F78 002B3ED8  90 C1 00 74 */	stw r6, 0x74(r1)
/* 802B6F7C 002B3EDC  90 A1 00 78 */	stw r5, 0x78(r1)
/* 802B6F80 002B3EE0  90 81 00 7C */	stw r4, 0x7c(r1)
/* 802B6F84 002B3EE4  90 01 00 80 */	stw r0, 0x80(r1)
/* 802B6F88 002B3EE8  48 0A C4 65 */	bl __ct__6CColorFffff
/* 802B6F8C 002B3EEC  3A E1 00 44 */	addi r23, r1, 0x44
/* 802B6F90 002B3EF0  82 C3 00 00 */	lwz r22, 0(r3)
/* 802B6F94 002B3EF4  C3 62 C2 74 */	lfs f27, lbl_805ADF94@sda21(r2)
/* 802B6F98 002B3EF8  7E F5 BB 78 */	mr r21, r23
/* 802B6F9C 002B3EFC  C3 82 C2 70 */	lfs f28, lbl_805ADF90@sda21(r2)
/* 802B6FA0 002B3F00  3B 00 00 00 */	li r24, 0
/* 802B6FA4 002B3F04  C3 A2 C2 7C */	lfs f29, lbl_805ADF9C@sda21(r2)
/* 802B6FA8 002B3F08  3F 60 CC 01 */	lis r27, 0xcc01
lbl_802B6FAC:
/* 802B6FAC 002B3F0C  38 60 00 98 */	li r3, 0x98
/* 802B6FB0 002B3F10  38 80 00 00 */	li r4, 0
/* 802B6FB4 002B3F14  38 A0 00 04 */	li r5, 4
/* 802B6FB8 002B3F18  48 05 15 CD */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802B6FBC 002B3F1C  C0 35 00 00 */	lfs f1, 0(r21)
/* 802B6FC0 002B3F20  38 61 00 1C */	addi r3, r1, 0x1c
/* 802B6FC4 002B3F24  C0 15 00 04 */	lfs f0, 4(r21)
/* 802B6FC8 002B3F28  EC 3F 00 72 */	fmuls f1, f31, f1
/* 802B6FCC 002B3F2C  EC 5F 00 32 */	fmuls f2, f31, f0
/* 802B6FD0 002B3F30  48 05 D2 31 */	bl __ct__9CVector2fFff
/* 802B6FD4 002B3F34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802B6FD8 002B3F38  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B6FDC 002B3F3C  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B6FE0 002B3F40  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802B6FE4 002B3F44  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B6FE8 002B3F48  92 DB 80 00 */	stw r22, 0xCC008000@l(r27)
/* 802B6FEC 002B3F4C  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B6FF0 002B3F50  D3 9B 80 00 */	stfs f28, 0xCC008000@l(r27)
/* 802B6FF4 002B3F54  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802B6FF8 002B3F58  EC 1D 00 2A */	fadds f0, f29, f0
/* 802B6FFC 002B3F5C  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B7000 002B3F60  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B7004 002B3F64  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802B7008 002B3F68  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B700C 002B3F6C  92 DB 80 00 */	stw r22, 0xCC008000@l(r27)
/* 802B7010 002B3F70  D3 9B 80 00 */	stfs f28, 0xCC008000@l(r27)
/* 802B7014 002B3F74  D3 9B 80 00 */	stfs f28, 0xCC008000@l(r27)
/* 802B7018 002B3F78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802B701C 002B3F7C  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B7020 002B3F80  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B7024 002B3F84  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802B7028 002B3F88  EC 1D 00 2A */	fadds f0, f29, f0
/* 802B702C 002B3F8C  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B7030 002B3F90  92 DB 80 00 */	stw r22, 0xCC008000@l(r27)
/* 802B7034 002B3F94  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B7038 002B3F98  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B703C 002B3F9C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802B7040 002B3FA0  EC 1D 00 2A */	fadds f0, f29, f0
/* 802B7044 002B3FA4  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B7048 002B3FA8  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B704C 002B3FAC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802B7050 002B3FB0  EC 1D 00 2A */	fadds f0, f29, f0
/* 802B7054 002B3FB4  D0 1B 80 00 */	stfs f0, 0xCC008000@l(r27)
/* 802B7058 002B3FB8  92 DB 80 00 */	stw r22, 0xCC008000@l(r27)
/* 802B705C 002B3FBC  D3 9B 80 00 */	stfs f28, 0xCC008000@l(r27)
/* 802B7060 002B3FC0  D3 7B 80 00 */	stfs f27, 0xCC008000@l(r27)
/* 802B7064 002B3FC4  48 05 15 1D */	bl End__3CGXFv
/* 802B7068 002B3FC8  3B 18 00 01 */	addi r24, r24, 1
/* 802B706C 002B3FCC  3A B5 00 08 */	addi r21, r21, 8
/* 802B7070 002B3FD0  28 18 00 08 */	cmplwi r24, 8
/* 802B7074 002B3FD4  41 80 FF 38 */	blt lbl_802B6FAC
/* 802B7078 002B3FD8  38 60 00 00 */	li r3, 0
/* 802B707C 002B3FDC  38 80 00 00 */	li r4, 0
/* 802B7080 002B3FE0  48 0C 50 61 */	bl GXSetDstAlpha
/* 802B7084 002B3FE4  38 60 00 03 */	li r3, 3
/* 802B7088 002B3FE8  38 80 00 01 */	li r4, 1
/* 802B708C 002B3FEC  38 A0 00 00 */	li r5, 0
/* 802B7090 002B3FF0  38 C0 00 00 */	li r6, 0
/* 802B7094 002B3FF4  48 05 18 3D */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B7098 002B3FF8  38 60 00 04 */	li r3, 4
/* 802B709C 002B3FFC  38 80 00 00 */	li r4, 0
/* 802B70A0 002B4000  38 A0 00 00 */	li r5, 0
/* 802B70A4 002B4004  38 C0 00 07 */	li r6, 7
/* 802B70A8 002B4008  38 E0 00 00 */	li r7, 0
/* 802B70AC 002B400C  48 05 17 69 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B70B0 002B4010  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B70B4 002B4014  38 61 00 0C */	addi r3, r1, 0xc
/* 802B70B8 002B4018  FC 40 08 90 */	fmr f2, f1
/* 802B70BC 002B401C  FC 60 08 90 */	fmr f3, f1
/* 802B70C0 002B4020  FC 80 08 90 */	fmr f4, f1
/* 802B70C4 002B4024  48 0A C3 29 */	bl __ct__6CColorFffff
/* 802B70C8 002B4028  82 A3 00 00 */	lwz r21, 0(r3)
/* 802B70CC 002B402C  38 60 00 98 */	li r3, 0x98
/* 802B70D0 002B4030  38 80 00 00 */	li r4, 0
/* 802B70D4 002B4034  38 A0 00 04 */	li r5, 4
/* 802B70D8 002B4038  48 05 14 AD */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802B70DC 002B403C  C0 42 C2 74 */	lfs f2, lbl_805ADF94@sda21(r2)
/* 802B70E0 002B4040  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 802B70E4 002B4044  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B70E8 002B4048  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B70EC 002B404C  C0 02 C2 7C */	lfs f0, lbl_805ADF9C@sda21(r2)
/* 802B70F0 002B4050  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B70F4 002B4054  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B70F8 002B4058  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B70FC 002B405C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B7100 002B4060  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B7104 002B4064  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B7108 002B4068  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B710C 002B406C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B7110 002B4070  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B7114 002B4074  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B7118 002B4078  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B711C 002B407C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B7120 002B4080  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B7124 002B4084  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B7128 002B4088  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B712C 002B408C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B7130 002B4090  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B7134 002B4094  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B7138 002B4098  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B713C 002B409C  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802B7140 002B40A0  92 A3 80 00 */	stw r21, 0xCC008000@l(r3)
/* 802B7144 002B40A4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802B7148 002B40A8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802B714C 002B40AC  48 05 14 35 */	bl End__3CGXFv
/* 802B7150 002B40B0  38 60 00 01 */	li r3, 1
/* 802B7154 002B40B4  38 80 00 01 */	li r4, 1
/* 802B7158 002B40B8  38 A0 00 01 */	li r5, 1
/* 802B715C 002B40BC  38 C0 00 00 */	li r6, 0
/* 802B7160 002B40C0  48 05 17 71 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B7164 002B40C4  38 60 00 00 */	li r3, 0
/* 802B7168 002B40C8  38 80 00 07 */	li r4, 7
/* 802B716C 002B40CC  38 A0 00 04 */	li r5, 4
/* 802B7170 002B40D0  38 C0 00 05 */	li r6, 5
/* 802B7174 002B40D4  38 E0 00 07 */	li r7, 7
/* 802B7178 002B40D8  48 05 1A 1D */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B717C 002B40DC  38 60 00 07 */	li r3, 7
/* 802B7180 002B40E0  38 80 00 00 */	li r4, 0
/* 802B7184 002B40E4  38 A0 00 01 */	li r5, 1
/* 802B7188 002B40E8  38 C0 00 07 */	li r6, 7
/* 802B718C 002B40EC  38 E0 00 00 */	li r7, 0
/* 802B7190 002B40F0  48 05 16 85 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B7194 002B40F4  38 60 00 08 */	li r3, 8
/* 802B7198 002B40F8  48 00 02 BD */	bl GetRenderToTexBuffer__13CCubeRendererFi
/* 802B719C 002B40FC  7C 66 1B 78 */	mr r6, r3
/* 802B71A0 002B4100  7F 83 E3 78 */	mr r3, r28
/* 802B71A4 002B4104  38 80 00 04 */	li r4, 4
/* 802B71A8 002B4108  38 A0 00 00 */	li r5, 0
/* 802B71AC 002B410C  38 E0 00 27 */	li r7, 0x27
/* 802B71B0 002B4110  39 00 00 01 */	li r8, 1
/* 802B71B4 002B4114  48 00 01 99 */	bl CopyTex__13CCubeRendererFibPv8GXTexFmtb
/* 802B71B8 002B4118  38 60 00 00 */	li r3, 0
/* 802B71BC 002B411C  38 80 00 00 */	li r4, 0
/* 802B71C0 002B4120  48 0C 4F 21 */	bl GXSetDstAlpha
/* 802B71C4 002B4124  38 60 00 00 */	li r3, 0
/* 802B71C8 002B4128  48 0C 4D 39 */	bl GXSetColorUpdate
/* 802B71CC 002B412C  38 60 00 08 */	li r3, 8
/* 802B71D0 002B4130  48 00 02 85 */	bl GetRenderToTexBuffer__13CCubeRendererFi
/* 802B71D4 002B4134  80 E2 C7 A8 */	lwz r7, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802B71D8 002B4138  7C 66 1B 78 */	mr r6, r3
/* 802B71DC 002B413C  7F C3 F3 78 */	mr r3, r30
/* 802B71E0 002B4140  7F E4 FB 78 */	mr r4, r31
/* 802B71E4 002B4144  38 A0 00 01 */	li r5, 1
/* 802B71E8 002B4148  48 05 2E 39 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802B71EC 002B414C  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 802B71F0 002B4150  3C 00 43 30 */	lis r0, 0x4330
/* 802B71F4 002B4154  90 61 00 8C */	stw r3, 0x8c(r1)
/* 802B71F8 002B4158  38 61 00 08 */	addi r3, r1, 8
/* 802B71FC 002B415C  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B7200 002B4160  90 01 00 88 */	stw r0, 0x88(r1)
/* 802B7204 002B4164  C8 82 C2 A0 */	lfd f4, lbl_805ADFC0@sda21(r2)
/* 802B7208 002B4168  FC 40 08 90 */	fmr f2, f1
/* 802B720C 002B416C  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 802B7210 002B4170  FC 60 08 90 */	fmr f3, f1
/* 802B7214 002B4174  C0 A2 C2 B0 */	lfs f5, lbl_805ADFD0@sda21(r2)
/* 802B7218 002B4178  EC 00 20 28 */	fsubs f0, f0, f4
/* 802B721C 002B417C  C0 82 C2 B4 */	lfs f4, lbl_805ADFD4@sda21(r2)
/* 802B7220 002B4180  EC 05 00 24 */	fdivs f0, f5, f0
/* 802B7224 002B4184  EF 7E 00 32 */	fmuls f27, f30, f0
/* 802B7228 002B4188  48 0A C1 C5 */	bl __ct__6CColorFffff
/* 802B722C 002B418C  82 A3 00 00 */	lwz r21, 0(r3)
/* 802B7230 002B4190  3A C0 00 00 */	li r22, 0
/* 802B7234 002B4194  C3 A2 C2 74 */	lfs f29, lbl_805ADF94@sda21(r2)
/* 802B7238 002B4198  3F 80 CC 01 */	lis r28, 0xcc01
/* 802B723C 002B419C  C3 E2 C2 70 */	lfs f31, lbl_805ADF90@sda21(r2)
/* 802B7240 002B41A0  C3 C2 C2 7C */	lfs f30, lbl_805ADF9C@sda21(r2)
lbl_802B7244:
/* 802B7244 002B41A4  38 60 00 98 */	li r3, 0x98
/* 802B7248 002B41A8  38 80 00 00 */	li r4, 0
/* 802B724C 002B41AC  38 A0 00 04 */	li r5, 4
/* 802B7250 002B41B0  48 05 13 35 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802B7254 002B41B4  C0 37 00 00 */	lfs f1, 0(r23)
/* 802B7258 002B41B8  38 61 00 14 */	addi r3, r1, 0x14
/* 802B725C 002B41BC  C0 17 00 04 */	lfs f0, 4(r23)
/* 802B7260 002B41C0  EC 3B 00 72 */	fmuls f1, f27, f1
/* 802B7264 002B41C4  EC 5B 00 32 */	fmuls f2, f27, f0
/* 802B7268 002B41C8  48 05 CF 99 */	bl __ct__9CVector2fFff
/* 802B726C 002B41CC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802B7270 002B41D0  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B7274 002B41D4  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B7278 002B41D8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802B727C 002B41DC  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B7280 002B41E0  92 BC 80 00 */	stw r21, 0xCC008000@l(r28)
/* 802B7284 002B41E4  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B7288 002B41E8  D3 FC 80 00 */	stfs f31, 0xCC008000@l(r28)
/* 802B728C 002B41EC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802B7290 002B41F0  EC 1E 00 2A */	fadds f0, f30, f0
/* 802B7294 002B41F4  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B7298 002B41F8  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B729C 002B41FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802B72A0 002B4200  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B72A4 002B4204  92 BC 80 00 */	stw r21, 0xCC008000@l(r28)
/* 802B72A8 002B4208  D3 FC 80 00 */	stfs f31, 0xCC008000@l(r28)
/* 802B72AC 002B420C  D3 FC 80 00 */	stfs f31, 0xCC008000@l(r28)
/* 802B72B0 002B4210  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802B72B4 002B4214  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B72B8 002B4218  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B72BC 002B421C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802B72C0 002B4220  EC 1E 00 2A */	fadds f0, f30, f0
/* 802B72C4 002B4224  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B72C8 002B4228  92 BC 80 00 */	stw r21, 0xCC008000@l(r28)
/* 802B72CC 002B422C  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B72D0 002B4230  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B72D4 002B4234  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802B72D8 002B4238  EC 1E 00 2A */	fadds f0, f30, f0
/* 802B72DC 002B423C  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B72E0 002B4240  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B72E4 002B4244  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802B72E8 002B4248  EC 1E 00 2A */	fadds f0, f30, f0
/* 802B72EC 002B424C  D0 1C 80 00 */	stfs f0, 0xCC008000@l(r28)
/* 802B72F0 002B4250  92 BC 80 00 */	stw r21, 0xCC008000@l(r28)
/* 802B72F4 002B4254  D3 FC 80 00 */	stfs f31, 0xCC008000@l(r28)
/* 802B72F8 002B4258  D3 BC 80 00 */	stfs f29, 0xCC008000@l(r28)
/* 802B72FC 002B425C  48 05 12 85 */	bl End__3CGXFv
/* 802B7300 002B4260  3A D6 00 01 */	addi r22, r22, 1
/* 802B7304 002B4264  3A F7 00 08 */	addi r23, r23, 8
/* 802B7308 002B4268  28 16 00 08 */	cmplwi r22, 8
/* 802B730C 002B426C  41 80 FF 38 */	blt lbl_802B7244
/* 802B7310 002B4270  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 802B7314 002B4274  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 802B7318 002B4278  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 802B731C 002B427C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 802B7320 002B4280  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 802B7324 002B4284  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 802B7328 002B4288  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 802B732C 002B428C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 802B7330 002B4290  E3 61 00 C8 */	psq_l f27, 200(r1), 0, qr0
/* 802B7334 002B4294  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 802B7338 002B4298  BA A1 00 94 */	lmw r21, 0x94(r1)
/* 802B733C 002B429C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802B7340 002B42A0  7C 08 03 A6 */	mtlr r0
/* 802B7344 002B42A4  38 21 01 10 */	addi r1, r1, 0x110
/* 802B7348 002B42A8  4E 80 00 20 */	blr

.global CopyTex__13CCubeRendererFibPv8GXTexFmtb
CopyTex__13CCubeRendererFibPv8GXTexFmtb:
/* 802B734C 002B42AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B7350 002B42B0  7C 08 02 A6 */	mflr r0
/* 802B7354 002B42B4  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 802B7358 002B42B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B735C 002B42BC  38 63 D9 10 */	addi r3, r3, mViewport__9CGraphics@l
/* 802B7360 002B42C0  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 802B7364 002B42C4  7C 9A 23 78 */	mr r26, r4
/* 802B7368 002B42C8  7C BB 2B 78 */	mr r27, r5
/* 802B736C 002B42CC  7C DC 33 78 */	mr r28, r6
/* 802B7370 002B42D0  7C FD 3B 78 */	mr r29, r7
/* 802B7374 002B42D4  7D 1E 43 78 */	mr r30, r8
/* 802B7378 002B42D8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 802B737C 002B42DC  80 03 00 04 */	lwz r0, 4(r3)
/* 802B7380 002B42E0  83 23 00 08 */	lwz r25, 8(r3)
/* 802B7384 002B42E4  7C BF D3 96 */	divwu r5, r31, r26
/* 802B7388 002B42E8  7C 80 FA 14 */	add r4, r0, r31
/* 802B738C 002B42EC  80 63 00 00 */	lwz r3, 0(r3)
/* 802B7390 002B42F0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802B7394 002B42F4  7C 85 20 50 */	subf r4, r5, r4
/* 802B7398 002B42F8  7C 19 D3 96 */	divwu r0, r25, r26
/* 802B739C 002B42FC  54 A6 04 3E */	clrlwi r6, r5, 0x10
/* 802B73A0 002B4300  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 802B73A4 002B4304  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802B73A8 002B4308  48 0C 1A 0D */	bl GXSetTexCopySrc
/* 802B73AC 002B430C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802B73B0 002B4310  41 82 00 14 */	beq lbl_802B73C4
/* 802B73B4 002B4314  57 20 0F FE */	srwi r0, r25, 0x1f
/* 802B73B8 002B4318  7C 00 CA 14 */	add r0, r0, r25
/* 802B73BC 002B431C  7C 00 0E 70 */	srawi r0, r0, 1
/* 802B73C0 002B4320  48 00 00 08 */	b lbl_802B73C8
lbl_802B73C4:
/* 802B73C4 002B4324  7F 20 CB 78 */	mr r0, r25
lbl_802B73C8:
/* 802B73C8 002B4328  7C 60 D3 96 */	divwu r3, r0, r26
/* 802B73CC 002B432C  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802B73D0 002B4330  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802B73D4 002B4334  41 82 00 14 */	beq lbl_802B73E8
/* 802B73D8 002B4338  57 E0 0F FE */	srwi r0, r31, 0x1f
/* 802B73DC 002B433C  7C 00 FA 14 */	add r0, r0, r31
/* 802B73E0 002B4340  7C 00 0E 70 */	srawi r0, r0, 1
/* 802B73E4 002B4344  48 00 00 08 */	b lbl_802B73EC
lbl_802B73E8:
/* 802B73E8 002B4348  7F E0 FB 78 */	mr r0, r31
lbl_802B73EC:
/* 802B73EC 002B434C  7C 00 D3 96 */	divwu r0, r0, r26
/* 802B73F0 002B4350  7F A5 EB 78 */	mr r5, r29
/* 802B73F4 002B4354  57 66 06 3E */	clrlwi r6, r27, 0x18
/* 802B73F8 002B4358  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 802B73FC 002B435C  48 0C 1A 85 */	bl GXSetTexCopyDst
/* 802B7400 002B4360  38 00 00 00 */	li r0, 0
/* 802B7404 002B4364  38 61 00 08 */	addi r3, r1, 8
/* 802B7408 002B4368  90 01 00 08 */	stw r0, 8(r1)
/* 802B740C 002B436C  48 05 4B 89 */	bl SetClearColor__9CGraphicsFRC6CColor
/* 802B7410 002B4370  38 60 00 00 */	li r3, 0
/* 802B7414 002B4374  48 0C 4A ED */	bl GXSetColorUpdate
/* 802B7418 002B4378  28 1C 00 00 */	cmplwi r28, 0
/* 802B741C 002B437C  41 82 00 0C */	beq lbl_802B7428
/* 802B7420 002B4380  7F 83 E3 78 */	mr r3, r28
/* 802B7424 002B4384  48 00 00 08 */	b lbl_802B742C
lbl_802B7428:
/* 802B7428 002B4388  80 6D A8 28 */	lwz r3, mpSpareBuffer__9CGraphics@sda21(r13)
lbl_802B742C:
/* 802B742C 002B438C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802B7430 002B4390  48 0C 21 05 */	bl GXCopyTex
/* 802B7434 002B4394  38 60 00 01 */	li r3, 1
/* 802B7438 002B4398  48 0C 4A C9 */	bl GXSetColorUpdate
/* 802B743C 002B439C  48 0C 11 29 */	bl GXPixModeSync
/* 802B7440 002B43A0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802B7444 002B43A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B7448 002B43A8  7C 08 03 A6 */	mtlr r0
/* 802B744C 002B43AC  38 21 00 30 */	addi r1, r1, 0x30
/* 802B7450 002B43B0  4E 80 00 20 */	blr

.global GetRenderToTexBuffer__13CCubeRendererFi
GetRenderToTexBuffer__13CCubeRendererFi:
/* 802B7454 002B43B4  80 0D A8 24 */	lwz r0, mSpareBufferSize__9CGraphics@sda21(r13)
/* 802B7458 002B43B8  80 8D A8 28 */	lwz r4, mpSpareBuffer__9CGraphics@sda21(r13)
/* 802B745C 002B43BC  7C 03 01 D6 */	mullw r0, r3, r0
/* 802B7460 002B43C0  54 00 E1 3E */	srwi r0, r0, 4
/* 802B7464 002B43C4  7C 64 02 14 */	add r3, r4, r0
/* 802B7468 002B43C8  4E 80 00 20 */	blr

.global "DrawOverlappingWorldModelShadows__13CCubeRendererFiRQ24rstl10vector<Ui>RC6CAABoxii"
"DrawOverlappingWorldModelShadows__13CCubeRendererFiRQ24rstl10vector<Ui>RC6CAABoxii":
/* 802B746C 002B43CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802B7470 002B43D0  7C 08 02 A6 */	mflr r0
/* 802B7474 002B43D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 802B7478 002B43D8  BE 21 00 34 */	stmw r17, 0x34(r1)
/* 802B747C 002B43DC  7C 71 1B 78 */	mr r17, r3
/* 802B7480 002B43E0  7C B2 2B 78 */	mr r18, r5
/* 802B7484 002B43E4  7C D3 33 78 */	mr r19, r6
/* 802B7488 002B43E8  7C 99 23 78 */	mr r25, r4
/* 802B748C 002B43EC  54 9A 10 3A */	slwi r26, r4, 2
/* 802B7490 002B43F0  3B 00 00 00 */	li r24, 0
/* 802B7494 002B43F4  80 02 D7 78 */	lwz r0, lbl_805AF498@sda21(r2)
/* 802B7498 002B43F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B749C 002B43FC  83 A3 00 20 */	lwz r29, 0x20(r3)
/* 802B74A0 002B4400  48 00 01 50 */	b lbl_802B75F0
lbl_802B74A4:
/* 802B74A4 002B4404  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 802B74A8 002B4408  28 1F 00 00 */	cmplwi r31, 0
/* 802B74AC 002B440C  41 82 01 40 */	beq lbl_802B75EC
/* 802B74B0 002B4410  7F 5B D3 78 */	mr r27, r26
/* 802B74B4 002B4414  3A E0 00 00 */	li r23, 0
/* 802B74B8 002B4418  3A C0 00 00 */	li r22, 0
/* 802B74BC 002B441C  48 00 01 20 */	b lbl_802B75DC
lbl_802B74C0:
/* 802B74C0 002B4420  7C 18 BA 14 */	add r0, r24, r23
/* 802B74C4 002B4424  80 72 00 0C */	lwz r3, 0xc(r18)
/* 802B74C8 002B4428  54 00 10 3A */	slwi r0, r0, 2
/* 802B74CC 002B442C  7E A3 00 2E */	lwzx r21, r3, r0
/* 802B74D0 002B4430  28 15 00 00 */	cmplwi r21, 0
/* 802B74D4 002B4434  41 82 01 00 */	beq lbl_802B75D4
/* 802B74D8 002B4438  3A 80 00 00 */	li r20, 0
/* 802B74DC 002B443C  7F 7C DB 78 */	mr r28, r27
lbl_802B74E0:
/* 802B74E0 002B4440  38 00 00 01 */	li r0, 1
/* 802B74E4 002B4444  7C 00 A0 30 */	slw r0, r0, r20
/* 802B74E8 002B4448  7E A0 00 39 */	and. r0, r21, r0
/* 802B74EC 002B444C  41 82 00 DC */	beq lbl_802B75C8
/* 802B74F0 002B4450  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 802B74F4 002B4454  7C 16 A2 14 */	add r0, r22, r20
/* 802B74F8 002B4458  54 03 18 38 */	slwi r3, r0, 3
/* 802B74FC 002B445C  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802B7500 002B4460  38 03 00 04 */	addi r0, r3, 4
/* 802B7504 002B4464  38 81 00 10 */	addi r4, r1, 0x10
/* 802B7508 002B4468  38 60 00 00 */	li r3, 0
/* 802B750C 002B446C  7F C5 00 2E */	lwzx r30, r5, r0
/* 802B7510 002B4470  9B 81 00 13 */	stb r28, 0x13(r1)
/* 802B7514 002B4474  48 05 17 31 */	bl SetTevKColor__3CGXF14_GXTevKColorIDRC8_GXColor
/* 802B7518 002B4478  7F C3 F3 78 */	mr r3, r30
/* 802B751C 002B447C  48 05 01 05 */	bl SetArraysCurrent__10CCubeModelCFv
/* 802B7520 002B4480  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802B7524 002B4484  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B7528 002B4488  48 00 00 7C */	b lbl_802B75A4
lbl_802B752C:
/* 802B752C 002B448C  38 61 00 14 */	addi r3, r1, 0x14
/* 802B7530 002B4490  38 81 00 0C */	addi r4, r1, 0xc
/* 802B7534 002B4494  48 09 0D 7D */	bl GetBounds__12CCubeSurfaceCFv
/* 802B7538 002B4498  7E 64 9B 78 */	mr r4, r19
/* 802B753C 002B449C  38 61 00 14 */	addi r3, r1, 0x14
/* 802B7540 002B44A0  48 08 06 45 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 802B7544 002B44A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B7548 002B44A8  41 82 00 50 */	beq lbl_802B7598
/* 802B754C 002B44AC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802B7550 002B44B0  7F C4 F3 78 */	mr r4, r30
/* 802B7554 002B44B4  38 61 00 08 */	addi r3, r1, 8
/* 802B7558 002B44B8  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802B755C 002B44BC  48 04 FF B1 */	bl GetMaterialByIndex__10CCubeModelCFi
/* 802B7560 002B44C0  80 81 00 08 */	lwz r4, 8(r1)
/* 802B7564 002B44C4  80 04 00 04 */	lwz r0, 4(r4)
/* 802B7568 002B44C8  54 03 10 3A */	slwi r3, r0, 2
/* 802B756C 002B44CC  38 03 00 08 */	addi r0, r3, 8
/* 802B7570 002B44D0  7C 64 00 2E */	lwzx r3, r4, r0
/* 802B7574 002B44D4  48 05 09 89 */	bl SetVtxDescv_Compressed__3CGXFUi
/* 802B7578 002B44D8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802B757C 002B44DC  80 65 00 1C */	lwz r3, 0x1c(r5)
/* 802B7580 002B44E0  80 05 00 10 */	lwz r0, 0x10(r5)
/* 802B7584 002B44E4  38 63 00 4B */	addi r3, r3, 0x4b
/* 802B7588 002B44E8  54 63 00 34 */	rlwinm r3, r3, 0, 0, 0x1a
/* 802B758C 002B44EC  54 04 00 7E */	clrlwi r4, r0, 1
/* 802B7590 002B44F0  7C 65 1A 14 */	add r3, r5, r3
/* 802B7594 002B44F4  48 05 10 59 */	bl CallDisplayList__3CGXFPCvUl
lbl_802B7598:
/* 802B7598 002B44F8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802B759C 002B44FC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B75A0 002B4500  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802B75A4:
/* 802B75A4 002B4504  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B75A8 002B4508  28 00 00 00 */	cmplwi r0, 0
/* 802B75AC 002B450C  40 82 FF 80 */	bne lbl_802B752C
/* 802B75B0 002B4510  3B 39 00 01 */	addi r25, r25, 1
/* 802B75B4 002B4514  3B 7B 00 04 */	addi r27, r27, 4
/* 802B75B8 002B4518  2C 19 00 40 */	cmpwi r25, 0x40
/* 802B75BC 002B451C  3B 5A 00 04 */	addi r26, r26, 4
/* 802B75C0 002B4520  3B 9C 00 04 */	addi r28, r28, 4
/* 802B75C4 002B4524  40 80 00 38 */	bge lbl_802B75FC
lbl_802B75C8:
/* 802B75C8 002B4528  3A 94 00 01 */	addi r20, r20, 1
/* 802B75CC 002B452C  2C 14 00 20 */	cmpwi r20, 0x20
/* 802B75D0 002B4530  41 80 FF 10 */	blt lbl_802B74E0
lbl_802B75D4:
/* 802B75D4 002B4534  3A F7 00 01 */	addi r23, r23, 1
/* 802B75D8 002B4538  3A D6 00 20 */	addi r22, r22, 0x20
lbl_802B75DC:
/* 802B75DC 002B453C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802B75E0 002B4540  7C 17 00 40 */	cmplw r23, r0
/* 802B75E4 002B4544  41 80 FE DC */	blt lbl_802B74C0
/* 802B75E8 002B4548  7F 18 02 14 */	add r24, r24, r0
lbl_802B75EC:
/* 802B75EC 002B454C  83 BD 00 04 */	lwz r29, 4(r29)
lbl_802B75F0:
/* 802B75F0 002B4550  80 11 00 24 */	lwz r0, 0x24(r17)
/* 802B75F4 002B4554  7C 1D 00 40 */	cmplw r29, r0
/* 802B75F8 002B4558  40 82 FE AC */	bne lbl_802B74A4
lbl_802B75FC:
/* 802B75FC 002B455C  BA 21 00 34 */	lmw r17, 0x34(r1)
/* 802B7600 002B4560  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802B7604 002B4564  7C 08 03 A6 */	mtlr r0
/* 802B7608 002B4568  38 21 00 70 */	addi r1, r1, 0x70
/* 802B760C 002B456C  4E 80 00 20 */	blr

.global "DrawOverlappingWorldModelIDs__13CCubeRendererFiRQ24rstl10vector<Ui>RC6CAABoxii"
"DrawOverlappingWorldModelIDs__13CCubeRendererFiRQ24rstl10vector<Ui>RC6CAABoxii":
/* 802B7610 002B4570  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802B7614 002B4574  7C 08 02 A6 */	mflr r0
/* 802B7618 002B4578  90 01 00 84 */	stw r0, 0x84(r1)
/* 802B761C 002B457C  BE 21 00 44 */	stmw r17, 0x44(r1)
/* 802B7620 002B4580  7C 94 23 78 */	mr r20, r4
/* 802B7624 002B4584  7C 71 1B 78 */	mr r17, r3
/* 802B7628 002B4588  7C B2 2B 78 */	mr r18, r5
/* 802B762C 002B458C  7C D3 33 78 */	mr r19, r6
/* 802B7630 002B4590  38 80 00 01 */	li r4, 1
/* 802B7634 002B4594  48 00 61 FD */	bl SetupRendererStates__13CCubeRendererFb
/* 802B7638 002B4598  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B763C 002B459C  38 80 00 00 */	li r4, 0
/* 802B7640 002B45A0  38 00 00 03 */	li r0, 3
/* 802B7644 002B45A4  98 81 00 0C */	stb r4, 0xc(r1)
/* 802B7648 002B45A8  FC 40 08 90 */	fmr f2, f1
/* 802B764C 002B45AC  38 61 00 10 */	addi r3, r1, 0x10
/* 802B7650 002B45B0  FC 60 08 90 */	fmr f3, f1
/* 802B7654 002B45B4  98 81 00 0D */	stb r4, 0xd(r1)
/* 802B7658 002B45B8  FC 80 08 90 */	fmr f4, f1
/* 802B765C 002B45BC  B0 01 00 0E */	sth r0, 0xe(r1)
/* 802B7660 002B45C0  48 0A BD 8D */	bl __ct__6CColorFffff
/* 802B7664 002B45C4  88 A1 00 0C */	lbz r5, 0xc(r1)
/* 802B7668 002B45C8  7E 99 A3 78 */	mr r25, r20
/* 802B766C 002B45CC  88 81 00 0D */	lbz r4, 0xd(r1)
/* 802B7670 002B45D0  56 9A 10 3A */	slwi r26, r20, 2
/* 802B7674 002B45D4  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 802B7678 002B45D8  3B 00 00 00 */	li r24, 0
/* 802B767C 002B45DC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802B7680 002B45E0  98 A1 00 14 */	stb r5, 0x14(r1)
/* 802B7684 002B45E4  98 81 00 15 */	stb r4, 0x15(r1)
/* 802B7688 002B45E8  B0 61 00 16 */	sth r3, 0x16(r1)
/* 802B768C 002B45EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B7690 002B45F0  83 B1 00 20 */	lwz r29, 0x20(r17)
/* 802B7694 002B45F4  48 00 01 24 */	b lbl_802B77B8
lbl_802B7698:
/* 802B7698 002B45F8  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 802B769C 002B45FC  28 1F 00 00 */	cmplwi r31, 0
/* 802B76A0 002B4600  41 82 01 14 */	beq lbl_802B77B4
/* 802B76A4 002B4604  7F 5B D3 78 */	mr r27, r26
/* 802B76A8 002B4608  3A E0 00 00 */	li r23, 0
/* 802B76AC 002B460C  3A C0 00 00 */	li r22, 0
/* 802B76B0 002B4610  48 00 00 F4 */	b lbl_802B77A4
lbl_802B76B4:
/* 802B76B4 002B4614  7C 18 BA 14 */	add r0, r24, r23
/* 802B76B8 002B4618  80 72 00 0C */	lwz r3, 0xc(r18)
/* 802B76BC 002B461C  54 00 10 3A */	slwi r0, r0, 2
/* 802B76C0 002B4620  7E A3 00 2E */	lwzx r21, r3, r0
/* 802B76C4 002B4624  28 15 00 00 */	cmplwi r21, 0
/* 802B76C8 002B4628  41 82 00 D4 */	beq lbl_802B779C
/* 802B76CC 002B462C  3A 80 00 00 */	li r20, 0
/* 802B76D0 002B4630  7F 7C DB 78 */	mr r28, r27
lbl_802B76D4:
/* 802B76D4 002B4634  38 00 00 01 */	li r0, 1
/* 802B76D8 002B4638  7C 00 A0 30 */	slw r0, r0, r20
/* 802B76DC 002B463C  7E A0 00 39 */	and. r0, r21, r0
/* 802B76E0 002B4640  41 82 00 B0 */	beq lbl_802B7790
/* 802B76E4 002B4644  80 BD 00 1C */	lwz r5, 0x1c(r29)
/* 802B76E8 002B4648  7C 16 A2 14 */	add r0, r22, r20
/* 802B76EC 002B464C  54 03 18 38 */	slwi r3, r0, 3
/* 802B76F0 002B4650  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 802B76F4 002B4654  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802B76F8 002B4658  38 03 00 04 */	addi r0, r3, 4
/* 802B76FC 002B465C  38 60 00 01 */	li r3, 1
/* 802B7700 002B4660  7F C5 00 2E */	lwzx r30, r5, r0
/* 802B7704 002B4664  48 0C 49 DD */	bl GXSetDstAlpha
/* 802B7708 002B4668  48 08 E2 39 */	bl KillCachedViewDepState__13CCubeMaterialFv
/* 802B770C 002B466C  7F C3 F3 78 */	mr r3, r30
/* 802B7710 002B4670  48 04 FF 11 */	bl SetArraysCurrent__10CCubeModelCFv
/* 802B7714 002B4674  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802B7718 002B4678  90 01 00 08 */	stw r0, 8(r1)
/* 802B771C 002B467C  48 00 00 40 */	b lbl_802B775C
lbl_802B7720:
/* 802B7720 002B4680  38 61 00 1C */	addi r3, r1, 0x1c
/* 802B7724 002B4684  38 81 00 08 */	addi r4, r1, 8
/* 802B7728 002B4688  48 09 0B 89 */	bl GetBounds__12CCubeSurfaceCFv
/* 802B772C 002B468C  7E 64 9B 78 */	mr r4, r19
/* 802B7730 002B4690  38 61 00 1C */	addi r3, r1, 0x1c
/* 802B7734 002B4694  48 08 04 51 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 802B7738 002B4698  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B773C 002B469C  41 82 00 14 */	beq lbl_802B7750
/* 802B7740 002B46A0  7F C3 F3 78 */	mr r3, r30
/* 802B7744 002B46A4  38 81 00 08 */	addi r4, r1, 8
/* 802B7748 002B46A8  38 A1 00 14 */	addi r5, r1, 0x14
/* 802B774C 002B46AC  48 04 FC F9 */	bl DrawSurface__10CCubeModelCFRC12CCubeSurfaceRC11CModelFlags
lbl_802B7750:
/* 802B7750 002B46B0  80 61 00 08 */	lwz r3, 8(r1)
/* 802B7754 002B46B4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B7758 002B46B8  90 01 00 08 */	stw r0, 8(r1)
lbl_802B775C:
/* 802B775C 002B46BC  80 01 00 08 */	lwz r0, 8(r1)
/* 802B7760 002B46C0  28 00 00 00 */	cmplwi r0, 0
/* 802B7764 002B46C4  40 82 FF BC */	bne lbl_802B7720
/* 802B7768 002B46C8  3B 39 00 01 */	addi r25, r25, 1
/* 802B776C 002B46CC  3B 7B 00 04 */	addi r27, r27, 4
/* 802B7770 002B46D0  2C 19 00 40 */	cmpwi r25, 0x40
/* 802B7774 002B46D4  3B 5A 00 04 */	addi r26, r26, 4
/* 802B7778 002B46D8  3B 9C 00 04 */	addi r28, r28, 4
/* 802B777C 002B46DC  41 80 00 14 */	blt lbl_802B7790
/* 802B7780 002B46E0  7E 23 8B 78 */	mr r3, r17
/* 802B7784 002B46E4  48 00 60 19 */	bl SetupCGraphicsStates__13CCubeRendererFv
/* 802B7788 002B46E8  7F 23 CB 78 */	mr r3, r25
/* 802B778C 002B46EC  48 00 00 44 */	b lbl_802B77D0
lbl_802B7790:
/* 802B7790 002B46F0  3A 94 00 01 */	addi r20, r20, 1
/* 802B7794 002B46F4  2C 14 00 20 */	cmpwi r20, 0x20
/* 802B7798 002B46F8  41 80 FF 3C */	blt lbl_802B76D4
lbl_802B779C:
/* 802B779C 002B46FC  3A F7 00 01 */	addi r23, r23, 1
/* 802B77A0 002B4700  3A D6 00 20 */	addi r22, r22, 0x20
lbl_802B77A4:
/* 802B77A4 002B4704  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802B77A8 002B4708  7C 17 00 40 */	cmplw r23, r0
/* 802B77AC 002B470C  41 80 FF 08 */	blt lbl_802B76B4
/* 802B77B0 002B4710  7F 18 02 14 */	add r24, r24, r0
lbl_802B77B4:
/* 802B77B4 002B4714  83 BD 00 04 */	lwz r29, 4(r29)
lbl_802B77B8:
/* 802B77B8 002B4718  80 11 00 24 */	lwz r0, 0x24(r17)
/* 802B77BC 002B471C  7C 1D 00 40 */	cmplw r29, r0
/* 802B77C0 002B4720  40 82 FE D8 */	bne lbl_802B7698
/* 802B77C4 002B4724  7E 23 8B 78 */	mr r3, r17
/* 802B77C8 002B4728  48 00 5F D5 */	bl SetupCGraphicsStates__13CCubeRendererFv
/* 802B77CC 002B472C  7F 23 CB 78 */	mr r3, r25
lbl_802B77D0:
/* 802B77D0 002B4730  BA 21 00 44 */	lmw r17, 0x44(r1)
/* 802B77D4 002B4734  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802B77D8 002B4738  7C 08 03 A6 */	mtlr r0
/* 802B77DC 002B473C  38 21 00 80 */	addi r1, r1, 0x80
/* 802B77E0 002B4740  4E 80 00 20 */	blr

.global "FindOverlappingWorldModels__13CCubeRendererFRQ24rstl10vector<Ui>RC6CAABox"
"FindOverlappingWorldModels__13CCubeRendererFRQ24rstl10vector<Ui>RC6CAABox":
/* 802B77E4 002B4744  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802B77E8 002B4748  7C 08 02 A6 */	mflr r0
/* 802B77EC 002B474C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802B77F0 002B4750  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 802B77F4 002B4754  7C 94 23 78 */	mr r20, r4
/* 802B77F8 002B4758  7C B5 2B 78 */	mr r21, r5
/* 802B77FC 002B475C  7C 73 1B 78 */	mr r19, r3
/* 802B7800 002B4760  3B 60 00 00 */	li r27, 0
/* 802B7804 002B4764  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802B7808 002B4768  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 802B780C 002B476C  48 00 00 1C */	b lbl_802B7828
lbl_802B7810:
/* 802B7810 002B4770  80 64 00 0C */	lwz r3, 0xc(r4)
/* 802B7814 002B4774  28 03 00 00 */	cmplwi r3, 0
/* 802B7818 002B4778  41 82 00 0C */	beq lbl_802B7824
/* 802B781C 002B477C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802B7820 002B4780  7F 7B 02 14 */	add r27, r27, r0
lbl_802B7824:
/* 802B7824 002B4784  80 84 00 04 */	lwz r4, 4(r4)
lbl_802B7828:
/* 802B7828 002B4788  7C 04 28 40 */	cmplw r4, r5
/* 802B782C 002B478C  40 82 FF E4 */	bne lbl_802B7810
/* 802B7830 002B4790  2C 1B 00 00 */	cmpwi r27, 0
/* 802B7834 002B4794  40 82 00 64 */	bne lbl_802B7898
/* 802B7838 002B4798  38 00 00 00 */	li r0, 0
/* 802B783C 002B479C  7E 83 A3 78 */	mr r3, r20
/* 802B7840 002B47A0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802B7844 002B47A4  38 81 00 48 */	addi r4, r1, 0x48
/* 802B7848 002B47A8  90 01 00 50 */	stw r0, 0x50(r1)
/* 802B784C 002B47AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802B7850 002B47B0  4B DA BE AD */	bl "clear__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fv"
/* 802B7854 002B47B4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802B7858 002B47B8  80 61 00 54 */	lwz r3, 0x54(r1)
/* 802B785C 002B47BC  54 00 10 3A */	slwi r0, r0, 2
/* 802B7860 002B47C0  7C 03 02 14 */	add r0, r3, r0
/* 802B7864 002B47C4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802B7868 002B47C8  7C 64 1B 78 */	mr r4, r3
/* 802B786C 002B47CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B7870 002B47D0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802B7874 002B47D4  90 61 00 28 */	stw r3, 0x28(r1)
/* 802B7878 002B47D8  48 00 00 08 */	b lbl_802B7880
lbl_802B787C:
/* 802B787C 002B47DC  38 84 00 04 */	addi r4, r4, 4
lbl_802B7880:
/* 802B7880 002B47E0  7C 04 00 40 */	cmplw r4, r0
/* 802B7884 002B47E4  40 82 FF F8 */	bne lbl_802B787C
/* 802B7888 002B47E8  28 03 00 00 */	cmplwi r3, 0
/* 802B788C 002B47EC  41 82 01 98 */	beq lbl_802B7A24
/* 802B7890 002B47F0  48 05 E0 A1 */	bl Free__7CMemoryFPCv
/* 802B7894 002B47F4  48 00 01 90 */	b lbl_802B7A24
lbl_802B7898:
/* 802B7898 002B47F8  80 14 00 08 */	lwz r0, 8(r20)
/* 802B789C 002B47FC  7C 1B 00 00 */	cmpw r27, r0
/* 802B78A0 002B4800  41 82 00 64 */	beq lbl_802B7904
/* 802B78A4 002B4804  38 00 00 00 */	li r0, 0
/* 802B78A8 002B4808  7E 83 A3 78 */	mr r3, r20
/* 802B78AC 002B480C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802B78B0 002B4810  38 81 00 38 */	addi r4, r1, 0x38
/* 802B78B4 002B4814  90 01 00 40 */	stw r0, 0x40(r1)
/* 802B78B8 002B4818  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B78BC 002B481C  4B DA BE 41 */	bl "clear__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fv"
/* 802B78C0 002B4820  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802B78C4 002B4824  80 61 00 44 */	lwz r3, 0x44(r1)
/* 802B78C8 002B4828  54 00 10 3A */	slwi r0, r0, 2
/* 802B78CC 002B482C  7C 03 02 14 */	add r0, r3, r0
/* 802B78D0 002B4830  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802B78D4 002B4834  7C 64 1B 78 */	mr r4, r3
/* 802B78D8 002B4838  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B78DC 002B483C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802B78E0 002B4840  90 61 00 18 */	stw r3, 0x18(r1)
/* 802B78E4 002B4844  48 00 00 08 */	b lbl_802B78EC
lbl_802B78E8:
/* 802B78E8 002B4848  38 84 00 04 */	addi r4, r4, 4
lbl_802B78EC:
/* 802B78EC 002B484C  7C 04 00 40 */	cmplw r4, r0
/* 802B78F0 002B4850  40 82 FF F8 */	bne lbl_802B78E8
/* 802B78F4 002B4854  28 03 00 00 */	cmplwi r3, 0
/* 802B78F8 002B4858  41 82 00 44 */	beq lbl_802B793C
/* 802B78FC 002B485C  48 05 E0 35 */	bl Free__7CMemoryFPCv
/* 802B7900 002B4860  48 00 00 3C */	b lbl_802B793C
lbl_802B7904:
/* 802B7904 002B4864  80 14 00 04 */	lwz r0, 4(r20)
/* 802B7908 002B4868  80 74 00 0C */	lwz r3, 0xc(r20)
/* 802B790C 002B486C  54 00 10 3A */	slwi r0, r0, 2
/* 802B7910 002B4870  7C 03 02 14 */	add r0, r3, r0
/* 802B7914 002B4874  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B7918 002B4878  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B791C 002B487C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B7920 002B4880  90 61 00 08 */	stw r3, 8(r1)
/* 802B7924 002B4884  48 00 00 08 */	b lbl_802B792C
lbl_802B7928:
/* 802B7928 002B4888  38 63 00 04 */	addi r3, r3, 4
lbl_802B792C:
/* 802B792C 002B488C  7C 03 00 40 */	cmplw r3, r0
/* 802B7930 002B4890  40 82 FF F8 */	bne lbl_802B7928
/* 802B7934 002B4894  38 00 00 00 */	li r0, 0
/* 802B7938 002B4898  90 14 00 04 */	stw r0, 4(r20)
lbl_802B793C:
/* 802B793C 002B489C  7E 83 A3 78 */	mr r3, r20
/* 802B7940 002B48A0  7F 64 DB 78 */	mr r4, r27
/* 802B7944 002B48A4  38 AD 9A EC */	addi r5, r13, lbl_805A86AC@sda21
/* 802B7948 002B48A8  4B FF 6F 81 */	bl sub_802ae8c8
/* 802B794C 002B48AC  83 73 00 20 */	lwz r27, 0x20(r19)
/* 802B7950 002B48B0  3B 40 00 00 */	li r26, 0
/* 802B7954 002B48B4  48 00 00 C4 */	b lbl_802B7A18
lbl_802B7958:
/* 802B7958 002B48B8  83 9B 00 0C */	lwz r28, 0xc(r27)
/* 802B795C 002B48BC  28 1C 00 00 */	cmplwi r28, 0
/* 802B7960 002B48C0  41 82 00 B4 */	beq lbl_802B7A14
/* 802B7964 002B48C4  80 94 00 0C */	lwz r4, 0xc(r20)
/* 802B7968 002B48C8  57 40 10 3A */	slwi r0, r26, 2
/* 802B796C 002B48CC  7F 83 E3 78 */	mr r3, r28
/* 802B7970 002B48D0  7E A5 AB 78 */	mr r5, r21
/* 802B7974 002B48D4  7C 84 02 14 */	add r4, r4, r0
/* 802B7978 002B48D8  4B FF 6E A1 */	bl FindOverlappingModels__18CAreaRenderOctTreeFPUiRC6CAABox
/* 802B797C 002B48DC  3B 20 00 00 */	li r25, 0
/* 802B7980 002B48E0  3B 00 00 00 */	li r24, 0
/* 802B7984 002B48E4  48 00 00 80 */	b lbl_802B7A04
lbl_802B7988:
/* 802B7988 002B48E8  7C 1A CA 14 */	add r0, r26, r25
/* 802B798C 002B48EC  83 B4 00 0C */	lwz r29, 0xc(r20)
/* 802B7990 002B48F0  54 1E 10 3A */	slwi r30, r0, 2
/* 802B7994 002B48F4  7C 1D F0 2E */	lwzx r0, r29, r30
/* 802B7998 002B48F8  28 00 00 00 */	cmplwi r0, 0
/* 802B799C 002B48FC  41 82 00 60 */	beq lbl_802B79FC
/* 802B79A0 002B4900  3A E0 00 00 */	li r23, 0
/* 802B79A4 002B4904  3B E0 00 01 */	li r31, 1
lbl_802B79A8:
/* 802B79A8 002B4908  7C 1D F0 2E */	lwzx r0, r29, r30
/* 802B79AC 002B490C  7F F6 B8 30 */	slw r22, r31, r23
/* 802B79B0 002B4910  7C 00 B0 39 */	and. r0, r0, r22
/* 802B79B4 002B4914  41 82 00 3C */	beq lbl_802B79F0
/* 802B79B8 002B4918  80 BB 00 1C */	lwz r5, 0x1c(r27)
/* 802B79BC 002B491C  7C 18 BA 14 */	add r0, r24, r23
/* 802B79C0 002B4920  54 03 18 38 */	slwi r3, r0, 3
/* 802B79C4 002B4924  7E A4 AB 78 */	mr r4, r21
/* 802B79C8 002B4928  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 802B79CC 002B492C  38 03 00 04 */	addi r0, r3, 4
/* 802B79D0 002B4930  7C 65 00 2E */	lwzx r3, r5, r0
/* 802B79D4 002B4934  38 63 00 20 */	addi r3, r3, 0x20
/* 802B79D8 002B4938  48 08 01 AD */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 802B79DC 002B493C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B79E0 002B4940  40 82 00 10 */	bne lbl_802B79F0
/* 802B79E4 002B4944  7C 1D F0 2E */	lwzx r0, r29, r30
/* 802B79E8 002B4948  7C 00 B0 78 */	andc r0, r0, r22
/* 802B79EC 002B494C  7C 1D F1 2E */	stwx r0, r29, r30
lbl_802B79F0:
/* 802B79F0 002B4950  3A F7 00 01 */	addi r23, r23, 1
/* 802B79F4 002B4954  2C 17 00 20 */	cmpwi r23, 0x20
/* 802B79F8 002B4958  41 80 FF B0 */	blt lbl_802B79A8
lbl_802B79FC:
/* 802B79FC 002B495C  3B 39 00 01 */	addi r25, r25, 1
/* 802B7A00 002B4960  3B 18 00 20 */	addi r24, r24, 0x20
lbl_802B7A04:
/* 802B7A04 002B4964  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 802B7A08 002B4968  7C 19 00 40 */	cmplw r25, r0
/* 802B7A0C 002B496C  41 80 FF 7C */	blt lbl_802B7988
/* 802B7A10 002B4970  7F 5A 02 14 */	add r26, r26, r0
lbl_802B7A14:
/* 802B7A14 002B4974  83 7B 00 04 */	lwz r27, 4(r27)
lbl_802B7A18:
/* 802B7A18 002B4978  80 13 00 24 */	lwz r0, 0x24(r19)
/* 802B7A1C 002B497C  7C 1B 00 40 */	cmplw r27, r0
/* 802B7A20 002B4980  40 82 FF 38 */	bne lbl_802B7958
lbl_802B7A24:
/* 802B7A24 002B4984  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 802B7A28 002B4988  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802B7A2C 002B498C  7C 08 03 A6 */	mtlr r0
/* 802B7A30 002B4990  38 21 00 90 */	addi r1, r1, 0x90
/* 802B7A34 002B4994  4E 80 00 20 */	blr

.global "PrepareDynamicLights__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>"
"PrepareDynamicLights__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>":
/* 802B7A38 002B4998  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 802B7A3C 002B499C  7C 08 02 A6 */	mflr r0
/* 802B7A40 002B49A0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802B7A44 002B49A4  BE C1 00 78 */	stmw r22, 0x78(r1)
/* 802B7A48 002B49A8  7C 7C 1B 78 */	mr r28, r3
/* 802B7A4C 002B49AC  7C 9D 23 78 */	mr r29, r4
/* 802B7A50 002B49B0  80 64 00 04 */	lwz r3, 4(r4)
/* 802B7A54 002B49B4  80 1C 03 04 */	lwz r0, 0x304(r28)
/* 802B7A58 002B49B8  7C 03 00 00 */	cmpw r3, r0
/* 802B7A5C 002B49BC  41 82 00 60 */	beq lbl_802B7ABC
/* 802B7A60 002B49C0  38 00 00 00 */	li r0, 0
/* 802B7A64 002B49C4  38 7C 03 00 */	addi r3, r28, 0x300
/* 802B7A68 002B49C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802B7A6C 002B49CC  38 81 00 50 */	addi r4, r1, 0x50
/* 802B7A70 002B49D0  90 01 00 58 */	stw r0, 0x58(r1)
/* 802B7A74 002B49D4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802B7A78 002B49D8  4B D8 DF F1 */	bl "__as__Q24rstl42vector<6CLight,Q24rstl17rmemory_allocator>FRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>"
/* 802B7A7C 002B49DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802B7A80 002B49E0  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 802B7A84 002B49E4  1C 00 00 50 */	mulli r0, r0, 0x50
/* 802B7A88 002B49E8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802B7A8C 002B49EC  7C 64 1B 78 */	mr r4, r3
/* 802B7A90 002B49F0  7C 03 02 14 */	add r0, r3, r0
/* 802B7A94 002B49F4  90 61 00 18 */	stw r3, 0x18(r1)
/* 802B7A98 002B49F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B7A9C 002B49FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 802B7AA0 002B4A00  48 00 00 08 */	b lbl_802B7AA8
lbl_802B7AA4:
/* 802B7AA4 002B4A04  38 84 00 50 */	addi r4, r4, 0x50
lbl_802B7AA8:
/* 802B7AA8 002B4A08  7C 04 00 40 */	cmplw r4, r0
/* 802B7AAC 002B4A0C  40 82 FF F8 */	bne lbl_802B7AA4
/* 802B7AB0 002B4A10  28 03 00 00 */	cmplwi r3, 0
/* 802B7AB4 002B4A14  41 82 00 08 */	beq lbl_802B7ABC
/* 802B7AB8 002B4A18  48 05 DE 79 */	bl Free__7CMemoryFPCv
lbl_802B7ABC:
/* 802B7ABC 002B4A1C  7F A4 EB 78 */	mr r4, r29
/* 802B7AC0 002B4A20  38 7C 03 00 */	addi r3, r28, 0x300
/* 802B7AC4 002B4A24  4B D8 DF A5 */	bl "__as__Q24rstl42vector<6CLight,Q24rstl17rmemory_allocator>FRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>"
/* 802B7AC8 002B4A28  83 FC 00 20 */	lwz r31, 0x20(r28)
/* 802B7ACC 002B4A2C  48 00 01 3C */	b lbl_802B7C08
lbl_802B7AD0:
/* 802B7AD0 002B4A30  48 0C D8 D9 */	bl OSGetTime
/* 802B7AD4 002B4A34  83 7F 00 0C */	lwz r27, 0xc(r31)
/* 802B7AD8 002B4A38  28 1B 00 00 */	cmplwi r27, 0
/* 802B7ADC 002B4A3C  41 82 01 28 */	beq lbl_802B7C04
/* 802B7AE0 002B4A40  83 DB 00 14 */	lwz r30, 0x14(r27)
/* 802B7AE4 002B4A44  38 00 00 00 */	li r0, 0
/* 802B7AE8 002B4A48  3B 5F 00 24 */	addi r26, r31, 0x24
/* 802B7AEC 002B4A4C  38 81 00 40 */	addi r4, r1, 0x40
/* 802B7AF0 002B4A50  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B7AF4 002B4A54  7F 43 D3 78 */	mr r3, r26
/* 802B7AF8 002B4A58  90 01 00 48 */	stw r0, 0x48(r1)
/* 802B7AFC 002B4A5C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802B7B00 002B4A60  4B DA BB FD */	bl "clear__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fv"
/* 802B7B04 002B4A64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B7B08 002B4A68  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 802B7B0C 002B4A6C  54 00 10 3A */	slwi r0, r0, 2
/* 802B7B10 002B4A70  7C 03 02 14 */	add r0, r3, r0
/* 802B7B14 002B4A74  90 61 00 0C */	stw r3, 0xc(r1)
/* 802B7B18 002B4A78  7C 64 1B 78 */	mr r4, r3
/* 802B7B1C 002B4A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7B20 002B4A80  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B7B24 002B4A84  90 61 00 08 */	stw r3, 8(r1)
/* 802B7B28 002B4A88  48 00 00 08 */	b lbl_802B7B30
lbl_802B7B2C:
/* 802B7B2C 002B4A8C  38 84 00 04 */	addi r4, r4, 4
lbl_802B7B30:
/* 802B7B30 002B4A90  7C 04 00 40 */	cmplw r4, r0
/* 802B7B34 002B4A94  40 82 FF F8 */	bne lbl_802B7B2C
/* 802B7B38 002B4A98  28 03 00 00 */	cmplwi r3, 0
/* 802B7B3C 002B4A9C  41 82 00 08 */	beq lbl_802B7B44
/* 802B7B40 002B4AA0  48 05 DD F1 */	bl Free__7CMemoryFPCv
lbl_802B7B44:
/* 802B7B44 002B4AA4  80 1D 00 04 */	lwz r0, 4(r29)
/* 802B7B48 002B4AA8  2C 00 00 00 */	cmpwi r0, 0
/* 802B7B4C 002B4AAC  41 82 00 B8 */	beq lbl_802B7C04
/* 802B7B50 002B4AB0  80 1C 03 04 */	lwz r0, 0x304(r28)
/* 802B7B54 002B4AB4  7F 43 D3 78 */	mr r3, r26
/* 802B7B58 002B4AB8  38 AD 9A E8 */	addi r5, r13, lbl_805A86A8@sda21
/* 802B7B5C 002B4ABC  7C 9E 01 D6 */	mullw r4, r30, r0
/* 802B7B60 002B4AC0  4B FF 6D 69 */	bl sub_802ae8c8
/* 802B7B64 002B4AC4  3B 00 00 00 */	li r24, 0
/* 802B7B68 002B4AC8  3A C0 00 00 */	li r22, 0
/* 802B7B6C 002B4ACC  7F 17 C3 78 */	mr r23, r24
/* 802B7B70 002B4AD0  48 00 00 84 */	b lbl_802B7BF4
lbl_802B7B74:
/* 802B7B74 002B4AD4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802B7B78 002B4AD8  7F 20 C2 14 */	add r25, r0, r24
/* 802B7B7C 002B4ADC  7F 23 CB 78 */	mr r3, r25
/* 802B7B80 002B4AE0  48 04 E7 55 */	bl GetRadius__6CLightCFv
/* 802B7B84 002B4AE4  C0 99 00 04 */	lfs f4, 4(r25)
/* 802B7B88 002B4AE8  38 61 00 60 */	addi r3, r1, 0x60
/* 802B7B8C 002B4AEC  C0 79 00 08 */	lfs f3, 8(r25)
/* 802B7B90 002B4AF0  38 81 00 34 */	addi r4, r1, 0x34
/* 802B7B94 002B4AF4  C0 19 00 00 */	lfs f0, 0(r25)
/* 802B7B98 002B4AF8  EC C4 08 2A */	fadds f6, f4, f1
/* 802B7B9C 002B4AFC  EC A3 08 2A */	fadds f5, f3, f1
/* 802B7BA0 002B4B00  38 A1 00 28 */	addi r5, r1, 0x28
/* 802B7BA4 002B4B04  EC 40 08 2A */	fadds f2, f0, f1
/* 802B7BA8 002B4B08  EC 84 08 28 */	fsubs f4, f4, f1
/* 802B7BAC 002B4B0C  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 802B7BB0 002B4B10  EC 63 08 28 */	fsubs f3, f3, f1
/* 802B7BB4 002B4B14  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B7BB8 002B4B18  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 802B7BBC 002B4B1C  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 802B7BC0 002B4B20  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802B7BC4 002B4B24  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 802B7BC8 002B4B28  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 802B7BCC 002B4B2C  48 08 09 3D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 802B7BD0 002B4B30  80 9A 00 0C */	lwz r4, 0xc(r26)
/* 802B7BD4 002B4B34  56 E0 10 3A */	slwi r0, r23, 2
/* 802B7BD8 002B4B38  7F 63 DB 78 */	mr r3, r27
/* 802B7BDC 002B4B3C  38 A1 00 60 */	addi r5, r1, 0x60
/* 802B7BE0 002B4B40  7C 84 02 14 */	add r4, r4, r0
/* 802B7BE4 002B4B44  4B FF 6C 35 */	bl FindOverlappingModels__18CAreaRenderOctTreeFPUiRC6CAABox
/* 802B7BE8 002B4B48  7E F7 F2 14 */	add r23, r23, r30
/* 802B7BEC 002B4B4C  3A D6 00 01 */	addi r22, r22, 1
/* 802B7BF0 002B4B50  3B 18 00 50 */	addi r24, r24, 0x50
lbl_802B7BF4:
/* 802B7BF4 002B4B54  80 1D 00 04 */	lwz r0, 4(r29)
/* 802B7BF8 002B4B58  7C 16 00 00 */	cmpw r22, r0
/* 802B7BFC 002B4B5C  41 80 FF 78 */	blt lbl_802B7B74
/* 802B7C00 002B4B60  48 0C D7 A9 */	bl OSGetTime
lbl_802B7C04:
/* 802B7C04 002B4B64  83 FF 00 04 */	lwz r31, 4(r31)
lbl_802B7C08:
/* 802B7C08 002B4B68  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 802B7C0C 002B4B6C  7C 1F 00 40 */	cmplw r31, r0
/* 802B7C10 002B4B70  40 82 FE C0 */	bne lbl_802B7AD0
/* 802B7C14 002B4B74  BA C1 00 78 */	lmw r22, 0x78(r1)
/* 802B7C18 002B4B78  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802B7C1C 002B4B7C  7C 08 03 A6 */	mtlr r0
/* 802B7C20 002B4B80  38 21 00 A0 */	addi r1, r1, 0xa0
/* 802B7C24 002B4B84  4E 80 00 20 */	blr

.global sub_802b7c28
sub_802b7c28:
/* 802B7C28 002B4B88  2C 05 FF FF */	cmpwi r5, -1
/* 802B7C2C 002B4B8C  41 82 00 94 */	beq lbl_802B7CC0
/* 802B7C30 002B4B90  80 E4 00 20 */	lwz r7, 0x20(r4)
/* 802B7C34 002B4B94  81 04 00 24 */	lwz r8, 0x24(r4)
/* 802B7C38 002B4B98  48 00 00 80 */	b lbl_802B7CB8
lbl_802B7C3C:
/* 802B7C3C 002B4B9C  80 07 00 20 */	lwz r0, 0x20(r7)
/* 802B7C40 002B4BA0  7C 05 00 00 */	cmpw r5, r0
/* 802B7C44 002B4BA4  40 82 00 70 */	bne lbl_802B7CB4
/* 802B7C48 002B4BA8  80 87 00 1C */	lwz r4, 0x1c(r7)
/* 802B7C4C 002B4BAC  39 20 00 00 */	li r9, 0
/* 802B7C50 002B4BB0  80 04 00 04 */	lwz r0, 4(r4)
/* 802B7C54 002B4BB4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802B7C58 002B4BB8  54 00 18 38 */	slwi r0, r0, 3
/* 802B7C5C 002B4BBC  7C 04 02 14 */	add r0, r4, r0
/* 802B7C60 002B4BC0  48 00 00 4C */	b lbl_802B7CAC
lbl_802B7C64:
/* 802B7C64 002B4BC4  7C 09 30 00 */	cmpw r9, r6
/* 802B7C68 002B4BC8  40 82 00 3C */	bne lbl_802B7CA4
/* 802B7C6C 002B4BCC  80 84 00 04 */	lwz r4, 4(r4)
/* 802B7C70 002B4BD0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 802B7C74 002B4BD4  D0 03 00 00 */	stfs f0, 0(r3)
/* 802B7C78 002B4BD8  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 802B7C7C 002B4BDC  D0 03 00 04 */	stfs f0, 4(r3)
/* 802B7C80 002B4BE0  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 802B7C84 002B4BE4  D0 03 00 08 */	stfs f0, 8(r3)
/* 802B7C88 002B4BE8  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 802B7C8C 002B4BEC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802B7C90 002B4BF0  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 802B7C94 002B4BF4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802B7C98 002B4BF8  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 802B7C9C 002B4BFC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802B7CA0 002B4C00  4E 80 00 20 */	blr
lbl_802B7CA4:
/* 802B7CA4 002B4C04  38 84 00 08 */	addi r4, r4, 8
/* 802B7CA8 002B4C08  39 29 00 01 */	addi r9, r9, 1
lbl_802B7CAC:
/* 802B7CAC 002B4C0C  7C 04 00 40 */	cmplw r4, r0
/* 802B7CB0 002B4C10  40 82 FF B4 */	bne lbl_802B7C64
lbl_802B7CB4:
/* 802B7CB4 002B4C14  80 E7 00 04 */	lwz r7, 4(r7)
lbl_802B7CB8:
/* 802B7CB8 002B4C18  7C 07 40 40 */	cmplw r7, r8
/* 802B7CBC 002B4C1C  40 82 FF 80 */	bne lbl_802B7C3C
lbl_802B7CC0:
/* 802B7CC0 002B4C20  3C 80 80 5A */	lis r4, mskNullBox__6CAABox@ha
/* 802B7CC4 002B4C24  C4 04 67 84 */	lfsu f0, mskNullBox__6CAABox@l(r4)
/* 802B7CC8 002B4C28  D0 03 00 00 */	stfs f0, 0(r3)
/* 802B7CCC 002B4C2C  C0 04 00 04 */	lfs f0, 4(r4)
/* 802B7CD0 002B4C30  D0 03 00 04 */	stfs f0, 4(r3)
/* 802B7CD4 002B4C34  C0 04 00 08 */	lfs f0, 8(r4)
/* 802B7CD8 002B4C38  D0 03 00 08 */	stfs f0, 8(r3)
/* 802B7CDC 002B4C3C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802B7CE0 002B4C40  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802B7CE4 002B4C44  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 802B7CE8 002B4C48  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802B7CEC 002B4C4C  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 802B7CF0 002B4C50  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802B7CF4 002B4C54  4E 80 00 20 */	blr

.global SetWorldLightFadeLevel__13CCubeRendererFf
SetWorldLightFadeLevel__13CCubeRendererFf:
/* 802B7CF8 002B4C58  C0 02 C2 B8 */	lfs f0, lbl_805ADFD8@sda21(r2)
/* 802B7CFC 002B4C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7D00 002B4C60  EC 20 00 72 */	fmuls f1, f0, f1
/* 802B7D04 002B4C64  F0 21 A0 08 */	psq_st f1, 8(r1), 1, qr2
/* 802B7D08 002B4C68  38 00 00 FF */	li r0, 0xff
/* 802B7D0C 002B4C6C  88 81 00 08 */	lbz r4, 8(r1)
/* 802B7D10 002B4C70  98 01 00 0F */	stb r0, 0xf(r1)
/* 802B7D14 002B4C74  98 81 00 0C */	stb r4, 0xc(r1)
/* 802B7D18 002B4C78  98 81 00 0D */	stb r4, 0xd(r1)
/* 802B7D1C 002B4C7C  98 81 00 0E */	stb r4, 0xe(r1)
/* 802B7D20 002B4C80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B7D24 002B4C84  90 03 02 FC */	stw r0, 0x2fc(r3)
/* 802B7D28 002B4C88  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7D2C 002B4C8C  4E 80 00 20 */	blr

.global SetGXRegister1Color__13CCubeRendererFRC6CColor
SetGXRegister1Color__13CCubeRendererFRC6CColor:
/* 802B7D30 002B4C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7D34 002B4C94  7C 08 02 A6 */	mflr r0
/* 802B7D38 002B4C98  38 60 00 02 */	li r3, 2
/* 802B7D3C 002B4C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7D40 002B4CA0  80 04 00 00 */	lwz r0, 0(r4)
/* 802B7D44 002B4CA4  38 81 00 08 */	addi r4, r1, 8
/* 802B7D48 002B4CA8  90 01 00 08 */	stw r0, 8(r1)
/* 802B7D4C 002B4CAC  48 0C 38 B1 */	bl GXSetTevColor
/* 802B7D50 002B4CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7D54 002B4CB4  7C 08 03 A6 */	mtlr r0
/* 802B7D58 002B4CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7D5C 002B4CBC  4E 80 00 20 */	blr

.global SetThermalColdScale__13CCubeRendererFf
SetThermalColdScale__13CCubeRendererFf:
/* 802B7D60 002B4CC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B7D64 002B4CC4  7C 08 02 A6 */	mflr r0
/* 802B7D68 002B4CC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B7D6C 002B4CCC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802B7D70 002B4CD0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802B7D74 002B4CD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B7D78 002B4CD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 802B7D7C 002B4CDC  7C 7F 1B 78 */	mr r31, r3
/* 802B7D80 002B4CE0  38 81 00 08 */	addi r4, r1, 8
/* 802B7D84 002B4CE4  38 6D 9A E0 */	addi r3, r13, lbl_805A86A0@sda21
/* 802B7D88 002B4CE8  38 AD 9A E4 */	addi r5, r13, lbl_805A86A4@sda21
/* 802B7D8C 002B4CEC  4B D5 45 29 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802B7D90 002B4CF0  C0 23 00 00 */	lfs f1, 0(r3)
/* 802B7D94 002B4CF4  C0 02 C2 B8 */	lfs f0, lbl_805ADFD8@sda21(r2)
/* 802B7D98 002B4CF8  EF E0 00 72 */	fmuls f31, f0, f1
/* 802B7D9C 002B4CFC  F3 E1 A0 0C */	psq_st f31, 12(r1), 1, qr2
/* 802B7DA0 002B4D00  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802B7DA4 002B4D04  98 1F 02 F8 */	stb r0, 0x2f8(r31)
/* 802B7DA8 002B4D08  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802B7DAC 002B4D0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B7DB0 002B4D10  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802B7DB4 002B4D14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B7DB8 002B4D18  7C 08 03 A6 */	mtlr r0
/* 802B7DBC 002B4D1C  38 21 00 30 */	addi r1, r1, 0x30
/* 802B7DC0 002B4D20  4E 80 00 20 */	blr

.global DrawAreaGeometry__13CCubeRendererFiii
DrawAreaGeometry__13CCubeRendererFiii:
/* 802B7DC4 002B4D24  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B7DC8 002B4D28  7C 08 02 A6 */	mflr r0
/* 802B7DCC 002B4D2C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B7DD0 002B4D30  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 802B7DD4 002B4D34  7C 97 23 78 */	mr r23, r4
/* 802B7DD8 002B4D38  38 80 00 01 */	li r4, 1
/* 802B7DDC 002B4D3C  7C 76 1B 78 */	mr r22, r3
/* 802B7DE0 002B4D40  7C B8 2B 78 */	mr r24, r5
/* 802B7DE4 002B4D44  7C D9 33 78 */	mr r25, r6
/* 802B7DE8 002B4D48  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802B7DEC 002B4D4C  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 802B7DF0 002B4D50  38 80 00 01 */	li r4, 1
/* 802B7DF4 002B4D54  98 03 03 18 */	stb r0, 0x318(r3)
/* 802B7DF8 002B4D58  48 00 5A 39 */	bl SetupRendererStates__13CCubeRendererFb
/* 802B7DFC 002B4D5C  83 B6 00 20 */	lwz r29, 0x20(r22)
/* 802B7E00 002B4D60  48 00 01 64 */	b lbl_802B7F64
lbl_802B7E04:
/* 802B7E04 002B4D64  2C 17 FF FF */	cmpwi r23, -1
/* 802B7E08 002B4D68  41 82 00 10 */	beq lbl_802B7E18
/* 802B7E0C 002B4D6C  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802B7E10 002B4D70  7C 17 00 00 */	cmpw r23, r0
/* 802B7E14 002B4D74  40 82 01 4C */	bne lbl_802B7F60
lbl_802B7E18:
/* 802B7E18 002B4D78  88 16 00 DC */	lbz r0, 0xdc(r22)
/* 802B7E1C 002B4D7C  83 FD 00 1C */	lwz r31, 0x1c(r29)
/* 802B7E20 002B4D80  28 00 00 00 */	cmplwi r0, 0
/* 802B7E24 002B4D84  41 82 00 0C */	beq lbl_802B7E30
/* 802B7E28 002B4D88  3B 76 00 C8 */	addi r27, r22, 0xc8
/* 802B7E2C 002B4D8C  48 00 00 08 */	b lbl_802B7E34
lbl_802B7E30:
/* 802B7E30 002B4D90  3B 60 00 00 */	li r27, 0
lbl_802B7E34:
/* 802B7E34 002B4D94  80 76 00 E0 */	lwz r3, 0xe0(r22)
/* 802B7E38 002B4D98  80 1D 00 20 */	lwz r0, 0x20(r29)
/* 802B7E3C 002B4D9C  7C 03 00 00 */	cmpw r3, r0
/* 802B7E40 002B4DA0  41 82 00 08 */	beq lbl_802B7E48
/* 802B7E44 002B4DA4  3B 60 00 00 */	li r27, 0
lbl_802B7E48:
/* 802B7E48 002B4DA8  83 9F 00 0C */	lwz r28, 0xc(r31)
/* 802B7E4C 002B4DAC  3B 40 00 00 */	li r26, 0
/* 802B7E50 002B4DB0  48 00 00 F8 */	b lbl_802B7F48
lbl_802B7E54:
/* 802B7E54 002B4DB4  28 1B 00 00 */	cmplwi r27, 0
/* 802B7E58 002B4DB8  83 DC 00 04 */	lwz r30, 4(r28)
/* 802B7E5C 002B4DBC  41 82 00 40 */	beq lbl_802B7E9C
/* 802B7E60 002B4DC0  7F 63 DB 78 */	mr r3, r27
/* 802B7E64 002B4DC4  7F 44 D3 78 */	mr r4, r26
/* 802B7E68 002B4DC8  48 05 E4 71 */	bl GetVisible__10CPVSVisSetCFi
/* 802B7E6C 002B4DCC  80 96 00 C4 */	lwz r4, 0xc4(r22)
/* 802B7E70 002B4DD0  7C 03 00 D0 */	neg r0, r3
/* 802B7E74 002B4DD4  7C 00 1B 78 */	or r0, r0, r3
/* 802B7E78 002B4DD8  2C 04 00 01 */	cmpwi r4, 1
/* 802B7E7C 002B4DDC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802B7E80 002B4DE0  40 82 00 0C */	bne lbl_802B7E8C
/* 802B7E84 002B4DE4  28 00 00 00 */	cmplwi r0, 0
/* 802B7E88 002B4DE8  41 82 00 B8 */	beq lbl_802B7F40
lbl_802B7E8C:
/* 802B7E8C 002B4DEC  2C 04 00 02 */	cmpwi r4, 2
/* 802B7E90 002B4DF0  40 82 00 0C */	bne lbl_802B7E9C
/* 802B7E94 002B4DF4  28 00 00 00 */	cmplwi r0, 0
/* 802B7E98 002B4DF8  40 82 00 A8 */	bne lbl_802B7F40
lbl_802B7E9C:
/* 802B7E9C 002B4DFC  88 1E 00 41 */	lbz r0, 0x41(r30)
/* 802B7EA0 002B4E00  7F 00 00 38 */	and r0, r24, r0
/* 802B7EA4 002B4E04  7C 19 00 40 */	cmplw r25, r0
/* 802B7EA8 002B4E08  40 82 00 98 */	bne lbl_802B7F40
/* 802B7EAC 002B4E0C  38 76 00 44 */	addi r3, r22, 0x44
/* 802B7EB0 002B4E10  38 9E 00 20 */	addi r4, r30, 0x20
/* 802B7EB4 002B4E14  48 08 D3 1D */	bl BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox
/* 802B7EB8 002B4E18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B7EBC 002B4E1C  41 82 00 84 */	beq lbl_802B7F40
/* 802B7EC0 002B4E20  88 1E 00 41 */	lbz r0, 0x41(r30)
/* 802B7EC4 002B4E24  7F 00 00 38 */	and r0, r24, r0
/* 802B7EC8 002B4E28  7C 19 00 40 */	cmplw r25, r0
/* 802B7ECC 002B4E2C  40 82 00 74 */	bne lbl_802B7F40
/* 802B7ED0 002B4E30  7F C3 F3 78 */	mr r3, r30
/* 802B7ED4 002B4E34  48 04 F7 4D */	bl SetArraysCurrent__10CCubeModelCFv
/* 802B7ED8 002B4E38  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802B7EDC 002B4E3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B7EE0 002B4E40  48 00 00 20 */	b lbl_802B7F00
lbl_802B7EE4:
/* 802B7EE4 002B4E44  7F C3 F3 78 */	mr r3, r30
/* 802B7EE8 002B4E48  38 81 00 0C */	addi r4, r1, 0xc
/* 802B7EEC 002B4E4C  38 AD A5 F4 */	addi r5, r13, skNormalFlag@sda21
/* 802B7EF0 002B4E50  48 04 F5 55 */	bl DrawSurface__10CCubeModelCFRC12CCubeSurfaceRC11CModelFlags
/* 802B7EF4 002B4E54  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802B7EF8 002B4E58  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B7EFC 002B4E5C  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802B7F00:
/* 802B7F00 002B4E60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B7F04 002B4E64  28 00 00 00 */	cmplwi r0, 0
/* 802B7F08 002B4E68  40 82 FF DC */	bne lbl_802B7EE4
/* 802B7F0C 002B4E6C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 802B7F10 002B4E70  90 01 00 08 */	stw r0, 8(r1)
/* 802B7F14 002B4E74  48 00 00 20 */	b lbl_802B7F34
lbl_802B7F18:
/* 802B7F18 002B4E78  7F C3 F3 78 */	mr r3, r30
/* 802B7F1C 002B4E7C  38 81 00 08 */	addi r4, r1, 8
/* 802B7F20 002B4E80  38 AD A5 F4 */	addi r5, r13, skNormalFlag@sda21
/* 802B7F24 002B4E84  48 04 F5 21 */	bl DrawSurface__10CCubeModelCFRC12CCubeSurfaceRC11CModelFlags
/* 802B7F28 002B4E88  80 61 00 08 */	lwz r3, 8(r1)
/* 802B7F2C 002B4E8C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B7F30 002B4E90  90 01 00 08 */	stw r0, 8(r1)
lbl_802B7F34:
/* 802B7F34 002B4E94  80 01 00 08 */	lwz r0, 8(r1)
/* 802B7F38 002B4E98  28 00 00 00 */	cmplwi r0, 0
/* 802B7F3C 002B4E9C  40 82 FF DC */	bne lbl_802B7F18
lbl_802B7F40:
/* 802B7F40 002B4EA0  3B 9C 00 08 */	addi r28, r28, 8
/* 802B7F44 002B4EA4  3B 5A 00 01 */	addi r26, r26, 1
lbl_802B7F48:
/* 802B7F48 002B4EA8  80 1F 00 04 */	lwz r0, 4(r31)
/* 802B7F4C 002B4EAC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802B7F50 002B4EB0  54 00 18 38 */	slwi r0, r0, 3
/* 802B7F54 002B4EB4  7C 03 02 14 */	add r0, r3, r0
/* 802B7F58 002B4EB8  7C 1C 00 40 */	cmplw r28, r0
/* 802B7F5C 002B4EBC  40 82 FE F8 */	bne lbl_802B7E54
lbl_802B7F60:
/* 802B7F60 002B4EC0  83 BD 00 04 */	lwz r29, 4(r29)
lbl_802B7F64:
/* 802B7F64 002B4EC4  80 16 00 24 */	lwz r0, 0x24(r22)
/* 802B7F68 002B4EC8  7C 1D 00 40 */	cmplw r29, r0
/* 802B7F6C 002B4ECC  40 82 FE 98 */	bne lbl_802B7E04
/* 802B7F70 002B4ED0  7E C3 B3 78 */	mr r3, r22
/* 802B7F74 002B4ED4  48 00 58 29 */	bl SetupCGraphicsStates__13CCubeRendererFv
/* 802B7F78 002B4ED8  88 16 03 18 */	lbz r0, 0x318(r22)
/* 802B7F7C 002B4EDC  38 60 00 00 */	li r3, 0
/* 802B7F80 002B4EE0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802B7F84 002B4EE4  98 16 03 18 */	stb r0, 0x318(r22)
/* 802B7F88 002B4EE8  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 802B7F8C 002B4EEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B7F90 002B4EF0  7C 08 03 A6 */	mtlr r0
/* 802B7F94 002B4EF4  38 21 00 40 */	addi r1, r1, 0x40
/* 802B7F98 002B4EF8  4E 80 00 20 */	blr

.global DrawModelFlat__13CCubeRendererFRC6CModelRC11CModelFlagsbPCfPCf
DrawModelFlat__13CCubeRendererFRC6CModelRC11CModelFlagsbPCfPCf:
/* 802B7F9C 002B4EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B7FA0 002B4F00  7C 08 02 A6 */	mflr r0
/* 802B7FA4 002B4F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B7FA8 002B4F08  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B7FAC 002B4F0C  7C BC 2B 78 */	mr r28, r5
/* 802B7FB0 002B4F10  7C 9B 23 78 */	mr r27, r4
/* 802B7FB4 002B4F14  7C DD 33 78 */	mr r29, r6
/* 802B7FB8 002B4F18  7C FE 3B 78 */	mr r30, r7
/* 802B7FBC 002B4F1C  7D 1F 43 78 */	mr r31, r8
/* 802B7FC0 002B4F20  88 05 00 00 */	lbz r0, 0(r5)
/* 802B7FC4 002B4F24  7C 00 07 74 */	extsb r0, r0
/* 802B7FC8 002B4F28  2C 00 00 06 */	cmpwi r0, 6
/* 802B7FCC 002B4F2C  40 81 00 1C */	ble lbl_802B7FE8
/* 802B7FD0 002B4F30  38 60 00 01 */	li r3, 1
/* 802B7FD4 002B4F34  38 80 00 04 */	li r4, 4
/* 802B7FD8 002B4F38  38 A0 00 01 */	li r5, 1
/* 802B7FDC 002B4F3C  38 C0 00 00 */	li r6, 0
/* 802B7FE0 002B4F40  48 05 08 F1 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B7FE4 002B4F44  48 00 00 38 */	b lbl_802B801C
lbl_802B7FE8:
/* 802B7FE8 002B4F48  2C 00 00 04 */	cmpwi r0, 4
/* 802B7FEC 002B4F4C  40 81 00 1C */	ble lbl_802B8008
/* 802B7FF0 002B4F50  38 60 00 01 */	li r3, 1
/* 802B7FF4 002B4F54  38 80 00 04 */	li r4, 4
/* 802B7FF8 002B4F58  38 A0 00 05 */	li r5, 5
/* 802B7FFC 002B4F5C  38 C0 00 00 */	li r6, 0
/* 802B8000 002B4F60  48 05 08 D1 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B8004 002B4F64  48 00 00 18 */	b lbl_802B801C
lbl_802B8008:
/* 802B8008 002B4F68  38 60 00 01 */	li r3, 1
/* 802B800C 002B4F6C  38 80 00 01 */	li r4, 1
/* 802B8010 002B4F70  38 A0 00 00 */	li r5, 0
/* 802B8014 002B4F74  38 C0 00 00 */	li r6, 0
/* 802B8018 002B4F78  48 05 08 B9 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
lbl_802B801C:
/* 802B801C 002B4F7C  A0 BC 00 02 */	lhz r5, 2(r28)
/* 802B8020 002B4F80  38 60 00 01 */	li r3, 1
/* 802B8024 002B4F84  38 80 00 07 */	li r4, 7
/* 802B8028 002B4F88  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 802B802C 002B4F8C  41 82 00 08 */	beq lbl_802B8034
/* 802B8030 002B4F90  38 80 00 03 */	li r4, 3
lbl_802B8034:
/* 802B8034 002B4F94  54 A5 FF FE */	rlwinm r5, r5, 0x1f, 0x1f, 0x1f
/* 802B8038 002B4F98  48 05 08 45 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B803C 002B4F9C  38 60 00 01 */	li r3, 1
/* 802B8040 002B4FA0  48 05 0C 51 */	bl SetNumTevStages__3CGXFUc
/* 802B8044 002B4FA4  38 60 00 01 */	li r3, 1
/* 802B8048 002B4FA8  48 05 0D CD */	bl SetNumTexGens__3CGXFUc
/* 802B804C 002B4FAC  38 60 00 00 */	li r3, 0
/* 802B8050 002B4FB0  48 05 0E 01 */	bl SetNumChans__3CGXFUc
/* 802B8054 002B4FB4  38 60 00 00 */	li r3, 0
/* 802B8058 002B4FB8  48 05 06 39 */	bl SetNumIndStages__3CGXFUc
/* 802B805C 002B4FBC  38 60 00 07 */	li r3, 7
/* 802B8060 002B4FC0  38 80 00 00 */	li r4, 0
/* 802B8064 002B4FC4  38 A0 00 00 */	li r5, 0
/* 802B8068 002B4FC8  38 C0 00 07 */	li r6, 7
/* 802B806C 002B4FCC  38 E0 00 00 */	li r7, 0
/* 802B8070 002B4FD0  48 05 07 A5 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B8074 002B4FD4  38 60 00 00 */	li r3, 0
/* 802B8078 002B4FD8  38 80 00 0F */	li r4, 0xf
/* 802B807C 002B4FDC  38 A0 00 0F */	li r5, 0xf
/* 802B8080 002B4FE0  38 C0 00 0F */	li r6, 0xf
/* 802B8084 002B4FE4  38 E0 00 0E */	li r7, 0xe
/* 802B8088 002B4FE8  48 05 0B 65 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B808C 002B4FEC  38 60 00 00 */	li r3, 0
/* 802B8090 002B4FF0  38 80 00 07 */	li r4, 7
/* 802B8094 002B4FF4  38 A0 00 07 */	li r5, 7
/* 802B8098 002B4FF8  38 C0 00 07 */	li r6, 7
/* 802B809C 002B4FFC  38 E0 00 06 */	li r7, 6
/* 802B80A0 002B5000  48 05 0A F5 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B80A4 002B5004  38 9C 00 04 */	addi r4, r28, 4
/* 802B80A8 002B5008  38 60 00 00 */	li r3, 0
/* 802B80AC 002B500C  48 05 0B 99 */	bl SetTevKColor__3CGXF14_GXTevKColorIDRC8_GXColor
/* 802B80B0 002B5010  38 60 00 00 */	li r3, 0
/* 802B80B4 002B5014  38 80 00 0C */	li r4, 0xc
/* 802B80B8 002B5018  48 05 09 29 */	bl SetTevKColorSel__3CGXF13_GXTevStageID15_GXTevKColorSel
/* 802B80BC 002B501C  38 60 00 00 */	li r3, 0
/* 802B80C0 002B5020  38 80 00 1C */	li r4, 0x1c
/* 802B80C4 002B5024  48 05 08 D9 */	bl SetTevKAlphaSel__3CGXF13_GXTevStageID15_GXTevKAlphaSel
/* 802B80C8 002B5028  38 60 00 00 */	li r3, 0
/* 802B80CC 002B502C  38 80 00 FF */	li r4, 0xff
/* 802B80D0 002B5030  38 A0 00 FF */	li r5, 0xff
/* 802B80D4 002B5034  38 C0 00 FF */	li r6, 0xff
/* 802B80D8 002B5038  48 05 08 75 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B80DC 002B503C  38 60 00 00 */	li r3, 0
/* 802B80E0 002B5040  48 04 FB 71 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802B80E4 002B5044  38 60 00 00 */	li r3, 0
/* 802B80E8 002B5048  48 05 06 5D */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802B80EC 002B504C  38 60 00 00 */	li r3, 0
/* 802B80F0 002B5050  38 80 00 01 */	li r4, 1
/* 802B80F4 002B5054  38 A0 00 00 */	li r5, 0
/* 802B80F8 002B5058  38 C0 00 3C */	li r6, 0x3c
/* 802B80FC 002B505C  38 E0 00 00 */	li r7, 0
/* 802B8100 002B5060  39 00 00 7D */	li r8, 0x7d
/* 802B8104 002B5064  48 05 05 C9 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B8108 002B5068  7F 63 DB 78 */	mr r3, r27
/* 802B810C 002B506C  48 09 D0 15 */	bl UpdateLastFrame__6CModelFv
/* 802B8110 002B5070  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802B8114 002B5074  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 802B8118 002B5078  7F C4 F3 78 */	mr r4, r30
/* 802B811C 002B507C  7F E5 FB 78 */	mr r5, r31
/* 802B8120 002B5080  38 C0 00 02 */	li r6, 2
/* 802B8124 002B5084  41 82 00 08 */	beq lbl_802B812C
/* 802B8128 002B5088  38 C0 00 00 */	li r6, 0
lbl_802B812C:
/* 802B812C 002B508C  48 04 E8 C5 */	bl DrawFlat__10CCubeModelCFPCfPCf17ESurfaceSelection
/* 802B8130 002B5090  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B8134 002B5094  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8138 002B5098  7C 08 03 A6 */	mtlr r0
/* 802B813C 002B509C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8140 002B50A0  4E 80 00 20 */	blr

.global DrawModelDisintegrate__13CCubeRendererFRC6CModelRC8CTextureRC6CColorPCfPCf
DrawModelDisintegrate__13CCubeRendererFRC6CModelRC8CTextureRC6CColorPCfPCf:
/* 802B8144 002B50A4  94 21 FD 90 */	stwu r1, -0x270(r1)
/* 802B8148 002B50A8  7C 08 02 A6 */	mflr r0
/* 802B814C 002B50AC  90 01 02 74 */	stw r0, 0x274(r1)
/* 802B8150 002B50B0  DB E1 02 60 */	stfd f31, 0x260(r1)
/* 802B8154 002B50B4  F3 E1 02 68 */	psq_st f31, 616(r1), 0, qr0
/* 802B8158 002B50B8  DB C1 02 50 */	stfd f30, 0x250(r1)
/* 802B815C 002B50BC  F3 C1 02 58 */	psq_st f30, 600(r1), 0, qr0
/* 802B8160 002B50C0  DB A1 02 40 */	stfd f29, 0x240(r1)
/* 802B8164 002B50C4  F3 A1 02 48 */	psq_st f29, 584(r1), 0, qr0
/* 802B8168 002B50C8  DB 81 02 30 */	stfd f28, 0x230(r1)
/* 802B816C 002B50CC  F3 81 02 38 */	psq_st f28, 568(r1), 0, qr0
/* 802B8170 002B50D0  BD E1 01 EC */	stmw r15, 0x1ec(r1)
/* 802B8174 002B50D4  FF E0 08 90 */	fmr f31, f1
/* 802B8178 002B50D8  7C 9D 23 78 */	mr r29, r4
/* 802B817C 002B50DC  7C A3 2B 78 */	mr r3, r5
/* 802B8180 002B50E0  7C CF 33 78 */	mr r15, r6
/* 802B8184 002B50E4  7C FE 3B 78 */	mr r30, r7
/* 802B8188 002B50E8  7D 1F 43 78 */	mr r31, r8
/* 802B818C 002B50EC  38 80 00 00 */	li r4, 0
/* 802B8190 002B50F0  38 A0 00 00 */	li r5, 0
/* 802B8194 002B50F4  48 05 75 A9 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 802B8198 002B50F8  38 60 00 00 */	li r3, 0
/* 802B819C 002B50FC  48 05 04 F5 */	bl SetNumIndStages__3CGXFUc
/* 802B81A0 002B5100  38 60 00 02 */	li r3, 2
/* 802B81A4 002B5104  48 05 0A ED */	bl SetNumTevStages__3CGXFUc
/* 802B81A8 002B5108  38 60 00 02 */	li r3, 2
/* 802B81AC 002B510C  48 05 0C 69 */	bl SetNumTexGens__3CGXFUc
/* 802B81B0 002B5110  38 60 00 00 */	li r3, 0
/* 802B81B4 002B5114  48 05 0C 9D */	bl SetNumChans__3CGXFUc
/* 802B81B8 002B5118  38 60 00 01 */	li r3, 1
/* 802B81BC 002B511C  38 80 00 04 */	li r4, 4
/* 802B81C0 002B5120  38 A0 00 05 */	li r5, 5
/* 802B81C4 002B5124  38 C0 00 00 */	li r6, 0
/* 802B81C8 002B5128  48 05 07 09 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B81CC 002B512C  38 60 00 00 */	li r3, 0
/* 802B81D0 002B5130  48 04 FA 81 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802B81D4 002B5134  38 60 00 01 */	li r3, 1
/* 802B81D8 002B5138  48 04 FA 79 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802B81DC 002B513C  38 60 00 00 */	li r3, 0
/* 802B81E0 002B5140  38 80 00 0F */	li r4, 0xf
/* 802B81E4 002B5144  38 A0 00 0F */	li r5, 0xf
/* 802B81E8 002B5148  38 C0 00 0F */	li r6, 0xf
/* 802B81EC 002B514C  38 E0 00 08 */	li r7, 8
/* 802B81F0 002B5150  48 05 09 FD */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B81F4 002B5154  38 60 00 00 */	li r3, 0
/* 802B81F8 002B5158  38 80 00 07 */	li r4, 7
/* 802B81FC 002B515C  38 A0 00 07 */	li r5, 7
/* 802B8200 002B5160  38 C0 00 07 */	li r6, 7
/* 802B8204 002B5164  38 E0 00 04 */	li r7, 4
/* 802B8208 002B5168  48 05 09 8D */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B820C 002B516C  38 60 00 01 */	li r3, 1
/* 802B8210 002B5170  38 80 00 0F */	li r4, 0xf
/* 802B8214 002B5174  38 A0 00 08 */	li r5, 8
/* 802B8218 002B5178  38 C0 00 00 */	li r6, 0
/* 802B821C 002B517C  38 E0 00 0E */	li r7, 0xe
/* 802B8220 002B5180  48 05 09 CD */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B8224 002B5184  38 60 00 01 */	li r3, 1
/* 802B8228 002B5188  38 80 00 07 */	li r4, 7
/* 802B822C 002B518C  38 A0 00 04 */	li r5, 4
/* 802B8230 002B5190  38 C0 00 00 */	li r6, 0
/* 802B8234 002B5194  38 E0 00 07 */	li r7, 7
/* 802B8238 002B5198  48 05 09 5D */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B823C 002B519C  38 60 00 00 */	li r3, 0
/* 802B8240 002B51A0  38 80 00 00 */	li r4, 0
/* 802B8244 002B51A4  38 A0 00 00 */	li r5, 0
/* 802B8248 002B51A8  38 C0 00 FF */	li r6, 0xff
/* 802B824C 002B51AC  48 05 07 01 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B8250 002B51B0  38 60 00 01 */	li r3, 1
/* 802B8254 002B51B4  38 80 00 01 */	li r4, 1
/* 802B8258 002B51B8  38 A0 00 00 */	li r5, 0
/* 802B825C 002B51BC  38 C0 00 FF */	li r6, 0xff
/* 802B8260 002B51C0  48 05 06 ED */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B8264 002B51C4  38 60 00 01 */	li r3, 1
/* 802B8268 002B51C8  38 80 00 0C */	li r4, 0xc
/* 802B826C 002B51CC  48 05 07 75 */	bl SetTevKColorSel__3CGXF13_GXTevStageID15_GXTevKColorSel
/* 802B8270 002B51D0  7D E4 7B 78 */	mr r4, r15
/* 802B8274 002B51D4  38 60 00 00 */	li r3, 0
/* 802B8278 002B51D8  48 05 09 CD */	bl SetTevKColor__3CGXF14_GXTevKColorIDRC8_GXColor
/* 802B827C 002B51DC  C0 02 C2 BC */	lfs f0, lbl_805ADFDC@sda21(r2)
/* 802B8280 002B51E0  38 61 01 20 */	addi r3, r1, 0x120
/* 802B8284 002B51E4  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 802B8288 002B51E8  38 81 00 08 */	addi r4, r1, 8
/* 802B828C 002B51EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 802B8290 002B51F0  39 E5 00 20 */	addi r15, r5, 0x20
/* 802B8294 002B51F4  48 05 B6 AD */	bl RotateX__12CTransform4fFRC9CRelAngle
/* 802B8298 002B51F8  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 802B829C 002B51FC  38 81 01 20 */	addi r4, r1, 0x120
/* 802B82A0 002B5200  48 05 A8 D5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B82A4 002B5204  7D E4 7B 78 */	mr r4, r15
/* 802B82A8 002B5208  38 61 00 30 */	addi r3, r1, 0x30
/* 802B82AC 002B520C  38 A1 01 B0 */	addi r5, r1, 0x1b0
/* 802B82B0 002B5210  48 07 F6 4D */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 802B82B4 002B5214  C1 01 00 30 */	lfs f8, 0x30(r1)
/* 802B82B8 002B5218  38 61 00 60 */	addi r3, r1, 0x60
/* 802B82BC 002B521C  C0 E1 00 34 */	lfs f7, 0x34(r1)
/* 802B82C0 002B5220  38 81 00 0C */	addi r4, r1, 0xc
/* 802B82C4 002B5224  C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 802B82C8 002B5228  FC 40 40 50 */	fneg f2, f8
/* 802B82CC 002B522C  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 802B82D0 002B5230  FC 20 38 50 */	fneg f1, f7
/* 802B82D4 002B5234  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 802B82D8 002B5238  FC 00 30 50 */	fneg f0, f6
/* 802B82DC 002B523C  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 802B82E0 002B5240  EF 85 40 28 */	fsubs f28, f5, f8
/* 802B82E4 002B5244  D1 01 00 48 */	stfs f8, 0x48(r1)
/* 802B82E8 002B5248  EF A4 38 28 */	fsubs f29, f4, f7
/* 802B82EC 002B524C  EF C3 30 28 */	fsubs f30, f3, f6
/* 802B82F0 002B5250  D0 E1 00 4C */	stfs f7, 0x4c(r1)
/* 802B82F4 002B5254  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 802B82F8 002B5258  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 802B82FC 002B525C  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 802B8300 002B5260  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 802B8304 002B5264  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802B8308 002B5268  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802B830C 002B526C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802B8310 002B5270  48 05 AE 31 */	bl Translate__12CTransform4fFRC9CVector3f
/* 802B8314 002B5274  C0 02 C2 C0 */	lfs f0, lbl_805ADFE0@sda21(r2)
/* 802B8318 002B5278  38 61 00 90 */	addi r3, r1, 0x90
/* 802B831C 002B527C  EC 20 E0 24 */	fdivs f1, f0, f28
/* 802B8320 002B5280  EC 40 E8 24 */	fdivs f2, f0, f29
/* 802B8324 002B5284  EC 60 F0 24 */	fdivs f3, f0, f30
/* 802B8328 002B5288  48 05 AE E1 */	bl Scale__12CTransform4fFfff
/* 802B832C 002B528C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802B8330 002B5290  38 81 00 90 */	addi r4, r1, 0x90
/* 802B8334 002B5294  38 A1 00 60 */	addi r5, r1, 0x60
/* 802B8338 002B5298  48 05 A6 19 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 802B833C 002B529C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 802B8340 002B52A0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 802B8344 002B52A4  38 A1 01 B0 */	addi r5, r1, 0x1b0
/* 802B8348 002B52A8  48 05 A6 09 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 802B834C 002B52AC  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 802B8350 002B52B0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 802B8354 002B52B4  48 05 A7 ED */	bl __as__12CTransform4fFRC12CTransform4f
/* 802B8358 002B52B8  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 802B835C 002B52BC  38 61 00 18 */	addi r3, r1, 0x18
/* 802B8360 002B52C0  38 A1 01 B0 */	addi r5, r1, 0x1b0
/* 802B8364 002B52C4  38 84 00 20 */	addi r4, r4, 0x20
/* 802B8368 002B52C8  48 07 F5 95 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 802B836C 002B52CC  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B8370 002B52D0  3C 60 80 3D */	lis r3, lbl_803D6734@ha
/* 802B8374 002B52D4  39 03 67 34 */	addi r8, r3, lbl_803D6734@l
/* 802B8378 002B52D8  3C 60 80 3D */	lis r3, lbl_803D6764@ha
/* 802B837C 002B52DC  EC 01 F8 28 */	fsubs f0, f1, f31
/* 802B8380 002B52E0  3A E3 67 64 */	addi r23, r3, lbl_803D6764@l
/* 802B8384 002B52E4  80 C8 00 0C */	lwz r6, 0xc(r8)
/* 802B8388 002B52E8  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 802B838C 002B52EC  80 08 00 1C */	lwz r0, 0x1c(r8)
/* 802B8390 002B52F0  38 80 00 1E */	li r4, 0x1e
/* 802B8394 002B52F4  FC 00 00 50 */	fneg f0, f0
/* 802B8398 002B52F8  C0 42 C2 C4 */	lfs f2, lbl_805ADFE4@sda21(r2)
/* 802B839C 002B52FC  83 77 00 0C */	lwz r27, 0xc(r23)
/* 802B83A0 002B5300  38 A0 00 00 */	li r5, 0
/* 802B83A4 002B5304  80 F7 00 1C */	lwz r7, 0x1c(r23)
/* 802B83A8 002B5308  90 C1 01 8C */	stw r6, 0x18c(r1)
/* 802B83AC 002B530C  80 C8 00 00 */	lwz r6, 0(r8)
/* 802B83B0 002B5310  EC 42 08 3A */	fmadds f2, f2, f0, f1
/* 802B83B4 002B5314  90 01 01 9C */	stw r0, 0x19c(r1)
/* 802B83B8 002B5318  80 08 00 04 */	lwz r0, 4(r8)
/* 802B83BC 002B531C  90 E1 01 6C */	stw r7, 0x16c(r1)
/* 802B83C0 002B5320  81 E8 00 08 */	lwz r15, 8(r8)
/* 802B83C4 002B5324  82 08 00 10 */	lwz r16, 0x10(r8)
/* 802B83C8 002B5328  82 28 00 14 */	lwz r17, 0x14(r8)
/* 802B83CC 002B532C  82 48 00 18 */	lwz r18, 0x18(r8)
/* 802B83D0 002B5330  82 68 00 20 */	lwz r19, 0x20(r8)
/* 802B83D4 002B5334  82 88 00 24 */	lwz r20, 0x24(r8)
/* 802B83D8 002B5338  82 A8 00 28 */	lwz r21, 0x28(r8)
/* 802B83DC 002B533C  82 C8 00 2C */	lwz r22, 0x2c(r8)
/* 802B83E0 002B5340  83 17 00 00 */	lwz r24, 0(r23)
/* 802B83E4 002B5344  83 37 00 04 */	lwz r25, 4(r23)
/* 802B83E8 002B5348  83 57 00 08 */	lwz r26, 8(r23)
/* 802B83EC 002B534C  83 97 00 10 */	lwz r28, 0x10(r23)
/* 802B83F0 002B5350  81 97 00 14 */	lwz r12, 0x14(r23)
/* 802B83F4 002B5354  81 77 00 18 */	lwz r11, 0x18(r23)
/* 802B83F8 002B5358  81 57 00 20 */	lwz r10, 0x20(r23)
/* 802B83FC 002B535C  81 37 00 24 */	lwz r9, 0x24(r23)
/* 802B8400 002B5360  81 17 00 28 */	lwz r8, 0x28(r23)
/* 802B8404 002B5364  80 F7 00 2C */	lwz r7, 0x2c(r23)
/* 802B8408 002B5368  C0 22 C2 C8 */	lfs f1, lbl_805ADFE8@sda21(r2)
/* 802B840C 002B536C  C0 02 C2 CC */	lfs f0, lbl_805ADFEC@sda21(r2)
/* 802B8410 002B5370  93 61 01 5C */	stw r27, 0x15c(r1)
/* 802B8414 002B5374  EC 01 07 F8 */	fmsubs f0, f1, f31, f0
/* 802B8418 002B5378  90 C1 01 80 */	stw r6, 0x180(r1)
/* 802B841C 002B537C  90 01 01 84 */	stw r0, 0x184(r1)
/* 802B8420 002B5380  91 E1 01 88 */	stw r15, 0x188(r1)
/* 802B8424 002B5384  92 01 01 90 */	stw r16, 0x190(r1)
/* 802B8428 002B5388  92 21 01 94 */	stw r17, 0x194(r1)
/* 802B842C 002B538C  92 41 01 98 */	stw r18, 0x198(r1)
/* 802B8430 002B5390  92 61 01 A0 */	stw r19, 0x1a0(r1)
/* 802B8434 002B5394  92 81 01 A4 */	stw r20, 0x1a4(r1)
/* 802B8438 002B5398  92 A1 01 A8 */	stw r21, 0x1a8(r1)
/* 802B843C 002B539C  92 C1 01 AC */	stw r22, 0x1ac(r1)
/* 802B8440 002B53A0  D3 E1 01 8C */	stfs f31, 0x18c(r1)
/* 802B8444 002B53A4  D0 41 01 9C */	stfs f2, 0x19c(r1)
/* 802B8448 002B53A8  93 01 01 50 */	stw r24, 0x150(r1)
/* 802B844C 002B53AC  93 21 01 54 */	stw r25, 0x154(r1)
/* 802B8450 002B53B0  93 41 01 58 */	stw r26, 0x158(r1)
/* 802B8454 002B53B4  93 81 01 60 */	stw r28, 0x160(r1)
/* 802B8458 002B53B8  91 81 01 64 */	stw r12, 0x164(r1)
/* 802B845C 002B53BC  91 61 01 68 */	stw r11, 0x168(r1)
/* 802B8460 002B53C0  91 41 01 70 */	stw r10, 0x170(r1)
/* 802B8464 002B53C4  91 21 01 74 */	stw r9, 0x174(r1)
/* 802B8468 002B53C8  91 01 01 78 */	stw r8, 0x178(r1)
/* 802B846C 002B53CC  90 E1 01 7C */	stw r7, 0x17c(r1)
/* 802B8470 002B53D0  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 802B8474 002B53D4  D0 41 01 6C */	stfs f2, 0x16c(r1)
/* 802B8478 002B53D8  48 0C 40 19 */	bl GXLoadTexMtxImm
/* 802B847C 002B53DC  38 61 01 80 */	addi r3, r1, 0x180
/* 802B8480 002B53E0  38 80 00 40 */	li r4, 0x40
/* 802B8484 002B53E4  38 A0 00 00 */	li r5, 0
/* 802B8488 002B53E8  48 0C 40 09 */	bl GXLoadTexMtxImm
/* 802B848C 002B53EC  38 61 01 50 */	addi r3, r1, 0x150
/* 802B8490 002B53F0  38 80 00 43 */	li r4, 0x43
/* 802B8494 002B53F4  38 A0 00 00 */	li r5, 0
/* 802B8498 002B53F8  48 0C 3F F9 */	bl GXLoadTexMtxImm
/* 802B849C 002B53FC  38 60 00 00 */	li r3, 0
/* 802B84A0 002B5400  38 80 00 00 */	li r4, 0
/* 802B84A4 002B5404  38 A0 00 00 */	li r5, 0
/* 802B84A8 002B5408  38 C0 00 1E */	li r6, 0x1e
/* 802B84AC 002B540C  38 E0 00 00 */	li r7, 0
/* 802B84B0 002B5410  39 00 00 40 */	li r8, 0x40
/* 802B84B4 002B5414  48 05 02 19 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B84B8 002B5418  38 60 00 01 */	li r3, 1
/* 802B84BC 002B541C  38 80 00 00 */	li r4, 0
/* 802B84C0 002B5420  38 A0 00 00 */	li r5, 0
/* 802B84C4 002B5424  38 C0 00 1E */	li r6, 0x1e
/* 802B84C8 002B5428  38 E0 00 00 */	li r7, 0
/* 802B84CC 002B542C  39 00 00 43 */	li r8, 0x43
/* 802B84D0 002B5430  48 05 01 FD */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B84D4 002B5434  38 60 00 04 */	li r3, 4
/* 802B84D8 002B5438  38 80 00 00 */	li r4, 0
/* 802B84DC 002B543C  38 A0 00 00 */	li r5, 0
/* 802B84E0 002B5440  38 C0 00 07 */	li r6, 7
/* 802B84E4 002B5444  38 E0 00 00 */	li r7, 0
/* 802B84E8 002B5448  48 05 03 2D */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B84EC 002B544C  38 60 00 01 */	li r3, 1
/* 802B84F0 002B5450  38 80 00 03 */	li r4, 3
/* 802B84F4 002B5454  38 A0 00 01 */	li r5, 1
/* 802B84F8 002B5458  48 05 03 85 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B84FC 002B545C  7F A3 EB 78 */	mr r3, r29
/* 802B8500 002B5460  48 09 CC 21 */	bl UpdateLastFrame__6CModelFv
/* 802B8504 002B5464  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 802B8508 002B5468  7F C4 F3 78 */	mr r4, r30
/* 802B850C 002B546C  7F E5 FB 78 */	mr r5, r31
/* 802B8510 002B5470  38 C0 00 02 */	li r6, 2
/* 802B8514 002B5474  48 04 E4 DD */	bl DrawFlat__10CCubeModelCFPCfPCf17ESurfaceSelection
/* 802B8518 002B5478  38 60 00 07 */	li r3, 7
/* 802B851C 002B547C  38 80 00 00 */	li r4, 0
/* 802B8520 002B5480  38 A0 00 00 */	li r5, 0
/* 802B8524 002B5484  38 C0 00 07 */	li r6, 7
/* 802B8528 002B5488  38 E0 00 00 */	li r7, 0
/* 802B852C 002B548C  48 05 02 E9 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B8530 002B5490  E3 E1 02 68 */	psq_l f31, 616(r1), 0, qr0
/* 802B8534 002B5494  CB E1 02 60 */	lfd f31, 0x260(r1)
/* 802B8538 002B5498  E3 C1 02 58 */	psq_l f30, 600(r1), 0, qr0
/* 802B853C 002B549C  CB C1 02 50 */	lfd f30, 0x250(r1)
/* 802B8540 002B54A0  E3 A1 02 48 */	psq_l f29, 584(r1), 0, qr0
/* 802B8544 002B54A4  CB A1 02 40 */	lfd f29, 0x240(r1)
/* 802B8548 002B54A8  E3 81 02 38 */	psq_l f28, 568(r1), 0, qr0
/* 802B854C 002B54AC  CB 81 02 30 */	lfd f28, 0x230(r1)
/* 802B8550 002B54B0  B9 E1 01 EC */	lmw r15, 0x1ec(r1)
/* 802B8554 002B54B4  80 01 02 74 */	lwz r0, 0x274(r1)
/* 802B8558 002B54B8  7C 08 03 A6 */	mtlr r0
/* 802B855C 002B54BC  38 21 02 70 */	addi r1, r1, 0x270
/* 802B8560 002B54C0  4E 80 00 20 */	blr

.global DrawThermalModel__13CCubeRendererFRC6CModelRC6CColorRC6CColorPCfPCfRC11CModelFlags
DrawThermalModel__13CCubeRendererFRC6CModelRC6CColorRC6CColorPCfPCfRC11CModelFlags:
/* 802B8564 002B54C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B8568 002B54C8  7C 08 02 A6 */	mflr r0
/* 802B856C 002B54CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B8570 002B54D0  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 802B8574 002B54D4  7C 79 1B 78 */	mr r25, r3
/* 802B8578 002B54D8  7C BA 2B 78 */	mr r26, r5
/* 802B857C 002B54DC  7C DB 33 78 */	mr r27, r6
/* 802B8580 002B54E0  7C FC 3B 78 */	mr r28, r7
/* 802B8584 002B54E4  7D 1D 43 78 */	mr r29, r8
/* 802B8588 002B54E8  7D 3E 4B 78 */	mr r30, r9
/* 802B858C 002B54EC  7C 83 23 78 */	mr r3, r4
/* 802B8590 002B54F0  83 E4 00 28 */	lwz r31, 0x28(r4)
/* 802B8594 002B54F4  48 09 CB 8D */	bl UpdateLastFrame__6CModelFv
/* 802B8598 002B54F8  7F 23 CB 78 */	mr r3, r25
/* 802B859C 002B54FC  7F E4 FB 78 */	mr r4, r31
/* 802B85A0 002B5500  7F 45 D3 78 */	mr r5, r26
/* 802B85A4 002B5504  7F 66 DB 78 */	mr r6, r27
/* 802B85A8 002B5508  7F 87 E3 78 */	mr r7, r28
/* 802B85AC 002B550C  7F A8 EB 78 */	mr r8, r29
/* 802B85B0 002B5510  7F C9 F3 78 */	mr r9, r30
/* 802B85B4 002B5514  48 00 00 19 */	bl sub_802b85cc
/* 802B85B8 002B5518  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802B85BC 002B551C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B85C0 002B5520  7C 08 03 A6 */	mtlr r0
/* 802B85C4 002B5524  38 21 00 30 */	addi r1, r1, 0x30
/* 802B85C8 002B5528  4E 80 00 20 */	blr

.global sub_802b85cc
sub_802b85cc:
/* 802B85CC 002B552C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802B85D0 002B5530  7C 08 02 A6 */	mflr r0
/* 802B85D4 002B5534  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802B85D8 002B5538  BF 21 00 A4 */	stmw r25, 0xa4(r1)
/* 802B85DC 002B553C  7C 79 1B 78 */	mr r25, r3
/* 802B85E0 002B5540  7C 9C 23 78 */	mr r28, r4
/* 802B85E4 002B5544  7C BA 2B 78 */	mr r26, r5
/* 802B85E8 002B5548  7C DB 33 78 */	mr r27, r6
/* 802B85EC 002B554C  7C FD 3B 78 */	mr r29, r7
/* 802B85F0 002B5550  7D 1E 43 78 */	mr r30, r8
/* 802B85F4 002B5554  7D 3F 4B 78 */	mr r31, r9
/* 802B85F8 002B5558  38 60 00 00 */	li r3, 0
/* 802B85FC 002B555C  38 80 00 00 */	li r4, 0
/* 802B8600 002B5560  38 A0 00 01 */	li r5, 1
/* 802B8604 002B5564  38 C0 00 1E */	li r6, 0x1e
/* 802B8608 002B5568  38 E0 00 01 */	li r7, 1
/* 802B860C 002B556C  39 00 00 40 */	li r8, 0x40
/* 802B8610 002B5570  48 05 00 BD */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B8614 002B5574  38 60 00 01 */	li r3, 1
/* 802B8618 002B5578  48 05 07 FD */	bl SetNumTexGens__3CGXFUc
/* 802B861C 002B557C  38 60 00 00 */	li r3, 0
/* 802B8620 002B5580  48 05 08 31 */	bl SetNumChans__3CGXFUc
/* 802B8624 002B5584  38 79 02 20 */	addi r3, r25, 0x220
/* 802B8628 002B5588  38 80 00 00 */	li r4, 0
/* 802B862C 002B558C  38 A0 00 00 */	li r5, 0
/* 802B8630 002B5590  48 05 71 0D */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 802B8634 002B5594  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802B8638 002B5598  38 61 00 0C */	addi r3, r1, 0xc
/* 802B863C 002B559C  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 802B8640 002B55A0  48 05 A6 5D */	bl GetQuickInverse__12CTransform4fCFv
/* 802B8644 002B55A4  3C 80 80 5A */	lis r4, mModelMatrix__9CGraphics@ha
/* 802B8648 002B55A8  38 61 00 3C */	addi r3, r1, 0x3c
/* 802B864C 002B55AC  38 A4 62 04 */	addi r5, r4, mModelMatrix__9CGraphics@l
/* 802B8650 002B55B0  38 81 00 0C */	addi r4, r1, 0xc
/* 802B8654 002B55B4  48 05 A8 DD */	bl MultiplyIgnoreTranslation__12CTransform4fCFRC12CTransform4f
/* 802B8658 002B55B8  38 61 00 6C */	addi r3, r1, 0x6c
/* 802B865C 002B55BC  38 81 00 3C */	addi r4, r1, 0x3c
/* 802B8660 002B55C0  48 05 A5 15 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B8664 002B55C4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 802B8668 002B55C8  38 61 00 6C */	addi r3, r1, 0x6c
/* 802B866C 002B55CC  38 C4 66 A0 */	addi r6, r4, sZeroVector__9CVector3f@l
/* 802B8670 002B55D0  38 80 00 1E */	li r4, 0x1e
/* 802B8674 002B55D4  C0 46 00 00 */	lfs f2, 0(r6)
/* 802B8678 002B55D8  38 A0 00 00 */	li r5, 0
/* 802B867C 002B55DC  C0 26 00 04 */	lfs f1, 4(r6)
/* 802B8680 002B55E0  C0 06 00 08 */	lfs f0, 8(r6)
/* 802B8684 002B55E4  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 802B8688 002B55E8  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 802B868C 002B55EC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 802B8690 002B55F0  48 0C 3E 01 */	bl GXLoadTexMtxImm
/* 802B8694 002B55F4  3C 60 80 3D */	lis r3, lbl_803D6704@ha
/* 802B8698 002B55F8  38 80 00 40 */	li r4, 0x40
/* 802B869C 002B55FC  38 63 67 04 */	addi r3, r3, lbl_803D6704@l
/* 802B86A0 002B5600  38 A0 00 00 */	li r5, 0
/* 802B86A4 002B5604  48 0C 3D ED */	bl GXLoadTexMtxImm
/* 802B86A8 002B5608  38 60 00 00 */	li r3, 0
/* 802B86AC 002B560C  48 04 F5 A5 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802B86B0 002B5610  38 60 00 00 */	li r3, 0
/* 802B86B4 002B5614  38 80 00 0F */	li r4, 0xf
/* 802B86B8 002B5618  38 A0 00 02 */	li r5, 2
/* 802B86BC 002B561C  38 C0 00 08 */	li r6, 8
/* 802B86C0 002B5620  38 E0 00 0E */	li r7, 0xe
/* 802B86C4 002B5624  48 05 05 29 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B86C8 002B5628  38 60 00 00 */	li r3, 0
/* 802B86CC 002B562C  38 80 00 07 */	li r4, 7
/* 802B86D0 002B5630  38 A0 00 04 */	li r5, 4
/* 802B86D4 002B5634  38 C0 00 01 */	li r6, 1
/* 802B86D8 002B5638  38 E0 00 06 */	li r7, 6
/* 802B86DC 002B563C  48 05 04 B9 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B86E0 002B5640  38 60 00 00 */	li r3, 0
/* 802B86E4 002B5644  38 80 00 00 */	li r4, 0
/* 802B86E8 002B5648  38 A0 00 00 */	li r5, 0
/* 802B86EC 002B564C  38 C0 00 FF */	li r6, 0xff
/* 802B86F0 002B5650  48 05 02 5D */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B86F4 002B5654  38 60 00 01 */	li r3, 1
/* 802B86F8 002B5658  48 05 05 99 */	bl SetNumTevStages__3CGXFUc
/* 802B86FC 002B565C  7F 64 DB 78 */	mr r4, r27
/* 802B8700 002B5660  38 60 00 00 */	li r3, 0
/* 802B8704 002B5664  48 05 05 41 */	bl SetTevKColor__3CGXF14_GXTevKColorIDRC8_GXColor
/* 802B8708 002B5668  38 60 00 00 */	li r3, 0
/* 802B870C 002B566C  38 80 00 0C */	li r4, 0xc
/* 802B8710 002B5670  48 05 02 D1 */	bl SetTevKColorSel__3CGXF13_GXTevStageID15_GXTevKColorSel
/* 802B8714 002B5674  38 60 00 00 */	li r3, 0
/* 802B8718 002B5678  38 80 00 1C */	li r4, 0x1c
/* 802B871C 002B567C  48 05 02 81 */	bl SetTevKAlphaSel__3CGXF13_GXTevStageID15_GXTevKAlphaSel
/* 802B8720 002B5680  80 1A 00 00 */	lwz r0, 0(r26)
/* 802B8724 002B5684  38 81 00 08 */	addi r4, r1, 8
/* 802B8728 002B5688  38 60 00 01 */	li r3, 1
/* 802B872C 002B568C  90 01 00 08 */	stw r0, 8(r1)
/* 802B8730 002B5690  48 0C 2E CD */	bl GXSetTevColor
/* 802B8734 002B5694  38 60 00 07 */	li r3, 7
/* 802B8738 002B5698  38 80 00 00 */	li r4, 0
/* 802B873C 002B569C  38 A0 00 01 */	li r5, 1
/* 802B8740 002B56A0  38 C0 00 07 */	li r6, 7
/* 802B8744 002B56A4  38 E0 00 00 */	li r7, 0
/* 802B8748 002B56A8  48 05 00 CD */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802B874C 002B56AC  38 60 00 01 */	li r3, 1
/* 802B8750 002B56B0  38 80 00 01 */	li r4, 1
/* 802B8754 002B56B4  38 A0 00 01 */	li r5, 1
/* 802B8758 002B56B8  38 C0 00 00 */	li r6, 0
/* 802B875C 002B56BC  48 05 01 75 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B8760 002B56C0  A0 1F 00 02 */	lhz r0, 2(r31)
/* 802B8764 002B56C4  38 80 00 03 */	li r4, 3
/* 802B8768 002B56C8  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 802B876C 002B56CC  54 03 07 BC */	rlwinm r3, r0, 0, 0x1e, 0x1e
/* 802B8770 002B56D0  38 A5 FF FF */	addi r5, r5, -1
/* 802B8774 002B56D4  38 03 FF FE */	addi r0, r3, -2
/* 802B8778 002B56D8  7C A3 00 34 */	cntlzw r3, r5
/* 802B877C 002B56DC  7C 00 00 34 */	cntlzw r0, r0
/* 802B8780 002B56E0  54 63 D9 7E */	srwi r3, r3, 5
/* 802B8784 002B56E4  54 05 D9 7E */	srwi r5, r0, 5
/* 802B8788 002B56E8  48 05 00 F5 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B878C 002B56EC  A0 1F 00 02 */	lhz r0, 2(r31)
/* 802B8790 002B56F0  7F 83 E3 78 */	mr r3, r28
/* 802B8794 002B56F4  7F A4 EB 78 */	mr r4, r29
/* 802B8798 002B56F8  7F C5 F3 78 */	mr r5, r30
/* 802B879C 002B56FC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 802B87A0 002B5700  38 C0 00 02 */	li r6, 2
/* 802B87A4 002B5704  41 82 00 08 */	beq lbl_802B87AC
/* 802B87A8 002B5708  38 C0 00 00 */	li r6, 0
lbl_802B87AC:
/* 802B87AC 002B570C  48 04 E2 45 */	bl DrawFlat__10CCubeModelCFPCfPCf17ESurfaceSelection
/* 802B87B0 002B5710  BB 21 00 A4 */	lmw r25, 0xa4(r1)
/* 802B87B4 002B5714  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802B87B8 002B5718  7C 08 03 A6 */	mtlr r0
/* 802B87BC 002B571C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802B87C0 002B5720  4E 80 00 20 */	blr

.global "__ct__Q213CCubeRenderer18CFogVolumeListItemFRC12CTransform4f6CColorRC6CAABoxPC21TLockedToken<6CModel>PC13CSkinnedModel"
"__ct__Q213CCubeRenderer18CFogVolumeListItemFRC12CTransform4f6CColorRC6CAABoxPC21TLockedToken<6CModel>PC13CSkinnedModel":
/* 802B87C4 002B5724  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B87C8 002B5728  7C 08 02 A6 */	mflr r0
/* 802B87CC 002B572C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B87D0 002B5730  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 802B87D4 002B5734  7C 7E 1B 78 */	mr r30, r3
/* 802B87D8 002B5738  7C BB 2B 78 */	mr r27, r5
/* 802B87DC 002B573C  7C DD 33 78 */	mr r29, r6
/* 802B87E0 002B5740  7C FC 3B 78 */	mr r28, r7
/* 802B87E4 002B5744  7D 1F 43 78 */	mr r31, r8
/* 802B87E8 002B5748  48 05 A3 8D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B87EC 002B574C  80 1B 00 00 */	lwz r0, 0(r27)
/* 802B87F0 002B5750  28 1C 00 00 */	cmplwi r28, 0
/* 802B87F4 002B5754  3B 60 00 00 */	li r27, 0
/* 802B87F8 002B5758  3B 40 00 00 */	li r26, 0
/* 802B87FC 002B575C  90 1E 00 30 */	stw r0, 0x30(r30)
/* 802B8800 002B5760  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802B8804 002B5764  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 802B8808 002B5768  C0 1D 00 04 */	lfs f0, 4(r29)
/* 802B880C 002B576C  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 802B8810 002B5770  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802B8814 002B5774  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 802B8818 002B5778  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 802B881C 002B577C  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 802B8820 002B5780  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 802B8824 002B5784  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 802B8828 002B5788  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 802B882C 002B578C  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 802B8830 002B5790  41 82 00 3C */	beq lbl_802B886C
/* 802B8834 002B5794  38 00 00 01 */	li r0, 1
/* 802B8838 002B5798  37 A1 00 18 */	addic. r29, r1, 0x18
/* 802B883C 002B579C  98 01 00 24 */	stb r0, 0x24(r1)
/* 802B8840 002B57A0  41 82 00 20 */	beq lbl_802B8860
/* 802B8844 002B57A4  7F A3 EB 78 */	mr r3, r29
/* 802B8848 002B57A8  7F 84 E3 78 */	mr r4, r28
/* 802B884C 002B57AC  48 08 86 5D */	bl __ct__6CTokenFRC6CToken
/* 802B8850 002B57B0  80 1C 00 08 */	lwz r0, 8(r28)
/* 802B8854 002B57B4  7F A3 EB 78 */	mr r3, r29
/* 802B8858 002B57B8  90 1D 00 08 */	stw r0, 8(r29)
/* 802B885C 002B57BC  48 08 85 29 */	bl Lock__6CTokenFv
lbl_802B8860:
/* 802B8860 002B57C0  3B 81 00 18 */	addi r28, r1, 0x18
/* 802B8864 002B57C4  3B 60 00 01 */	li r27, 1
/* 802B8868 002B57C8  48 00 00 14 */	b lbl_802B887C
lbl_802B886C:
/* 802B886C 002B57CC  38 00 00 00 */	li r0, 0
/* 802B8870 002B57D0  3B 81 00 08 */	addi r28, r1, 8
/* 802B8874 002B57D4  98 01 00 14 */	stb r0, 0x14(r1)
/* 802B8878 002B57D8  3B 40 00 01 */	li r26, 1
lbl_802B887C:
/* 802B887C 002B57DC  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 802B8880 002B57E0  98 1E 00 58 */	stb r0, 0x58(r30)
/* 802B8884 002B57E4  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 802B8888 002B57E8  28 00 00 00 */	cmplwi r0, 0
/* 802B888C 002B57EC  41 82 00 28 */	beq lbl_802B88B4
/* 802B8890 002B57F0  37 BE 00 4C */	addic. r29, r30, 0x4c
/* 802B8894 002B57F4  41 82 00 20 */	beq lbl_802B88B4
/* 802B8898 002B57F8  7F A3 EB 78 */	mr r3, r29
/* 802B889C 002B57FC  7F 84 E3 78 */	mr r4, r28
/* 802B88A0 002B5800  48 08 86 09 */	bl __ct__6CTokenFRC6CToken
/* 802B88A4 002B5804  80 1C 00 08 */	lwz r0, 8(r28)
/* 802B88A8 002B5808  7F A3 EB 78 */	mr r3, r29
/* 802B88AC 002B580C  90 1D 00 08 */	stw r0, 8(r29)
/* 802B88B0 002B5810  48 08 84 D5 */	bl Lock__6CTokenFv
lbl_802B88B4:
/* 802B88B4 002B5814  7F 40 07 75 */	extsb. r0, r26
/* 802B88B8 002B5818  41 82 00 30 */	beq lbl_802B88E8
/* 802B88BC 002B581C  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802B88C0 002B5820  28 00 00 00 */	cmplwi r0, 0
/* 802B88C4 002B5824  41 82 00 1C */	beq lbl_802B88E0
/* 802B88C8 002B5828  34 61 00 08 */	addic. r3, r1, 8
/* 802B88CC 002B582C  41 82 00 14 */	beq lbl_802B88E0
/* 802B88D0 002B5830  28 03 00 00 */	cmplwi r3, 0
/* 802B88D4 002B5834  41 82 00 0C */	beq lbl_802B88E0
/* 802B88D8 002B5838  38 80 00 00 */	li r4, 0
/* 802B88DC 002B583C  48 08 85 65 */	bl __dt__6CTokenFv
lbl_802B88E0:
/* 802B88E0 002B5840  38 00 00 00 */	li r0, 0
/* 802B88E4 002B5844  98 01 00 14 */	stb r0, 0x14(r1)
lbl_802B88E8:
/* 802B88E8 002B5848  7F 60 07 75 */	extsb. r0, r27
/* 802B88EC 002B584C  41 82 00 30 */	beq lbl_802B891C
/* 802B88F0 002B5850  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802B88F4 002B5854  28 00 00 00 */	cmplwi r0, 0
/* 802B88F8 002B5858  41 82 00 1C */	beq lbl_802B8914
/* 802B88FC 002B585C  34 61 00 18 */	addic. r3, r1, 0x18
/* 802B8900 002B5860  41 82 00 14 */	beq lbl_802B8914
/* 802B8904 002B5864  28 03 00 00 */	cmplwi r3, 0
/* 802B8908 002B5868  41 82 00 0C */	beq lbl_802B8914
/* 802B890C 002B586C  38 80 00 00 */	li r4, 0
/* 802B8910 002B5870  48 08 85 31 */	bl __dt__6CTokenFv
lbl_802B8914:
/* 802B8914 002B5874  38 00 00 00 */	li r0, 0
/* 802B8918 002B5878  98 01 00 24 */	stb r0, 0x24(r1)
lbl_802B891C:
/* 802B891C 002B587C  93 FE 00 5C */	stw r31, 0x5c(r30)
/* 802B8920 002B5880  7F C3 F3 78 */	mr r3, r30
/* 802B8924 002B5884  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 802B8928 002B5888  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B892C 002B588C  7C 08 03 A6 */	mtlr r0
/* 802B8930 002B5890  38 21 00 40 */	addi r1, r1, 0x40
/* 802B8934 002B5894  4E 80 00 20 */	blr

.global PostRenderFogs__13CCubeRendererFv
PostRenderFogs__13CCubeRendererFv:
/* 802B8938 002B5898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B893C 002B589C  7C 08 02 A6 */	mflr r0
/* 802B8940 002B58A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8944 002B58A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B8948 002B58A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B894C 002B58AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B8950 002B58B0  7C 7D 1B 78 */	mr r29, r3
/* 802B8954 002B58B4  83 E3 02 C8 */	lwz r31, 0x2c8(r3)
/* 802B8958 002B58B8  48 00 00 18 */	b lbl_802B8970
lbl_802B895C:
/* 802B895C 002B58BC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802B8960 002B58C0  7F A3 EB 78 */	mr r3, r29
/* 802B8964 002B58C4  38 9F 00 08 */	addi r4, r31, 8
/* 802B8968 002B58C8  48 00 32 51 */	bl _DrawSpaceWarp__13CCubeRendererFRC9CVector3ff
/* 802B896C 002B58CC  83 FF 00 04 */	lwz r31, 4(r31)
lbl_802B8970:
/* 802B8970 002B58D0  83 DD 02 CC */	lwz r30, 0x2cc(r29)
/* 802B8974 002B58D4  7C 1F F0 40 */	cmplw r31, r30
/* 802B8978 002B58D8  40 82 FF E4 */	bne lbl_802B895C
/* 802B897C 002B58DC  80 9D 02 C8 */	lwz r4, 0x2c8(r29)
/* 802B8980 002B58E0  48 00 00 10 */	b lbl_802B8990
lbl_802B8984:
/* 802B8984 002B58E4  38 7D 02 C4 */	addi r3, r29, 0x2c4
/* 802B8988 002B58E8  48 00 7C 2D */	bl sub_802c05b4
/* 802B898C 002B58EC  7C 64 1B 78 */	mr r4, r3
lbl_802B8990:
/* 802B8990 002B58F0  7C 04 F0 40 */	cmplw r4, r30
/* 802B8994 002B58F4  40 82 FF F0 */	bne lbl_802B8984
/* 802B8998 002B58F8  88 0D A6 2C */	lbz r0, "@8522"@sda21(r13)
/* 802B899C 002B58FC  38 7D 02 AC */	addi r3, r29, 0x2ac
/* 802B89A0 002B5900  38 81 00 08 */	addi r4, r1, 8
/* 802B89A4 002B5904  98 01 00 08 */	stb r0, 8(r1)
/* 802B89A8 002B5908  48 00 00 8D */	bl FogSorter
/* 802B89AC 002B590C  83 DD 02 B0 */	lwz r30, 0x2b0(r29)
/* 802B89B0 002B5910  48 00 00 40 */	b lbl_802B89F0
lbl_802B89B4:
/* 802B89B4 002B5914  3B FE 00 08 */	addi r31, r30, 8
/* 802B89B8 002B5918  7F E3 FB 78 */	mr r3, r31
/* 802B89BC 002B591C  48 05 3C 25 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802B89C0 002B5920  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 802B89C4 002B5924  7F A3 EB 78 */	mr r3, r29
/* 802B89C8 002B5928  38 9F 00 30 */	addi r4, r31, 0x30
/* 802B89CC 002B592C  38 BF 00 34 */	addi r5, r31, 0x34
/* 802B89D0 002B5930  28 00 00 00 */	cmplwi r0, 0
/* 802B89D4 002B5934  41 82 00 0C */	beq lbl_802B89E0
/* 802B89D8 002B5938  80 DF 00 54 */	lwz r6, 0x54(r31)
/* 802B89DC 002B593C  48 00 00 08 */	b lbl_802B89E4
lbl_802B89E0:
/* 802B89E0 002B5940  38 C0 00 00 */	li r6, 0
lbl_802B89E4:
/* 802B89E4 002B5944  80 FF 00 5C */	lwz r7, 0x5c(r31)
/* 802B89E8 002B5948  48 00 05 C9 */	bl ReallyRenderFogVolume__13CCubeRendererFRC6CColorRC6CAABoxPC6CModelPC13CSkinnedModel
/* 802B89EC 002B594C  83 DE 00 04 */	lwz r30, 4(r30)
lbl_802B89F0:
/* 802B89F0 002B5950  83 FD 02 B4 */	lwz r31, 0x2b4(r29)
/* 802B89F4 002B5954  7C 1E F8 40 */	cmplw r30, r31
/* 802B89F8 002B5958  40 82 FF BC */	bne lbl_802B89B4
/* 802B89FC 002B595C  80 9D 02 B0 */	lwz r4, 0x2b0(r29)
/* 802B8A00 002B5960  48 00 00 10 */	b lbl_802B8A10
lbl_802B8A04:
/* 802B8A04 002B5964  38 7D 02 AC */	addi r3, r29, 0x2ac
/* 802B8A08 002B5968  48 00 7A 35 */	bl sub_802c043c
/* 802B8A0C 002B596C  7C 64 1B 78 */	mr r4, r3
lbl_802B8A10:
/* 802B8A10 002B5970  7C 04 F8 40 */	cmplw r4, r31
/* 802B8A14 002B5974  40 82 FF F0 */	bne lbl_802B8A04
/* 802B8A18 002B5978  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8A1C 002B597C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B8A20 002B5980  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B8A24 002B5984  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B8A28 002B5988  7C 08 03 A6 */	mtlr r0
/* 802B8A2C 002B598C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8A30 002B5990  4E 80 00 20 */	blr

.global FogSorter
FogSorter:
/* 802B8A34 002B5994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8A38 002B5998  7C 08 02 A6 */	mflr r0
/* 802B8A3C 002B599C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8A40 002B59A0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802B8A44 002B59A4  7C 7B 1B 78 */	mr r27, r3
/* 802B8A48 002B59A8  7C 9C 23 78 */	mr r28, r4
/* 802B8A4C 002B59AC  83 E3 00 04 */	lwz r31, 4(r3)
/* 802B8A50 002B59B0  48 00 00 54 */	b lbl_802B8AA4
lbl_802B8A54:
/* 802B8A54 002B59B4  83 BF 00 04 */	lwz r29, 4(r31)
/* 802B8A58 002B59B8  7F FE FB 78 */	mr r30, r31
/* 802B8A5C 002B59BC  48 00 00 24 */	b lbl_802B8A80
lbl_802B8A60:
/* 802B8A60 002B59C0  7F 83 E3 78 */	mr r3, r28
/* 802B8A64 002B59C4  38 9E 00 08 */	addi r4, r30, 8
/* 802B8A68 002B59C8  38 BD 00 08 */	addi r5, r29, 8
/* 802B8A6C 002B59CC  48 00 00 DD */	bl sub_802b8b48
/* 802B8A70 002B59D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B8A74 002B59D4  41 82 00 08 */	beq lbl_802B8A7C
/* 802B8A78 002B59D8  7F BE EB 78 */	mr r30, r29
lbl_802B8A7C:
/* 802B8A7C 002B59DC  83 BD 00 04 */	lwz r29, 4(r29)
lbl_802B8A80:
/* 802B8A80 002B59E0  80 1B 00 08 */	lwz r0, 8(r27)
/* 802B8A84 002B59E4  7C 1D 00 40 */	cmplw r29, r0
/* 802B8A88 002B59E8  40 82 FF D8 */	bne lbl_802B8A60
/* 802B8A8C 002B59EC  83 BF 00 04 */	lwz r29, 4(r31)
/* 802B8A90 002B59F0  7F 63 DB 78 */	mr r3, r27
/* 802B8A94 002B59F4  7F E4 FB 78 */	mr r4, r31
/* 802B8A98 002B59F8  7F C5 F3 78 */	mr r5, r30
/* 802B8A9C 002B59FC  48 00 00 29 */	bl sub_802b8ac4
/* 802B8AA0 002B5A00  7F BF EB 78 */	mr r31, r29
lbl_802B8AA4:
/* 802B8AA4 002B5A04  80 1B 00 08 */	lwz r0, 8(r27)
/* 802B8AA8 002B5A08  7C 1F 00 40 */	cmplw r31, r0
/* 802B8AAC 002B5A0C  40 82 FF A8 */	bne lbl_802B8A54
/* 802B8AB0 002B5A10  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802B8AB4 002B5A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8AB8 002B5A18  7C 08 03 A6 */	mtlr r0
/* 802B8ABC 002B5A1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8AC0 002B5A20  4E 80 00 20 */	blr

.global sub_802b8ac4
sub_802b8ac4:
/* 802B8AC4 002B5A24  7C 04 28 40 */	cmplw r4, r5
/* 802B8AC8 002B5A28  4D 82 00 20 */	beqlr
/* 802B8ACC 002B5A2C  80 03 00 04 */	lwz r0, 4(r3)
/* 802B8AD0 002B5A30  7C 04 00 40 */	cmplw r4, r0
/* 802B8AD4 002B5A34  40 82 00 0C */	bne lbl_802B8AE0
/* 802B8AD8 002B5A38  90 A3 00 04 */	stw r5, 4(r3)
/* 802B8ADC 002B5A3C  48 00 00 10 */	b lbl_802B8AEC
lbl_802B8AE0:
/* 802B8AE0 002B5A40  7C 05 00 40 */	cmplw r5, r0
/* 802B8AE4 002B5A44  40 82 00 08 */	bne lbl_802B8AEC
/* 802B8AE8 002B5A48  90 83 00 04 */	stw r4, 4(r3)
lbl_802B8AEC:
/* 802B8AEC 002B5A4C  80 E5 00 04 */	lwz r7, 4(r5)
/* 802B8AF0 002B5A50  80 64 00 04 */	lwz r3, 4(r4)
/* 802B8AF4 002B5A54  7C 07 20 40 */	cmplw r7, r4
/* 802B8AF8 002B5A58  80 C4 00 00 */	lwz r6, 0(r4)
/* 802B8AFC 002B5A5C  81 05 00 00 */	lwz r8, 0(r5)
/* 802B8B00 002B5A60  41 82 00 18 */	beq lbl_802B8B18
/* 802B8B04 002B5A64  90 87 00 00 */	stw r4, 0(r7)
/* 802B8B08 002B5A68  90 E4 00 04 */	stw r7, 4(r4)
/* 802B8B0C 002B5A6C  90 A6 00 04 */	stw r5, 4(r6)
/* 802B8B10 002B5A70  90 C5 00 00 */	stw r6, 0(r5)
/* 802B8B14 002B5A74  48 00 00 0C */	b lbl_802B8B20
lbl_802B8B18:
/* 802B8B18 002B5A78  90 A4 00 04 */	stw r5, 4(r4)
/* 802B8B1C 002B5A7C  90 85 00 00 */	stw r4, 0(r5)
lbl_802B8B20:
/* 802B8B20 002B5A80  7C 08 20 40 */	cmplw r8, r4
/* 802B8B24 002B5A84  41 82 00 18 */	beq lbl_802B8B3C
/* 802B8B28 002B5A88  90 88 00 04 */	stw r4, 4(r8)
/* 802B8B2C 002B5A8C  91 04 00 00 */	stw r8, 0(r4)
/* 802B8B30 002B5A90  90 A3 00 00 */	stw r5, 0(r3)
/* 802B8B34 002B5A94  90 65 00 04 */	stw r3, 4(r5)
/* 802B8B38 002B5A98  4E 80 00 20 */	blr
lbl_802B8B3C:
/* 802B8B3C 002B5A9C  90 85 00 04 */	stw r4, 4(r5)
/* 802B8B40 002B5AA0  90 A4 00 00 */	stw r5, 0(r4)
/* 802B8B44 002B5AA4  4E 80 00 20 */	blr

.global sub_802b8b48
sub_802b8b48:
/* 802B8B48 002B5AA8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 802B8B4C 002B5AAC  7C 08 02 A6 */	mflr r0
/* 802B8B50 002B5AB0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802B8B54 002B5AB4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 802B8B58 002B5AB8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 802B8B5C 002B5ABC  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 802B8B60 002B5AC0  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 802B8B64 002B5AC4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 802B8B68 002B5AC8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 802B8B6C 002B5ACC  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 802B8B70 002B5AD0  7C BE 2B 78 */	mr r30, r5
/* 802B8B74 002B5AD4  3B E3 61 D4 */	addi r31, r3, mViewMatrix__9CGraphics@l
/* 802B8B78 002B5AD8  7C 85 23 78 */	mr r5, r4
/* 802B8B7C 002B5ADC  C3 DF 00 1C */	lfs f30, 0x1c(r31)
/* 802B8B80 002B5AE0  38 61 00 5C */	addi r3, r1, 0x5c
/* 802B8B84 002B5AE4  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 802B8B88 002B5AE8  38 84 00 34 */	addi r4, r4, 0x34
/* 802B8B8C 002B5AEC  48 07 ED 71 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 802B8B90 002B5AF0  C0 A1 00 5C */	lfs f5, 0x5c(r1)
/* 802B8B94 002B5AF4  7F C5 F3 78 */	mr r5, r30
/* 802B8B98 002B5AF8  C0 81 00 60 */	lfs f4, 0x60(r1)
/* 802B8B9C 002B5AFC  38 61 00 44 */	addi r3, r1, 0x44
/* 802B8BA0 002B5B00  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 802B8BA4 002B5B04  38 9E 00 34 */	addi r4, r30, 0x34
/* 802B8BA8 002B5B08  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 802B8BAC 002B5B0C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 802B8BB0 002B5B10  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 802B8BB4 002B5B14  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 802B8BB8 002B5B18  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 802B8BBC 002B5B1C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 802B8BC0 002B5B20  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 802B8BC4 002B5B24  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 802B8BC8 002B5B28  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 802B8BCC 002B5B2C  48 07 ED 31 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 802B8BD0 002B5B30  C0 A1 00 44 */	lfs f5, 0x44(r1)
/* 802B8BD4 002B5B34  38 61 00 8C */	addi r3, r1, 0x8c
/* 802B8BD8 002B5B38  C0 81 00 48 */	lfs f4, 0x48(r1)
/* 802B8BDC 002B5B3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 802B8BE0 002B5B40  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 802B8BE4 002B5B44  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 802B8BE8 002B5B48  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 802B8BEC 002B5B4C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 802B8BF0 002B5B50  C0 C1 00 94 */	lfs f6, 0x94(r1)
/* 802B8BF4 002B5B54  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 802B8BF8 002B5B58  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 802B8BFC 002B5B5C  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 802B8C00 002B5B60  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 802B8C04 002B5B64  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 802B8C08 002B5B68  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 802B8C0C 002B5B6C  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 802B8C10 002B5B70  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 802B8C14 002B5B74  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 802B8C18 002B5B78  48 07 E9 1D */	bl PointInside__6CAABoxCFRC9CVector3f
/* 802B8C1C 002B5B7C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 802B8C20 002B5B80  7C 7E 1B 78 */	mr r30, r3
/* 802B8C24 002B5B84  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 802B8C28 002B5B88  38 61 00 74 */	addi r3, r1, 0x74
/* 802B8C2C 002B5B8C  38 81 00 20 */	addi r4, r1, 0x20
/* 802B8C30 002B5B90  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 802B8C34 002B5B94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802B8C38 002B5B98  48 07 E8 FD */	bl PointInside__6CAABoxCFRC9CVector3f
/* 802B8C3C 002B5B9C  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802B8C40 002B5BA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802B8C44 002B5BA4  7C 04 00 40 */	cmplw r4, r0
/* 802B8C48 002B5BA8  41 82 00 0C */	beq lbl_802B8C54
/* 802B8C4C 002B5BAC  7F C3 F3 78 */	mr r3, r30
/* 802B8C50 002B5BB0  48 00 00 90 */	b lbl_802B8CE0
lbl_802B8C54:
/* 802B8C54 002B5BB4  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 802B8C58 002B5BB8  38 61 00 14 */	addi r3, r1, 0x14
/* 802B8C5C 002B5BBC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802B8C60 002B5BC0  38 81 00 8C */	addi r4, r1, 0x8c
/* 802B8C64 002B5BC4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802B8C68 002B5BC8  38 A1 00 38 */	addi r5, r1, 0x38
/* 802B8C6C 002B5BCC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 802B8C70 002B5BD0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802B8C74 002B5BD4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 802B8C78 002B5BD8  48 07 E5 A5 */	bl FurthestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802B8C7C 002B5BDC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 802B8C80 002B5BE0  38 61 00 08 */	addi r3, r1, 8
/* 802B8C84 002B5BE4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802B8C88 002B5BE8  38 81 00 74 */	addi r4, r1, 0x74
/* 802B8C8C 002B5BEC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 802B8C90 002B5BF0  38 A1 00 38 */	addi r5, r1, 0x38
/* 802B8C94 002B5BF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802B8C98 002B5BF8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 802B8C9C 002B5BFC  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 802B8CA0 002B5C00  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 802B8CA4 002B5C04  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 802B8CA8 002B5C08  EF C4 00 FA */	fmadds f30, f4, f3, f0
/* 802B8CAC 002B5C0C  48 07 E5 71 */	bl FurthestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802B8CB0 002B5C10  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 802B8CB4 002B5C14  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802B8CB8 002B5C18  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 802B8CBC 002B5C1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802B8CC0 002B5C20  C0 21 00 08 */	lfs f1, 8(r1)
/* 802B8CC4 002B5C24  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 802B8CC8 002B5C28  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 802B8CCC 002B5C2C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 802B8CD0 002B5C30  EC 04 00 FA */	fmadds f0, f4, f3, f0
/* 802B8CD4 002B5C34  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802B8CD8 002B5C38  7C 00 00 26 */	mfcr r0
/* 802B8CDC 002B5C3C  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_802B8CE0:
/* 802B8CE0 002B5C40  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 802B8CE4 002B5C44  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 802B8CE8 002B5C48  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 802B8CEC 002B5C4C  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 802B8CF0 002B5C50  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 802B8CF4 002B5C54  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 802B8CF8 002B5C58  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 802B8CFC 002B5C5C  7C 08 03 A6 */	mtlr r0
/* 802B8D00 002B5C60  38 21 00 D0 */	addi r1, r1, 0xd0
/* 802B8D04 002B5C64  4E 80 00 20 */	blr

.global DisablePVS__13CCubeRendererFv
DisablePVS__13CCubeRendererFv:
/* 802B8D08 002B5C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8D0C 002B5C6C  7C 08 02 A6 */	mflr r0
/* 802B8D10 002B5C70  38 63 00 C8 */	addi r3, r3, 0xc8
/* 802B8D14 002B5C74  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8D18 002B5C78  38 00 00 00 */	li r0, 0
/* 802B8D1C 002B5C7C  38 81 00 08 */	addi r4, r1, 8
/* 802B8D20 002B5C80  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802B8D24 002B5C84  48 00 00 4D */	bl sub_802b8d70
/* 802B8D28 002B5C88  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802B8D2C 002B5C8C  28 00 00 00 */	cmplwi r0, 0
/* 802B8D30 002B5C90  41 82 00 28 */	beq lbl_802B8D58
/* 802B8D34 002B5C94  34 61 00 08 */	addic. r3, r1, 8
/* 802B8D38 002B5C98  41 82 00 20 */	beq lbl_802B8D58
/* 802B8D3C 002B5C9C  34 03 00 0C */	addic. r0, r3, 0xc
/* 802B8D40 002B5CA0  41 82 00 18 */	beq lbl_802B8D58
/* 802B8D44 002B5CA4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802B8D48 002B5CA8  28 00 00 00 */	cmplwi r0, 0
/* 802B8D4C 002B5CAC  41 82 00 0C */	beq lbl_802B8D58
/* 802B8D50 002B5CB0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802B8D54 002B5CB4  48 05 CB DD */	bl Free__7CMemoryFPCv
lbl_802B8D58:
/* 802B8D58 002B5CB8  38 00 00 00 */	li r0, 0
/* 802B8D5C 002B5CBC  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802B8D60 002B5CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8D64 002B5CC4  7C 08 03 A6 */	mtlr r0
/* 802B8D68 002B5CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8D6C 002B5CCC  4E 80 00 20 */	blr

.global sub_802b8d70
sub_802b8d70:
/* 802B8D70 002B5CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8D74 002B5CD4  7C 08 02 A6 */	mflr r0
/* 802B8D78 002B5CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8D7C 002B5CDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8D80 002B5CE0  7C 9F 23 78 */	mr r31, r4
/* 802B8D84 002B5CE4  93 C1 00 08 */	stw r30, 8(r1)
/* 802B8D88 002B5CE8  7C 7E 1B 78 */	mr r30, r3
/* 802B8D8C 002B5CEC  7C 1E F8 40 */	cmplw r30, r31
/* 802B8D90 002B5CF0  40 82 00 08 */	bne lbl_802B8D98
/* 802B8D94 002B5CF4  48 00 00 F4 */	b lbl_802B8E88
lbl_802B8D98:
/* 802B8D98 002B5CF8  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 802B8D9C 002B5CFC  28 00 00 00 */	cmplwi r0, 0
/* 802B8DA0 002B5D00  41 82 00 AC */	beq lbl_802B8E4C
/* 802B8DA4 002B5D04  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 802B8DA8 002B5D08  28 00 00 00 */	cmplwi r0, 0
/* 802B8DAC 002B5D0C  40 82 00 48 */	bne lbl_802B8DF4
/* 802B8DB0 002B5D10  28 1E 00 00 */	cmplwi r30, 0
/* 802B8DB4 002B5D14  41 82 00 34 */	beq lbl_802B8DE8
/* 802B8DB8 002B5D18  80 7F 00 00 */	lwz r3, 0(r31)
/* 802B8DBC 002B5D1C  38 00 00 00 */	li r0, 0
/* 802B8DC0 002B5D20  90 7E 00 00 */	stw r3, 0(r30)
/* 802B8DC4 002B5D24  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B8DC8 002B5D28  90 7E 00 04 */	stw r3, 4(r30)
/* 802B8DCC 002B5D2C  80 7F 00 08 */	lwz r3, 8(r31)
/* 802B8DD0 002B5D30  90 7E 00 08 */	stw r3, 8(r30)
/* 802B8DD4 002B5D34  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 802B8DD8 002B5D38  98 7E 00 0C */	stb r3, 0xc(r30)
/* 802B8DDC 002B5D3C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802B8DE0 002B5D40  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802B8DE4 002B5D44  98 1F 00 0C */	stb r0, 0xc(r31)
lbl_802B8DE8:
/* 802B8DE8 002B5D48  38 00 00 01 */	li r0, 1
/* 802B8DEC 002B5D4C  98 1E 00 14 */	stb r0, 0x14(r30)
/* 802B8DF0 002B5D50  48 00 00 94 */	b lbl_802B8E84
lbl_802B8DF4:
/* 802B8DF4 002B5D54  80 9F 00 00 */	lwz r4, 0(r31)
/* 802B8DF8 002B5D58  38 7F 00 0C */	addi r3, r31, 0xc
/* 802B8DFC 002B5D5C  38 1E 00 0C */	addi r0, r30, 0xc
/* 802B8E00 002B5D60  90 9E 00 00 */	stw r4, 0(r30)
/* 802B8E04 002B5D64  7C 03 00 40 */	cmplw r3, r0
/* 802B8E08 002B5D68  80 1F 00 04 */	lwz r0, 4(r31)
/* 802B8E0C 002B5D6C  90 1E 00 04 */	stw r0, 4(r30)
/* 802B8E10 002B5D70  80 1F 00 08 */	lwz r0, 8(r31)
/* 802B8E14 002B5D74  90 1E 00 08 */	stw r0, 8(r30)
/* 802B8E18 002B5D78  41 82 00 6C */	beq lbl_802B8E84
/* 802B8E1C 002B5D7C  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 802B8E20 002B5D80  28 00 00 00 */	cmplwi r0, 0
/* 802B8E24 002B5D84  41 82 00 0C */	beq lbl_802B8E30
/* 802B8E28 002B5D88  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802B8E2C 002B5D8C  48 05 CB 05 */	bl Free__7CMemoryFPCv
lbl_802B8E30:
/* 802B8E30 002B5D90  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 802B8E34 002B5D94  38 00 00 00 */	li r0, 0
/* 802B8E38 002B5D98  98 7E 00 0C */	stb r3, 0xc(r30)
/* 802B8E3C 002B5D9C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 802B8E40 002B5DA0  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802B8E44 002B5DA4  98 1F 00 0C */	stb r0, 0xc(r31)
/* 802B8E48 002B5DA8  48 00 00 3C */	b lbl_802B8E84
lbl_802B8E4C:
/* 802B8E4C 002B5DAC  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 802B8E50 002B5DB0  28 00 00 00 */	cmplwi r0, 0
/* 802B8E54 002B5DB4  41 82 00 28 */	beq lbl_802B8E7C
/* 802B8E58 002B5DB8  28 1E 00 00 */	cmplwi r30, 0
/* 802B8E5C 002B5DBC  41 82 00 20 */	beq lbl_802B8E7C
/* 802B8E60 002B5DC0  34 1E 00 0C */	addic. r0, r30, 0xc
/* 802B8E64 002B5DC4  41 82 00 18 */	beq lbl_802B8E7C
/* 802B8E68 002B5DC8  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 802B8E6C 002B5DCC  28 00 00 00 */	cmplwi r0, 0
/* 802B8E70 002B5DD0  41 82 00 0C */	beq lbl_802B8E7C
/* 802B8E74 002B5DD4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802B8E78 002B5DD8  48 05 CA B9 */	bl Free__7CMemoryFPCv
lbl_802B8E7C:
/* 802B8E7C 002B5DDC  38 00 00 00 */	li r0, 0
/* 802B8E80 002B5DE0  98 1E 00 14 */	stb r0, 0x14(r30)
lbl_802B8E84:
/* 802B8E84 002B5DE4  7F C3 F3 78 */	mr r3, r30
lbl_802B8E88:
/* 802B8E88 002B5DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8E8C 002B5DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8E90 002B5DF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B8E94 002B5DF4  7C 08 03 A6 */	mtlr r0
/* 802B8E98 002B5DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8E9C 002B5DFC  4E 80 00 20 */	blr

.global EnablePVS__13CCubeRendererFPC10CPVSVisSeti
EnablePVS__13CCubeRendererFPC10CPVSVisSeti:
/* 802B8EA0 002B5E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8EA4 002B5E04  7C 08 02 A6 */	mflr r0
/* 802B8EA8 002B5E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8EAC 002B5E0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B8EB0 002B5E10  7C BF 2B 78 */	mr r31, r5
/* 802B8EB4 002B5E14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B8EB8 002B5E18  7C 9E 23 78 */	mr r30, r4
/* 802B8EBC 002B5E1C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B8EC0 002B5E20  7C 7D 1B 78 */	mr r29, r3
/* 802B8EC4 002B5E24  88 03 00 DC */	lbz r0, 0xdc(r3)
/* 802B8EC8 002B5E28  28 00 00 00 */	cmplwi r0, 0
/* 802B8ECC 002B5E2C  40 82 00 48 */	bne lbl_802B8F14
/* 802B8ED0 002B5E30  34 9D 00 C8 */	addic. r4, r29, 0xc8
/* 802B8ED4 002B5E34  41 82 00 34 */	beq lbl_802B8F08
/* 802B8ED8 002B5E38  80 7E 00 00 */	lwz r3, 0(r30)
/* 802B8EDC 002B5E3C  38 00 00 00 */	li r0, 0
/* 802B8EE0 002B5E40  90 64 00 00 */	stw r3, 0(r4)
/* 802B8EE4 002B5E44  80 7E 00 04 */	lwz r3, 4(r30)
/* 802B8EE8 002B5E48  90 64 00 04 */	stw r3, 4(r4)
/* 802B8EEC 002B5E4C  80 7E 00 08 */	lwz r3, 8(r30)
/* 802B8EF0 002B5E50  90 64 00 08 */	stw r3, 8(r4)
/* 802B8EF4 002B5E54  88 7E 00 0C */	lbz r3, 0xc(r30)
/* 802B8EF8 002B5E58  98 64 00 0C */	stb r3, 0xc(r4)
/* 802B8EFC 002B5E5C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802B8F00 002B5E60  90 64 00 10 */	stw r3, 0x10(r4)
/* 802B8F04 002B5E64  98 1E 00 0C */	stb r0, 0xc(r30)
lbl_802B8F08:
/* 802B8F08 002B5E68  38 00 00 01 */	li r0, 1
/* 802B8F0C 002B5E6C  98 1D 00 DC */	stb r0, 0xdc(r29)
/* 802B8F10 002B5E70  48 00 00 58 */	b lbl_802B8F68
lbl_802B8F14:
/* 802B8F14 002B5E74  80 9E 00 00 */	lwz r4, 0(r30)
/* 802B8F18 002B5E78  38 7E 00 0C */	addi r3, r30, 0xc
/* 802B8F1C 002B5E7C  38 1D 00 D4 */	addi r0, r29, 0xd4
/* 802B8F20 002B5E80  90 9D 00 C8 */	stw r4, 0xc8(r29)
/* 802B8F24 002B5E84  7C 03 00 40 */	cmplw r3, r0
/* 802B8F28 002B5E88  80 1E 00 04 */	lwz r0, 4(r30)
/* 802B8F2C 002B5E8C  90 1D 00 CC */	stw r0, 0xcc(r29)
/* 802B8F30 002B5E90  80 1E 00 08 */	lwz r0, 8(r30)
/* 802B8F34 002B5E94  90 1D 00 D0 */	stw r0, 0xd0(r29)
/* 802B8F38 002B5E98  41 82 00 30 */	beq lbl_802B8F68
/* 802B8F3C 002B5E9C  88 1D 00 D4 */	lbz r0, 0xd4(r29)
/* 802B8F40 002B5EA0  28 00 00 00 */	cmplwi r0, 0
/* 802B8F44 002B5EA4  41 82 00 0C */	beq lbl_802B8F50
/* 802B8F48 002B5EA8  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 802B8F4C 002B5EAC  48 05 C9 E5 */	bl Free__7CMemoryFPCv
lbl_802B8F50:
/* 802B8F50 002B5EB0  88 7E 00 0C */	lbz r3, 0xc(r30)
/* 802B8F54 002B5EB4  38 00 00 00 */	li r0, 0
/* 802B8F58 002B5EB8  98 7D 00 D4 */	stb r3, 0xd4(r29)
/* 802B8F5C 002B5EBC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802B8F60 002B5EC0  90 7D 00 D8 */	stw r3, 0xd8(r29)
/* 802B8F64 002B5EC4  98 1E 00 0C */	stb r0, 0xc(r30)
lbl_802B8F68:
/* 802B8F68 002B5EC8  93 FD 00 E0 */	stw r31, 0xe0(r29)
/* 802B8F6C 002B5ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B8F70 002B5ED0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B8F74 002B5ED4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B8F78 002B5ED8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B8F7C 002B5EDC  7C 08 03 A6 */	mtlr r0
/* 802B8F80 002B5EE0  38 21 00 20 */	addi r1, r1, 0x20
/* 802B8F84 002B5EE4  4E 80 00 20 */	blr

.global SetThermal__13CCubeRendererFbfRC6CColor
SetThermal__13CCubeRendererFbfRC6CColor:
/* 802B8F88 002B5EE8  88 C3 03 18 */	lbz r6, 0x318(r3)
/* 802B8F8C 002B5EEC  50 86 17 7A */	rlwimi r6, r4, 2, 0x1d, 0x1d
/* 802B8F90 002B5EF0  38 00 00 00 */	li r0, 0
/* 802B8F94 002B5EF4  98 C3 03 18 */	stb r6, 0x318(r3)
/* 802B8F98 002B5EF8  D0 23 02 F0 */	stfs f1, 0x2f0(r3)
/* 802B8F9C 002B5EFC  80 85 00 00 */	lwz r4, 0(r5)
/* 802B8FA0 002B5F00  90 83 02 F4 */	stw r4, 0x2f4(r3)
/* 802B8FA4 002B5F04  98 0D A5 EC */	stb r0, sMoveRedToAlphaBuffer__6CDecal@sda21(r13)
/* 802B8FA8 002B5F08  98 0D A8 B8 */	stb r0, sMoveRedToAlphaBuffer__11CElementGen@sda21(r13)
/* 802B8FAC 002B5F0C  4E 80 00 20 */	blr

.global ReallyRenderFogVolume__13CCubeRendererFRC6CColorRC6CAABoxPC6CModelPC13CSkinnedModel
ReallyRenderFogVolume__13CCubeRendererFRC6CColorRC6CAABoxPC6CModelPC13CSkinnedModel:
/* 802B8FB0 002B5F10  94 21 FB E0 */	stwu r1, -0x420(r1)
/* 802B8FB4 002B5F14  7C 08 02 A6 */	mflr r0
/* 802B8FB8 002B5F18  90 01 04 24 */	stw r0, 0x424(r1)
/* 802B8FBC 002B5F1C  DB E1 04 10 */	stfd f31, 0x410(r1)
/* 802B8FC0 002B5F20  F3 E1 04 18 */	psq_st f31, 1048(r1), 0, qr0
/* 802B8FC4 002B5F24  DB C1 04 00 */	stfd f30, 0x400(r1)
/* 802B8FC8 002B5F28  F3 C1 04 08 */	psq_st f30, 1032(r1), 0, qr0
/* 802B8FCC 002B5F2C  DB A1 03 F0 */	stfd f29, 0x3f0(r1)
/* 802B8FD0 002B5F30  F3 A1 03 F8 */	psq_st f29, 1016(r1), 0, qr0
/* 802B8FD4 002B5F34  DB 81 03 E0 */	stfd f28, 0x3e0(r1)
/* 802B8FD8 002B5F38  F3 81 03 E8 */	psq_st f28, 1000(r1), 0, qr0
/* 802B8FDC 002B5F3C  DB 61 03 D0 */	stfd f27, 0x3d0(r1)
/* 802B8FE0 002B5F40  F3 61 03 D8 */	psq_st f27, 984(r1), 0, qr0
/* 802B8FE4 002B5F44  DB 41 03 C0 */	stfd f26, 0x3c0(r1)
/* 802B8FE8 002B5F48  F3 41 03 C8 */	psq_st f26, 968(r1), 0, qr0
/* 802B8FEC 002B5F4C  DB 21 03 B0 */	stfd f25, 0x3b0(r1)
/* 802B8FF0 002B5F50  F3 21 03 B8 */	psq_st f25, 952(r1), 0, qr0
/* 802B8FF4 002B5F54  DB 01 03 A0 */	stfd f24, 0x3a0(r1)
/* 802B8FF8 002B5F58  F3 01 03 A8 */	psq_st f24, 936(r1), 0, qr0
/* 802B8FFC 002B5F5C  BD C1 03 58 */	stmw r14, 0x358(r1)
/* 802B9000 002B5F60  80 0D A8 28 */	lwz r0, mpSpareBuffer__9CGraphics@sda21(r13)
/* 802B9004 002B5F64  3D 00 80 3F */	lis r8, mViewport__9CGraphics@ha
/* 802B9008 002B5F68  39 E8 D9 10 */	addi r15, r8, mViewport__9CGraphics@l
/* 802B900C 002B5F6C  C3 62 C2 74 */	lfs f27, lbl_805ADF94@sda21(r2)
/* 802B9010 002B5F70  7C 08 03 78 */	mr r8, r0
/* 802B9014 002B5F74  90 01 03 2C */	stw r0, 0x32c(r1)
/* 802B9018 002B5F78  3C 08 00 02 */	addis r0, r8, 2
/* 802B901C 002B5F7C  81 CF 00 08 */	lwz r14, 8(r15)
/* 802B9020 002B5F80  90 01 03 28 */	stw r0, 0x328(r1)
/* 802B9024 002B5F84  7C BA 2B 78 */	mr r26, r5
/* 802B9028 002B5F88  80 0F 00 00 */	lwz r0, 0(r15)
/* 802B902C 002B5F8C  39 60 01 40 */	li r11, 0x140
/* 802B9030 002B5F90  80 A1 03 28 */	lwz r5, 0x328(r1)
/* 802B9034 002B5F94  39 40 00 E0 */	li r10, 0xe0
/* 802B9038 002B5F98  90 01 03 38 */	stw r0, 0x338(r1)
/* 802B903C 002B5F9C  3D 00 80 3D */	lis r8, lbl_803D6570@ha
/* 802B9040 002B5FA0  80 0F 00 04 */	lwz r0, 4(r15)
/* 802B9044 002B5FA4  38 A5 30 00 */	addi r5, r5, 0x3000
/* 802B9048 002B5FA8  81 8F 00 0C */	lwz r12, 0xc(r15)
/* 802B904C 002B5FAC  3D 20 80 5A */	lis r9, mModelMatrix__9CGraphics@ha
/* 802B9050 002B5FB0  90 01 03 34 */	stw r0, 0x334(r1)
/* 802B9054 002B5FB4  38 08 65 70 */	addi r0, r8, lbl_803D6570@l
/* 802B9058 002B5FB8  FF 40 D8 90 */	fmr f26, f27
/* 802B905C 002B5FBC  7C DB 33 78 */	mr r27, r6
/* 802B9060 002B5FC0  90 01 03 40 */	stw r0, 0x340(r1)
/* 802B9064 002B5FC4  38 00 00 00 */	li r0, 0
/* 802B9068 002B5FC8  FF 20 D8 90 */	fmr f25, f27
/* 802B906C 002B5FCC  7C FC 3B 78 */	mr r28, r7
/* 802B9070 002B5FD0  90 01 03 30 */	stw r0, 0x330(r1)
/* 802B9074 002B5FD4  38 00 00 01 */	li r0, 1
/* 802B9078 002B5FD8  FF 00 D8 90 */	fmr f24, f27
/* 802B907C 002B5FDC  3A 00 00 00 */	li r16, 0
/* 802B9080 002B5FE0  90 61 00 10 */	stw r3, 0x10(r1)
/* 802B9084 002B5FE4  38 69 62 04 */	addi r3, r9, mModelMatrix__9CGraphics@l
/* 802B9088 002B5FE8  39 E0 01 40 */	li r15, 0x140
/* 802B908C 002B5FEC  3A 20 00 E0 */	li r17, 0xe0
/* 802B9090 002B5FF0  90 81 00 14 */	stw r4, 0x14(r1)
/* 802B9094 002B5FF4  7C 64 1B 78 */	mr r4, r3
/* 802B9098 002B5FF8  38 61 02 44 */	addi r3, r1, 0x244
/* 802B909C 002B5FFC  91 C1 00 54 */	stw r14, 0x54(r1)
/* 802B90A0 002B6000  91 81 00 50 */	stw r12, 0x50(r1)
/* 802B90A4 002B6004  91 61 00 4C */	stw r11, 0x4c(r1)
/* 802B90A8 002B6008  91 41 00 48 */	stw r10, 0x48(r1)
/* 802B90AC 002B600C  98 01 03 24 */	stb r0, 0x324(r1)
/* 802B90B0 002B6010  90 A1 03 28 */	stw r5, 0x328(r1)
/* 802B90B4 002B6014  48 05 9A C1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B90B8 002B6018  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802B90BC 002B601C  38 61 02 14 */	addi r3, r1, 0x214
/* 802B90C0 002B6020  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 802B90C4 002B6024  48 05 9A B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B90C8 002B6028  38 61 01 40 */	addi r3, r1, 0x140
/* 802B90CC 002B602C  48 05 32 65 */	bl GetPerspectiveProjectionMatrix__9CGraphicsFv
/* 802B90D0 002B6030  C3 A1 01 40 */	lfs f29, 0x140(r1)
/* 802B90D4 002B6034  38 61 00 60 */	addi r3, r1, 0x60
/* 802B90D8 002B6038  C3 81 01 44 */	lfs f28, 0x144(r1)
/* 802B90DC 002B603C  C1 A1 01 48 */	lfs f13, 0x148(r1)
/* 802B90E0 002B6040  C1 81 01 4C */	lfs f12, 0x14c(r1)
/* 802B90E4 002B6044  C1 61 01 50 */	lfs f11, 0x150(r1)
/* 802B90E8 002B6048  C1 41 01 54 */	lfs f10, 0x154(r1)
/* 802B90EC 002B604C  C1 21 01 58 */	lfs f9, 0x158(r1)
/* 802B90F0 002B6050  C1 01 01 5C */	lfs f8, 0x15c(r1)
/* 802B90F4 002B6054  C0 E1 01 60 */	lfs f7, 0x160(r1)
/* 802B90F8 002B6058  C0 C1 01 64 */	lfs f6, 0x164(r1)
/* 802B90FC 002B605C  C0 A1 01 68 */	lfs f5, 0x168(r1)
/* 802B9100 002B6060  C0 81 01 6C */	lfs f4, 0x16c(r1)
/* 802B9104 002B6064  C0 61 01 70 */	lfs f3, 0x170(r1)
/* 802B9108 002B6068  C0 41 01 74 */	lfs f2, 0x174(r1)
/* 802B910C 002B606C  C0 21 01 78 */	lfs f1, 0x178(r1)
/* 802B9110 002B6070  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 802B9114 002B6074  D3 A1 01 D4 */	stfs f29, 0x1d4(r1)
/* 802B9118 002B6078  80 81 00 54 */	lwz r4, 0x54(r1)
/* 802B911C 002B607C  D3 81 01 D8 */	stfs f28, 0x1d8(r1)
/* 802B9120 002B6080  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 802B9124 002B6084  D1 A1 01 DC */	stfs f13, 0x1dc(r1)
/* 802B9128 002B6088  D1 81 01 E0 */	stfs f12, 0x1e0(r1)
/* 802B912C 002B608C  D1 61 01 E4 */	stfs f11, 0x1e4(r1)
/* 802B9130 002B6090  D1 41 01 E8 */	stfs f10, 0x1e8(r1)
/* 802B9134 002B6094  D1 21 01 EC */	stfs f9, 0x1ec(r1)
/* 802B9138 002B6098  D1 01 01 F0 */	stfs f8, 0x1f0(r1)
/* 802B913C 002B609C  D0 E1 01 F4 */	stfs f7, 0x1f4(r1)
/* 802B9140 002B60A0  D0 C1 01 F8 */	stfs f6, 0x1f8(r1)
/* 802B9144 002B60A4  D0 A1 01 FC */	stfs f5, 0x1fc(r1)
/* 802B9148 002B60A8  D0 81 02 00 */	stfs f4, 0x200(r1)
/* 802B914C 002B60AC  D0 61 02 04 */	stfs f3, 0x204(r1)
/* 802B9150 002B60B0  D0 41 02 08 */	stfs f2, 0x208(r1)
/* 802B9154 002B60B4  D0 21 02 0C */	stfs f1, 0x20c(r1)
/* 802B9158 002B60B8  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 802B915C 002B60BC  48 05 B1 F1 */	bl __ct__9CVector2iFii
/* 802B9160 002B60C0  38 61 00 58 */	addi r3, r1, 0x58
/* 802B9164 002B60C4  38 80 00 00 */	li r4, 0
/* 802B9168 002B60C8  38 A0 00 00 */	li r5, 0
/* 802B916C 002B60CC  48 05 B1 E1 */	bl __ct__9CVector2iFii
/* 802B9170 002B60D0  38 00 00 00 */	li r0, 0
/* 802B9174 002B60D4  3A 41 02 78 */	addi r18, r1, 0x278
/* 802B9178 002B60D8  90 01 02 74 */	stw r0, 0x274(r1)
/* 802B917C 002B60DC  39 C1 01 B4 */	addi r14, r1, 0x1b4
/* 802B9180 002B60E0  3A 60 00 01 */	li r19, 1
/* 802B9184 002B60E4  3A 80 00 00 */	li r20, 0
/* 802B9188 002B60E8  90 01 01 B0 */	stw r0, 0x1b0(r1)
lbl_802B918C:
/* 802B918C 002B60EC  7F 44 D3 78 */	mr r4, r26
/* 802B9190 002B60F0  7E 85 A3 78 */	mr r5, r20
/* 802B9194 002B60F4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802B9198 002B60F8  48 07 E4 19 */	bl GetPoint__6CAABoxCFi
/* 802B919C 002B60FC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 802B91A0 002B6100  38 81 02 44 */	addi r4, r1, 0x244
/* 802B91A4 002B6104  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 802B91A8 002B6108  48 05 99 41 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 802B91AC 002B610C  C0 41 00 D8 */	lfs f2, 0xd8(r1)
/* 802B91B0 002B6110  38 61 00 BC */	addi r3, r1, 0xbc
/* 802B91B4 002B6114  C0 21 02 30 */	lfs f1, 0x230(r1)
/* 802B91B8 002B6118  38 81 02 14 */	addi r4, r1, 0x214
/* 802B91BC 002B611C  C0 81 00 DC */	lfs f4, 0xdc(r1)
/* 802B91C0 002B6120  38 A1 00 68 */	addi r5, r1, 0x68
/* 802B91C4 002B6124  C0 01 02 40 */	lfs f0, 0x240(r1)
/* 802B91C8 002B6128  EC 22 08 28 */	fsubs f1, f2, f1
/* 802B91CC 002B612C  C0 61 00 D4 */	lfs f3, 0xd4(r1)
/* 802B91D0 002B6130  C0 41 02 20 */	lfs f2, 0x220(r1)
/* 802B91D4 002B6134  EC 04 00 28 */	fsubs f0, f4, f0
/* 802B91D8 002B6138  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 802B91DC 002B613C  EC 23 10 28 */	fsubs f1, f3, f2
/* 802B91E0 002B6140  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 802B91E4 002B6144  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 802B91E8 002B6148  48 05 98 3D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 802B91EC 002B614C  C0 41 00 BC */	lfs f2, 0xbc(r1)
/* 802B91F0 002B6150  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802B91F4 002B6154  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 802B91F8 002B6158  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 802B91FC 002B615C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 802B9200 002B6160  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 802B9204 002B6164  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 802B9208 002B6168  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 802B920C 002B616C  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 802B9210 002B6170  48 05 75 F1 */	bl __ml__9CMatrix4fCFRC9CVector3f
/* 802B9214 002B6174  80 01 02 74 */	lwz r0, 0x274(r1)
/* 802B9218 002B6178  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 802B921C 002B617C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802B9220 002B6180  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 802B9224 002B6184  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 802B9228 002B6188  7C 72 02 15 */	add. r3, r18, r0
/* 802B922C 002B618C  41 82 00 10 */	beq lbl_802B923C
/* 802B9230 002B6190  D0 03 00 00 */	stfs f0, 0(r3)
/* 802B9234 002B6194  D0 23 00 04 */	stfs f1, 4(r3)
/* 802B9238 002B6198  D0 43 00 08 */	stfs f2, 8(r3)
lbl_802B923C:
/* 802B923C 002B619C  80 A1 02 74 */	lwz r5, 0x274(r1)
/* 802B9240 002B61A0  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 802B9244 002B61A4  38 81 00 E0 */	addi r4, r1, 0xe0
/* 802B9248 002B61A8  38 05 00 01 */	addi r0, r5, 1
/* 802B924C 002B61AC  90 01 02 74 */	stw r0, 0x274(r1)
/* 802B9250 002B61B0  48 05 74 D1 */	bl MultiplyGetW__9CMatrix4fCFRC9CVector3f
/* 802B9254 002B61B4  80 01 01 B0 */	lwz r0, 0x1b0(r1)
/* 802B9258 002B61B8  54 00 10 3A */	slwi r0, r0, 2
/* 802B925C 002B61BC  7C 6E 02 15 */	add. r3, r14, r0
/* 802B9260 002B61C0  41 82 00 08 */	beq lbl_802B9268
/* 802B9264 002B61C4  D0 23 00 00 */	stfs f1, 0(r3)
lbl_802B9268:
/* 802B9268 002B61C8  80 61 01 B0 */	lwz r3, 0x1b0(r1)
/* 802B926C 002B61CC  3A 94 00 01 */	addi r20, r20, 1
/* 802B9270 002B61D0  2C 14 00 08 */	cmpwi r20, 8
/* 802B9274 002B61D4  38 03 00 01 */	addi r0, r3, 1
/* 802B9278 002B61D8  90 01 01 B0 */	stw r0, 0x1b0(r1)
/* 802B927C 002B61DC  41 80 FF 10 */	blt lbl_802B918C
/* 802B9280 002B61E0  38 00 00 14 */	li r0, 0x14
/* 802B9284 002B61E4  39 01 00 64 */	addi r8, r1, 0x64
/* 802B9288 002B61E8  39 21 00 5C */	addi r9, r1, 0x5c
/* 802B928C 002B61EC  7D C3 73 78 */	mr r3, r14
/* 802B9290 002B61F0  7E 44 93 78 */	mr r4, r18
/* 802B9294 002B61F4  39 40 00 00 */	li r10, 0
/* 802B9298 002B61F8  7C 09 03 A6 */	mtctr r0
lbl_802B929C:
/* 802B929C 002B61FC  2C 0A 00 08 */	cmpwi r10, 8
/* 802B92A0 002B6200  40 80 00 2C */	bge lbl_802B92CC
/* 802B92A4 002B6204  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802B92A8 002B6208  C0 03 00 00 */	lfs f0, 0(r3)
/* 802B92AC 002B620C  C0 44 00 00 */	lfs f2, 0(r4)
/* 802B92B0 002B6210  EC 61 00 24 */	fdivs f3, f1, f0
/* 802B92B4 002B6214  C0 24 00 04 */	lfs f1, 4(r4)
/* 802B92B8 002B6218  C0 04 00 08 */	lfs f0, 8(r4)
/* 802B92BC 002B621C  EC 83 00 B2 */	fmuls f4, f3, f2
/* 802B92C0 002B6220  EC 23 00 72 */	fmuls f1, f3, f1
/* 802B92C4 002B6224  EC 43 00 32 */	fmuls f2, f3, f0
/* 802B92C8 002B6228  48 00 00 E0 */	b lbl_802B93A8
lbl_802B92CC:
/* 802B92CC 002B622C  80 A1 03 40 */	lwz r5, 0x340(r1)
/* 802B92D0 002B6230  38 0A FF F8 */	addi r0, r10, -8
/* 802B92D4 002B6234  54 00 18 38 */	slwi r0, r0, 3
/* 802B92D8 002B6238  C0 62 C2 70 */	lfs f3, lbl_805ADF90@sda21(r2)
/* 802B92DC 002B623C  38 A5 00 FC */	addi r5, r5, 0xfc
/* 802B92E0 002B6240  7C A5 02 14 */	add r5, r5, r0
/* 802B92E4 002B6244  80 05 00 00 */	lwz r0, 0(r5)
/* 802B92E8 002B6248  80 E5 00 04 */	lwz r7, 4(r5)
/* 802B92EC 002B624C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 802B92F0 002B6250  54 05 10 3A */	slwi r5, r0, 2
/* 802B92F4 002B6254  7D 4E 2C 2E */	lfsx f10, r14, r5
/* 802B92F8 002B6258  54 E0 10 3A */	slwi r0, r7, 2
/* 802B92FC 002B625C  7C 2E 04 2E */	lfsx f1, r14, r0
/* 802B9300 002B6260  7C B2 32 14 */	add r5, r18, r6
/* 802B9304 002B6264  C0 C5 00 08 */	lfs f6, 8(r5)
/* 802B9308 002B6268  1C 07 00 0C */	mulli r0, r7, 0xc
/* 802B930C 002B626C  C0 85 00 00 */	lfs f4, 0(r5)
/* 802B9310 002B6270  EC 06 50 24 */	fdivs f0, f6, f10
/* 802B9314 002B6274  C0 A5 00 04 */	lfs f5, 4(r5)
/* 802B9318 002B6278  7C B2 02 14 */	add r5, r18, r0
/* 802B931C 002B627C  C1 25 00 08 */	lfs f9, 8(r5)
/* 802B9320 002B6280  C0 E5 00 00 */	lfs f7, 0(r5)
/* 802B9324 002B6284  C1 05 00 04 */	lfs f8, 4(r5)
/* 802B9328 002B6288  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802B932C 002B628C  7C 00 00 26 */	mfcr r0
/* 802B9330 002B6290  EC 09 08 24 */	fdivs f0, f9, f1
/* 802B9334 002B6294  54 05 17 FE */	rlwinm r5, r0, 2, 0x1f, 0x1f
/* 802B9338 002B6298  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 802B933C 002B629C  7C 00 00 26 */	mfcr r0
/* 802B9340 002B62A0  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 802B9344 002B62A4  7C 05 00 40 */	cmplw r5, r0
/* 802B9348 002B62A8  41 82 02 48 */	beq lbl_802B9590
/* 802B934C 002B62AC  EC 4A 18 28 */	fsubs f2, f10, f3
/* 802B9350 002B62B0  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802B9354 002B62B4  EC 21 50 28 */	fsubs f1, f1, f10
/* 802B9358 002B62B8  FC 40 10 50 */	fneg f2, f2
/* 802B935C 002B62BC  ED 62 08 24 */	fdivs f11, f2, f1
/* 802B9360 002B62C0  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 802B9364 002B62C4  40 81 02 2C */	ble lbl_802B9590
/* 802B9368 002B62C8  FC 0B 18 40 */	fcmpo cr0, f11, f3
/* 802B936C 002B62CC  40 80 02 24 */	bge lbl_802B9590
/* 802B9370 002B62D0  EC 0B 50 7A */	fmadds f0, f11, f1, f10
/* 802B9374 002B62D4  EC 47 20 28 */	fsubs f2, f7, f4
/* 802B9378 002B62D8  EC 28 28 28 */	fsubs f1, f8, f5
/* 802B937C 002B62DC  EC 63 00 24 */	fdivs f3, f3, f0
/* 802B9380 002B62E0  EC 09 30 28 */	fsubs f0, f9, f6
/* 802B9384 002B62E4  EC 4B 00 B2 */	fmuls f2, f11, f2
/* 802B9388 002B62E8  EC 2B 00 72 */	fmuls f1, f11, f1
/* 802B938C 002B62EC  EC 0B 00 32 */	fmuls f0, f11, f0
/* 802B9390 002B62F0  EC 44 10 2A */	fadds f2, f4, f2
/* 802B9394 002B62F4  EC 25 08 2A */	fadds f1, f5, f1
/* 802B9398 002B62F8  EC 06 00 2A */	fadds f0, f6, f0
/* 802B939C 002B62FC  EC 83 00 B2 */	fmuls f4, f3, f2
/* 802B93A0 002B6300  EC 23 00 72 */	fmuls f1, f3, f1
/* 802B93A4 002B6304  EC 43 00 32 */	fmuls f2, f3, f0
lbl_802B93A8:
/* 802B93A8 002B6308  C0 02 C2 D0 */	lfs f0, lbl_805ADFF0@sda21(r2)
/* 802B93AC 002B630C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802B93B0 002B6310  4C 40 13 82 */	cror 2, 0, 2
/* 802B93B4 002B6314  40 82 01 DC */	bne lbl_802B9590
/* 802B93B8 002B6318  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 802B93BC 002B631C  3E 60 43 30 */	lis r19, 0x4330
/* 802B93C0 002B6320  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 802B93C4 002B6324  FC 00 08 50 */	fneg f0, f1
/* 802B93C8 002B6328  6C AC 80 00 */	xoris r12, r5, 0x8000
/* 802B93CC 002B632C  54 A0 0F FE */	srwi r0, r5, 0x1f
/* 802B93D0 002B6330  7D 60 2A 14 */	add r11, r0, r5
/* 802B93D4 002B6334  6C C7 80 00 */	xoris r7, r6, 0x8000
/* 802B93D8 002B6338  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 802B93DC 002B633C  7D 6B 0E 70 */	srawi r11, r11, 1
/* 802B93E0 002B6340  91 81 02 DC */	stw r12, 0x2dc(r1)
/* 802B93E4 002B6344  7C 00 32 14 */	add r0, r0, r6
/* 802B93E8 002B6348  C8 A2 C2 A0 */	lfd f5, lbl_805ADFC0@sda21(r2)
/* 802B93EC 002B634C  92 61 02 D8 */	stw r19, 0x2d8(r1)
/* 802B93F0 002B6350  6D 6C 80 00 */	xoris r12, r11, 0x8000
/* 802B93F4 002B6354  7C 00 0E 70 */	srawi r0, r0, 1
/* 802B93F8 002B6358  C0 62 C2 80 */	lfs f3, lbl_805ADFA0@sda21(r2)
/* 802B93FC 002B635C  C8 21 02 D8 */	lfd f1, 0x2d8(r1)
/* 802B9400 002B6360  6C 0B 80 00 */	xoris r11, r0, 0x8000
/* 802B9404 002B6364  90 E1 02 F4 */	stw r7, 0x2f4(r1)
/* 802B9408 002B6368  38 E1 00 44 */	addi r7, r1, 0x44
/* 802B940C 002B636C  EC 41 28 28 */	fsubs f2, f1, f5
/* 802B9410 002B6370  80 0D 9A D8 */	lwz r0, lbl_805A8698@sda21(r13)
/* 802B9414 002B6374  92 61 02 F0 */	stw r19, 0x2f0(r1)
/* 802B9418 002B6378  C8 21 02 F0 */	lfd f1, 0x2f0(r1)
/* 802B941C 002B637C  EC 82 01 32 */	fmuls f4, f2, f4
/* 802B9420 002B6380  91 81 02 E4 */	stw r12, 0x2e4(r1)
/* 802B9424 002B6384  EC 21 28 28 */	fsubs f1, f1, f5
/* 802B9428 002B6388  92 61 02 E0 */	stw r19, 0x2e0(r1)
/* 802B942C 002B638C  C8 41 02 E0 */	lfd f2, 0x2e0(r1)
/* 802B9430 002B6390  EC 21 00 32 */	fmuls f1, f1, f0
/* 802B9434 002B6394  91 61 02 FC */	stw r11, 0x2fc(r1)
/* 802B9438 002B6398  EC 42 28 28 */	fsubs f2, f2, f5
/* 802B943C 002B639C  92 61 02 F8 */	stw r19, 0x2f8(r1)
/* 802B9440 002B63A0  C8 01 02 F8 */	lfd f0, 0x2f8(r1)
/* 802B9444 002B63A4  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 802B9448 002B63A8  EC 00 28 28 */	fsubs f0, f0, f5
/* 802B944C 002B63AC  FC 40 10 1E */	fctiwz f2, f2
/* 802B9450 002B63B0  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 802B9454 002B63B4  D8 41 02 E8 */	stfd f2, 0x2e8(r1)
/* 802B9458 002B63B8  82 61 02 EC */	lwz r19, 0x2ec(r1)
/* 802B945C 002B63BC  FC 00 00 1E */	fctiwz f0, f0
/* 802B9460 002B63C0  7C 13 00 00 */	cmpw r19, r0
/* 802B9464 002B63C4  92 61 00 44 */	stw r19, 0x44(r1)
/* 802B9468 002B63C8  D8 01 03 00 */	stfd f0, 0x300(r1)
/* 802B946C 002B63CC  80 01 03 04 */	lwz r0, 0x304(r1)
/* 802B9470 002B63D0  90 01 00 40 */	stw r0, 0x40(r1)
/* 802B9474 002B63D4  40 80 00 08 */	bge lbl_802B947C
/* 802B9478 002B63D8  38 ED 9A D8 */	addi r7, r13, lbl_805A8698@sda21
lbl_802B947C:
/* 802B947C 002B63DC  81 87 00 00 */	lwz r12, 0(r7)
/* 802B9480 002B63E0  39 61 00 40 */	addi r11, r1, 0x40
/* 802B9484 002B63E4  80 E1 00 40 */	lwz r7, 0x40(r1)
/* 802B9488 002B63E8  80 0D 9A DC */	lwz r0, lbl_805A869C@sda21(r13)
/* 802B948C 002B63EC  55 8C 00 3A */	rlwinm r12, r12, 0, 0, 0x1d
/* 802B9490 002B63F0  91 81 00 3C */	stw r12, 0x3c(r1)
/* 802B9494 002B63F4  7C 07 00 00 */	cmpw r7, r0
/* 802B9498 002B63F8  40 80 00 08 */	bge lbl_802B94A0
/* 802B949C 002B63FC  39 6D 9A DC */	addi r11, r13, lbl_805A869C@sda21
lbl_802B94A0:
/* 802B94A0 002B6400  81 8B 00 00 */	lwz r12, 0(r11)
/* 802B94A4 002B6404  39 65 FF FC */	addi r11, r5, -4
/* 802B94A8 002B6408  38 13 00 03 */	addi r0, r19, 3
/* 802B94AC 002B640C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 802B94B0 002B6410  55 8C 00 3A */	rlwinm r12, r12, 0, 0, 0x1d
/* 802B94B4 002B6414  91 61 00 28 */	stw r11, 0x28(r1)
/* 802B94B8 002B6418  7C 0B 00 00 */	cmpw r11, r0
/* 802B94BC 002B641C  91 81 00 38 */	stw r12, 0x38(r1)
/* 802B94C0 002B6420  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802B94C4 002B6424  40 80 00 08 */	bge lbl_802B94CC
/* 802B94C8 002B6428  38 A1 00 28 */	addi r5, r1, 0x28
lbl_802B94CC:
/* 802B94CC 002B642C  81 65 00 00 */	lwz r11, 0(r5)
/* 802B94D0 002B6430  38 C6 FF FC */	addi r6, r6, -4
/* 802B94D4 002B6434  38 07 00 03 */	addi r0, r7, 3
/* 802B94D8 002B6438  38 A1 00 24 */	addi r5, r1, 0x24
/* 802B94DC 002B643C  55 67 00 3A */	rlwinm r7, r11, 0, 0, 0x1d
/* 802B94E0 002B6440  90 C1 00 20 */	stw r6, 0x20(r1)
/* 802B94E4 002B6444  7C 06 00 00 */	cmpw r6, r0
/* 802B94E8 002B6448  90 E1 00 34 */	stw r7, 0x34(r1)
/* 802B94EC 002B644C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B94F0 002B6450  40 80 00 08 */	bge lbl_802B94F8
/* 802B94F4 002B6454  38 A1 00 20 */	addi r5, r1, 0x20
lbl_802B94F8:
/* 802B94F8 002B6458  80 E5 00 00 */	lwz r7, 0(r5)
/* 802B94FC 002B645C  38 C1 00 60 */	addi r6, r1, 0x60
/* 802B9500 002B6460  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 802B9504 002B6464  80 01 00 60 */	lwz r0, 0x60(r1)
/* 802B9508 002B6468  54 E7 00 3A */	rlwinm r7, r7, 0, 0, 0x1d
/* 802B950C 002B646C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 802B9510 002B6470  7C 05 00 00 */	cmpw r5, r0
/* 802B9514 002B6474  40 80 00 08 */	bge lbl_802B951C
/* 802B9518 002B6478  38 C1 00 3C */	addi r6, r1, 0x3c
lbl_802B951C:
/* 802B951C 002B647C  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 802B9520 002B6480  80 08 00 00 */	lwz r0, 0(r8)
/* 802B9524 002B6484  80 C6 00 00 */	lwz r6, 0(r6)
/* 802B9528 002B6488  7C 05 00 00 */	cmpw r5, r0
/* 802B952C 002B648C  90 C1 00 60 */	stw r6, 0x60(r1)
/* 802B9530 002B6490  40 80 00 0C */	bge lbl_802B953C
/* 802B9534 002B6494  38 E1 00 38 */	addi r7, r1, 0x38
/* 802B9538 002B6498  48 00 00 08 */	b lbl_802B9540
lbl_802B953C:
/* 802B953C 002B649C  7D 07 43 78 */	mr r7, r8
lbl_802B9540:
/* 802B9540 002B64A0  80 A1 00 58 */	lwz r5, 0x58(r1)
/* 802B9544 002B64A4  38 C1 00 58 */	addi r6, r1, 0x58
/* 802B9548 002B64A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B954C 002B64AC  80 E7 00 00 */	lwz r7, 0(r7)
/* 802B9550 002B64B0  7C 05 00 00 */	cmpw r5, r0
/* 802B9554 002B64B4  90 E8 00 00 */	stw r7, 0(r8)
/* 802B9558 002B64B8  40 80 00 08 */	bge lbl_802B9560
/* 802B955C 002B64BC  38 C1 00 34 */	addi r6, r1, 0x34
lbl_802B9560:
/* 802B9560 002B64C0  80 A9 00 00 */	lwz r5, 0(r9)
/* 802B9564 002B64C4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802B9568 002B64C8  80 C6 00 00 */	lwz r6, 0(r6)
/* 802B956C 002B64CC  7C 05 00 00 */	cmpw r5, r0
/* 802B9570 002B64D0  90 C1 00 58 */	stw r6, 0x58(r1)
/* 802B9574 002B64D4  40 80 00 0C */	bge lbl_802B9580
/* 802B9578 002B64D8  38 A1 00 30 */	addi r5, r1, 0x30
/* 802B957C 002B64DC  48 00 00 08 */	b lbl_802B9584
lbl_802B9580:
/* 802B9580 002B64E0  7D 25 4B 78 */	mr r5, r9
lbl_802B9584:
/* 802B9584 002B64E4  80 05 00 00 */	lwz r0, 0(r5)
/* 802B9588 002B64E8  3A 60 00 00 */	li r19, 0
/* 802B958C 002B64EC  90 09 00 00 */	stw r0, 0(r9)
lbl_802B9590:
/* 802B9590 002B64F0  38 63 00 04 */	addi r3, r3, 4
/* 802B9594 002B64F4  38 84 00 0C */	addi r4, r4, 0xc
/* 802B9598 002B64F8  39 4A 00 01 */	addi r10, r10, 1
/* 802B959C 002B64FC  42 00 FD 00 */	bdnz lbl_802B929C
/* 802B95A0 002B6500  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 802B95A4 002B6504  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802B95A8 002B6508  81 01 00 50 */	lwz r8, 0x50(r1)
/* 802B95AC 002B650C  90 C1 03 20 */	stw r6, 0x320(r1)
/* 802B95B0 002B6510  91 01 03 1C */	stw r8, 0x31c(r1)
/* 802B95B4 002B6514  40 82 00 98 */	bne lbl_802B964C
/* 802B95B8 002B6518  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 802B95BC 002B651C  38 61 00 1C */	addi r3, r1, 0x1c
/* 802B95C0 002B6520  80 81 00 58 */	lwz r4, 0x58(r1)
/* 802B95C4 002B6524  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802B95C8 002B6528  7C 85 20 50 */	subf r4, r5, r4
/* 802B95CC 002B652C  7C 00 20 00 */	cmpw r0, r4
/* 802B95D0 002B6530  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802B95D4 002B6534  40 80 00 08 */	bge lbl_802B95DC
/* 802B95D8 002B6538  38 61 00 4C */	addi r3, r1, 0x4c
lbl_802B95DC:
/* 802B95DC 002B653C  81 41 00 64 */	lwz r10, 0x64(r1)
/* 802B95E0 002B6540  38 81 00 18 */	addi r4, r1, 0x18
/* 802B95E4 002B6544  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 802B95E8 002B6548  80 A3 00 00 */	lwz r5, 0(r3)
/* 802B95EC 002B654C  7C 6A 38 50 */	subf r3, r10, r7
/* 802B95F0 002B6550  80 01 00 48 */	lwz r0, 0x48(r1)
/* 802B95F4 002B6554  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 802B95F8 002B6558  7C 00 18 00 */	cmpw r0, r3
/* 802B95FC 002B655C  90 61 00 18 */	stw r3, 0x18(r1)
/* 802B9600 002B6560  40 80 00 08 */	bge lbl_802B9608
/* 802B9604 002B6564  38 81 00 48 */	addi r4, r1, 0x48
lbl_802B9608:
/* 802B9608 002B6568  80 01 00 58 */	lwz r0, 0x58(r1)
/* 802B960C 002B656C  38 61 00 58 */	addi r3, r1, 0x58
/* 802B9610 002B6570  80 84 00 00 */	lwz r4, 0(r4)
/* 802B9614 002B6574  7C 06 00 00 */	cmpw r6, r0
/* 802B9618 002B6578  90 81 00 48 */	stw r4, 0x48(r1)
/* 802B961C 002B657C  40 80 00 08 */	bge lbl_802B9624
/* 802B9620 002B6580  38 61 00 54 */	addi r3, r1, 0x54
lbl_802B9624:
/* 802B9624 002B6584  80 03 00 00 */	lwz r0, 0(r3)
/* 802B9628 002B6588  7C 08 38 00 */	cmpw r8, r7
/* 802B962C 002B658C  90 01 03 20 */	stw r0, 0x320(r1)
/* 802B9630 002B6590  40 80 00 08 */	bge lbl_802B9638
/* 802B9634 002B6594  39 21 00 50 */	addi r9, r1, 0x50
lbl_802B9638:
/* 802B9638 002B6598  80 09 00 00 */	lwz r0, 0(r9)
/* 802B963C 002B659C  7D 50 53 78 */	mr r16, r10
/* 802B9640 002B65A0  90 01 03 1C */	stw r0, 0x31c(r1)
/* 802B9644 002B65A4  80 01 00 60 */	lwz r0, 0x60(r1)
/* 802B9648 002B65A8  90 01 03 30 */	stw r0, 0x330(r1)
lbl_802B964C:
/* 802B964C 002B65AC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802B9650 002B65B0  2C 00 00 00 */	cmpwi r0, 0
/* 802B9654 002B65B4  40 81 00 10 */	ble lbl_802B9664
/* 802B9658 002B65B8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 802B965C 002B65BC  2C 00 00 00 */	cmpwi r0, 0
/* 802B9660 002B65C0  41 81 00 AC */	bgt lbl_802B970C
lbl_802B9664:
/* 802B9664 002B65C4  80 A1 01 B0 */	lwz r5, 0x1b0(r1)
/* 802B9668 002B65C8  38 60 00 00 */	li r3, 0
/* 802B966C 002B65CC  2C 05 00 00 */	cmpwi r5, 0
/* 802B9670 002B65D0  40 81 00 40 */	ble lbl_802B96B0
/* 802B9674 002B65D4  2C 05 00 08 */	cmpwi r5, 8
/* 802B9678 002B65D8  38 85 FF F8 */	addi r4, r5, -8
/* 802B967C 002B65DC  40 81 00 20 */	ble lbl_802B969C
/* 802B9680 002B65E0  38 04 00 07 */	addi r0, r4, 7
/* 802B9684 002B65E4  54 00 E8 FE */	srwi r0, r0, 3
/* 802B9688 002B65E8  7C 09 03 A6 */	mtctr r0
/* 802B968C 002B65EC  2C 04 00 00 */	cmpwi r4, 0
/* 802B9690 002B65F0  40 81 00 0C */	ble lbl_802B969C
lbl_802B9694:
/* 802B9694 002B65F4  38 63 00 08 */	addi r3, r3, 8
/* 802B9698 002B65F8  42 00 FF FC */	bdnz lbl_802B9694
lbl_802B969C:
/* 802B969C 002B65FC  7C 03 28 50 */	subf r0, r3, r5
/* 802B96A0 002B6600  7C 09 03 A6 */	mtctr r0
/* 802B96A4 002B6604  7C 03 28 00 */	cmpw r3, r5
/* 802B96A8 002B6608  40 80 00 08 */	bge lbl_802B96B0
lbl_802B96AC:
/* 802B96AC 002B660C  42 00 00 00 */	bdnz lbl_802B96AC
lbl_802B96B0:
/* 802B96B0 002B6610  80 A1 02 74 */	lwz r5, 0x274(r1)
/* 802B96B4 002B6614  38 60 00 00 */	li r3, 0
/* 802B96B8 002B6618  90 61 01 B0 */	stw r3, 0x1b0(r1)
/* 802B96BC 002B661C  2C 05 00 00 */	cmpwi r5, 0
/* 802B96C0 002B6620  40 81 00 40 */	ble lbl_802B9700
/* 802B96C4 002B6624  2C 05 00 08 */	cmpwi r5, 8
/* 802B96C8 002B6628  38 85 FF F8 */	addi r4, r5, -8
/* 802B96CC 002B662C  40 81 00 20 */	ble lbl_802B96EC
/* 802B96D0 002B6630  38 04 00 07 */	addi r0, r4, 7
/* 802B96D4 002B6634  54 00 E8 FE */	srwi r0, r0, 3
/* 802B96D8 002B6638  7C 09 03 A6 */	mtctr r0
/* 802B96DC 002B663C  2C 04 00 00 */	cmpwi r4, 0
/* 802B96E0 002B6640  40 81 00 0C */	ble lbl_802B96EC
lbl_802B96E4:
/* 802B96E4 002B6644  38 63 00 08 */	addi r3, r3, 8
/* 802B96E8 002B6648  42 00 FF FC */	bdnz lbl_802B96E4
lbl_802B96EC:
/* 802B96EC 002B664C  7C 03 28 50 */	subf r0, r3, r5
/* 802B96F0 002B6650  7C 09 03 A6 */	mtctr r0
/* 802B96F4 002B6654  7C 03 28 00 */	cmpw r3, r5
/* 802B96F8 002B6658  40 80 00 08 */	bge lbl_802B9700
lbl_802B96FC:
/* 802B96FC 002B665C  42 00 00 00 */	bdnz lbl_802B96FC
lbl_802B9700:
/* 802B9700 002B6660  38 00 00 00 */	li r0, 0
/* 802B9704 002B6664  90 01 02 74 */	stw r0, 0x274(r1)
/* 802B9708 002B6668  48 00 0B 38 */	b lbl_802BA240
lbl_802B970C:
/* 802B970C 002B666C  80 01 03 34 */	lwz r0, 0x334(r1)
/* 802B9710 002B6670  7C 10 02 14 */	add r0, r16, r0
/* 802B9714 002B6674  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802B9718 002B6678  41 82 00 08 */	beq lbl_802B9720
/* 802B971C 002B667C  3A 10 FF FF */	addi r16, r16, -1
lbl_802B9720:
/* 802B9720 002B6680  80 61 03 30 */	lwz r3, 0x330(r1)
/* 802B9724 002B6684  80 01 03 38 */	lwz r0, 0x338(r1)
/* 802B9728 002B6688  7C 03 02 14 */	add r0, r3, r0
/* 802B972C 002B668C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802B9730 002B6690  41 82 00 0C */	beq lbl_802B973C
/* 802B9734 002B6694  38 63 FF FF */	addi r3, r3, -1
/* 802B9738 002B6698  90 61 03 30 */	stw r3, 0x330(r1)
lbl_802B973C:
/* 802B973C 002B669C  48 05 00 C9 */	bl GetUseVideoFilter__9CGraphicsFv
/* 802B9740 002B66A0  90 61 03 44 */	stw r3, 0x344(r1)
/* 802B9744 002B66A4  38 60 00 00 */	li r3, 0
/* 802B9748 002B66A8  48 05 00 C5 */	bl SetUseVideoFilter__9CGraphicsFb
/* 802B974C 002B66AC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802B9750 002B66B0  3C C0 43 30 */	lis r6, 0x4330
/* 802B9754 002B66B4  80 81 03 40 */	lwz r4, 0x340(r1)
/* 802B9758 002B66B8  A8 03 01 BC */	lha r0, 0x1bc(r3)
/* 802B975C 002B66BC  A8 E3 01 BE */	lha r7, 0x1be(r3)
/* 802B9760 002B66C0  38 61 01 20 */	addi r3, r1, 0x120
/* 802B9764 002B66C4  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 802B9768 002B66C8  81 04 01 68 */	lwz r8, 0x168(r4)
/* 802B976C 002B66CC  90 A1 03 04 */	stw r5, 0x304(r1)
/* 802B9770 002B66D0  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 802B9774 002B66D4  80 E4 01 78 */	lwz r7, 0x178(r4)
/* 802B9778 002B66D8  38 80 00 1E */	li r4, 0x1e
/* 802B977C 002B66DC  90 C1 03 00 */	stw r6, 0x300(r1)
/* 802B9780 002B66E0  38 A0 00 01 */	li r5, 1
/* 802B9784 002B66E4  C8 42 C2 A0 */	lfd f2, lbl_805ADFC0@sda21(r2)
/* 802B9788 002B66E8  C8 01 03 00 */	lfd f0, 0x300(r1)
/* 802B978C 002B66EC  90 C1 02 F8 */	stw r6, 0x2f8(r1)
/* 802B9790 002B66F0  EC 20 10 28 */	fsubs f1, f0, f2
/* 802B9794 002B66F4  80 C1 03 40 */	lwz r6, 0x340(r1)
/* 802B9798 002B66F8  90 01 02 FC */	stw r0, 0x2fc(r1)
/* 802B979C 002B66FC  C0 62 C2 80 */	lfs f3, lbl_805ADFA0@sda21(r2)
/* 802B97A0 002B6700  C8 01 02 F8 */	lfd f0, 0x2f8(r1)
/* 802B97A4 002B6704  EC 23 08 24 */	fdivs f1, f3, f1
/* 802B97A8 002B6708  91 01 01 2C */	stw r8, 0x12c(r1)
/* 802B97AC 002B670C  81 86 01 5C */	lwz r12, 0x15c(r6)
/* 802B97B0 002B6710  81 66 01 60 */	lwz r11, 0x160(r6)
/* 802B97B4 002B6714  81 46 01 64 */	lwz r10, 0x164(r6)
/* 802B97B8 002B6718  81 26 01 6C */	lwz r9, 0x16c(r6)
/* 802B97BC 002B671C  EC 00 10 28 */	fsubs f0, f0, f2
/* 802B97C0 002B6720  81 06 01 70 */	lwz r8, 0x170(r6)
/* 802B97C4 002B6724  80 06 01 74 */	lwz r0, 0x174(r6)
/* 802B97C8 002B6728  90 E1 01 3C */	stw r7, 0x13c(r1)
/* 802B97CC 002B672C  EC 03 00 24 */	fdivs f0, f3, f0
/* 802B97D0 002B6730  91 81 01 20 */	stw r12, 0x120(r1)
/* 802B97D4 002B6734  91 61 01 24 */	stw r11, 0x124(r1)
/* 802B97D8 002B6738  91 41 01 28 */	stw r10, 0x128(r1)
/* 802B97DC 002B673C  91 21 01 30 */	stw r9, 0x130(r1)
/* 802B97E0 002B6740  91 01 01 34 */	stw r8, 0x134(r1)
/* 802B97E4 002B6744  90 01 01 38 */	stw r0, 0x138(r1)
/* 802B97E8 002B6748  D0 21 01 2C */	stfs f1, 0x12c(r1)
/* 802B97EC 002B674C  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 802B97F0 002B6750  48 0C 2C A1 */	bl GXLoadTexMtxImm
/* 802B97F4 002B6754  38 61 00 80 */	addi r3, r1, 0x80
/* 802B97F8 002B6758  38 81 02 44 */	addi r4, r1, 0x244
/* 802B97FC 002B675C  38 BA 00 0C */	addi r5, r26, 0xc
/* 802B9800 002B6760  48 05 92 E9 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 802B9804 002B6764  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 802B9808 002B6768  7F 45 D3 78 */	mr r5, r26
/* 802B980C 002B676C  C0 62 C2 70 */	lfs f3, lbl_805ADF90@sda21(r2)
/* 802B9810 002B6770  38 61 00 98 */	addi r3, r1, 0x98
/* 802B9814 002B6774  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 802B9818 002B6778  38 81 02 44 */	addi r4, r1, 0x244
/* 802B981C 002B677C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 802B9820 002B6780  EC 42 18 2A */	fadds f2, f2, f3
/* 802B9824 002B6784  EC 21 18 2A */	fadds f1, f1, f3
/* 802B9828 002B6788  EC 00 18 2A */	fadds f0, f0, f3
/* 802B982C 002B678C  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 802B9830 002B6790  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 802B9834 002B6794  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 802B9838 002B6798  48 05 92 B1 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 802B983C 002B679C  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 802B9840 002B67A0  38 61 01 08 */	addi r3, r1, 0x108
/* 802B9844 002B67A4  C0 62 C2 70 */	lfs f3, lbl_805ADF90@sda21(r2)
/* 802B9848 002B67A8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 802B984C 002B67AC  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 802B9850 002B67B0  38 A1 00 8C */	addi r5, r1, 0x8c
/* 802B9854 002B67B4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 802B9858 002B67B8  EC 42 18 28 */	fsubs f2, f2, f3
/* 802B985C 002B67BC  EC 21 18 28 */	fsubs f1, f1, f3
/* 802B9860 002B67C0  EC 00 18 28 */	fsubs f0, f0, f3
/* 802B9864 002B67C4  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 802B9868 002B67C8  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 802B986C 002B67CC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 802B9870 002B67D0  48 07 EC 99 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 802B9874 002B67D4  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802B9878 002B67D8  38 61 01 08 */	addi r3, r1, 0x108
/* 802B987C 002B67DC  38 A4 61 D4 */	addi r5, r4, mViewMatrix__9CGraphics@l
/* 802B9880 002B67E0  38 81 00 74 */	addi r4, r1, 0x74
/* 802B9884 002B67E4  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 802B9888 002B67E8  7C BF 2B 78 */	mr r31, r5
/* 802B988C 002B67EC  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 802B9890 002B67F0  39 C0 00 00 */	li r14, 0
/* 802B9894 002B67F4  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 802B9898 002B67F8  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 802B989C 002B67FC  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 802B98A0 002B6800  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 802B98A4 002B6804  48 07 DC 91 */	bl PointInside__6CAABoxCFRC9CVector3f
/* 802B98A8 002B6808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B98AC 002B680C  41 82 00 28 */	beq lbl_802B98D4
/* 802B98B0 002B6810  28 1B 00 00 */	cmplwi r27, 0
/* 802B98B4 002B6814  38 00 00 00 */	li r0, 0
/* 802B98B8 002B6818  40 82 00 0C */	bne lbl_802B98C4
/* 802B98BC 002B681C  28 1C 00 00 */	cmplwi r28, 0
/* 802B98C0 002B6820  41 82 00 08 */	beq lbl_802B98C8
lbl_802B98C4:
/* 802B98C4 002B6824  38 00 00 01 */	li r0, 1
lbl_802B98C8:
/* 802B98C8 002B6828  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802B98CC 002B682C  41 82 00 08 */	beq lbl_802B98D4
/* 802B98D0 002B6830  39 C0 00 01 */	li r14, 1
lbl_802B98D4:
/* 802B98D4 002B6834  55 C0 06 3F */	clrlwi. r0, r14, 0x18
/* 802B98D8 002B6838  41 82 00 2C */	beq lbl_802B9904
/* 802B98DC 002B683C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802B98E0 002B6840  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802B98E4 002B6844  38 60 00 01 */	li r3, 1
/* 802B98E8 002B6848  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802B98EC 002B684C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802B98F0 002B6850  98 03 03 18 */	stb r0, 0x318(r3)
/* 802B98F4 002B6854  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802B98F8 002B6858  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 802B98FC 002B685C  40 82 00 08 */	bne lbl_802B9904
/* 802B9900 002B6860  39 C0 00 00 */	li r14, 0
lbl_802B9904:
/* 802B9904 002B6864  38 60 00 01 */	li r3, 1
/* 802B9908 002B6868  38 80 00 01 */	li r4, 1
/* 802B990C 002B686C  48 04 E6 AD */	bl SetIndTexMtxSTPointFive__3CGXF14_GXIndTexMtxIDSc
/* 802B9910 002B6870  55 D8 06 3E */	clrlwi r24, r14, 0x18
/* 802B9914 002B6874  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802B9918 002B6878  7C 18 00 D0 */	neg r0, r24
/* 802B991C 002B687C  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802B9920 002B6880  7C 00 C3 78 */	or r0, r0, r24
/* 802B9924 002B6884  39 C3 66 70 */	addi r14, r3, sIdentity__12CTransform4f@l
/* 802B9928 002B6888  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802B992C 002B688C  CB C2 C2 A0 */	lfd f30, lbl_805ADFC0@sda21(r2)
/* 802B9930 002B6890  38 04 61 D4 */	addi r0, r4, mViewMatrix__9CGraphics@l
/* 802B9934 002B6894  C3 E2 C2 80 */	lfs f31, lbl_805ADFA0@sda21(r2)
/* 802B9938 002B6898  92 01 03 18 */	stw r16, 0x318(r1)
/* 802B993C 002B689C  3B 23 00 01 */	addi r25, r3, 1
/* 802B9940 002B68A0  3E 60 43 30 */	lis r19, 0x4330
/* 802B9944 002B68A4  3E 80 CC 01 */	lis r20, 0xcc01
/* 802B9948 002B68A8  90 01 03 48 */	stw r0, 0x348(r1)
/* 802B994C 002B68AC  48 00 08 20 */	b lbl_802BA16C
lbl_802B9950:
/* 802B9950 002B68B0  80 61 03 18 */	lwz r3, 0x318(r1)
/* 802B9954 002B68B4  80 01 03 1C */	lwz r0, 0x31c(r1)
/* 802B9958 002B68B8  7C 03 00 50 */	subf r0, r3, r0
/* 802B995C 002B68BC  7C 00 88 00 */	cmpw r0, r17
/* 802B9960 002B68C0  40 80 00 10 */	bge lbl_802B9970
/* 802B9964 002B68C4  7C 11 03 78 */	mr r17, r0
/* 802B9968 002B68C8  38 00 00 01 */	li r0, 1
/* 802B996C 002B68CC  98 01 03 24 */	stb r0, 0x324(r1)
lbl_802B9970:
/* 802B9970 002B68D0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802B9974 002B68D4  7C 0F 00 00 */	cmpw r15, r0
/* 802B9978 002B68D8  41 82 00 10 */	beq lbl_802B9988
/* 802B997C 002B68DC  7C 0F 03 78 */	mr r15, r0
/* 802B9980 002B68E0  38 00 00 01 */	li r0, 1
/* 802B9984 002B68E4  98 01 03 24 */	stb r0, 0x324(r1)
lbl_802B9988:
/* 802B9988 002B68E8  80 61 03 18 */	lwz r3, 0x318(r1)
/* 802B998C 002B68EC  80 01 03 34 */	lwz r0, 0x334(r1)
/* 802B9990 002B68F0  83 C1 03 30 */	lwz r30, 0x330(r1)
/* 802B9994 002B68F4  7E 03 02 14 */	add r16, r3, r0
/* 802B9998 002B68F8  7C 60 1B 78 */	mr r0, r3
/* 802B999C 002B68FC  7C 60 8A 14 */	add r3, r0, r17
/* 802B99A0 002B6900  92 21 03 3C */	stw r17, 0x33c(r1)
/* 802B99A4 002B6904  6C 15 80 00 */	xoris r21, r0, 0x8000
/* 802B99A8 002B6908  6C 76 80 00 */	xoris r22, r3, 0x8000
/* 802B99AC 002B690C  48 00 07 A8 */	b lbl_802BA154
lbl_802B99B0:
/* 802B99B0 002B6910  38 61 02 44 */	addi r3, r1, 0x244
/* 802B99B4 002B6914  48 05 2C 2D */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802B99B8 002B6918  80 01 03 20 */	lwz r0, 0x320(r1)
/* 802B99BC 002B691C  7C 1E 00 50 */	subf r0, r30, r0
/* 802B99C0 002B6920  7C 00 78 00 */	cmpw r0, r15
/* 802B99C4 002B6924  40 80 00 10 */	bge lbl_802B99D4
/* 802B99C8 002B6928  7C 0F 03 78 */	mr r15, r0
/* 802B99CC 002B692C  38 00 00 01 */	li r0, 1
/* 802B99D0 002B6930  98 01 03 24 */	stb r0, 0x324(r1)
lbl_802B99D4:
/* 802B99D4 002B6934  88 01 03 24 */	lbz r0, 0x324(r1)
/* 802B99D8 002B6938  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802B99DC 002B693C  41 82 00 BC */	beq lbl_802B9A98
/* 802B99E0 002B6940  38 6F FF FF */	addi r3, r15, -1
/* 802B99E4 002B6944  38 11 FF FF */	addi r0, r17, -1
/* 802B99E8 002B6948  3D 20 43 30 */	lis r9, 0x4330
/* 802B99EC 002B694C  6D E8 80 00 */	xoris r8, r15, 0x8000
/* 802B99F0 002B6950  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802B99F4 002B6954  6C 07 80 00 */	xoris r7, r0, 0x8000
/* 802B99F8 002B6958  6E 20 80 00 */	xoris r0, r17, 0x8000
/* 802B99FC 002B695C  90 61 03 04 */	stw r3, 0x304(r1)
/* 802B9A00 002B6960  C8 62 C2 A0 */	lfd f3, lbl_805ADFC0@sda21(r2)
/* 802B9A04 002B6964  55 E3 04 3E */	clrlwi r3, r15, 0x10
/* 802B9A08 002B6968  91 21 03 00 */	stw r9, 0x300(r1)
/* 802B9A0C 002B696C  56 24 04 3E */	clrlwi r4, r17, 0x10
/* 802B9A10 002B6970  38 A0 00 13 */	li r5, 0x13
/* 802B9A14 002B6974  38 C0 00 00 */	li r6, 0
/* 802B9A18 002B6978  C8 01 03 00 */	lfd f0, 0x300(r1)
/* 802B9A1C 002B697C  91 01 02 FC */	stw r8, 0x2fc(r1)
/* 802B9A20 002B6980  EC 40 18 28 */	fsubs f2, f0, f3
/* 802B9A24 002B6984  91 21 02 F8 */	stw r9, 0x2f8(r1)
/* 802B9A28 002B6988  C8 01 02 F8 */	lfd f0, 0x2f8(r1)
/* 802B9A2C 002B698C  90 E1 02 F4 */	stw r7, 0x2f4(r1)
/* 802B9A30 002B6990  EC 00 18 28 */	fsubs f0, f0, f3
/* 802B9A34 002B6994  91 21 02 F0 */	stw r9, 0x2f0(r1)
/* 802B9A38 002B6998  C8 21 02 F0 */	lfd f1, 0x2f0(r1)
/* 802B9A3C 002B699C  EF 22 00 24 */	fdivs f25, f2, f0
/* 802B9A40 002B69A0  90 01 02 EC */	stw r0, 0x2ec(r1)
/* 802B9A44 002B69A4  91 21 02 E8 */	stw r9, 0x2e8(r1)
/* 802B9A48 002B69A8  C8 01 02 E8 */	lfd f0, 0x2e8(r1)
/* 802B9A4C 002B69AC  EC 21 18 28 */	fsubs f1, f1, f3
/* 802B9A50 002B69B0  EC 00 18 28 */	fsubs f0, f0, f3
/* 802B9A54 002B69B4  EF 01 00 24 */	fdivs f24, f1, f0
/* 802B9A58 002B69B8  48 0B F4 29 */	bl GXSetTexCopyDst
/* 802B9A5C 002B69BC  3C 60 43 30 */	lis r3, 0x4330
/* 802B9A60 002B69C0  6D E4 80 00 */	xoris r4, r15, 0x8000
/* 802B9A64 002B69C4  6E 20 80 00 */	xoris r0, r17, 0x8000
/* 802B9A68 002B69C8  90 81 02 E4 */	stw r4, 0x2e4(r1)
/* 802B9A6C 002B69CC  C8 42 C2 A0 */	lfd f2, lbl_805ADFC0@sda21(r2)
/* 802B9A70 002B69D0  90 61 02 E0 */	stw r3, 0x2e0(r1)
/* 802B9A74 002B69D4  C0 62 C2 80 */	lfs f3, lbl_805ADFA0@sda21(r2)
/* 802B9A78 002B69D8  C8 01 02 E0 */	lfd f0, 0x2e0(r1)
/* 802B9A7C 002B69DC  90 01 02 DC */	stw r0, 0x2dc(r1)
/* 802B9A80 002B69E0  EC 20 10 28 */	fsubs f1, f0, f2
/* 802B9A84 002B69E4  90 61 02 D8 */	stw r3, 0x2d8(r1)
/* 802B9A88 002B69E8  C8 01 02 D8 */	lfd f0, 0x2d8(r1)
/* 802B9A8C 002B69EC  EF 63 08 24 */	fdivs f27, f3, f1
/* 802B9A90 002B69F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 802B9A94 002B69F4  EF 43 00 24 */	fdivs f26, f3, f0
lbl_802B9A98:
/* 802B9A98 002B69F8  80 01 03 38 */	lwz r0, 0x338(r1)
/* 802B9A9C 002B69FC  56 04 04 3E */	clrlwi r4, r16, 0x10
/* 802B9AA0 002B6A00  55 E5 04 3E */	clrlwi r5, r15, 0x10
/* 802B9AA4 002B6A04  56 26 04 3E */	clrlwi r6, r17, 0x10
/* 802B9AA8 002B6A08  7E 5E 02 14 */	add r18, r30, r0
/* 802B9AAC 002B6A0C  56 43 04 3E */	clrlwi r3, r18, 0x10
/* 802B9AB0 002B6A10  48 0B F3 05 */	bl GXSetTexCopySrc
/* 802B9AB4 002B6A14  80 C1 03 3C */	lwz r6, 0x33c(r1)
/* 802B9AB8 002B6A18  7E 43 93 78 */	mr r3, r18
/* 802B9ABC 002B6A1C  7E 04 83 78 */	mr r4, r16
/* 802B9AC0 002B6A20  7D E5 7B 78 */	mr r5, r15
/* 802B9AC4 002B6A24  48 0C 2B A9 */	bl GXSetScissor
/* 802B9AC8 002B6A28  38 60 00 01 */	li r3, 1
/* 802B9ACC 002B6A2C  38 80 00 03 */	li r4, 3
/* 802B9AD0 002B6A30  38 A0 00 01 */	li r5, 1
/* 802B9AD4 002B6A34  48 04 ED A9 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B9AD8 002B6A38  38 60 00 01 */	li r3, 1
/* 802B9ADC 002B6A3C  48 04 F1 B5 */	bl SetNumTevStages__3CGXFUc
/* 802B9AE0 002B6A40  38 60 00 01 */	li r3, 1
/* 802B9AE4 002B6A44  48 04 F3 31 */	bl SetNumTexGens__3CGXFUc
/* 802B9AE8 002B6A48  38 60 00 00 */	li r3, 0
/* 802B9AEC 002B6A4C  48 04 F3 65 */	bl SetNumChans__3CGXFUc
/* 802B9AF0 002B6A50  38 60 00 01 */	li r3, 1
/* 802B9AF4 002B6A54  38 80 00 00 */	li r4, 0
/* 802B9AF8 002B6A58  38 A0 00 01 */	li r5, 1
/* 802B9AFC 002B6A5C  38 C0 00 00 */	li r6, 0
/* 802B9B00 002B6A60  48 04 ED D1 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B9B04 002B6A64  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802B9B08 002B6A68  38 80 00 02 */	li r4, 2
/* 802B9B0C 002B6A6C  38 A0 00 00 */	li r5, 0
/* 802B9B10 002B6A70  38 63 01 B8 */	addi r3, r3, 0x1b8
/* 802B9B14 002B6A74  48 05 5C 29 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 802B9B18 002B6A78  38 60 00 02 */	li r3, 2
/* 802B9B1C 002B6A7C  48 0B F0 3D */	bl GXSetCullMode
/* 802B9B20 002B6A80  38 60 00 01 */	li r3, 1
/* 802B9B24 002B6A84  38 80 00 FF */	li r4, 0xff
/* 802B9B28 002B6A88  48 0C 25 B9 */	bl GXSetDstAlpha
/* 802B9B2C 002B6A8C  7F 43 D3 78 */	mr r3, r26
/* 802B9B30 002B6A90  7F 64 DB 78 */	mr r4, r27
/* 802B9B34 002B6A94  7F E6 FB 78 */	mr r6, r31
/* 802B9B38 002B6A98  7F 87 E3 78 */	mr r7, r28
/* 802B9B3C 002B6A9C  38 A1 02 44 */	addi r5, r1, 0x244
/* 802B9B40 002B6AA0  48 00 12 DD */	bl RenderFogVolumeModel__13CCubeRendererFRC6CAABoxPC6CModelRC12CTransform4f12CTransform4fPC13CSkinnedModel
/* 802B9B44 002B6AA4  28 18 00 00 */	cmplwi r24, 0
/* 802B9B48 002B6AA8  41 82 00 3C */	beq lbl_802B9B84
/* 802B9B4C 002B6AAC  38 60 00 00 */	li r3, 0
/* 802B9B50 002B6AB0  38 80 00 07 */	li r4, 7
/* 802B9B54 002B6AB4  38 A0 00 00 */	li r5, 0
/* 802B9B58 002B6AB8  48 04 ED 25 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B9B5C 002B6ABC  7F 43 D3 78 */	mr r3, r26
/* 802B9B60 002B6AC0  7F 64 DB 78 */	mr r4, r27
/* 802B9B64 002B6AC4  7F E6 FB 78 */	mr r6, r31
/* 802B9B68 002B6AC8  7F 87 E3 78 */	mr r7, r28
/* 802B9B6C 002B6ACC  38 A1 02 44 */	addi r5, r1, 0x244
/* 802B9B70 002B6AD0  48 00 12 AD */	bl RenderFogVolumeModel__13CCubeRendererFRC6CAABoxPC6CModelRC12CTransform4f12CTransform4fPC13CSkinnedModel
/* 802B9B74 002B6AD4  38 60 00 01 */	li r3, 1
/* 802B9B78 002B6AD8  38 80 00 03 */	li r4, 3
/* 802B9B7C 002B6ADC  38 A0 00 01 */	li r5, 1
/* 802B9B80 002B6AE0  48 04 EC FD */	bl SetZMode__3CGXFUi10_GXCompareUi
lbl_802B9B84:
/* 802B9B84 002B6AE4  38 60 00 01 */	li r3, 1
/* 802B9B88 002B6AE8  38 80 00 00 */	li r4, 0
/* 802B9B8C 002B6AEC  48 0C 25 55 */	bl GXSetDstAlpha
/* 802B9B90 002B6AF0  80 61 03 2C */	lwz r3, 0x32c(r1)
/* 802B9B94 002B6AF4  38 80 00 00 */	li r4, 0
/* 802B9B98 002B6AF8  48 0B F9 9D */	bl GXCopyTex
/* 802B9B9C 002B6AFC  48 0B E9 C9 */	bl GXPixModeSync
/* 802B9BA0 002B6B00  80 C1 03 2C */	lwz r6, 0x32c(r1)
/* 802B9BA4 002B6B04  7D E3 7B 78 */	mr r3, r15
/* 802B9BA8 002B6B08  7E 24 8B 78 */	mr r4, r17
/* 802B9BAC 002B6B0C  38 A0 00 03 */	li r5, 3
/* 802B9BB0 002B6B10  38 E0 00 00 */	li r7, 0
/* 802B9BB4 002B6B14  48 05 04 6D */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802B9BB8 002B6B18  38 60 00 01 */	li r3, 1
/* 802B9BBC 002B6B1C  48 0B EF 9D */	bl GXSetCullMode
/* 802B9BC0 002B6B20  7F 43 D3 78 */	mr r3, r26
/* 802B9BC4 002B6B24  7F 64 DB 78 */	mr r4, r27
/* 802B9BC8 002B6B28  7F E6 FB 78 */	mr r6, r31
/* 802B9BCC 002B6B2C  7F 87 E3 78 */	mr r7, r28
/* 802B9BD0 002B6B30  38 A1 02 44 */	addi r5, r1, 0x244
/* 802B9BD4 002B6B34  48 00 12 49 */	bl RenderFogVolumeModel__13CCubeRendererFRC6CAABoxPC6CModelRC12CTransform4f12CTransform4fPC13CSkinnedModel
/* 802B9BD8 002B6B38  28 18 00 00 */	cmplwi r24, 0
/* 802B9BDC 002B6B3C  41 82 00 3C */	beq lbl_802B9C18
/* 802B9BE0 002B6B40  38 60 00 01 */	li r3, 1
/* 802B9BE4 002B6B44  38 80 00 04 */	li r4, 4
/* 802B9BE8 002B6B48  38 A0 00 00 */	li r5, 0
/* 802B9BEC 002B6B4C  48 04 EC 91 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B9BF0 002B6B50  7F 43 D3 78 */	mr r3, r26
/* 802B9BF4 002B6B54  7F 64 DB 78 */	mr r4, r27
/* 802B9BF8 002B6B58  7F E6 FB 78 */	mr r6, r31
/* 802B9BFC 002B6B5C  7F 87 E3 78 */	mr r7, r28
/* 802B9C00 002B6B60  38 A1 02 44 */	addi r5, r1, 0x244
/* 802B9C04 002B6B64  48 00 12 19 */	bl RenderFogVolumeModel__13CCubeRendererFRC6CAABoxPC6CModelRC12CTransform4f12CTransform4fPC13CSkinnedModel
/* 802B9C08 002B6B68  38 60 00 01 */	li r3, 1
/* 802B9C0C 002B6B6C  38 80 00 03 */	li r4, 3
/* 802B9C10 002B6B70  38 A0 00 01 */	li r5, 1
/* 802B9C14 002B6B74  48 04 EC 69 */	bl SetZMode__3CGXFUi10_GXCompareUi
lbl_802B9C18:
/* 802B9C18 002B6B78  80 61 03 28 */	lwz r3, 0x328(r1)
/* 802B9C1C 002B6B7C  38 80 00 00 */	li r4, 0
/* 802B9C20 002B6B80  48 0B F9 15 */	bl GXCopyTex
/* 802B9C24 002B6B84  48 0B E9 41 */	bl GXPixModeSync
/* 802B9C28 002B6B88  80 C1 03 28 */	lwz r6, 0x328(r1)
/* 802B9C2C 002B6B8C  7D E3 7B 78 */	mr r3, r15
/* 802B9C30 002B6B90  7E 24 8B 78 */	mr r4, r17
/* 802B9C34 002B6B94  38 A0 00 03 */	li r5, 3
/* 802B9C38 002B6B98  38 E0 00 01 */	li r7, 1
/* 802B9C3C 002B6B9C  48 05 03 E5 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802B9C40 002B6BA0  38 60 00 00 */	li r3, 0
/* 802B9C44 002B6BA4  38 80 00 0F */	li r4, 0xf
/* 802B9C48 002B6BA8  38 A0 00 0F */	li r5, 0xf
/* 802B9C4C 002B6BAC  38 C0 00 0F */	li r6, 0xf
/* 802B9C50 002B6BB0  38 E0 00 0E */	li r7, 0xe
/* 802B9C54 002B6BB4  48 04 EF 99 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B9C58 002B6BB8  38 60 00 00 */	li r3, 0
/* 802B9C5C 002B6BBC  38 80 00 00 */	li r4, 0
/* 802B9C60 002B6BC0  38 A0 00 00 */	li r5, 0
/* 802B9C64 002B6BC4  38 C0 00 00 */	li r6, 0
/* 802B9C68 002B6BC8  38 E0 00 01 */	li r7, 1
/* 802B9C6C 002B6BCC  39 00 00 00 */	li r8, 0
/* 802B9C70 002B6BD0  48 04 EE C9 */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B9C74 002B6BD4  38 60 00 00 */	li r3, 0
/* 802B9C78 002B6BD8  38 80 00 0C */	li r4, 0xc
/* 802B9C7C 002B6BDC  48 04 ED 65 */	bl SetTevKColorSel__3CGXF13_GXTevStageID15_GXTevKColorSel
/* 802B9C80 002B6BE0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 802B9C84 002B6BE4  38 60 00 00 */	li r3, 0
/* 802B9C88 002B6BE8  48 04 EF BD */	bl SetTevKColor__3CGXF14_GXTevKColorIDRC8_GXColor
/* 802B9C8C 002B6BEC  48 0C 0B B5 */	bl GXInvalidateTexAll
/* 802B9C90 002B6BF0  38 60 00 00 */	li r3, 0
/* 802B9C94 002B6BF4  38 80 00 00 */	li r4, 0
/* 802B9C98 002B6BF8  38 A0 00 04 */	li r5, 4
/* 802B9C9C 002B6BFC  38 C0 00 3C */	li r6, 0x3c
/* 802B9CA0 002B6C00  38 E0 00 00 */	li r7, 0
/* 802B9CA4 002B6C04  39 00 00 7D */	li r8, 0x7d
/* 802B9CA8 002B6C08  48 04 EA 25 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B9CAC 002B6C0C  38 60 00 01 */	li r3, 1
/* 802B9CB0 002B6C10  38 80 00 01 */	li r4, 1
/* 802B9CB4 002B6C14  38 A0 00 00 */	li r5, 0
/* 802B9CB8 002B6C18  38 C0 00 1E */	li r6, 0x1e
/* 802B9CBC 002B6C1C  38 E0 00 00 */	li r7, 0
/* 802B9CC0 002B6C20  39 00 00 7D */	li r8, 0x7d
/* 802B9CC4 002B6C24  48 04 EA 09 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802B9CC8 002B6C28  38 60 00 02 */	li r3, 2
/* 802B9CCC 002B6C2C  48 04 F1 49 */	bl SetNumTexGens__3CGXFUc
/* 802B9CD0 002B6C30  38 60 00 00 */	li r3, 0
/* 802B9CD4 002B6C34  48 04 F1 7D */	bl SetNumChans__3CGXFUc
/* 802B9CD8 002B6C38  48 05 01 85 */	bl GetProjectionState__9CGraphicsFv
/* 802B9CDC 002B6C3C  88 03 00 00 */	lbz r0, 0(r3)
/* 802B9CE0 002B6C40  98 01 00 EC */	stb r0, 0xec(r1)
/* 802B9CE4 002B6C44  C0 03 00 04 */	lfs f0, 4(r3)
/* 802B9CE8 002B6C48  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 802B9CEC 002B6C4C  C0 03 00 08 */	lfs f0, 8(r3)
/* 802B9CF0 002B6C50  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 802B9CF4 002B6C54  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802B9CF8 002B6C58  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 802B9CFC 002B6C5C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802B9D00 002B6C60  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 802B9D04 002B6C64  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802B9D08 002B6C68  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 802B9D0C 002B6C6C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802B9D10 002B6C70  80 61 03 40 */	lwz r3, 0x340(r1)
/* 802B9D14 002B6C74  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 802B9D18 002B6C78  38 63 01 7C */	addi r3, r3, 0x17c
/* 802B9D1C 002B6C7C  48 04 E1 0D */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802B9D20 002B6C80  80 81 03 48 */	lwz r4, 0x348(r1)
/* 802B9D24 002B6C84  38 61 01 80 */	addi r3, r1, 0x180
/* 802B9D28 002B6C88  48 05 8E 4D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802B9D2C 002B6C8C  80 61 00 54 */	lwz r3, 0x54(r1)
/* 802B9D30 002B6C90  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802B9D34 002B6C94  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802B9D38 002B6C98  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802B9D3C 002B6C9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802B9D40 002B6CA0  90 61 03 04 */	stw r3, 0x304(r1)
/* 802B9D44 002B6CA4  FC 60 08 90 */	fmr f3, f1
/* 802B9D48 002B6CA8  C0 A2 C2 90 */	lfs f5, lbl_805ADFB0@sda21(r2)
/* 802B9D4C 002B6CAC  92 61 03 00 */	stw r19, 0x300(r1)
/* 802B9D50 002B6CB0  C0 C2 C2 94 */	lfs f6, lbl_805ADFB4@sda21(r2)
/* 802B9D54 002B6CB4  C8 01 03 00 */	lfd f0, 0x300(r1)
/* 802B9D58 002B6CB8  90 01 02 FC */	stw r0, 0x2fc(r1)
/* 802B9D5C 002B6CBC  EC 40 F0 28 */	fsubs f2, f0, f30
/* 802B9D60 002B6CC0  92 61 02 F8 */	stw r19, 0x2f8(r1)
/* 802B9D64 002B6CC4  C8 01 02 F8 */	lfd f0, 0x2f8(r1)
/* 802B9D68 002B6CC8  EC 80 F0 28 */	fsubs f4, f0, f30
/* 802B9D6C 002B6CCC  48 05 27 E9 */	bl SetOrtho__9CGraphicsFffffff
/* 802B9D70 002B6CD0  7D C3 73 78 */	mr r3, r14
/* 802B9D74 002B6CD4  48 05 29 D9 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802B9D78 002B6CD8  7D C3 73 78 */	mr r3, r14
/* 802B9D7C 002B6CDC  48 05 28 65 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802B9D80 002B6CE0  38 60 00 00 */	li r3, 0
/* 802B9D84 002B6CE4  38 80 00 07 */	li r4, 7
/* 802B9D88 002B6CE8  38 A0 00 00 */	li r5, 0
/* 802B9D8C 002B6CEC  48 04 EA F1 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802B9D90 002B6CF0  38 60 00 00 */	li r3, 0
/* 802B9D94 002B6CF4  48 0B ED C5 */	bl GXSetCullMode
/* 802B9D98 002B6CF8  38 60 00 00 */	li r3, 0
/* 802B9D9C 002B6CFC  48 0C 21 91 */	bl GXSetAlphaUpdate
/* 802B9DA0 002B6D00  EF BA C0 2A */	fadds f29, f26, f24
/* 802B9DA4 002B6D04  7C 1E 7A 14 */	add r0, r30, r15
/* 802B9DA8 002B6D08  EF 9B C8 2A */	fadds f28, f27, f25
/* 802B9DAC 002B6D0C  6F D2 80 00 */	xoris r18, r30, 0x8000
/* 802B9DB0 002B6D10  6C 17 80 00 */	xoris r23, r0, 0x8000
/* 802B9DB4 002B6D14  3B A0 00 00 */	li r29, 0
/* 802B9DB8 002B6D18  48 00 03 44 */	b lbl_802BA0FC
lbl_802B9DBC:
/* 802B9DBC 002B6D1C  2C 1D 00 00 */	cmpwi r29, 0
/* 802B9DC0 002B6D20  40 82 01 7C */	bne lbl_802B9F3C
/* 802B9DC4 002B6D24  38 00 00 00 */	li r0, 0
/* 802B9DC8 002B6D28  38 60 00 00 */	li r3, 0
/* 802B9DCC 002B6D2C  90 01 00 08 */	stw r0, 8(r1)
/* 802B9DD0 002B6D30  38 80 00 00 */	li r4, 0
/* 802B9DD4 002B6D34  38 A0 00 00 */	li r5, 0
/* 802B9DD8 002B6D38  38 C0 00 00 */	li r6, 0
/* 802B9DDC 002B6D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B9DE0 002B6D40  38 E0 00 01 */	li r7, 1
/* 802B9DE4 002B6D44  39 00 00 00 */	li r8, 0
/* 802B9DE8 002B6D48  39 20 00 00 */	li r9, 0
/* 802B9DEC 002B6D4C  39 40 00 00 */	li r10, 0
/* 802B9DF0 002B6D50  48 04 E9 9D */	bl SetTevIndirect__3CGXF13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
/* 802B9DF4 002B6D54  38 00 00 00 */	li r0, 0
/* 802B9DF8 002B6D58  38 60 00 01 */	li r3, 1
/* 802B9DFC 002B6D5C  90 01 00 08 */	stw r0, 8(r1)
/* 802B9E00 002B6D60  38 80 00 01 */	li r4, 1
/* 802B9E04 002B6D64  38 A0 00 00 */	li r5, 0
/* 802B9E08 002B6D68  38 C0 00 00 */	li r6, 0
/* 802B9E0C 002B6D6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B9E10 002B6D70  38 E0 00 01 */	li r7, 1
/* 802B9E14 002B6D74  39 00 00 00 */	li r8, 0
/* 802B9E18 002B6D78  39 20 00 00 */	li r9, 0
/* 802B9E1C 002B6D7C  39 40 00 00 */	li r10, 0
/* 802B9E20 002B6D80  48 04 E9 6D */	bl SetTevIndirect__3CGXF13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
/* 802B9E24 002B6D84  38 60 00 00 */	li r3, 0
/* 802B9E28 002B6D88  38 80 00 00 */	li r4, 0
/* 802B9E2C 002B6D8C  38 A0 00 01 */	li r5, 1
/* 802B9E30 002B6D90  48 0C 13 75 */	bl GXSetIndTexOrder
/* 802B9E34 002B6D94  38 60 00 01 */	li r3, 1
/* 802B9E38 002B6D98  38 80 00 00 */	li r4, 0
/* 802B9E3C 002B6D9C  38 A0 00 00 */	li r5, 0
/* 802B9E40 002B6DA0  48 0C 13 65 */	bl GXSetIndTexOrder
/* 802B9E44 002B6DA4  38 60 00 00 */	li r3, 0
/* 802B9E48 002B6DA8  38 80 00 07 */	li r4, 7
/* 802B9E4C 002B6DAC  38 A0 00 07 */	li r5, 7
/* 802B9E50 002B6DB0  38 C0 00 07 */	li r6, 7
/* 802B9E54 002B6DB4  38 E0 00 04 */	li r7, 4
/* 802B9E58 002B6DB8  48 04 ED 3D */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B9E5C 002B6DBC  38 60 00 00 */	li r3, 0
/* 802B9E60 002B6DC0  38 80 00 00 */	li r4, 0
/* 802B9E64 002B6DC4  38 A0 00 00 */	li r5, 0
/* 802B9E68 002B6DC8  38 C0 00 00 */	li r6, 0
/* 802B9E6C 002B6DCC  38 E0 00 01 */	li r7, 1
/* 802B9E70 002B6DD0  39 00 00 00 */	li r8, 0
/* 802B9E74 002B6DD4  48 04 EC 0D */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B9E78 002B6DD8  38 60 00 00 */	li r3, 0
/* 802B9E7C 002B6DDC  38 80 00 01 */	li r4, 1
/* 802B9E80 002B6DE0  38 A0 00 02 */	li r5, 2
/* 802B9E84 002B6DE4  38 C0 00 FF */	li r6, 0xff
/* 802B9E88 002B6DE8  48 04 EA C5 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B9E8C 002B6DEC  38 60 00 01 */	li r3, 1
/* 802B9E90 002B6DF0  38 80 00 07 */	li r4, 7
/* 802B9E94 002B6DF4  38 A0 00 06 */	li r5, 6
/* 802B9E98 002B6DF8  38 C0 00 00 */	li r6, 0
/* 802B9E9C 002B6DFC  38 E0 00 04 */	li r7, 4
/* 802B9EA0 002B6E00  48 04 EC F5 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B9EA4 002B6E04  38 60 00 01 */	li r3, 1
/* 802B9EA8 002B6E08  38 80 00 01 */	li r4, 1
/* 802B9EAC 002B6E0C  38 A0 00 00 */	li r5, 0
/* 802B9EB0 002B6E10  38 C0 00 01 */	li r6, 1
/* 802B9EB4 002B6E14  38 E0 00 01 */	li r7, 1
/* 802B9EB8 002B6E18  39 00 00 00 */	li r8, 0
/* 802B9EBC 002B6E1C  48 04 EB C5 */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B9EC0 002B6E20  38 60 00 01 */	li r3, 1
/* 802B9EC4 002B6E24  38 80 00 01 */	li r4, 1
/* 802B9EC8 002B6E28  38 A0 00 02 */	li r5, 2
/* 802B9ECC 002B6E2C  38 C0 00 FF */	li r6, 0xff
/* 802B9ED0 002B6E30  48 04 EA 7D */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B9ED4 002B6E34  38 60 00 01 */	li r3, 1
/* 802B9ED8 002B6E38  38 80 00 00 */	li r4, 0
/* 802B9EDC 002B6E3C  48 04 EA C1 */	bl SetTevKAlphaSel__3CGXF13_GXTevStageID15_GXTevKAlphaSel
/* 802B9EE0 002B6E40  38 60 00 01 */	li r3, 1
/* 802B9EE4 002B6E44  38 80 00 0F */	li r4, 0xf
/* 802B9EE8 002B6E48  38 A0 00 0F */	li r5, 0xf
/* 802B9EEC 002B6E4C  38 C0 00 0F */	li r6, 0xf
/* 802B9EF0 002B6E50  38 E0 00 00 */	li r7, 0
/* 802B9EF4 002B6E54  48 04 EC F9 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B9EF8 002B6E58  38 60 00 01 */	li r3, 1
/* 802B9EFC 002B6E5C  38 80 00 00 */	li r4, 0
/* 802B9F00 002B6E60  38 A0 00 00 */	li r5, 0
/* 802B9F04 002B6E64  38 C0 00 00 */	li r6, 0
/* 802B9F08 002B6E68  38 E0 00 01 */	li r7, 1
/* 802B9F0C 002B6E6C  39 00 00 00 */	li r8, 0
/* 802B9F10 002B6E70  48 04 EC 29 */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B9F14 002B6E74  38 60 00 02 */	li r3, 2
/* 802B9F18 002B6E78  48 04 E7 79 */	bl SetNumIndStages__3CGXFUc
/* 802B9F1C 002B6E7C  38 60 00 02 */	li r3, 2
/* 802B9F20 002B6E80  48 04 ED 71 */	bl SetNumTevStages__3CGXFUc
/* 802B9F24 002B6E84  38 60 00 01 */	li r3, 1
/* 802B9F28 002B6E88  38 80 00 04 */	li r4, 4
/* 802B9F2C 002B6E8C  38 A0 00 01 */	li r5, 1
/* 802B9F30 002B6E90  38 C0 00 00 */	li r6, 0
/* 802B9F34 002B6E94  48 04 E9 9D */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802B9F38 002B6E98  48 00 00 DC */	b lbl_802BA014
lbl_802B9F3C:
/* 802B9F3C 002B6E9C  2C 1D 00 01 */	cmpwi r29, 1
/* 802B9F40 002B6EA0  40 82 00 D4 */	bne lbl_802BA014
/* 802B9F44 002B6EA4  38 60 00 01 */	li r3, 1
/* 802B9F48 002B6EA8  48 04 E7 FD */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802B9F4C 002B6EAC  38 60 00 00 */	li r3, 0
/* 802B9F50 002B6EB0  38 80 00 00 */	li r4, 0
/* 802B9F54 002B6EB4  38 A0 00 00 */	li r5, 0
/* 802B9F58 002B6EB8  48 0C 12 4D */	bl GXSetIndTexOrder
/* 802B9F5C 002B6EBC  38 60 00 00 */	li r3, 0
/* 802B9F60 002B6EC0  38 80 00 07 */	li r4, 7
/* 802B9F64 002B6EC4  38 A0 00 07 */	li r5, 7
/* 802B9F68 002B6EC8  38 C0 00 07 */	li r6, 7
/* 802B9F6C 002B6ECC  38 E0 00 04 */	li r7, 4
/* 802B9F70 002B6ED0  48 04 EC 25 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B9F74 002B6ED4  38 60 00 00 */	li r3, 0
/* 802B9F78 002B6ED8  38 80 00 00 */	li r4, 0
/* 802B9F7C 002B6EDC  38 A0 00 00 */	li r5, 0
/* 802B9F80 002B6EE0  38 C0 00 01 */	li r6, 1
/* 802B9F84 002B6EE4  38 E0 00 01 */	li r7, 1
/* 802B9F88 002B6EE8  39 00 00 00 */	li r8, 0
/* 802B9F8C 002B6EEC  48 04 EA F5 */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802B9F90 002B6EF0  38 60 00 00 */	li r3, 0
/* 802B9F94 002B6EF4  38 80 00 01 */	li r4, 1
/* 802B9F98 002B6EF8  38 A0 00 02 */	li r5, 2
/* 802B9F9C 002B6EFC  38 C0 00 FF */	li r6, 0xff
/* 802B9FA0 002B6F00  48 04 E9 AD */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B9FA4 002B6F04  38 60 00 01 */	li r3, 1
/* 802B9FA8 002B6F08  38 80 00 0F */	li r4, 0xf
/* 802B9FAC 002B6F0C  38 A0 00 01 */	li r5, 1
/* 802B9FB0 002B6F10  38 C0 00 00 */	li r6, 0
/* 802B9FB4 002B6F14  38 E0 00 0F */	li r7, 0xf
/* 802B9FB8 002B6F18  48 04 EC 35 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802B9FBC 002B6F1C  38 60 00 01 */	li r3, 1
/* 802B9FC0 002B6F20  38 80 00 01 */	li r4, 1
/* 802B9FC4 002B6F24  38 A0 00 02 */	li r5, 2
/* 802B9FC8 002B6F28  38 C0 00 FF */	li r6, 0xff
/* 802B9FCC 002B6F2C  48 04 E9 81 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802B9FD0 002B6F30  38 60 00 01 */	li r3, 1
/* 802B9FD4 002B6F34  38 80 00 07 */	li r4, 7
/* 802B9FD8 002B6F38  38 A0 00 07 */	li r5, 7
/* 802B9FDC 002B6F3C  38 C0 00 07 */	li r6, 7
/* 802B9FE0 002B6F40  38 E0 00 00 */	li r7, 0
/* 802B9FE4 002B6F44  48 04 EB B1 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802B9FE8 002B6F48  38 60 00 01 */	li r3, 1
/* 802B9FEC 002B6F4C  48 04 DC 65 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802B9FF0 002B6F50  38 60 00 01 */	li r3, 1
/* 802B9FF4 002B6F54  48 04 E6 9D */	bl SetNumIndStages__3CGXFUc
/* 802B9FF8 002B6F58  38 60 00 02 */	li r3, 2
/* 802B9FFC 002B6F5C  48 04 EC 95 */	bl SetNumTevStages__3CGXFUc
/* 802BA000 002B6F60  38 60 00 01 */	li r3, 1
/* 802BA004 002B6F64  38 80 00 06 */	li r4, 6
/* 802BA008 002B6F68  38 A0 00 01 */	li r5, 1
/* 802BA00C 002B6F6C  38 C0 00 00 */	li r6, 0
/* 802BA010 002B6F70  48 04 E8 C1 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
lbl_802BA014:
/* 802BA014 002B6F74  38 60 00 A0 */	li r3, 0xa0
/* 802BA018 002B6F78  38 80 00 00 */	li r4, 0
/* 802BA01C 002B6F7C  38 A0 00 04 */	li r5, 4
/* 802BA020 002B6F80  48 04 E5 65 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802BA024 002B6F84  92 41 03 04 */	stw r18, 0x304(r1)
/* 802BA028 002B6F88  92 61 03 00 */	stw r19, 0x300(r1)
/* 802BA02C 002B6F8C  C8 01 03 00 */	lfd f0, 0x300(r1)
/* 802BA030 002B6F90  92 A1 02 FC */	stw r21, 0x2fc(r1)
/* 802BA034 002B6F94  EC 20 F0 28 */	fsubs f1, f0, f30
/* 802BA038 002B6F98  92 61 02 F8 */	stw r19, 0x2f8(r1)
/* 802BA03C 002B6F9C  C8 01 02 F8 */	lfd f0, 0x2f8(r1)
/* 802BA040 002B6FA0  D0 34 80 00 */	stfs f1, 0xCC008000@l(r20)
/* 802BA044 002B6FA4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 802BA048 002B6FA8  D3 F4 80 00 */	stfs f31, 0xCC008000@l(r20)
/* 802BA04C 002B6FAC  D0 14 80 00 */	stfs f0, 0xCC008000@l(r20)
/* 802BA050 002B6FB0  D3 74 80 00 */	stfs f27, 0xCC008000@l(r20)
/* 802BA054 002B6FB4  92 41 02 F4 */	stw r18, 0x2f4(r1)
/* 802BA058 002B6FB8  92 61 02 F0 */	stw r19, 0x2f0(r1)
/* 802BA05C 002B6FBC  C8 01 02 F0 */	lfd f0, 0x2f0(r1)
/* 802BA060 002B6FC0  92 C1 02 EC */	stw r22, 0x2ec(r1)
/* 802BA064 002B6FC4  EC 20 F0 28 */	fsubs f1, f0, f30
/* 802BA068 002B6FC8  92 61 02 E8 */	stw r19, 0x2e8(r1)
/* 802BA06C 002B6FCC  D3 54 80 00 */	stfs f26, 0xCC008000@l(r20)
/* 802BA070 002B6FD0  C8 01 02 E8 */	lfd f0, 0x2e8(r1)
/* 802BA074 002B6FD4  D0 34 80 00 */	stfs f1, 0xCC008000@l(r20)
/* 802BA078 002B6FD8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 802BA07C 002B6FDC  D3 F4 80 00 */	stfs f31, 0xCC008000@l(r20)
/* 802BA080 002B6FE0  D0 14 80 00 */	stfs f0, 0xCC008000@l(r20)
/* 802BA084 002B6FE4  D3 74 80 00 */	stfs f27, 0xCC008000@l(r20)
/* 802BA088 002B6FE8  92 E1 02 E4 */	stw r23, 0x2e4(r1)
/* 802BA08C 002B6FEC  92 61 02 E0 */	stw r19, 0x2e0(r1)
/* 802BA090 002B6FF0  C8 01 02 E0 */	lfd f0, 0x2e0(r1)
/* 802BA094 002B6FF4  92 C1 02 DC */	stw r22, 0x2dc(r1)
/* 802BA098 002B6FF8  EC 20 F0 28 */	fsubs f1, f0, f30
/* 802BA09C 002B6FFC  92 61 02 D8 */	stw r19, 0x2d8(r1)
/* 802BA0A0 002B7000  D3 B4 80 00 */	stfs f29, 0xCC008000@l(r20)
/* 802BA0A4 002B7004  C8 01 02 D8 */	lfd f0, 0x2d8(r1)
/* 802BA0A8 002B7008  D0 34 80 00 */	stfs f1, 0xCC008000@l(r20)
/* 802BA0AC 002B700C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 802BA0B0 002B7010  D3 F4 80 00 */	stfs f31, 0xCC008000@l(r20)
/* 802BA0B4 002B7014  D0 14 80 00 */	stfs f0, 0xCC008000@l(r20)
/* 802BA0B8 002B7018  D3 94 80 00 */	stfs f28, 0xCC008000@l(r20)
/* 802BA0BC 002B701C  92 E1 03 0C */	stw r23, 0x30c(r1)
/* 802BA0C0 002B7020  92 61 03 08 */	stw r19, 0x308(r1)
/* 802BA0C4 002B7024  C8 01 03 08 */	lfd f0, 0x308(r1)
/* 802BA0C8 002B7028  92 A1 03 14 */	stw r21, 0x314(r1)
/* 802BA0CC 002B702C  EC 20 F0 28 */	fsubs f1, f0, f30
/* 802BA0D0 002B7030  92 61 03 10 */	stw r19, 0x310(r1)
/* 802BA0D4 002B7034  D3 B4 80 00 */	stfs f29, 0xCC008000@l(r20)
/* 802BA0D8 002B7038  C8 01 03 10 */	lfd f0, 0x310(r1)
/* 802BA0DC 002B703C  D0 34 80 00 */	stfs f1, 0xCC008000@l(r20)
/* 802BA0E0 002B7040  EC 00 F0 28 */	fsubs f0, f0, f30
/* 802BA0E4 002B7044  D3 F4 80 00 */	stfs f31, 0xCC008000@l(r20)
/* 802BA0E8 002B7048  D0 14 80 00 */	stfs f0, 0xCC008000@l(r20)
/* 802BA0EC 002B704C  D3 94 80 00 */	stfs f28, 0xCC008000@l(r20)
/* 802BA0F0 002B7050  D3 54 80 00 */	stfs f26, 0xCC008000@l(r20)
/* 802BA0F4 002B7054  48 04 E4 8D */	bl End__3CGXFv
/* 802BA0F8 002B7058  3B BD 00 01 */	addi r29, r29, 1
lbl_802BA0FC:
/* 802BA0FC 002B705C  7C 1D C8 00 */	cmpw r29, r25
/* 802BA100 002B7060  41 80 FC BC */	blt lbl_802B9DBC
/* 802BA104 002B7064  38 60 00 01 */	li r3, 1
/* 802BA108 002B7068  48 0C 1E 25 */	bl GXSetAlphaUpdate
/* 802BA10C 002B706C  38 61 01 80 */	addi r3, r1, 0x180
/* 802BA110 002B7070  48 05 26 3D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BA114 002B7074  38 60 00 00 */	li r3, 0
/* 802BA118 002B7078  48 04 E5 79 */	bl SetNumIndStages__3CGXFUc
/* 802BA11C 002B707C  38 60 00 00 */	li r3, 0
/* 802BA120 002B7080  48 04 E6 25 */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802BA124 002B7084  38 60 00 01 */	li r3, 1
/* 802BA128 002B7088  48 04 E6 1D */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802BA12C 002B708C  38 60 00 01 */	li r3, 1
/* 802BA130 002B7090  48 0B EA 29 */	bl GXSetCullMode
/* 802BA134 002B7094  38 61 00 EC */	addi r3, r1, 0xec
/* 802BA138 002B7098  48 04 FC C9 */	bl SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState
/* 802BA13C 002B709C  38 60 00 01 */	li r3, 1
/* 802BA140 002B70A0  38 80 00 01 */	li r4, 1
/* 802BA144 002B70A4  38 A0 00 00 */	li r5, 0
/* 802BA148 002B70A8  38 C0 00 00 */	li r6, 0
/* 802BA14C 002B70AC  48 04 E7 85 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802BA150 002B70B0  7F DE 7A 14 */	add r30, r30, r15
lbl_802BA154:
/* 802BA154 002B70B4  80 01 03 20 */	lwz r0, 0x320(r1)
/* 802BA158 002B70B8  7C 1E 00 00 */	cmpw r30, r0
/* 802BA15C 002B70BC  41 80 F8 54 */	blt lbl_802B99B0
/* 802BA160 002B70C0  80 01 03 18 */	lwz r0, 0x318(r1)
/* 802BA164 002B70C4  7C 00 8A 14 */	add r0, r0, r17
/* 802BA168 002B70C8  90 01 03 18 */	stw r0, 0x318(r1)
lbl_802BA16C:
/* 802BA16C 002B70CC  80 61 03 18 */	lwz r3, 0x318(r1)
/* 802BA170 002B70D0  80 01 03 1C */	lwz r0, 0x31c(r1)
/* 802BA174 002B70D4  7C 03 00 00 */	cmpw r3, r0
/* 802BA178 002B70D8  41 80 F7 D8 */	blt lbl_802B9950
/* 802BA17C 002B70DC  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 802BA180 002B70E0  80 61 03 38 */	lwz r3, 0x338(r1)
/* 802BA184 002B70E4  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 802BA188 002B70E8  80 81 03 34 */	lwz r4, 0x334(r1)
/* 802BA18C 002B70EC  48 0C 24 E1 */	bl GXSetScissor
/* 802BA190 002B70F0  80 01 03 44 */	lwz r0, 0x344(r1)
/* 802BA194 002B70F4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802BA198 002B70F8  48 04 F6 75 */	bl SetUseVideoFilter__9CGraphicsFb
/* 802BA19C 002B70FC  80 A1 01 B0 */	lwz r5, 0x1b0(r1)
/* 802BA1A0 002B7100  38 60 00 00 */	li r3, 0
/* 802BA1A4 002B7104  2C 05 00 00 */	cmpwi r5, 0
/* 802BA1A8 002B7108  40 81 00 40 */	ble lbl_802BA1E8
/* 802BA1AC 002B710C  2C 05 00 08 */	cmpwi r5, 8
/* 802BA1B0 002B7110  38 85 FF F8 */	addi r4, r5, -8
/* 802BA1B4 002B7114  40 81 00 20 */	ble lbl_802BA1D4
/* 802BA1B8 002B7118  38 04 00 07 */	addi r0, r4, 7
/* 802BA1BC 002B711C  54 00 E8 FE */	srwi r0, r0, 3
/* 802BA1C0 002B7120  7C 09 03 A6 */	mtctr r0
/* 802BA1C4 002B7124  2C 04 00 00 */	cmpwi r4, 0
/* 802BA1C8 002B7128  40 81 00 0C */	ble lbl_802BA1D4
lbl_802BA1CC:
/* 802BA1CC 002B712C  38 63 00 08 */	addi r3, r3, 8
/* 802BA1D0 002B7130  42 00 FF FC */	bdnz lbl_802BA1CC
lbl_802BA1D4:
/* 802BA1D4 002B7134  7C 03 28 50 */	subf r0, r3, r5
/* 802BA1D8 002B7138  7C 09 03 A6 */	mtctr r0
/* 802BA1DC 002B713C  7C 03 28 00 */	cmpw r3, r5
/* 802BA1E0 002B7140  40 80 00 08 */	bge lbl_802BA1E8
lbl_802BA1E4:
/* 802BA1E4 002B7144  42 00 00 00 */	bdnz lbl_802BA1E4
lbl_802BA1E8:
/* 802BA1E8 002B7148  80 A1 02 74 */	lwz r5, 0x274(r1)
/* 802BA1EC 002B714C  38 60 00 00 */	li r3, 0
/* 802BA1F0 002B7150  90 61 01 B0 */	stw r3, 0x1b0(r1)
/* 802BA1F4 002B7154  2C 05 00 00 */	cmpwi r5, 0
/* 802BA1F8 002B7158  40 81 00 40 */	ble lbl_802BA238
/* 802BA1FC 002B715C  2C 05 00 08 */	cmpwi r5, 8
/* 802BA200 002B7160  38 85 FF F8 */	addi r4, r5, -8
/* 802BA204 002B7164  40 81 00 20 */	ble lbl_802BA224
/* 802BA208 002B7168  38 04 00 07 */	addi r0, r4, 7
/* 802BA20C 002B716C  54 00 E8 FE */	srwi r0, r0, 3
/* 802BA210 002B7170  7C 09 03 A6 */	mtctr r0
/* 802BA214 002B7174  2C 04 00 00 */	cmpwi r4, 0
/* 802BA218 002B7178  40 81 00 0C */	ble lbl_802BA224
lbl_802BA21C:
/* 802BA21C 002B717C  38 63 00 08 */	addi r3, r3, 8
/* 802BA220 002B7180  42 00 FF FC */	bdnz lbl_802BA21C
lbl_802BA224:
/* 802BA224 002B7184  7C 03 28 50 */	subf r0, r3, r5
/* 802BA228 002B7188  7C 09 03 A6 */	mtctr r0
/* 802BA22C 002B718C  7C 03 28 00 */	cmpw r3, r5
/* 802BA230 002B7190  40 80 00 08 */	bge lbl_802BA238
lbl_802BA234:
/* 802BA234 002B7194  42 00 00 00 */	bdnz lbl_802BA234
lbl_802BA238:
/* 802BA238 002B7198  38 00 00 00 */	li r0, 0
/* 802BA23C 002B719C  90 01 02 74 */	stw r0, 0x274(r1)
lbl_802BA240:
/* 802BA240 002B71A0  E3 E1 04 18 */	psq_l f31, 1048(r1), 0, qr0
/* 802BA244 002B71A4  CB E1 04 10 */	lfd f31, 0x410(r1)
/* 802BA248 002B71A8  E3 C1 04 08 */	psq_l f30, 1032(r1), 0, qr0
/* 802BA24C 002B71AC  CB C1 04 00 */	lfd f30, 0x400(r1)
/* 802BA250 002B71B0  E3 A1 03 F8 */	psq_l f29, 1016(r1), 0, qr0
/* 802BA254 002B71B4  CB A1 03 F0 */	lfd f29, 0x3f0(r1)
/* 802BA258 002B71B8  E3 81 03 E8 */	psq_l f28, 1000(r1), 0, qr0
/* 802BA25C 002B71BC  CB 81 03 E0 */	lfd f28, 0x3e0(r1)
/* 802BA260 002B71C0  E3 61 03 D8 */	psq_l f27, 984(r1), 0, qr0
/* 802BA264 002B71C4  CB 61 03 D0 */	lfd f27, 0x3d0(r1)
/* 802BA268 002B71C8  E3 41 03 C8 */	psq_l f26, 968(r1), 0, qr0
/* 802BA26C 002B71CC  CB 41 03 C0 */	lfd f26, 0x3c0(r1)
/* 802BA270 002B71D0  E3 21 03 B8 */	psq_l f25, 952(r1), 0, qr0
/* 802BA274 002B71D4  CB 21 03 B0 */	lfd f25, 0x3b0(r1)
/* 802BA278 002B71D8  E3 01 03 A8 */	psq_l f24, 936(r1), 0, qr0
/* 802BA27C 002B71DC  CB 01 03 A0 */	lfd f24, 0x3a0(r1)
/* 802BA280 002B71E0  B9 C1 03 58 */	lmw r14, 0x358(r1)
/* 802BA284 002B71E4  80 01 04 24 */	lwz r0, 0x424(r1)
/* 802BA288 002B71E8  7C 08 03 A6 */	mtlr r0
/* 802BA28C 002B71EC  38 21 04 20 */	addi r1, r1, 0x420
/* 802BA290 002B71F0  4E 80 00 20 */	blr

.global "RenderFogVolume__13CCubeRendererFRC6CColorRC6CAABoxPC21TLockedToken<6CModel>PC13CSkinnedModel"
"RenderFogVolume__13CCubeRendererFRC6CColorRC6CAABoxPC21TLockedToken<6CModel>PC13CSkinnedModel":
/* 802BA294 002B71F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802BA298 002B71F8  7C 08 02 A6 */	mflr r0
/* 802BA29C 002B71FC  7C C9 33 78 */	mr r9, r6
/* 802BA2A0 002B7200  7C E8 3B 78 */	mr r8, r7
/* 802BA2A4 002B7204  90 01 00 84 */	stw r0, 0x84(r1)
/* 802BA2A8 002B7208  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802BA2AC 002B720C  7C 7F 1B 78 */	mr r31, r3
/* 802BA2B0 002B7210  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802BA2B4 002B7214  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802BA2B8 002B7218  40 82 00 64 */	bne lbl_802BA31C
/* 802BA2BC 002B721C  80 04 00 00 */	lwz r0, 0(r4)
/* 802BA2C0 002B7220  3C 60 80 5A */	lis r3, mModelMatrix__9CGraphics@ha
/* 802BA2C4 002B7224  38 83 62 04 */	addi r4, r3, mModelMatrix__9CGraphics@l
/* 802BA2C8 002B7228  7C A6 2B 78 */	mr r6, r5
/* 802BA2CC 002B722C  90 01 00 08 */	stw r0, 8(r1)
/* 802BA2D0 002B7230  7D 27 4B 78 */	mr r7, r9
/* 802BA2D4 002B7234  38 61 00 0C */	addi r3, r1, 0xc
/* 802BA2D8 002B7238  38 A1 00 08 */	addi r5, r1, 8
/* 802BA2DC 002B723C  4B FF E4 E9 */	bl "__ct__Q213CCubeRenderer18CFogVolumeListItemFRC12CTransform4f6CColorRC6CAABoxPC21TLockedToken<6CModel>PC13CSkinnedModel"
/* 802BA2E0 002B7240  38 7F 02 AC */	addi r3, r31, 0x2ac
/* 802BA2E4 002B7244  38 81 00 0C */	addi r4, r1, 0xc
/* 802BA2E8 002B7248  48 00 00 49 */	bl "push_back__Q24rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>FRCQ213CCubeRenderer18CFogVolumeListItem"
/* 802BA2EC 002B724C  34 61 00 58 */	addic. r3, r1, 0x58
/* 802BA2F0 002B7250  41 82 00 2C */	beq lbl_802BA31C
/* 802BA2F4 002B7254  88 01 00 64 */	lbz r0, 0x64(r1)
/* 802BA2F8 002B7258  28 00 00 00 */	cmplwi r0, 0
/* 802BA2FC 002B725C  41 82 00 18 */	beq lbl_802BA314
/* 802BA300 002B7260  28 03 00 00 */	cmplwi r3, 0
/* 802BA304 002B7264  41 82 00 10 */	beq lbl_802BA314
/* 802BA308 002B7268  41 82 00 0C */	beq lbl_802BA314
/* 802BA30C 002B726C  38 80 00 00 */	li r4, 0
/* 802BA310 002B7270  48 08 6B 31 */	bl __dt__6CTokenFv
lbl_802BA314:
/* 802BA314 002B7274  38 00 00 00 */	li r0, 0
/* 802BA318 002B7278  98 01 00 64 */	stb r0, 0x64(r1)
lbl_802BA31C:
/* 802BA31C 002B727C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802BA320 002B7280  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 802BA324 002B7284  7C 08 03 A6 */	mtlr r0
/* 802BA328 002B7288  38 21 00 80 */	addi r1, r1, 0x80
/* 802BA32C 002B728C  4E 80 00 20 */	blr

.global "push_back__Q24rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>FRCQ213CCubeRenderer18CFogVolumeListItem"
"push_back__Q24rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>FRCQ213CCubeRenderer18CFogVolumeListItem":
/* 802BA330 002B7290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA334 002B7294  7C 08 02 A6 */	mflr r0
/* 802BA338 002B7298  7C 85 23 78 */	mr r5, r4
/* 802BA33C 002B729C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA340 002B72A0  80 83 00 08 */	lwz r4, 8(r3)
/* 802BA344 002B72A4  48 00 00 15 */	bl "do_insert_before__Q24rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>FPQ34rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>4nodeRCQ213CCubeRenderer18CFogVolumeListItem"
/* 802BA348 002B72A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA34C 002B72AC  7C 08 03 A6 */	mtlr r0
/* 802BA350 002B72B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA354 002B72B4  4E 80 00 20 */	blr

.global "do_insert_before__Q24rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>FPQ34rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>4nodeRCQ213CCubeRenderer18CFogVolumeListItem"
"do_insert_before__Q24rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>FPQ34rstl70list<Q213CCubeRenderer18CFogVolumeListItem,Q24rstl17rmemory_allocator>4nodeRCQ213CCubeRenderer18CFogVolumeListItem":
/* 802BA358 002B72B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA35C 002B72BC  7C 08 02 A6 */	mflr r0
/* 802BA360 002B72C0  7C A6 2B 78 */	mr r6, r5
/* 802BA364 002B72C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA368 002B72C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BA36C 002B72CC  7C 9F 23 78 */	mr r31, r4
/* 802BA370 002B72D0  7F E5 FB 78 */	mr r5, r31
/* 802BA374 002B72D4  93 C1 00 08 */	stw r30, 8(r1)
/* 802BA378 002B72D8  7C 7E 1B 78 */	mr r30, r3
/* 802BA37C 002B72DC  80 84 00 00 */	lwz r4, 0(r4)
/* 802BA380 002B72E0  48 00 00 49 */	bl __ct__Q213CCubeRenderer18CFogVolumeListItemFRCQ213CCubeRenderer18CFogVolumeListItem
/* 802BA384 002B72E4  80 1E 00 04 */	lwz r0, 4(r30)
/* 802BA388 002B72E8  7C 1F 00 40 */	cmplw r31, r0
/* 802BA38C 002B72EC  40 82 00 08 */	bne lbl_802BA394
/* 802BA390 002B72F0  90 7E 00 04 */	stw r3, 4(r30)
lbl_802BA394:
/* 802BA394 002B72F4  80 83 00 00 */	lwz r4, 0(r3)
/* 802BA398 002B72F8  90 64 00 04 */	stw r3, 4(r4)
/* 802BA39C 002B72FC  80 83 00 04 */	lwz r4, 4(r3)
/* 802BA3A0 002B7300  90 64 00 00 */	stw r3, 0(r4)
/* 802BA3A4 002B7304  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 802BA3A8 002B7308  38 04 00 01 */	addi r0, r4, 1
/* 802BA3AC 002B730C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802BA3B0 002B7310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA3B4 002B7314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BA3B8 002B7318  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BA3BC 002B731C  7C 08 03 A6 */	mtlr r0
/* 802BA3C0 002B7320  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA3C4 002B7324  4E 80 00 20 */	blr

.global __ct__Q213CCubeRenderer18CFogVolumeListItemFRCQ213CCubeRenderer18CFogVolumeListItem
__ct__Q213CCubeRenderer18CFogVolumeListItemFRCQ213CCubeRenderer18CFogVolumeListItem:
/* 802BA3C8 002B7328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BA3CC 002B732C  7C 08 02 A6 */	mflr r0
/* 802BA3D0 002B7330  3C 60 80 3D */	lis r3, lbl_803D685C@ha
/* 802BA3D4 002B7334  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BA3D8 002B7338  38 03 68 5C */	addi r0, r3, lbl_803D685C@l
/* 802BA3DC 002B733C  38 60 00 68 */	li r3, 0x68
/* 802BA3E0 002B7340  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802BA3E4 002B7344  7C BD 2B 78 */	mr r29, r5
/* 802BA3E8 002B7348  7C 9E 23 78 */	mr r30, r4
/* 802BA3EC 002B734C  7C DB 33 78 */	mr r27, r6
/* 802BA3F0 002B7350  7C 04 03 78 */	mr r4, r0
/* 802BA3F4 002B7354  38 A0 00 00 */	li r5, 0
/* 802BA3F8 002B7358  48 05 B4 21 */	bl __nwa__FUlPCcPCc
/* 802BA3FC 002B735C  7C 7C 1B 79 */	or. r28, r3, r3
/* 802BA400 002B7360  41 82 00 0C */	beq lbl_802BA40C
/* 802BA404 002B7364  93 DC 00 00 */	stw r30, 0(r28)
/* 802BA408 002B7368  93 BC 00 04 */	stw r29, 4(r28)
lbl_802BA40C:
/* 802BA40C 002B736C  37 FC 00 08 */	addic. r31, r28, 8
/* 802BA410 002B7370  41 82 00 8C */	beq lbl_802BA49C
/* 802BA414 002B7374  7F E3 FB 78 */	mr r3, r31
/* 802BA418 002B7378  7F 64 DB 78 */	mr r4, r27
/* 802BA41C 002B737C  48 05 87 59 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802BA420 002B7380  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 802BA424 002B7384  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802BA428 002B7388  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 802BA42C 002B738C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 802BA430 002B7390  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 802BA434 002B7394  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 802BA438 002B7398  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 802BA43C 002B739C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 802BA440 002B73A0  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 802BA444 002B73A4  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 802BA448 002B73A8  C0 1B 00 44 */	lfs f0, 0x44(r27)
/* 802BA44C 002B73AC  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 802BA450 002B73B0  C0 1B 00 48 */	lfs f0, 0x48(r27)
/* 802BA454 002B73B4  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802BA458 002B73B8  88 1B 00 58 */	lbz r0, 0x58(r27)
/* 802BA45C 002B73BC  98 1F 00 58 */	stb r0, 0x58(r31)
/* 802BA460 002B73C0  88 1B 00 58 */	lbz r0, 0x58(r27)
/* 802BA464 002B73C4  28 00 00 00 */	cmplwi r0, 0
/* 802BA468 002B73C8  41 82 00 2C */	beq lbl_802BA494
/* 802BA46C 002B73CC  37 DF 00 4C */	addic. r30, r31, 0x4c
/* 802BA470 002B73D0  3B BB 00 4C */	addi r29, r27, 0x4c
/* 802BA474 002B73D4  41 82 00 20 */	beq lbl_802BA494
/* 802BA478 002B73D8  7F C3 F3 78 */	mr r3, r30
/* 802BA47C 002B73DC  7F A4 EB 78 */	mr r4, r29
/* 802BA480 002B73E0  48 08 6A 29 */	bl __ct__6CTokenFRC6CToken
/* 802BA484 002B73E4  80 1D 00 08 */	lwz r0, 8(r29)
/* 802BA488 002B73E8  7F C3 F3 78 */	mr r3, r30
/* 802BA48C 002B73EC  90 1E 00 08 */	stw r0, 8(r30)
/* 802BA490 002B73F0  48 08 68 F5 */	bl Lock__6CTokenFv
lbl_802BA494:
/* 802BA494 002B73F4  80 1B 00 5C */	lwz r0, 0x5c(r27)
/* 802BA498 002B73F8  90 1F 00 5C */	stw r0, 0x5c(r31)
lbl_802BA49C:
/* 802BA49C 002B73FC  7F 83 E3 78 */	mr r3, r28
/* 802BA4A0 002B7400  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802BA4A4 002B7404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BA4A8 002B7408  7C 08 03 A6 */	mtlr r0
/* 802BA4AC 002B740C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BA4B0 002B7410  4E 80 00 20 */	blr

.global DoThermalBlendHot__13CCubeRendererFv
DoThermalBlendHot__13CCubeRendererFv:
/* 802BA4B4 002B7414  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 802BA4B8 002B7418  7C 08 02 A6 */	mflr r0
/* 802BA4BC 002B741C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802BA4C0 002B7420  BF 41 00 88 */	stmw r26, 0x88(r1)
/* 802BA4C4 002B7424  7C 7A 1B 78 */	mr r26, r3
/* 802BA4C8 002B7428  38 60 00 00 */	li r3, 0
/* 802BA4CC 002B742C  48 0C 1A 61 */	bl GXSetAlphaUpdate
/* 802BA4D0 002B7430  38 60 00 01 */	li r3, 1
/* 802BA4D4 002B7434  38 80 00 00 */	li r4, 0
/* 802BA4D8 002B7438  48 0C 1C 09 */	bl GXSetDstAlpha
/* 802BA4DC 002B743C  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 802BA4E0 002B7440  83 6D A8 28 */	lwz r27, mpSpareBuffer__9CGraphics@sda21(r13)
/* 802BA4E4 002B7444  38 C3 D9 10 */	addi r6, r3, mViewport__9CGraphics@l
/* 802BA4E8 002B7448  38 60 00 01 */	li r3, 1
/* 802BA4EC 002B744C  83 A6 00 00 */	lwz r29, 0(r6)
/* 802BA4F0 002B7450  38 80 00 03 */	li r4, 3
/* 802BA4F4 002B7454  83 86 00 04 */	lwz r28, 4(r6)
/* 802BA4F8 002B7458  38 A0 00 01 */	li r5, 1
/* 802BA4FC 002B745C  83 E6 00 08 */	lwz r31, 8(r6)
/* 802BA500 002B7460  83 C6 00 0C */	lwz r30, 0xc(r6)
/* 802BA504 002B7464  48 04 E3 79 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802BA508 002B7468  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 802BA50C 002B746C  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 802BA510 002B7470  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 802BA514 002B7474  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 802BA518 002B7478  48 0B E8 9D */	bl GXSetTexCopySrc
/* 802BA51C 002B747C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 802BA520 002B7480  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 802BA524 002B7484  38 A0 00 00 */	li r5, 0
/* 802BA528 002B7488  38 C0 00 00 */	li r6, 0
/* 802BA52C 002B748C  48 0B E9 55 */	bl GXSetTexCopyDst
/* 802BA530 002B7490  7F 63 DB 78 */	mr r3, r27
/* 802BA534 002B7494  38 80 00 00 */	li r4, 0
/* 802BA538 002B7498  48 0B EF FD */	bl GXCopyTex
/* 802BA53C 002B749C  38 7A 02 88 */	addi r3, r26, 0x288
/* 802BA540 002B74A0  48 05 39 85 */	bl Load__16CGraphicsPaletteCFv
/* 802BA544 002B74A4  81 02 C7 A8 */	lwz r8, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802BA548 002B74A8  7F E3 FB 78 */	mr r3, r31
/* 802BA54C 002B74AC  7F C4 F3 78 */	mr r4, r30
/* 802BA550 002B74B0  38 A0 00 08 */	li r5, 8
/* 802BA554 002B74B4  38 C0 00 00 */	li r6, 0
/* 802BA558 002B74B8  38 E0 00 00 */	li r7, 0
/* 802BA55C 002B74BC  48 04 FA 0D */	bl LoadDolphinSpareTexture__9CGraphicsFii11_GXCITexFmt7_GXTlutPv11_GXTexMapID
/* 802BA560 002B74C0  38 60 00 00 */	li r3, 0
/* 802BA564 002B74C4  38 80 00 0F */	li r4, 0xf
/* 802BA568 002B74C8  38 A0 00 09 */	li r5, 9
/* 802BA56C 002B74CC  38 C0 00 08 */	li r6, 8
/* 802BA570 002B74D0  38 E0 00 0F */	li r7, 0xf
/* 802BA574 002B74D4  48 04 E6 79 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802BA578 002B74D8  38 60 00 00 */	li r3, 0
/* 802BA57C 002B74DC  38 80 00 07 */	li r4, 7
/* 802BA580 002B74E0  38 A0 00 07 */	li r5, 7
/* 802BA584 002B74E4  38 C0 00 07 */	li r6, 7
/* 802BA588 002B74E8  38 E0 00 04 */	li r7, 4
/* 802BA58C 002B74EC  48 04 E6 09 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802BA590 002B74F0  38 60 00 00 */	li r3, 0
/* 802BA594 002B74F4  48 04 D6 BD */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802BA598 002B74F8  80 A2 C7 A8 */	lwz r5, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802BA59C 002B74FC  38 60 00 00 */	li r3, 0
/* 802BA5A0 002B7500  38 80 00 00 */	li r4, 0
/* 802BA5A4 002B7504  38 C0 00 FF */	li r6, 0xff
/* 802BA5A8 002B7508  48 04 E3 A5 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802BA5AC 002B750C  38 60 00 00 */	li r3, 0
/* 802BA5B0 002B7510  38 80 00 00 */	li r4, 0
/* 802BA5B4 002B7514  38 A0 00 04 */	li r5, 4
/* 802BA5B8 002B7518  38 C0 00 3C */	li r6, 0x3c
/* 802BA5BC 002B751C  38 E0 00 00 */	li r7, 0
/* 802BA5C0 002B7520  39 00 00 7D */	li r8, 0x7d
/* 802BA5C4 002B7524  48 04 E1 09 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802BA5C8 002B7528  38 60 00 07 */	li r3, 7
/* 802BA5CC 002B752C  38 80 00 00 */	li r4, 0
/* 802BA5D0 002B7530  38 A0 00 00 */	li r5, 0
/* 802BA5D4 002B7534  38 C0 00 07 */	li r6, 7
/* 802BA5D8 002B7538  38 E0 00 00 */	li r7, 0
/* 802BA5DC 002B753C  48 04 E2 39 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802BA5E0 002B7540  38 60 00 01 */	li r3, 1
/* 802BA5E4 002B7544  48 04 E6 AD */	bl SetNumTevStages__3CGXFUc
/* 802BA5E8 002B7548  38 60 00 01 */	li r3, 1
/* 802BA5EC 002B754C  48 04 E8 29 */	bl SetNumTexGens__3CGXFUc
/* 802BA5F0 002B7550  38 60 00 00 */	li r3, 0
/* 802BA5F4 002B7554  48 04 E8 5D */	bl SetNumChans__3CGXFUc
/* 802BA5F8 002B7558  38 60 00 00 */	li r3, 0
/* 802BA5FC 002B755C  38 80 00 03 */	li r4, 3
/* 802BA600 002B7560  38 A0 00 00 */	li r5, 0
/* 802BA604 002B7564  48 04 E2 79 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802BA608 002B7568  3C 60 80 3D */	lis r3, lbl_803D6654@ha
/* 802BA60C 002B756C  38 63 66 54 */	addi r3, r3, lbl_803D6654@l
/* 802BA610 002B7570  48 04 D8 19 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802BA614 002B7574  38 60 00 01 */	li r3, 1
/* 802BA618 002B7578  38 80 00 06 */	li r4, 6
/* 802BA61C 002B757C  38 A0 00 07 */	li r5, 7
/* 802BA620 002B7580  38 C0 00 00 */	li r6, 0
/* 802BA624 002B7584  48 04 E2 AD */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802BA628 002B7588  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802BA62C 002B758C  38 61 00 24 */	addi r3, r1, 0x24
/* 802BA630 002B7590  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 802BA634 002B7594  48 05 85 41 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802BA638 002B7598  48 04 F8 25 */	bl GetProjectionState__9CGraphicsFv
/* 802BA63C 002B759C  88 C3 00 00 */	lbz r6, 0(r3)
/* 802BA640 002B75A0  3C 80 43 30 */	lis r4, 0x4330
/* 802BA644 002B75A4  6F E5 80 00 */	xoris r5, r31, 0x8000
/* 802BA648 002B75A8  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802BA64C 002B75AC  98 C1 00 08 */	stb r6, 8(r1)
/* 802BA650 002B75B0  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802BA654 002B75B4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BA658 002B75B8  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 802BA65C 002B75BC  FC 60 08 90 */	fmr f3, f1
/* 802BA660 002B75C0  C8 82 C2 A0 */	lfd f4, lbl_805ADFC0@sda21(r2)
/* 802BA664 002B75C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BA668 002B75C8  C0 A2 C2 90 */	lfs f5, lbl_805ADFB0@sda21(r2)
/* 802BA66C 002B75CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BA670 002B75D0  90 81 00 58 */	stw r4, 0x58(r1)
/* 802BA674 002B75D4  C0 C2 C2 94 */	lfs f6, lbl_805ADFB4@sda21(r2)
/* 802BA678 002B75D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BA67C 002B75DC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 802BA680 002B75E0  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 802BA684 002B75E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 802BA688 002B75E8  EC 40 20 28 */	fsubs f2, f0, f4
/* 802BA68C 002B75EC  D0 E1 00 14 */	stfs f7, 0x14(r1)
/* 802BA690 002B75F0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802BA694 002B75F4  90 81 00 60 */	stw r4, 0x60(r1)
/* 802BA698 002B75F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802BA69C 002B75FC  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 802BA6A0 002B7600  C0 E3 00 14 */	lfs f7, 0x14(r3)
/* 802BA6A4 002B7604  EC 80 20 28 */	fsubs f4, f0, f4
/* 802BA6A8 002B7608  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 802BA6AC 002B760C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802BA6B0 002B7610  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802BA6B4 002B7614  48 05 1E A1 */	bl SetOrtho__9CGraphicsFffffff
/* 802BA6B8 002B7618  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BA6BC 002B761C  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BA6C0 002B7620  48 05 20 8D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BA6C4 002B7624  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BA6C8 002B7628  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BA6CC 002B762C  48 05 1F 15 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BA6D0 002B7630  48 0B DE 95 */	bl GXPixModeSync
/* 802BA6D4 002B7634  38 60 00 A0 */	li r3, 0xa0
/* 802BA6D8 002B7638  38 80 00 00 */	li r4, 0
/* 802BA6DC 002B763C  38 A0 00 04 */	li r5, 4
/* 802BA6E0 002B7640  48 04 DE A5 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802BA6E4 002B7644  C0 A2 C2 74 */	lfs f5, lbl_805ADF94@sda21(r2)
/* 802BA6E8 002B7648  3C 60 43 30 */	lis r3, 0x4330
/* 802BA6EC 002B764C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 802BA6F0 002B7650  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 802BA6F4 002B7654  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA6F8 002B7658  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 802BA6FC 002B765C  C0 82 C2 80 */	lfs f4, lbl_805ADFA0@sda21(r2)
/* 802BA700 002B7660  90 81 00 6C */	stw r4, 0x6c(r1)
/* 802BA704 002B7664  C8 62 C2 A0 */	lfd f3, lbl_805ADFC0@sda21(r2)
/* 802BA708 002B7668  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BA70C 002B766C  C0 42 C2 70 */	lfs f2, lbl_805ADF90@sda21(r2)
/* 802BA710 002B7670  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA714 002B7674  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA718 002B7678  90 61 00 68 */	stw r3, 0x68(r1)
/* 802BA71C 002B767C  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA720 002B7680  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 802BA724 002B7684  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA728 002B7688  EC 00 18 28 */	fsubs f0, f0, f3
/* 802BA72C 002B768C  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BA730 002B7690  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BA734 002B7694  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA738 002B7698  90 01 00 74 */	stw r0, 0x74(r1)
/* 802BA73C 002B769C  90 61 00 70 */	stw r3, 0x70(r1)
/* 802BA740 002B76A0  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 802BA744 002B76A4  90 81 00 7C */	stw r4, 0x7c(r1)
/* 802BA748 002B76A8  EC 20 18 28 */	fsubs f1, f0, f3
/* 802BA74C 002B76AC  90 61 00 78 */	stw r3, 0x78(r1)
/* 802BA750 002B76B0  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BA754 002B76B4  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 802BA758 002B76B8  D0 25 80 00 */	stfs f1, 0xCC008000@l(r5)
/* 802BA75C 002B76BC  EC 00 18 28 */	fsubs f0, f0, f3
/* 802BA760 002B76C0  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BA764 002B76C4  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BA768 002B76C8  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BA76C 002B76CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 802BA770 002B76D0  90 61 00 80 */	stw r3, 0x80(r1)
/* 802BA774 002B76D4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 802BA778 002B76D8  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BA77C 002B76DC  EC 00 18 28 */	fsubs f0, f0, f3
/* 802BA780 002B76E0  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BA784 002B76E4  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BA788 002B76E8  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA78C 002B76EC  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BA790 002B76F0  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BA794 002B76F4  48 04 DD ED */	bl End__3CGXFv
/* 802BA798 002B76F8  38 60 00 00 */	li r3, 0
/* 802BA79C 002B76FC  48 04 DE F5 */	bl SetNumIndStages__3CGXFUc
/* 802BA7A0 002B7700  38 60 00 00 */	li r3, 0
/* 802BA7A4 002B7704  48 04 DF A1 */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802BA7A8 002B7708  38 60 00 01 */	li r3, 1
/* 802BA7AC 002B770C  48 0C 17 81 */	bl GXSetAlphaUpdate
/* 802BA7B0 002B7710  38 61 00 08 */	addi r3, r1, 8
/* 802BA7B4 002B7714  48 04 F6 4D */	bl SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState
/* 802BA7B8 002B7718  38 61 00 24 */	addi r3, r1, 0x24
/* 802BA7BC 002B771C  48 05 1F 91 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BA7C0 002B7720  38 00 00 00 */	li r0, 0
/* 802BA7C4 002B7724  98 0D A8 B8 */	stb r0, sMoveRedToAlphaBuffer__11CElementGen@sda21(r13)
/* 802BA7C8 002B7728  98 0D A5 EC */	stb r0, sMoveRedToAlphaBuffer__6CDecal@sda21(r13)
/* 802BA7CC 002B772C  BB 41 00 88 */	lmw r26, 0x88(r1)
/* 802BA7D0 002B7730  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802BA7D4 002B7734  7C 08 03 A6 */	mtlr r0
/* 802BA7D8 002B7738  38 21 00 A0 */	addi r1, r1, 0xa0
/* 802BA7DC 002B773C  4E 80 00 20 */	blr

.global DoThermalBlendCold__13CCubeRendererFv
DoThermalBlendCold__13CCubeRendererFv:
/* 802BA7E0 002B7740  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 802BA7E4 002B7744  7C 08 02 A6 */	mflr r0
/* 802BA7E8 002B7748  90 01 01 04 */	stw r0, 0x104(r1)
/* 802BA7EC 002B774C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 802BA7F0 002B7750  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 802BA7F4 002B7754  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 802BA7F8 002B7758  7C 7C 1B 78 */	mr r28, r3
/* 802BA7FC 002B775C  3C 80 43 30 */	lis r4, 0x4330
/* 802BA800 002B7760  88 A3 02 F8 */	lbz r5, 0x2f8(r3)
/* 802BA804 002B7764  38 60 00 01 */	li r3, 1
/* 802BA808 002B7768  88 1C 03 18 */	lbz r0, 0x318(r28)
/* 802BA80C 002B776C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802BA810 002B7770  90 A1 00 9C */	stw r5, 0x9c(r1)
/* 802BA814 002B7774  38 60 00 01 */	li r3, 1
/* 802BA818 002B7778  C8 22 C2 E0 */	lfd f1, lbl_805AE000@sda21(r2)
/* 802BA81C 002B777C  90 81 00 98 */	stw r4, 0x98(r1)
/* 802BA820 002B7780  C0 42 C2 78 */	lfs f2, lbl_805ADF98@sda21(r2)
/* 802BA824 002B7784  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 802BA828 002B7788  98 1C 03 18 */	stb r0, 0x318(r28)
/* 802BA82C 002B778C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BA830 002B7790  EF E2 00 32 */	fmuls f31, f2, f0
/* 802BA834 002B7794  48 0C 16 F9 */	bl GXSetAlphaUpdate
/* 802BA838 002B7798  38 60 00 00 */	li r3, 0
/* 802BA83C 002B779C  38 80 00 00 */	li r4, 0
/* 802BA840 002B77A0  48 0C 18 A1 */	bl GXSetDstAlpha
/* 802BA844 002B77A4  3C 60 80 3F */	lis r3, mViewport__9CGraphics@ha
/* 802BA848 002B77A8  83 4D A8 28 */	lwz r26, mpSpareBuffer__9CGraphics@sda21(r13)
/* 802BA84C 002B77AC  38 C3 D9 10 */	addi r6, r3, mViewport__9CGraphics@l
/* 802BA850 002B77B0  38 60 00 01 */	li r3, 1
/* 802BA854 002B77B4  83 E6 00 00 */	lwz r31, 0(r6)
/* 802BA858 002B77B8  38 80 00 03 */	li r4, 3
/* 802BA85C 002B77BC  83 66 00 04 */	lwz r27, 4(r6)
/* 802BA860 002B77C0  38 A0 00 00 */	li r5, 0
/* 802BA864 002B77C4  83 C6 00 08 */	lwz r30, 8(r6)
/* 802BA868 002B77C8  83 A6 00 0C */	lwz r29, 0xc(r6)
/* 802BA86C 002B77CC  48 04 E0 11 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802BA870 002B77D0  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 802BA874 002B77D4  57 64 04 3E */	clrlwi r4, r27, 0x10
/* 802BA878 002B77D8  57 C5 04 3E */	clrlwi r5, r30, 0x10
/* 802BA87C 002B77DC  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 802BA880 002B77E0  48 0B E5 35 */	bl GXSetTexCopySrc
/* 802BA884 002B77E4  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 802BA888 002B77E8  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 802BA88C 002B77EC  38 A0 00 00 */	li r5, 0
/* 802BA890 002B77F0  38 C0 00 00 */	li r6, 0
/* 802BA894 002B77F4  48 0B E5 ED */	bl GXSetTexCopyDst
/* 802BA898 002B77F8  7F 43 D3 78 */	mr r3, r26
/* 802BA89C 002B77FC  38 80 00 01 */	li r4, 1
/* 802BA8A0 002B7800  48 0B EC 95 */	bl GXCopyTex
/* 802BA8A4 002B7804  80 E2 C7 A8 */	lwz r7, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802BA8A8 002B7808  7F C3 F3 78 */	mr r3, r30
/* 802BA8AC 002B780C  7F A4 EB 78 */	mr r4, r29
/* 802BA8B0 002B7810  38 A0 00 00 */	li r5, 0
/* 802BA8B4 002B7814  38 C0 00 00 */	li r6, 0
/* 802BA8B8 002B7818  48 04 F7 69 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802BA8BC 002B781C  38 7C 02 A8 */	addi r3, r28, 0x2a8
/* 802BA8C0 002B7820  48 05 7C 61 */	bl Next__9CRandom16Fv
/* 802BA8C4 002B7824  38 03 00 1F */	addi r0, r3, 0x1f
/* 802BA8C8 002B7828  7F C3 F3 78 */	mr r3, r30
/* 802BA8CC 002B782C  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 802BA8D0 002B7830  7F A4 EB 78 */	mr r4, r29
/* 802BA8D4 002B7834  3F 45 00 01 */	addis r26, r5, 1
/* 802BA8D8 002B7838  38 E0 00 00 */	li r7, 0
/* 802BA8DC 002B783C  3B 5A 80 00 */	addi r26, r26, -32768
/* 802BA8E0 002B7840  38 A0 00 02 */	li r5, 2
/* 802BA8E4 002B7844  7F 46 D3 78 */	mr r6, r26
/* 802BA8E8 002B7848  48 04 F7 39 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802BA8EC 002B784C  7F C3 F3 78 */	mr r3, r30
/* 802BA8F0 002B7850  7F A4 EB 78 */	mr r4, r29
/* 802BA8F4 002B7854  7F 46 D3 78 */	mr r6, r26
/* 802BA8F8 002B7858  38 A0 00 02 */	li r5, 2
/* 802BA8FC 002B785C  38 E0 00 01 */	li r7, 1
/* 802BA900 002B7860  48 04 F7 21 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802BA904 002B7864  C0 22 C2 80 */	lfs f1, lbl_805ADFA0@sda21(r2)
/* 802BA908 002B7868  38 81 00 20 */	addi r4, r1, 0x20
/* 802BA90C 002B786C  C0 1C 02 F0 */	lfs f0, 0x2f0(r28)
/* 802BA910 002B7870  38 6D 9A D0 */	addi r3, r13, lbl_805A8690@sda21
/* 802BA914 002B7874  38 AD 9A D4 */	addi r5, r13, lbl_805A8694@sda21
/* 802BA918 002B7878  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BA91C 002B787C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802BA920 002B7880  4B D5 19 95 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802BA924 002B7884  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BA928 002B7888  3C 60 80 3D */	lis r3, lbl_803D663C@ha
/* 802BA92C 002B788C  39 63 66 3C */	addi r11, r3, lbl_803D663C@l
/* 802BA930 002B7890  C8 22 C2 D8 */	lfd f1, lbl_805ADFF8@sda21(r2)
/* 802BA934 002B7894  EC 00 F8 28 */	fsubs f0, f0, f31
/* 802BA938 002B7898  81 4B 00 00 */	lwz r10, 0(r11)
/* 802BA93C 002B789C  80 CB 00 10 */	lwz r6, 0x10(r11)
/* 802BA940 002B78A0  38 81 00 4C */	addi r4, r1, 0x4c
/* 802BA944 002B78A4  81 2B 00 04 */	lwz r9, 4(r11)
/* 802BA948 002B78A8  38 60 00 01 */	li r3, 1
/* 802BA94C 002B78AC  FC 01 00 32 */	fmul f0, f1, f0
/* 802BA950 002B78B0  81 0B 00 08 */	lwz r8, 8(r11)
/* 802BA954 002B78B4  80 EB 00 0C */	lwz r7, 0xc(r11)
/* 802BA958 002B78B8  38 A0 FF FE */	li r5, -2
/* 802BA95C 002B78BC  80 0B 00 14 */	lwz r0, 0x14(r11)
/* 802BA960 002B78C0  91 41 00 4C */	stw r10, 0x4c(r1)
/* 802BA964 002B78C4  FC 00 00 18 */	frsp f0, f0
/* 802BA968 002B78C8  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 802BA96C 002B78CC  91 21 00 50 */	stw r9, 0x50(r1)
/* 802BA970 002B78D0  91 01 00 54 */	stw r8, 0x54(r1)
/* 802BA974 002B78D4  90 E1 00 58 */	stw r7, 0x58(r1)
/* 802BA978 002B78D8  90 01 00 60 */	stw r0, 0x60(r1)
/* 802BA97C 002B78DC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802BA980 002B78E0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 802BA984 002B78E4  48 0C 05 45 */	bl GXSetIndTexMtx
/* 802BA988 002B78E8  38 00 00 00 */	li r0, 0
/* 802BA98C 002B78EC  38 60 00 00 */	li r3, 0
/* 802BA990 002B78F0  90 01 00 08 */	stw r0, 8(r1)
/* 802BA994 002B78F4  38 80 00 00 */	li r4, 0
/* 802BA998 002B78F8  38 A0 00 00 */	li r5, 0
/* 802BA99C 002B78FC  38 C0 00 07 */	li r6, 7
/* 802BA9A0 002B7900  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BA9A4 002B7904  38 E0 00 01 */	li r7, 1
/* 802BA9A8 002B7908  39 00 00 00 */	li r8, 0
/* 802BA9AC 002B790C  39 20 00 00 */	li r9, 0
/* 802BA9B0 002B7910  39 40 00 00 */	li r10, 0
/* 802BA9B4 002B7914  48 04 DD D9 */	bl SetTevIndirect__3CGXF13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
/* 802BA9B8 002B7918  38 60 00 00 */	li r3, 0
/* 802BA9BC 002B791C  38 80 00 00 */	li r4, 0
/* 802BA9C0 002B7920  38 A0 00 00 */	li r5, 0
/* 802BA9C4 002B7924  48 0C 07 E1 */	bl GXSetIndTexOrder
/* 802BA9C8 002B7928  8B FC 02 F8 */	lbz r31, 0x2f8(r28)
/* 802BA9CC 002B792C  38 A0 00 FF */	li r5, 0xff
/* 802BA9D0 002B7930  28 1F 00 80 */	cmplwi r31, 0x80
/* 802BA9D4 002B7934  40 80 00 08 */	bge lbl_802BA9DC
/* 802BA9D8 002B7938  57 E5 0E 3C */	rlwinm r5, r31, 1, 0x18, 0x1e
lbl_802BA9DC:
/* 802BA9DC 002B793C  28 1F 00 40 */	cmplwi r31, 0x40
/* 802BA9E0 002B7940  40 80 00 0C */	bge lbl_802BA9EC
/* 802BA9E4 002B7944  38 C0 00 00 */	li r6, 0
/* 802BA9E8 002B7948  48 00 00 34 */	b lbl_802BAA1C
lbl_802BA9EC:
/* 802BA9EC 002B794C  28 1F 00 FF */	cmplwi r31, 0xff
/* 802BA9F0 002B7950  40 82 00 0C */	bne lbl_802BA9FC
/* 802BA9F4 002B7954  38 C0 00 FF */	li r6, 0xff
/* 802BA9F8 002B7958  48 00 00 24 */	b lbl_802BAA1C
lbl_802BA9FC:
/* 802BA9FC 002B795C  38 1F FF C0 */	addi r0, r31, -64
/* 802BAA00 002B7960  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 802BAA04 002B7964  54 00 10 3A */	slwi r0, r0, 2
/* 802BAA08 002B7968  38 63 55 56 */	addi r3, r3, 0x55555556@l
/* 802BAA0C 002B796C  7C 63 00 96 */	mulhw r3, r3, r0
/* 802BAA10 002B7970  54 60 0F FE */	srwi r0, r3, 0x1f
/* 802BAA14 002B7974  7C 03 02 14 */	add r0, r3, r0
/* 802BAA18 002B7978  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_802BAA1C:
/* 802BAA1C 002B797C  80 62 D7 70 */	lwz r3, lbl_805AF490@sda21(r2)
/* 802BAA20 002B7980  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 802BAA24 002B7984  80 02 D7 74 */	lwz r0, lbl_805AF494@sda21(r2)
/* 802BAA28 002B7988  20 84 00 FF */	subfic r4, r4, 0xff
/* 802BAA2C 002B798C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802BAA30 002B7990  7C 83 1E 70 */	srawi r3, r4, 3
/* 802BAA34 002B7994  90 01 00 28 */	stw r0, 0x28(r1)
/* 802BAA38 002B7998  98 61 00 2C */	stb r3, 0x2c(r1)
/* 802BAA3C 002B799C  98 61 00 2D */	stb r3, 0x2d(r1)
/* 802BAA40 002B79A0  98 61 00 2E */	stb r3, 0x2e(r1)
/* 802BAA44 002B79A4  98 A1 00 2F */	stb r5, 0x2f(r1)
/* 802BAA48 002B79A8  98 C1 00 28 */	stb r6, 0x28(r1)
/* 802BAA4C 002B79AC  98 C1 00 29 */	stb r6, 0x29(r1)
/* 802BAA50 002B79B0  98 C1 00 2A */	stb r6, 0x2a(r1)
/* 802BAA54 002B79B4  98 C1 00 2B */	stb r6, 0x2b(r1)
/* 802BAA58 002B79B8  48 08 F5 55 */	bl White__6CColorFv
/* 802BAA5C 002B79BC  3C 00 43 30 */	lis r0, 0x4330
/* 802BAA60 002B79C0  7C 65 1B 78 */	mr r5, r3
/* 802BAA64 002B79C4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 802BAA68 002B79C8  38 61 00 1C */	addi r3, r1, 0x1c
/* 802BAA6C 002B79CC  C8 42 C2 E0 */	lfd f2, lbl_805AE000@sda21(r2)
/* 802BAA70 002B79D0  38 9C 02 F4 */	addi r4, r28, 0x2f4
/* 802BAA74 002B79D4  90 01 00 98 */	stw r0, 0x98(r1)
/* 802BAA78 002B79D8  C0 02 C2 B8 */	lfs f0, lbl_805ADFD8@sda21(r2)
/* 802BAA7C 002B79DC  C8 21 00 98 */	lfd f1, 0x98(r1)
/* 802BAA80 002B79E0  EC 21 10 28 */	fsubs f1, f1, f2
/* 802BAA84 002B79E4  EC 21 00 24 */	fdivs f1, f1, f0
/* 802BAA88 002B79E8  48 0A 88 25 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 802BAA8C 002B79EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802BAA90 002B79F0  38 81 00 18 */	addi r4, r1, 0x18
/* 802BAA94 002B79F4  38 60 00 01 */	li r3, 1
/* 802BAA98 002B79F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BAA9C 002B79FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BAAA0 002B7A00  48 0C 0B 5D */	bl GXSetTevColor
/* 802BAAA4 002B7A04  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802BAAA8 002B7A08  38 81 00 14 */	addi r4, r1, 0x14
/* 802BAAAC 002B7A0C  38 60 00 02 */	li r3, 2
/* 802BAAB0 002B7A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BAAB4 002B7A14  48 0C 0B 49 */	bl GXSetTevColor
/* 802BAAB8 002B7A18  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802BAABC 002B7A1C  38 81 00 10 */	addi r4, r1, 0x10
/* 802BAAC0 002B7A20  38 60 00 03 */	li r3, 3
/* 802BAAC4 002B7A24  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BAAC8 002B7A28  48 0C 0B 35 */	bl GXSetTevColor
/* 802BAACC 002B7A2C  38 60 00 00 */	li r3, 0
/* 802BAAD0 002B7A30  38 80 00 00 */	li r4, 0
/* 802BAAD4 002B7A34  38 A0 00 01 */	li r5, 1
/* 802BAAD8 002B7A38  48 0C 0D 59 */	bl GXSetTevSwapMode
/* 802BAADC 002B7A3C  38 60 00 00 */	li r3, 0
/* 802BAAE0 002B7A40  38 80 00 0F */	li r4, 0xf
/* 802BAAE4 002B7A44  38 A0 00 08 */	li r5, 8
/* 802BAAE8 002B7A48  38 C0 00 02 */	li r6, 2
/* 802BAAEC 002B7A4C  38 E0 00 06 */	li r7, 6
/* 802BAAF0 002B7A50  48 04 E0 FD */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802BAAF4 002B7A54  38 60 00 00 */	li r3, 0
/* 802BAAF8 002B7A58  38 80 00 07 */	li r4, 7
/* 802BAAFC 002B7A5C  38 A0 00 04 */	li r5, 4
/* 802BAB00 002B7A60  38 C0 00 02 */	li r6, 2
/* 802BAB04 002B7A64  38 E0 00 03 */	li r7, 3
/* 802BAB08 002B7A68  48 04 E0 8D */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802BAB0C 002B7A6C  38 60 00 00 */	li r3, 0
/* 802BAB10 002B7A70  48 04 D1 41 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802BAB14 002B7A74  80 A2 C7 A8 */	lwz r5, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802BAB18 002B7A78  38 60 00 00 */	li r3, 0
/* 802BAB1C 002B7A7C  38 80 00 00 */	li r4, 0
/* 802BAB20 002B7A80  38 C0 00 FF */	li r6, 0xff
/* 802BAB24 002B7A84  48 04 DE 29 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802BAB28 002B7A88  38 60 00 01 */	li r3, 1
/* 802BAB2C 002B7A8C  38 80 00 00 */	li r4, 0
/* 802BAB30 002B7A90  38 A0 00 01 */	li r5, 1
/* 802BAB34 002B7A94  48 0C 0C FD */	bl GXSetTevSwapMode
/* 802BAB38 002B7A98  38 60 00 01 */	li r3, 1
/* 802BAB3C 002B7A9C  38 80 00 0F */	li r4, 0xf
/* 802BAB40 002B7AA0  38 A0 00 08 */	li r5, 8
/* 802BAB44 002B7AA4  38 C0 00 04 */	li r6, 4
/* 802BAB48 002B7AA8  38 E0 00 00 */	li r7, 0
/* 802BAB4C 002B7AAC  48 04 E0 A1 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802BAB50 002B7AB0  38 60 00 01 */	li r3, 1
/* 802BAB54 002B7AB4  38 80 00 01 */	li r4, 1
/* 802BAB58 002B7AB8  38 A0 00 00 */	li r5, 0
/* 802BAB5C 002B7ABC  38 C0 00 00 */	li r6, 0
/* 802BAB60 002B7AC0  38 E0 00 01 */	li r7, 1
/* 802BAB64 002B7AC4  39 00 00 00 */	li r8, 0
/* 802BAB68 002B7AC8  48 04 DF D1 */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802BAB6C 002B7ACC  38 60 00 01 */	li r3, 1
/* 802BAB70 002B7AD0  38 80 00 07 */	li r4, 7
/* 802BAB74 002B7AD4  38 A0 00 02 */	li r5, 2
/* 802BAB78 002B7AD8  38 C0 00 04 */	li r6, 4
/* 802BAB7C 002B7ADC  38 E0 00 00 */	li r7, 0
/* 802BAB80 002B7AE0  48 04 E0 15 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802BAB84 002B7AE4  38 60 00 01 */	li r3, 1
/* 802BAB88 002B7AE8  38 80 00 00 */	li r4, 0
/* 802BAB8C 002B7AEC  38 A0 00 00 */	li r5, 0
/* 802BAB90 002B7AF0  38 C0 00 02 */	li r6, 2
/* 802BAB94 002B7AF4  38 E0 00 01 */	li r7, 1
/* 802BAB98 002B7AF8  39 00 00 00 */	li r8, 0
/* 802BAB9C 002B7AFC  48 04 DE E5 */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802BABA0 002B7B00  38 60 00 01 */	li r3, 1
/* 802BABA4 002B7B04  38 80 00 00 */	li r4, 0
/* 802BABA8 002B7B08  38 A0 00 01 */	li r5, 1
/* 802BABAC 002B7B0C  38 C0 00 FF */	li r6, 0xff
/* 802BABB0 002B7B10  48 04 DD 9D */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802BABB4 002B7B14  38 60 00 00 */	li r3, 0
/* 802BABB8 002B7B18  38 80 00 00 */	li r4, 0
/* 802BABBC 002B7B1C  38 A0 00 04 */	li r5, 4
/* 802BABC0 002B7B20  38 C0 00 3C */	li r6, 0x3c
/* 802BABC4 002B7B24  38 E0 00 00 */	li r7, 0
/* 802BABC8 002B7B28  39 00 00 7D */	li r8, 0x7d
/* 802BABCC 002B7B2C  48 04 DB 01 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802BABD0 002B7B30  38 60 00 07 */	li r3, 7
/* 802BABD4 002B7B34  38 80 00 00 */	li r4, 0
/* 802BABD8 002B7B38  38 A0 00 00 */	li r5, 0
/* 802BABDC 002B7B3C  38 C0 00 07 */	li r6, 7
/* 802BABE0 002B7B40  38 E0 00 00 */	li r7, 0
/* 802BABE4 002B7B44  48 04 DC 31 */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 802BABE8 002B7B48  38 60 00 02 */	li r3, 2
/* 802BABEC 002B7B4C  48 04 E0 A5 */	bl SetNumTevStages__3CGXFUc
/* 802BABF0 002B7B50  38 60 00 01 */	li r3, 1
/* 802BABF4 002B7B54  48 04 E2 21 */	bl SetNumTexGens__3CGXFUc
/* 802BABF8 002B7B58  38 60 00 00 */	li r3, 0
/* 802BABFC 002B7B5C  48 04 E2 55 */	bl SetNumChans__3CGXFUc
/* 802BAC00 002B7B60  38 60 00 01 */	li r3, 1
/* 802BAC04 002B7B64  48 04 DA 8D */	bl SetNumIndStages__3CGXFUc
/* 802BAC08 002B7B68  38 60 00 00 */	li r3, 0
/* 802BAC0C 002B7B6C  38 80 00 07 */	li r4, 7
/* 802BAC10 002B7B70  38 A0 00 00 */	li r5, 0
/* 802BAC14 002B7B74  48 04 DC 69 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802BAC18 002B7B78  3C 60 80 3D */	lis r3, lbl_803D6624@ha
/* 802BAC1C 002B7B7C  38 63 66 24 */	addi r3, r3, lbl_803D6624@l
/* 802BAC20 002B7B80  48 04 D2 09 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802BAC24 002B7B84  38 60 00 00 */	li r3, 0
/* 802BAC28 002B7B88  38 80 00 01 */	li r4, 1
/* 802BAC2C 002B7B8C  38 A0 00 00 */	li r5, 0
/* 802BAC30 002B7B90  38 C0 00 00 */	li r6, 0
/* 802BAC34 002B7B94  48 04 DC 9D */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802BAC38 002B7B98  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802BAC3C 002B7B9C  38 61 00 64 */	addi r3, r1, 0x64
/* 802BAC40 002B7BA0  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 802BAC44 002B7BA4  48 05 7F 31 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802BAC48 002B7BA8  48 04 F2 15 */	bl GetProjectionState__9CGraphicsFv
/* 802BAC4C 002B7BAC  88 C3 00 00 */	lbz r6, 0(r3)
/* 802BAC50 002B7BB0  3C 80 43 30 */	lis r4, 0x4330
/* 802BAC54 002B7BB4  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 802BAC58 002B7BB8  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802BAC5C 002B7BBC  98 C1 00 30 */	stb r6, 0x30(r1)
/* 802BAC60 002B7BC0  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802BAC64 002B7BC4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BAC68 002B7BC8  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 802BAC6C 002B7BCC  FC 60 08 90 */	fmr f3, f1
/* 802BAC70 002B7BD0  C8 82 C2 A0 */	lfd f4, lbl_805ADFC0@sda21(r2)
/* 802BAC74 002B7BD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802BAC78 002B7BD8  C0 A2 C2 90 */	lfs f5, lbl_805ADFB0@sda21(r2)
/* 802BAC7C 002B7BDC  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BAC80 002B7BE0  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 802BAC84 002B7BE4  C0 C2 C2 94 */	lfs f6, lbl_805ADFB4@sda21(r2)
/* 802BAC88 002B7BE8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802BAC8C 002B7BEC  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 802BAC90 002B7BF0  C0 E3 00 0C */	lfs f7, 0xc(r3)
/* 802BAC94 002B7BF4  90 01 00 AC */	stw r0, 0xac(r1)
/* 802BAC98 002B7BF8  EC 40 20 28 */	fsubs f2, f0, f4
/* 802BAC9C 002B7BFC  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 802BACA0 002B7C00  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802BACA4 002B7C04  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 802BACA8 002B7C08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 802BACAC 002B7C0C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 802BACB0 002B7C10  C0 E3 00 14 */	lfs f7, 0x14(r3)
/* 802BACB4 002B7C14  EC 80 20 28 */	fsubs f4, f0, f4
/* 802BACB8 002B7C18  D0 E1 00 44 */	stfs f7, 0x44(r1)
/* 802BACBC 002B7C1C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802BACC0 002B7C20  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802BACC4 002B7C24  48 05 18 91 */	bl SetOrtho__9CGraphicsFffffff
/* 802BACC8 002B7C28  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BACCC 002B7C2C  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BACD0 002B7C30  48 05 1A 7D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BACD4 002B7C34  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BACD8 002B7C38  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BACDC 002B7C3C  48 05 19 05 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BACE0 002B7C40  48 0B D8 85 */	bl GXPixModeSync
/* 802BACE4 002B7C44  38 60 00 A0 */	li r3, 0xa0
/* 802BACE8 002B7C48  38 80 00 00 */	li r4, 0
/* 802BACEC 002B7C4C  38 A0 00 04 */	li r5, 4
/* 802BACF0 002B7C50  48 04 D8 95 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802BACF4 002B7C54  C0 A2 C2 74 */	lfs f5, lbl_805ADF94@sda21(r2)
/* 802BACF8 002B7C58  3C 60 43 30 */	lis r3, 0x4330
/* 802BACFC 002B7C5C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 802BAD00 002B7C60  6F A4 80 00 */	xoris r4, r29, 0x8000
/* 802BAD04 002B7C64  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BAD08 002B7C68  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802BAD0C 002B7C6C  C0 82 C2 80 */	lfs f4, lbl_805ADFA0@sda21(r2)
/* 802BAD10 002B7C70  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 802BAD14 002B7C74  C8 62 C2 A0 */	lfd f3, lbl_805ADFC0@sda21(r2)
/* 802BAD18 002B7C78  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BAD1C 002B7C7C  C0 42 C2 70 */	lfs f2, lbl_805ADF90@sda21(r2)
/* 802BAD20 002B7C80  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BAD24 002B7C84  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BAD28 002B7C88  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 802BAD2C 002B7C8C  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BAD30 002B7C90  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 802BAD34 002B7C94  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BAD38 002B7C98  EC 00 18 28 */	fsubs f0, f0, f3
/* 802BAD3C 002B7C9C  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BAD40 002B7CA0  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BAD44 002B7CA4  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BAD48 002B7CA8  90 01 00 BC */	stw r0, 0xbc(r1)
/* 802BAD4C 002B7CAC  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 802BAD50 002B7CB0  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 802BAD54 002B7CB4  90 81 00 C4 */	stw r4, 0xc4(r1)
/* 802BAD58 002B7CB8  EC 20 18 28 */	fsubs f1, f0, f3
/* 802BAD5C 002B7CBC  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 802BAD60 002B7CC0  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BAD64 002B7CC4  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 802BAD68 002B7CC8  D0 25 80 00 */	stfs f1, 0xCC008000@l(r5)
/* 802BAD6C 002B7CCC  EC 00 18 28 */	fsubs f0, f0, f3
/* 802BAD70 002B7CD0  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BAD74 002B7CD4  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BAD78 002B7CD8  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BAD7C 002B7CDC  90 01 00 CC */	stw r0, 0xcc(r1)
/* 802BAD80 002B7CE0  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 802BAD84 002B7CE4  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 802BAD88 002B7CE8  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BAD8C 002B7CEC  EC 00 18 28 */	fsubs f0, f0, f3
/* 802BAD90 002B7CF0  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BAD94 002B7CF4  D0 85 80 00 */	stfs f4, 0xCC008000@l(r5)
/* 802BAD98 002B7CF8  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BAD9C 002B7CFC  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BADA0 002B7D00  D0 A5 80 00 */	stfs f5, 0xCC008000@l(r5)
/* 802BADA4 002B7D04  48 04 D7 DD */	bl End__3CGXFv
/* 802BADA8 002B7D08  38 60 00 00 */	li r3, 0
/* 802BADAC 002B7D0C  38 80 00 00 */	li r4, 0
/* 802BADB0 002B7D10  38 A0 00 00 */	li r5, 0
/* 802BADB4 002B7D14  48 0C 0A 7D */	bl GXSetTevSwapMode
/* 802BADB8 002B7D18  38 60 00 01 */	li r3, 1
/* 802BADBC 002B7D1C  38 80 00 00 */	li r4, 0
/* 802BADC0 002B7D20  38 A0 00 00 */	li r5, 0
/* 802BADC4 002B7D24  48 0C 0A 6D */	bl GXSetTevSwapMode
/* 802BADC8 002B7D28  38 60 00 00 */	li r3, 0
/* 802BADCC 002B7D2C  48 04 D8 C5 */	bl SetNumIndStages__3CGXFUc
/* 802BADD0 002B7D30  38 60 00 00 */	li r3, 0
/* 802BADD4 002B7D34  48 04 D9 71 */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802BADD8 002B7D38  38 60 00 00 */	li r3, 0
/* 802BADDC 002B7D3C  38 80 00 FF */	li r4, 0xff
/* 802BADE0 002B7D40  48 0C 13 01 */	bl GXSetDstAlpha
/* 802BADE4 002B7D44  38 61 00 30 */	addi r3, r1, 0x30
/* 802BADE8 002B7D48  48 04 F0 19 */	bl SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState
/* 802BADEC 002B7D4C  38 61 00 64 */	addi r3, r1, 0x64
/* 802BADF0 002B7D50  48 05 19 5D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BADF4 002B7D54  38 00 00 01 */	li r0, 1
/* 802BADF8 002B7D58  98 0D A8 B8 */	stb r0, sMoveRedToAlphaBuffer__11CElementGen@sda21(r13)
/* 802BADFC 002B7D5C  98 0D A5 EC */	stb r0, sMoveRedToAlphaBuffer__6CDecal@sda21(r13)
/* 802BAE00 002B7D60  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 802BAE04 002B7D64  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 802BAE08 002B7D68  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 802BAE0C 002B7D6C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 802BAE10 002B7D70  7C 08 03 A6 */	mtlr r0
/* 802BAE14 002B7D74  38 21 01 00 */	addi r1, r1, 0x100
/* 802BAE18 002B7D78  4E 80 00 20 */	blr

.global RenderFogVolumeModel__13CCubeRendererFRC6CAABoxPC6CModelRC12CTransform4f12CTransform4fPC13CSkinnedModel
RenderFogVolumeModel__13CCubeRendererFRC6CAABoxPC6CModelRC12CTransform4f12CTransform4fPC13CSkinnedModel:
/* 802BAE1C 002B7D7C  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 802BAE20 002B7D80  7C 08 02 A6 */	mflr r0
/* 802BAE24 002B7D84  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 802BAE28 002B7D88  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 802BAE2C 002B7D8C  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, qr0
/* 802BAE30 002B7D90  DB C1 01 B0 */	stfd f30, 0x1b0(r1)
/* 802BAE34 002B7D94  F3 C1 01 B8 */	psq_st f30, 440(r1), 0, qr0
/* 802BAE38 002B7D98  DB A1 01 A0 */	stfd f29, 0x1a0(r1)
/* 802BAE3C 002B7D9C  F3 A1 01 A8 */	psq_st f29, 424(r1), 0, qr0
/* 802BAE40 002B7DA0  DB 81 01 90 */	stfd f28, 0x190(r1)
/* 802BAE44 002B7DA4  F3 81 01 98 */	psq_st f28, 408(r1), 0, qr0
/* 802BAE48 002B7DA8  DB 61 01 80 */	stfd f27, 0x180(r1)
/* 802BAE4C 002B7DAC  F3 61 01 88 */	psq_st f27, 392(r1), 0, qr0
/* 802BAE50 002B7DB0  DB 41 01 70 */	stfd f26, 0x170(r1)
/* 802BAE54 002B7DB4  F3 41 01 78 */	psq_st f26, 376(r1), 0, qr0
/* 802BAE58 002B7DB8  DB 21 01 60 */	stfd f25, 0x160(r1)
/* 802BAE5C 002B7DBC  F3 21 01 68 */	psq_st f25, 360(r1), 0, qr0
/* 802BAE60 002B7DC0  DB 01 01 50 */	stfd f24, 0x150(r1)
/* 802BAE64 002B7DC4  F3 01 01 58 */	psq_st f24, 344(r1), 0, qr0
/* 802BAE68 002B7DC8  DA E1 01 40 */	stfd f23, 0x140(r1)
/* 802BAE6C 002B7DCC  F2 E1 01 48 */	psq_st f23, 328(r1), 0, qr0
/* 802BAE70 002B7DD0  DA C1 01 30 */	stfd f22, 0x130(r1)
/* 802BAE74 002B7DD4  F2 C1 01 38 */	psq_st f22, 312(r1), 0, qr0
/* 802BAE78 002B7DD8  DA A1 01 20 */	stfd f21, 0x120(r1)
/* 802BAE7C 002B7DDC  F2 A1 01 28 */	psq_st f21, 296(r1), 0, qr0
/* 802BAE80 002B7DE0  DA 81 01 10 */	stfd f20, 0x110(r1)
/* 802BAE84 002B7DE4  F2 81 01 18 */	psq_st f20, 280(r1), 0, qr0
/* 802BAE88 002B7DE8  DA 61 01 00 */	stfd f19, 0x100(r1)
/* 802BAE8C 002B7DEC  F2 61 01 08 */	psq_st f19, 264(r1), 0, qr0
/* 802BAE90 002B7DF0  DA 41 00 F0 */	stfd f18, 0xf0(r1)
/* 802BAE94 002B7DF4  F2 41 00 F8 */	psq_st f18, 248(r1), 0, qr0
/* 802BAE98 002B7DF8  93 E1 00 EC */	stw r31, 0xec(r1)
/* 802BAE9C 002B7DFC  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 802BAEA0 002B7E00  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 802BAEA4 002B7E04  7C 9F 23 79 */	or. r31, r4, r4
/* 802BAEA8 002B7E08  7C DE 33 78 */	mr r30, r6
/* 802BAEAC 002B7E0C  7C FD 3B 78 */	mr r29, r7
/* 802BAEB0 002B7E10  40 82 02 60 */	bne lbl_802BB110
/* 802BAEB4 002B7E14  28 1D 00 00 */	cmplwi r29, 0
/* 802BAEB8 002B7E18  40 82 02 58 */	bne lbl_802BB110
/* 802BAEBC 002B7E1C  7C 64 1B 78 */	mr r4, r3
/* 802BAEC0 002B7E20  38 61 00 38 */	addi r3, r1, 0x38
/* 802BAEC4 002B7E24  48 07 CA 39 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 802BAEC8 002B7E28  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 802BAECC 002B7E2C  3C 60 80 3D */	lis r3, lbl_803D6614@ha
/* 802BAED0 002B7E30  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 802BAED4 002B7E34  38 63 66 14 */	addi r3, r3, lbl_803D6614@l
/* 802BAED8 002B7E38  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 802BAEDC 002B7E3C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 802BAEE0 002B7E40  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 802BAEE4 002B7E44  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 802BAEE8 002B7E48  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 802BAEEC 002B7E4C  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 802BAEF0 002B7E50  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 802BAEF4 002B7E54  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 802BAEF8 002B7E58  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 802BAEFC 002B7E5C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 802BAF00 002B7E60  48 04 CF 29 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802BAF04 002B7E64  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 802BAF08 002B7E68  38 61 00 2C */	addi r3, r1, 0x2c
/* 802BAF0C 002B7E6C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 802BAF10 002B7E70  38 81 00 20 */	addi r4, r1, 0x20
/* 802BAF14 002B7E74  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802BAF18 002B7E78  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 802BAF1C 002B7E7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802BAF20 002B7E80  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 802BAF24 002B7E84  48 05 8E AD */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 802BAF28 002B7E88  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 802BAF2C 002B7E8C  3C 60 80 5A */	lis r3, sRightVector__9CVector3f@ha
/* 802BAF30 002B7E90  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 802BAF34 002B7E94  39 23 67 18 */	addi r9, r3, sRightVector__9CVector3f@l
/* 802BAF38 002B7E98  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802BAF3C 002B7E9C  3C 60 80 5A */	lis r3, sLeftVector__9CVector3f@ha
/* 802BAF40 002B7EA0  EC 62 00 72 */	fmuls f3, f2, f1
/* 802BAF44 002B7EA4  C0 9E 00 0C */	lfs f4, 0xc(r30)
/* 802BAF48 002B7EA8  39 03 67 0C */	addi r8, r3, sLeftVector__9CVector3f@l
/* 802BAF4C 002B7EAC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 802BAF50 002B7EB0  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 802BAF54 002B7EB4  C0 E1 00 5C */	lfs f7, 0x5c(r1)
/* 802BAF58 002B7EB8  EC 84 18 3A */	fmadds f4, f4, f0, f3
/* 802BAF5C 002B7EBC  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 802BAF60 002B7EC0  38 E3 67 24 */	addi r7, r3, sForwardVector__9CVector3f@l
/* 802BAF64 002B7EC4  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 802BAF68 002B7EC8  C0 62 C2 EC */	lfs f3, lbl_805AE00C@sda21(r2)
/* 802BAF6C 002B7ECC  3C 60 80 5A */	lis r3, sBackVector__9CVector3f@ha
/* 802BAF70 002B7ED0  ED 05 20 BA */	fmadds f8, f5, f2, f4
/* 802BAF74 002B7ED4  38 C3 67 30 */	addi r6, r3, sBackVector__9CVector3f@l
/* 802BAF78 002B7ED8  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 802BAF7C 002B7EDC  3C 80 80 5A */	lis r4, sUpVector__9CVector3f@ha
/* 802BAF80 002B7EE0  C0 82 C2 E8 */	lfs f4, lbl_805AE008@sda21(r2)
/* 802BAF84 002B7EE4  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 802BAF88 002B7EE8  38 A4 66 F4 */	addi r5, r4, sUpVector__9CVector3f@l
/* 802BAF8C 002B7EEC  EC 63 40 2A */	fadds f3, f3, f8
/* 802BAF90 002B7EF0  FE C0 38 50 */	fneg f22, f7
/* 802BAF94 002B7EF4  38 83 67 00 */	addi r4, r3, sDownVector__9CVector3f@l
/* 802BAF98 002B7EF8  FE A0 30 50 */	fneg f21, f6
/* 802BAF9C 002B7EFC  C2 E9 00 00 */	lfs f23, 0(r9)
/* 802BAFA0 002B7F00  FE 80 28 50 */	fneg f20, f5
/* 802BAFA4 002B7F04  EC 64 18 2A */	fadds f3, f4, f3
/* 802BAFA8 002B7F08  C3 09 00 04 */	lfs f24, 4(r9)
/* 802BAFAC 002B7F0C  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BAFB0 002B7F10  C3 29 00 08 */	lfs f25, 8(r9)
/* 802BAFB4 002B7F14  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BAFB8 002B7F18  C3 41 00 50 */	lfs f26, 0x50(r1)
/* 802BAFBC 002B7F1C  C3 68 00 00 */	lfs f27, 0(r8)
/* 802BAFC0 002B7F20  C3 88 00 04 */	lfs f28, 4(r8)
/* 802BAFC4 002B7F24  C3 A8 00 08 */	lfs f29, 8(r8)
/* 802BAFC8 002B7F28  C2 61 00 54 */	lfs f19, 0x54(r1)
/* 802BAFCC 002B7F2C  C3 C7 00 00 */	lfs f30, 0(r7)
/* 802BAFD0 002B7F30  C3 E7 00 04 */	lfs f31, 4(r7)
/* 802BAFD4 002B7F34  C1 A7 00 08 */	lfs f13, 8(r7)
/* 802BAFD8 002B7F38  C1 86 00 00 */	lfs f12, 0(r6)
/* 802BAFDC 002B7F3C  C1 66 00 04 */	lfs f11, 4(r6)
/* 802BAFE0 002B7F40  C1 46 00 08 */	lfs f10, 8(r6)
/* 802BAFE4 002B7F44  C2 41 00 58 */	lfs f18, 0x58(r1)
/* 802BAFE8 002B7F48  C1 25 00 00 */	lfs f9, 0(r5)
/* 802BAFEC 002B7F4C  C1 05 00 04 */	lfs f8, 4(r5)
/* 802BAFF0 002B7F50  C0 E5 00 08 */	lfs f7, 8(r5)
/* 802BAFF4 002B7F54  C0 C4 00 00 */	lfs f6, 0(r4)
/* 802BAFF8 002B7F58  C0 A4 00 04 */	lfs f5, 4(r4)
/* 802BAFFC 002B7F5C  C0 84 00 08 */	lfs f4, 8(r4)
/* 802BB000 002B7F60  D2 E1 00 68 */	stfs f23, 0x68(r1)
/* 802BB004 002B7F64  D3 01 00 6C */	stfs f24, 0x6c(r1)
/* 802BB008 002B7F68  D3 21 00 70 */	stfs f25, 0x70(r1)
/* 802BB00C 002B7F6C  D3 41 00 74 */	stfs f26, 0x74(r1)
/* 802BB010 002B7F70  D3 61 00 78 */	stfs f27, 0x78(r1)
/* 802BB014 002B7F74  D3 81 00 7C */	stfs f28, 0x7c(r1)
/* 802BB018 002B7F78  D3 A1 00 80 */	stfs f29, 0x80(r1)
/* 802BB01C 002B7F7C  D2 C1 00 84 */	stfs f22, 0x84(r1)
/* 802BB020 002B7F80  D3 C1 00 88 */	stfs f30, 0x88(r1)
/* 802BB024 002B7F84  D3 E1 00 8C */	stfs f31, 0x8c(r1)
/* 802BB028 002B7F88  D1 A1 00 90 */	stfs f13, 0x90(r1)
/* 802BB02C 002B7F8C  D2 61 00 94 */	stfs f19, 0x94(r1)
/* 802BB030 002B7F90  D1 81 00 98 */	stfs f12, 0x98(r1)
/* 802BB034 002B7F94  D1 61 00 9C */	stfs f11, 0x9c(r1)
/* 802BB038 002B7F98  D1 41 00 A0 */	stfs f10, 0xa0(r1)
/* 802BB03C 002B7F9C  D2 A1 00 A4 */	stfs f21, 0xa4(r1)
/* 802BB040 002B7FA0  D1 21 00 A8 */	stfs f9, 0xa8(r1)
/* 802BB044 002B7FA4  D1 01 00 AC */	stfs f8, 0xac(r1)
/* 802BB048 002B7FA8  D0 E1 00 B0 */	stfs f7, 0xb0(r1)
/* 802BB04C 002B7FAC  D2 41 00 B4 */	stfs f18, 0xb4(r1)
/* 802BB050 002B7FB0  D0 C1 00 B8 */	stfs f6, 0xb8(r1)
/* 802BB054 002B7FB4  D0 A1 00 BC */	stfs f5, 0xbc(r1)
/* 802BB058 002B7FB8  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 802BB05C 002B7FBC  D2 81 00 C4 */	stfs f20, 0xc4(r1)
/* 802BB060 002B7FC0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 802BB064 002B7FC4  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 802BB068 002B7FC8  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 802BB06C 002B7FCC  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 802BB070 002B7FD0  48 05 15 71 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BB074 002B7FD4  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 802BB078 002B7FD8  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 802BB07C 002B7FDC  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 802BB080 002B7FE0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 802BB084 002B7FE4  EC 43 10 28 */	fsubs f2, f3, f2
/* 802BB088 002B7FE8  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 802BB08C 002B7FEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BB090 002B7FF0  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 802BB094 002B7FF4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802BB098 002B7FF8  EC 23 08 28 */	fsubs f1, f3, f1
/* 802BB09C 002B7FFC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802BB0A0 002B8000  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BB0A4 002B8004  D0 21 00 08 */	stfs f1, 8(r1)
/* 802BB0A8 002B8008  40 80 00 0C */	bge lbl_802BB0B4
/* 802BB0AC 002B800C  38 61 00 0C */	addi r3, r1, 0xc
/* 802BB0B0 002B8010  48 00 00 08 */	b lbl_802BB0B8
lbl_802BB0B4:
/* 802BB0B4 002B8014  38 61 00 10 */	addi r3, r1, 0x10
lbl_802BB0B8:
/* 802BB0B8 002B8018  C0 23 00 00 */	lfs f1, 0(r3)
/* 802BB0BC 002B801C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802BB0C0 002B8020  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BB0C4 002B8024  40 80 00 08 */	bge lbl_802BB0CC
/* 802BB0C8 002B8028  38 61 00 08 */	addi r3, r1, 8
lbl_802BB0CC:
/* 802BB0CC 002B802C  C0 22 C2 88 */	lfs f1, lbl_805ADFA8@sda21(r2)
/* 802BB0D0 002B8030  3B C0 00 00 */	li r30, 0
/* 802BB0D4 002B8034  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BB0D8 002B8038  EE 41 00 32 */	fmuls f18, f1, f0
lbl_802BB0DC:
/* 802BB0DC 002B803C  38 61 00 14 */	addi r3, r1, 0x14
/* 802BB0E0 002B8040  38 81 00 50 */	addi r4, r1, 0x50
/* 802BB0E4 002B8044  48 07 C5 29 */	bl GetCenterPoint__6CAABoxCFv
/* 802BB0E8 002B8048  FC 20 90 90 */	fmr f1, f18
/* 802BB0EC 002B804C  7F C5 F3 78 */	mr r5, r30
/* 802BB0F0 002B8050  38 61 00 68 */	addi r3, r1, 0x68
/* 802BB0F4 002B8054  38 C1 00 14 */	addi r6, r1, 0x14
/* 802BB0F8 002B8058  38 80 00 07 */	li r4, 7
/* 802BB0FC 002B805C  48 00 01 2D */	bl DrawFogSlices__13CCubeRendererFPC6CPlaneiiRC9CVector3ff
/* 802BB100 002B8060  3B DE 00 01 */	addi r30, r30, 1
/* 802BB104 002B8064  2C 1E 00 07 */	cmpwi r30, 7
/* 802BB108 002B8068  41 80 FF D4 */	blt lbl_802BB0DC
/* 802BB10C 002B806C  48 00 00 90 */	b lbl_802BB19C
lbl_802BB110:
/* 802BB110 002B8070  28 1D 00 00 */	cmplwi r29, 0
/* 802BB114 002B8074  41 82 00 54 */	beq lbl_802BB168
/* 802BB118 002B8078  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 802BB11C 002B807C  38 80 00 00 */	li r4, 0
/* 802BB120 002B8080  7F E3 FB 78 */	mr r3, r31
/* 802BB124 002B8084  48 09 A5 11 */	bl Touch__6CModelCFi
/* 802BB128 002B8088  83 DF 00 28 */	lwz r30, 0x28(r31)
/* 802BB12C 002B808C  28 1E 00 00 */	cmplwi r30, 0
/* 802BB130 002B8090  41 82 00 6C */	beq lbl_802BB19C
/* 802BB134 002B8094  7F E3 FB 78 */	mr r3, r31
/* 802BB138 002B8098  48 09 9F E9 */	bl UpdateLastFrame__6CModelFv
/* 802BB13C 002B809C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802BB140 002B80A0  48 09 A5 85 */	bl GetNormals__6CModelCFv
/* 802BB144 002B80A4  7C 7F 1B 78 */	mr r31, r3
/* 802BB148 002B80A8  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802BB14C 002B80AC  48 09 A5 85 */	bl GetPositions__6CModelCFv
/* 802BB150 002B80B0  7C 64 1B 78 */	mr r4, r3
/* 802BB154 002B80B4  7F C3 F3 78 */	mr r3, r30
/* 802BB158 002B80B8  7F E5 FB 78 */	mr r5, r31
/* 802BB15C 002B80BC  38 C0 00 02 */	li r6, 2
/* 802BB160 002B80C0  48 04 B8 91 */	bl DrawFlat__10CCubeModelCFPCfPCf17ESurfaceSelection
/* 802BB164 002B80C4  48 00 00 38 */	b lbl_802BB19C
lbl_802BB168:
/* 802BB168 002B80C8  7F E3 FB 78 */	mr r3, r31
/* 802BB16C 002B80CC  38 80 00 00 */	li r4, 0
/* 802BB170 002B80D0  48 09 A4 C5 */	bl Touch__6CModelCFi
/* 802BB174 002B80D4  83 DF 00 28 */	lwz r30, 0x28(r31)
/* 802BB178 002B80D8  28 1E 00 00 */	cmplwi r30, 0
/* 802BB17C 002B80DC  41 82 00 20 */	beq lbl_802BB19C
/* 802BB180 002B80E0  7F E3 FB 78 */	mr r3, r31
/* 802BB184 002B80E4  48 09 9F 9D */	bl UpdateLastFrame__6CModelFv
/* 802BB188 002B80E8  7F C3 F3 78 */	mr r3, r30
/* 802BB18C 002B80EC  38 80 00 00 */	li r4, 0
/* 802BB190 002B80F0  38 A0 00 00 */	li r5, 0
/* 802BB194 002B80F4  38 C0 00 02 */	li r6, 2
/* 802BB198 002B80F8  48 04 B8 59 */	bl DrawFlat__10CCubeModelCFPCfPCf17ESurfaceSelection
lbl_802BB19C:
/* 802BB19C 002B80FC  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, qr0
/* 802BB1A0 002B8100  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 802BB1A4 002B8104  E3 C1 01 B8 */	psq_l f30, 440(r1), 0, qr0
/* 802BB1A8 002B8108  CB C1 01 B0 */	lfd f30, 0x1b0(r1)
/* 802BB1AC 002B810C  E3 A1 01 A8 */	psq_l f29, 424(r1), 0, qr0
/* 802BB1B0 002B8110  CB A1 01 A0 */	lfd f29, 0x1a0(r1)
/* 802BB1B4 002B8114  E3 81 01 98 */	psq_l f28, 408(r1), 0, qr0
/* 802BB1B8 002B8118  CB 81 01 90 */	lfd f28, 0x190(r1)
/* 802BB1BC 002B811C  E3 61 01 88 */	psq_l f27, 392(r1), 0, qr0
/* 802BB1C0 002B8120  CB 61 01 80 */	lfd f27, 0x180(r1)
/* 802BB1C4 002B8124  E3 41 01 78 */	psq_l f26, 376(r1), 0, qr0
/* 802BB1C8 002B8128  CB 41 01 70 */	lfd f26, 0x170(r1)
/* 802BB1CC 002B812C  E3 21 01 68 */	psq_l f25, 360(r1), 0, qr0
/* 802BB1D0 002B8130  CB 21 01 60 */	lfd f25, 0x160(r1)
/* 802BB1D4 002B8134  E3 01 01 58 */	psq_l f24, 344(r1), 0, qr0
/* 802BB1D8 002B8138  CB 01 01 50 */	lfd f24, 0x150(r1)
/* 802BB1DC 002B813C  E2 E1 01 48 */	psq_l f23, 328(r1), 0, qr0
/* 802BB1E0 002B8140  CA E1 01 40 */	lfd f23, 0x140(r1)
/* 802BB1E4 002B8144  E2 C1 01 38 */	psq_l f22, 312(r1), 0, qr0
/* 802BB1E8 002B8148  CA C1 01 30 */	lfd f22, 0x130(r1)
/* 802BB1EC 002B814C  E2 A1 01 28 */	psq_l f21, 296(r1), 0, qr0
/* 802BB1F0 002B8150  CA A1 01 20 */	lfd f21, 0x120(r1)
/* 802BB1F4 002B8154  E2 81 01 18 */	psq_l f20, 280(r1), 0, qr0
/* 802BB1F8 002B8158  CA 81 01 10 */	lfd f20, 0x110(r1)
/* 802BB1FC 002B815C  E2 61 01 08 */	psq_l f19, 264(r1), 0, qr0
/* 802BB200 002B8160  CA 61 01 00 */	lfd f19, 0x100(r1)
/* 802BB204 002B8164  E2 41 00 F8 */	psq_l f18, 248(r1), 0, qr0
/* 802BB208 002B8168  CA 41 00 F0 */	lfd f18, 0xf0(r1)
/* 802BB20C 002B816C  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 802BB210 002B8170  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 802BB214 002B8174  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 802BB218 002B8178  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 802BB21C 002B817C  7C 08 03 A6 */	mtlr r0
/* 802BB220 002B8180  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 802BB224 002B8184  4E 80 00 20 */	blr

.global DrawFogSlices__13CCubeRendererFPC6CPlaneiiRC9CVector3ff
DrawFogSlices__13CCubeRendererFPC6CPlaneiiRC9CVector3ff:
/* 802BB228 002B8188  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 802BB22C 002B818C  7C 08 02 A6 */	mflr r0
/* 802BB230 002B8190  90 01 02 54 */	stw r0, 0x254(r1)
/* 802BB234 002B8194  DB E1 02 40 */	stfd f31, 0x240(r1)
/* 802BB238 002B8198  F3 E1 02 48 */	psq_st f31, 584(r1), 0, qr0
/* 802BB23C 002B819C  DB C1 02 30 */	stfd f30, 0x230(r1)
/* 802BB240 002B81A0  F3 C1 02 38 */	psq_st f30, 568(r1), 0, qr0
/* 802BB244 002B81A4  BF 21 02 14 */	stmw r25, 0x214(r1)
/* 802BB248 002B81A8  7C BD 2B 78 */	mr r29, r5
/* 802BB24C 002B81AC  38 00 00 00 */	li r0, 0
/* 802BB250 002B81B0  7C 7B 1B 78 */	mr r27, r3
/* 802BB254 002B81B4  FF E0 08 90 */	fmr f31, f1
/* 802BB258 002B81B8  54 A3 20 36 */	slwi r3, r5, 4
/* 802BB25C 002B81BC  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 802BB260 002B81C0  7F DB 1A 14 */	add r30, r27, r3
/* 802BB264 002B81C4  7C 9C 23 78 */	mr r28, r4
/* 802BB268 002B81C8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 802BB26C 002B81CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802BB270 002B81D0  3B 40 00 00 */	li r26, 0
/* 802BB274 002B81D4  FC 20 0A 10 */	fabs f1, f1
/* 802BB278 002B81D8  90 01 01 70 */	stw r0, 0x170(r1)
/* 802BB27C 002B81DC  FC 00 02 10 */	fabs f0, f0
/* 802BB280 002B81E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BB284 002B81E4  40 81 00 08 */	ble lbl_802BB28C
/* 802BB288 002B81E8  3B 40 00 01 */	li r26, 1
lbl_802BB28C:
/* 802BB28C 002B81EC  57 40 10 3A */	slwi r0, r26, 2
/* 802BB290 002B81F0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802BB294 002B81F4  7C 3E 04 2E */	lfsx f1, r30, r0
/* 802BB298 002B81F8  FC 40 02 10 */	fabs f2, f0
/* 802BB29C 002B81FC  FC 00 0A 10 */	fabs f0, f1
/* 802BB2A0 002B8200  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BB2A4 002B8204  40 81 00 08 */	ble lbl_802BB2AC
/* 802BB2A8 002B8208  3B 40 00 02 */	li r26, 2
lbl_802BB2AC:
/* 802BB2AC 002B820C  C0 9E 00 04 */	lfs f4, 4(r30)
/* 802BB2B0 002B8210  38 61 01 58 */	addi r3, r1, 0x158
/* 802BB2B4 002B8214  C0 E6 00 04 */	lfs f7, 4(r6)
/* 802BB2B8 002B8218  38 81 00 14 */	addi r4, r1, 0x14
/* 802BB2BC 002B821C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 802BB2C0 002B8220  EC 04 01 F2 */	fmuls f0, f4, f7
/* 802BB2C4 002B8224  C0 C6 00 00 */	lfs f6, 0(r6)
/* 802BB2C8 002B8228  C0 BE 00 08 */	lfs f5, 8(r30)
/* 802BB2CC 002B822C  C1 06 00 08 */	lfs f8, 8(r6)
/* 802BB2D0 002B8230  EC 22 01 BA */	fmadds f1, f2, f6, f0
/* 802BB2D4 002B8234  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802BB2D8 002B8238  EC 25 0A 3A */	fmadds f1, f5, f8, f1
/* 802BB2DC 002B823C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BB2E0 002B8240  EC 60 00 B2 */	fmuls f3, f0, f2
/* 802BB2E4 002B8244  EC 40 01 32 */	fmuls f2, f0, f4
/* 802BB2E8 002B8248  EC 20 01 72 */	fmuls f1, f0, f5
/* 802BB2EC 002B824C  EC 06 18 28 */	fsubs f0, f6, f3
/* 802BB2F0 002B8250  D0 61 00 08 */	stfs f3, 8(r1)
/* 802BB2F4 002B8254  EC 87 10 28 */	fsubs f4, f7, f2
/* 802BB2F8 002B8258  EC 68 08 28 */	fsubs f3, f8, f1
/* 802BB2FC 002B825C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802BB300 002B8260  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802BB304 002B8264  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802BB308 002B8268  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802BB30C 002B826C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802BB310 002B8270  48 05 92 75 */	bl __ct__9CVector3dFRC9CVector3f
/* 802BB314 002B8274  57 40 10 3A */	slwi r0, r26, 2
/* 802BB318 002B8278  C0 42 C2 70 */	lfs f2, lbl_805ADF90@sda21(r2)
/* 802BB31C 002B827C  C0 22 C2 A8 */	lfs f1, lbl_805ADFC8@sda21(r2)
/* 802BB320 002B8280  2C 1A 00 01 */	cmpwi r26, 1
/* 802BB324 002B8284  7C 1E 04 2E */	lfsx f0, r30, r0
/* 802BB328 002B8288  FC 00 10 6E */	fsel f0, f0, f1, f2
/* 802BB32C 002B828C  FF C0 00 90 */	fmr f30, f0
/* 802BB330 002B8290  40 82 00 08 */	bne lbl_802BB338
/* 802BB334 002B8294  FF C0 00 50 */	fneg f30, f0
lbl_802BB338:
/* 802BB338 002B8298  C8 22 C2 F0 */	lfd f1, lbl_805AE010@sda21(r2)
/* 802BB33C 002B829C  38 61 01 40 */	addi r3, r1, 0x140
/* 802BB340 002B82A0  FC 40 08 90 */	fmr f2, f1
/* 802BB344 002B82A4  FC 60 08 90 */	fmr f3, f1
/* 802BB348 002B82A8  48 05 92 59 */	bl __ct__9CVector3dFddd
/* 802BB34C 002B82AC  C8 22 C2 F0 */	lfd f1, lbl_805AE010@sda21(r2)
/* 802BB350 002B82B0  38 61 01 28 */	addi r3, r1, 0x128
/* 802BB354 002B82B4  FC 40 08 90 */	fmr f2, f1
/* 802BB358 002B82B8  FC 60 08 90 */	fmr f3, f1
/* 802BB35C 002B82BC  48 05 92 45 */	bl __ct__9CVector3dFddd
/* 802BB360 002B82C0  3C 60 80 3D */	lis r3, lbl_803D65FC@ha
/* 802BB364 002B82C4  57 40 18 38 */	slwi r0, r26, 3
/* 802BB368 002B82C8  38 83 65 FC */	addi r4, r3, lbl_803D65FC@l
/* 802BB36C 002B82CC  EC 1F 07 B2 */	fmuls f0, f31, f30
/* 802BB370 002B82D0  7C 64 02 14 */	add r3, r4, r0
/* 802BB374 002B82D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 802BB378 002B82D8  80 03 00 04 */	lwz r0, 4(r3)
/* 802BB37C 002B82DC  38 A1 01 40 */	addi r5, r1, 0x140
/* 802BB380 002B82E0  54 83 18 38 */	slwi r3, r4, 3
/* 802BB384 002B82E4  38 C1 01 28 */	addi r6, r1, 0x128
/* 802BB388 002B82E8  54 00 18 38 */	slwi r0, r0, 3
/* 802BB38C 002B82EC  7F E5 1D AE */	stfdx f31, r5, r3
/* 802BB390 002B82F0  38 61 00 E0 */	addi r3, r1, 0xe0
/* 802BB394 002B82F4  38 81 01 58 */	addi r4, r1, 0x158
/* 802BB398 002B82F8  7C 06 05 AE */	stfdx f0, r6, r0
/* 802BB39C 002B82FC  48 05 8F F9 */	bl __mi__FRC9CVector3dRC9CVector3d
/* 802BB3A0 002B8300  38 61 00 F8 */	addi r3, r1, 0xf8
/* 802BB3A4 002B8304  38 81 00 E0 */	addi r4, r1, 0xe0
/* 802BB3A8 002B8308  38 A1 01 28 */	addi r5, r1, 0x128
/* 802BB3AC 002B830C  48 05 8F E9 */	bl __mi__FRC9CVector3dRC9CVector3d
/* 802BB3B0 002B8310  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 802BB3B4 002B8314  3B E1 01 A8 */	addi r31, r1, 0x1a8
/* 802BB3B8 002B8318  1C 00 00 18 */	mulli r0, r0, 0x18
/* 802BB3BC 002B831C  7C 7F 02 15 */	add. r3, r31, r0
/* 802BB3C0 002B8320  41 82 00 1C */	beq lbl_802BB3DC
/* 802BB3C4 002B8324  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 802BB3C8 002B8328  C8 21 01 00 */	lfd f1, 0x100(r1)
/* 802BB3CC 002B832C  D8 03 00 00 */	stfd f0, 0(r3)
/* 802BB3D0 002B8330  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 802BB3D4 002B8334  D8 23 00 08 */	stfd f1, 8(r3)
/* 802BB3D8 002B8338  D8 03 00 10 */	stfd f0, 0x10(r3)
lbl_802BB3DC:
/* 802BB3DC 002B833C  80 C1 01 A4 */	lwz r6, 0x1a4(r1)
/* 802BB3E0 002B8340  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802BB3E4 002B8344  38 81 01 58 */	addi r4, r1, 0x158
/* 802BB3E8 002B8348  38 A1 01 40 */	addi r5, r1, 0x140
/* 802BB3EC 002B834C  38 06 00 01 */	addi r0, r6, 1
/* 802BB3F0 002B8350  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 802BB3F4 002B8354  48 05 8F E5 */	bl __pl__FRC9CVector3dRC9CVector3d
/* 802BB3F8 002B8358  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802BB3FC 002B835C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 802BB400 002B8360  38 A1 01 28 */	addi r5, r1, 0x128
/* 802BB404 002B8364  48 05 8F 91 */	bl __mi__FRC9CVector3dRC9CVector3d
/* 802BB408 002B8368  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 802BB40C 002B836C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 802BB410 002B8370  7C 7F 02 15 */	add. r3, r31, r0
/* 802BB414 002B8374  41 82 00 1C */	beq lbl_802BB430
/* 802BB418 002B8378  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 802BB41C 002B837C  C8 21 00 D0 */	lfd f1, 0xd0(r1)
/* 802BB420 002B8380  D8 03 00 00 */	stfd f0, 0(r3)
/* 802BB424 002B8384  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 802BB428 002B8388  D8 23 00 08 */	stfd f1, 8(r3)
/* 802BB42C 002B838C  D8 03 00 10 */	stfd f0, 0x10(r3)
lbl_802BB430:
/* 802BB430 002B8390  80 C1 01 A4 */	lwz r6, 0x1a4(r1)
/* 802BB434 002B8394  38 61 00 80 */	addi r3, r1, 0x80
/* 802BB438 002B8398  38 81 01 58 */	addi r4, r1, 0x158
/* 802BB43C 002B839C  38 A1 01 40 */	addi r5, r1, 0x140
/* 802BB440 002B83A0  38 06 00 01 */	addi r0, r6, 1
/* 802BB444 002B83A4  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 802BB448 002B83A8  48 05 8F 91 */	bl __pl__FRC9CVector3dRC9CVector3d
/* 802BB44C 002B83AC  38 61 00 98 */	addi r3, r1, 0x98
/* 802BB450 002B83B0  38 81 00 80 */	addi r4, r1, 0x80
/* 802BB454 002B83B4  38 A1 01 28 */	addi r5, r1, 0x128
/* 802BB458 002B83B8  48 05 8F 81 */	bl __pl__FRC9CVector3dRC9CVector3d
/* 802BB45C 002B83BC  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 802BB460 002B83C0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 802BB464 002B83C4  7C 7F 02 15 */	add. r3, r31, r0
/* 802BB468 002B83C8  41 82 00 1C */	beq lbl_802BB484
/* 802BB46C 002B83CC  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 802BB470 002B83D0  C8 21 00 A0 */	lfd f1, 0xa0(r1)
/* 802BB474 002B83D4  D8 03 00 00 */	stfd f0, 0(r3)
/* 802BB478 002B83D8  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 802BB47C 002B83DC  D8 23 00 08 */	stfd f1, 8(r3)
/* 802BB480 002B83E0  D8 03 00 10 */	stfd f0, 0x10(r3)
lbl_802BB484:
/* 802BB484 002B83E4  80 C1 01 A4 */	lwz r6, 0x1a4(r1)
/* 802BB488 002B83E8  38 61 00 50 */	addi r3, r1, 0x50
/* 802BB48C 002B83EC  38 81 01 58 */	addi r4, r1, 0x158
/* 802BB490 002B83F0  38 A1 01 40 */	addi r5, r1, 0x140
/* 802BB494 002B83F4  38 06 00 01 */	addi r0, r6, 1
/* 802BB498 002B83F8  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 802BB49C 002B83FC  48 05 8E F9 */	bl __mi__FRC9CVector3dRC9CVector3d
/* 802BB4A0 002B8400  38 61 00 68 */	addi r3, r1, 0x68
/* 802BB4A4 002B8404  38 81 00 50 */	addi r4, r1, 0x50
/* 802BB4A8 002B8408  38 A1 01 28 */	addi r5, r1, 0x128
/* 802BB4AC 002B840C  48 05 8F 2D */	bl __pl__FRC9CVector3dRC9CVector3d
/* 802BB4B0 002B8410  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 802BB4B4 002B8414  1C 00 00 18 */	mulli r0, r0, 0x18
/* 802BB4B8 002B8418  7C 7F 02 15 */	add. r3, r31, r0
/* 802BB4BC 002B841C  41 82 00 1C */	beq lbl_802BB4D8
/* 802BB4C0 002B8420  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 802BB4C4 002B8424  C8 21 00 70 */	lfd f1, 0x70(r1)
/* 802BB4C8 002B8428  D8 03 00 00 */	stfd f0, 0(r3)
/* 802BB4CC 002B842C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 802BB4D0 002B8430  D8 23 00 08 */	stfd f1, 8(r3)
/* 802BB4D4 002B8434  D8 03 00 10 */	stfd f0, 0x10(r3)
lbl_802BB4D8:
/* 802BB4D8 002B8438  80 61 01 A4 */	lwz r3, 0x1a4(r1)
/* 802BB4DC 002B843C  3B 41 01 74 */	addi r26, r1, 0x174
/* 802BB4E0 002B8440  3B 20 00 00 */	li r25, 0
/* 802BB4E4 002B8444  38 03 00 01 */	addi r0, r3, 1
/* 802BB4E8 002B8448  90 01 01 A4 */	stw r0, 0x1a4(r1)
lbl_802BB4EC:
/* 802BB4EC 002B844C  7F C4 F3 78 */	mr r4, r30
/* 802BB4F0 002B8450  38 61 01 10 */	addi r3, r1, 0x110
/* 802BB4F4 002B8454  48 05 90 91 */	bl __ct__9CVector3dFRC9CVector3f
/* 802BB4F8 002B8458  C8 3F 00 08 */	lfd f1, 8(r31)
/* 802BB4FC 002B845C  38 61 00 20 */	addi r3, r1, 0x20
/* 802BB500 002B8460  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802BB504 002B8464  38 81 01 10 */	addi r4, r1, 0x110
/* 802BB508 002B8468  C8 7F 00 00 */	lfd f3, 0(r31)
/* 802BB50C 002B846C  FC 21 00 32 */	fmul f1, f1, f0
/* 802BB510 002B8470  C8 41 01 10 */	lfd f2, 0x110(r1)
/* 802BB514 002B8474  C8 BF 00 10 */	lfd f5, 0x10(r31)
/* 802BB518 002B8478  C8 81 01 20 */	lfd f4, 0x120(r1)
/* 802BB51C 002B847C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802BB520 002B8480  FC 23 08 BA */	fmadd f1, f3, f2, f1
/* 802BB524 002B8484  FC 25 09 3A */	fmadd f1, f5, f4, f1
/* 802BB528 002B8488  FC 21 00 28 */	fsub f1, f1, f0
/* 802BB52C 002B848C  48 05 8E 2D */	bl __ml__FdRC9CVector3d
/* 802BB530 002B8490  7F E4 FB 78 */	mr r4, r31
/* 802BB534 002B8494  38 61 00 38 */	addi r3, r1, 0x38
/* 802BB538 002B8498  38 A1 00 20 */	addi r5, r1, 0x20
/* 802BB53C 002B849C  48 05 8E 59 */	bl __mi__FRC9CVector3dRC9CVector3d
/* 802BB540 002B84A0  80 01 01 70 */	lwz r0, 0x170(r1)
/* 802BB544 002B84A4  C8 41 00 48 */	lfd f2, 0x48(r1)
/* 802BB548 002B84A8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802BB54C 002B84AC  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 802BB550 002B84B0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802BB554 002B84B4  FC 40 10 18 */	frsp f2, f2
/* 802BB558 002B84B8  FC 20 08 18 */	frsp f1, f1
/* 802BB55C 002B84BC  FC 00 00 18 */	frsp f0, f0
/* 802BB560 002B84C0  7C 7A 02 15 */	add. r3, r26, r0
/* 802BB564 002B84C4  41 82 00 10 */	beq lbl_802BB574
/* 802BB568 002B84C8  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BB56C 002B84CC  D0 23 00 04 */	stfs f1, 4(r3)
/* 802BB570 002B84D0  D0 43 00 08 */	stfs f2, 8(r3)
lbl_802BB574:
/* 802BB574 002B84D4  80 61 01 70 */	lwz r3, 0x170(r1)
/* 802BB578 002B84D8  3B 39 00 01 */	addi r25, r25, 1
/* 802BB57C 002B84DC  2C 19 00 04 */	cmpwi r25, 4
/* 802BB580 002B84E0  3B FF 00 18 */	addi r31, r31, 0x18
/* 802BB584 002B84E4  38 03 00 01 */	addi r0, r3, 1
/* 802BB588 002B84E8  90 01 01 70 */	stw r0, 0x170(r1)
/* 802BB58C 002B84EC  41 80 FF 60 */	blt lbl_802BB4EC
/* 802BB590 002B84F0  80 C1 01 A4 */	lwz r6, 0x1a4(r1)
/* 802BB594 002B84F4  7F 63 DB 78 */	mr r3, r27
/* 802BB598 002B84F8  7F 84 E3 78 */	mr r4, r28
/* 802BB59C 002B84FC  7F 45 D3 78 */	mr r5, r26
/* 802BB5A0 002B8500  7F A7 EB 78 */	mr r7, r29
/* 802BB5A4 002B8504  39 00 00 00 */	li r8, 0
/* 802BB5A8 002B8508  48 00 00 CD */	bl DrawFogFans__13CCubeRendererFPC6CPlaneiPC9CVector3fiii
/* 802BB5AC 002B850C  80 A1 01 70 */	lwz r5, 0x170(r1)
/* 802BB5B0 002B8510  38 60 00 00 */	li r3, 0
/* 802BB5B4 002B8514  2C 05 00 00 */	cmpwi r5, 0
/* 802BB5B8 002B8518  40 81 00 40 */	ble lbl_802BB5F8
/* 802BB5BC 002B851C  2C 05 00 08 */	cmpwi r5, 8
/* 802BB5C0 002B8520  38 85 FF F8 */	addi r4, r5, -8
/* 802BB5C4 002B8524  40 81 00 20 */	ble lbl_802BB5E4
/* 802BB5C8 002B8528  38 04 00 07 */	addi r0, r4, 7
/* 802BB5CC 002B852C  54 00 E8 FE */	srwi r0, r0, 3
/* 802BB5D0 002B8530  7C 09 03 A6 */	mtctr r0
/* 802BB5D4 002B8534  2C 04 00 00 */	cmpwi r4, 0
/* 802BB5D8 002B8538  40 81 00 0C */	ble lbl_802BB5E4
lbl_802BB5DC:
/* 802BB5DC 002B853C  38 63 00 08 */	addi r3, r3, 8
/* 802BB5E0 002B8540  42 00 FF FC */	bdnz lbl_802BB5DC
lbl_802BB5E4:
/* 802BB5E4 002B8544  7C 03 28 50 */	subf r0, r3, r5
/* 802BB5E8 002B8548  7C 09 03 A6 */	mtctr r0
/* 802BB5EC 002B854C  7C 03 28 00 */	cmpw r3, r5
/* 802BB5F0 002B8550  40 80 00 08 */	bge lbl_802BB5F8
lbl_802BB5F4:
/* 802BB5F4 002B8554  42 00 00 00 */	bdnz lbl_802BB5F4
lbl_802BB5F8:
/* 802BB5F8 002B8558  80 A1 01 A4 */	lwz r5, 0x1a4(r1)
/* 802BB5FC 002B855C  38 60 00 00 */	li r3, 0
/* 802BB600 002B8560  90 61 01 70 */	stw r3, 0x170(r1)
/* 802BB604 002B8564  2C 05 00 00 */	cmpwi r5, 0
/* 802BB608 002B8568  40 81 00 40 */	ble lbl_802BB648
/* 802BB60C 002B856C  2C 05 00 08 */	cmpwi r5, 8
/* 802BB610 002B8570  38 85 FF F8 */	addi r4, r5, -8
/* 802BB614 002B8574  40 81 00 20 */	ble lbl_802BB634
/* 802BB618 002B8578  38 04 00 07 */	addi r0, r4, 7
/* 802BB61C 002B857C  54 00 E8 FE */	srwi r0, r0, 3
/* 802BB620 002B8580  7C 09 03 A6 */	mtctr r0
/* 802BB624 002B8584  2C 04 00 00 */	cmpwi r4, 0
/* 802BB628 002B8588  40 81 00 0C */	ble lbl_802BB634
lbl_802BB62C:
/* 802BB62C 002B858C  38 63 00 08 */	addi r3, r3, 8
/* 802BB630 002B8590  42 00 FF FC */	bdnz lbl_802BB62C
lbl_802BB634:
/* 802BB634 002B8594  7C 03 28 50 */	subf r0, r3, r5
/* 802BB638 002B8598  7C 09 03 A6 */	mtctr r0
/* 802BB63C 002B859C  7C 03 28 00 */	cmpw r3, r5
/* 802BB640 002B85A0  40 80 00 08 */	bge lbl_802BB648
lbl_802BB644:
/* 802BB644 002B85A4  42 00 00 00 */	bdnz lbl_802BB644
lbl_802BB648:
/* 802BB648 002B85A8  38 00 00 00 */	li r0, 0
/* 802BB64C 002B85AC  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 802BB650 002B85B0  E3 E1 02 48 */	psq_l f31, 584(r1), 0, qr0
/* 802BB654 002B85B4  CB E1 02 40 */	lfd f31, 0x240(r1)
/* 802BB658 002B85B8  E3 C1 02 38 */	psq_l f30, 568(r1), 0, qr0
/* 802BB65C 002B85BC  CB C1 02 30 */	lfd f30, 0x230(r1)
/* 802BB660 002B85C0  BB 21 02 14 */	lmw r25, 0x214(r1)
/* 802BB664 002B85C4  80 01 02 54 */	lwz r0, 0x254(r1)
/* 802BB668 002B85C8  7C 08 03 A6 */	mtlr r0
/* 802BB66C 002B85CC  38 21 02 50 */	addi r1, r1, 0x250
/* 802BB670 002B85D0  4E 80 00 20 */	blr

.global DrawFogFans__13CCubeRendererFPC6CPlaneiPC9CVector3fiii
DrawFogFans__13CCubeRendererFPC6CPlaneiPC9CVector3fiii:
/* 802BB674 002B85D4  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 802BB678 002B85D8  7C 08 02 A6 */	mflr r0
/* 802BB67C 002B85DC  90 01 01 54 */	stw r0, 0x154(r1)
/* 802BB680 002B85E0  BE 41 01 18 */	stmw r18, 0x118(r1)
/* 802BB684 002B85E4  7C F7 3B 78 */	mr r23, r7
/* 802BB688 002B85E8  7D 18 43 78 */	mr r24, r8
/* 802BB68C 002B85EC  7C 73 1B 78 */	mr r19, r3
/* 802BB690 002B85F0  7C 18 B8 00 */	cmpw r24, r23
/* 802BB694 002B85F4  7C 94 23 78 */	mr r20, r4
/* 802BB698 002B85F8  7C B5 2B 78 */	mr r21, r5
/* 802BB69C 002B85FC  7C D6 33 78 */	mr r22, r6
/* 802BB6A0 002B8600  40 82 00 10 */	bne lbl_802BB6B0
/* 802BB6A4 002B8604  39 18 00 01 */	addi r8, r24, 1
/* 802BB6A8 002B8608  4B FF FF CD */	bl DrawFogFans__13CCubeRendererFPC6CPlaneiPC9CVector3fiii
/* 802BB6AC 002B860C  48 00 02 98 */	b lbl_802BB944
lbl_802BB6B0:
/* 802BB6B0 002B8610  7C 18 A0 00 */	cmpw r24, r20
/* 802BB6B4 002B8614  40 82 00 14 */	bne lbl_802BB6C8
/* 802BB6B8 002B8618  7E A3 AB 78 */	mr r3, r21
/* 802BB6BC 002B861C  7E C4 B3 78 */	mr r4, r22
/* 802BB6C0 002B8620  48 00 02 99 */	bl DrawFogFan__13CCubeRendererFPC9CVector3fi
/* 802BB6C4 002B8624  48 00 02 80 */	b lbl_802BB944
lbl_802BB6C8:
/* 802BB6C8 002B8628  38 60 00 00 */	li r3, 0
/* 802BB6CC 002B862C  57 00 20 36 */	slwi r0, r24, 4
/* 802BB6D0 002B8630  90 61 00 20 */	stw r3, 0x20(r1)
/* 802BB6D4 002B8634  7F 53 02 14 */	add r26, r19, r0
/* 802BB6D8 002B8638  3B 81 00 0C */	addi r28, r1, 0xc
/* 802BB6DC 002B863C  90 61 00 08 */	stw r3, 8(r1)
/* 802BB6E0 002B8640  7E C9 03 A6 */	mtctr r22
/* 802BB6E4 002B8644  2C 16 00 00 */	cmpwi r22, 0
/* 802BB6E8 002B8648  40 81 00 68 */	ble lbl_802BB750
lbl_802BB6EC:
/* 802BB6EC 002B864C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 802BB6F0 002B8650  C0 05 00 04 */	lfs f0, 4(r5)
/* 802BB6F4 002B8654  C0 5A 00 00 */	lfs f2, 0(r26)
/* 802BB6F8 002B8658  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BB6FC 002B865C  C0 25 00 00 */	lfs f1, 0(r5)
/* 802BB700 002B8660  C0 9A 00 08 */	lfs f4, 8(r26)
/* 802BB704 002B8664  C0 65 00 08 */	lfs f3, 8(r5)
/* 802BB708 002B8668  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 802BB70C 002B866C  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 802BB710 002B8670  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 802BB714 002B8674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BB718 002B8678  4C 41 13 82 */	cror 2, 1, 2
/* 802BB71C 002B867C  7C 60 00 26 */	mfcr r3
/* 802BB720 002B8680  80 01 00 08 */	lwz r0, 8(r1)
/* 802BB724 002B8684  54 63 1F FE */	rlwinm r3, r3, 3, 0x1f, 0x1f
/* 802BB728 002B8688  7C 63 00 34 */	cntlzw r3, r3
/* 802BB72C 002B868C  7C 9C 02 15 */	add. r4, r28, r0
/* 802BB730 002B8690  54 60 D9 7E */	srwi r0, r3, 5
/* 802BB734 002B8694  41 82 00 08 */	beq lbl_802BB73C
/* 802BB738 002B8698  98 04 00 00 */	stb r0, 0(r4)
lbl_802BB73C:
/* 802BB73C 002B869C  80 61 00 08 */	lwz r3, 8(r1)
/* 802BB740 002B86A0  38 A5 00 0C */	addi r5, r5, 0xc
/* 802BB744 002B86A4  38 03 00 01 */	addi r0, r3, 1
/* 802BB748 002B86A8  90 01 00 08 */	stw r0, 8(r1)
/* 802BB74C 002B86AC  42 00 FF A0 */	bdnz lbl_802BB6EC
lbl_802BB750:
/* 802BB750 002B86B0  7F 9E E3 78 */	mr r30, r28
/* 802BB754 002B86B4  7E BD AB 78 */	mr r29, r21
/* 802BB758 002B86B8  3B 61 00 24 */	addi r27, r1, 0x24
/* 802BB75C 002B86BC  3B F6 FF FF */	addi r31, r22, -1
/* 802BB760 002B86C0  3B 20 00 00 */	li r25, 0
/* 802BB764 002B86C4  48 00 01 10 */	b lbl_802BB874
lbl_802BB768:
/* 802BB768 002B86C8  7C 7F C8 50 */	subf r3, r31, r25
/* 802BB76C 002B86CC  7C 19 F8 50 */	subf r0, r25, r31
/* 802BB770 002B86D0  7C 63 03 78 */	or r3, r3, r0
/* 802BB774 002B86D4  7C 64 FE 70 */	srawi r4, r3, 0x1f
/* 802BB778 002B86D8  38 19 00 01 */	addi r0, r25, 1
/* 802BB77C 002B86DC  7C 04 20 38 */	and r4, r0, r4
/* 802BB780 002B86E0  88 7E 00 00 */	lbz r3, 0(r30)
/* 802BB784 002B86E4  7C 1C 20 AE */	lbzx r0, r28, r4
/* 802BB788 002B86E8  54 00 08 3C */	slwi r0, r0, 1
/* 802BB78C 002B86EC  7C 65 03 78 */	or r5, r3, r0
/* 802BB790 002B86F0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 802BB794 002B86F4  40 82 00 38 */	bne lbl_802BB7CC
/* 802BB798 002B86F8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802BB79C 002B86FC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802BB7A0 002B8700  7C 7B 02 15 */	add. r3, r27, r0
/* 802BB7A4 002B8704  41 82 00 1C */	beq lbl_802BB7C0
/* 802BB7A8 002B8708  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802BB7AC 002B870C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 802BB7B0 002B8710  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BB7B4 002B8714  C0 1D 00 08 */	lfs f0, 8(r29)
/* 802BB7B8 002B8718  D0 23 00 04 */	stfs f1, 4(r3)
/* 802BB7BC 002B871C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_802BB7C0:
/* 802BB7C0 002B8720  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802BB7C4 002B8724  38 03 00 01 */	addi r0, r3, 1
/* 802BB7C8 002B8728  90 01 00 20 */	stw r0, 0x20(r1)
lbl_802BB7CC:
/* 802BB7CC 002B872C  2C 05 00 01 */	cmpwi r5, 1
/* 802BB7D0 002B8730  41 82 00 0C */	beq lbl_802BB7DC
/* 802BB7D4 002B8734  2C 05 00 02 */	cmpwi r5, 2
/* 802BB7D8 002B8738  40 82 00 90 */	bne lbl_802BB868
lbl_802BB7DC:
/* 802BB7DC 002B873C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 802BB7E0 002B8740  7F 43 D3 78 */	mr r3, r26
/* 802BB7E4 002B8744  7F A4 EB 78 */	mr r4, r29
/* 802BB7E8 002B8748  7E 55 02 14 */	add r18, r21, r0
/* 802BB7EC 002B874C  7E 45 93 78 */	mr r5, r18
/* 802BB7F0 002B8750  48 07 B8 1D */	bl ClipLineSegment__6CPlaneCFRC9CVector3fRC9CVector3f
/* 802BB7F4 002B8754  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BB7F8 002B8758  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BB7FC 002B875C  40 81 00 6C */	ble lbl_802BB868
/* 802BB800 002B8760  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BB804 002B8764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BB808 002B8768  40 80 00 60 */	bge lbl_802BB868
/* 802BB80C 002B876C  C0 72 00 00 */	lfs f3, 0(r18)
/* 802BB810 002B8770  EC C0 08 28 */	fsubs f6, f0, f1
/* 802BB814 002B8774  C0 52 00 04 */	lfs f2, 4(r18)
/* 802BB818 002B8778  C0 12 00 08 */	lfs f0, 8(r18)
/* 802BB81C 002B877C  EC 83 00 72 */	fmuls f4, f3, f1
/* 802BB820 002B8780  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802BB824 002B8784  EC 42 00 72 */	fmuls f2, f2, f1
/* 802BB828 002B8788  C0 BD 00 00 */	lfs f5, 0(r29)
/* 802BB82C 002B878C  EC 00 00 72 */	fmuls f0, f0, f1
/* 802BB830 002B8790  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802BB834 002B8794  C0 7D 00 04 */	lfs f3, 4(r29)
/* 802BB838 002B8798  EC 85 21 BA */	fmadds f4, f5, f6, f4
/* 802BB83C 002B879C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 802BB840 002B87A0  EC 43 11 BA */	fmadds f2, f3, f6, f2
/* 802BB844 002B87A4  7C 7B 02 15 */	add. r3, r27, r0
/* 802BB848 002B87A8  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 802BB84C 002B87AC  41 82 00 10 */	beq lbl_802BB85C
/* 802BB850 002B87B0  D0 83 00 00 */	stfs f4, 0(r3)
/* 802BB854 002B87B4  D0 43 00 04 */	stfs f2, 4(r3)
/* 802BB858 002B87B8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_802BB85C:
/* 802BB85C 002B87BC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 802BB860 002B87C0  38 03 00 01 */	addi r0, r3, 1
/* 802BB864 002B87C4  90 01 00 20 */	stw r0, 0x20(r1)
lbl_802BB868:
/* 802BB868 002B87C8  3B DE 00 01 */	addi r30, r30, 1
/* 802BB86C 002B87CC  3B BD 00 0C */	addi r29, r29, 0xc
/* 802BB870 002B87D0  3B 39 00 01 */	addi r25, r25, 1
lbl_802BB874:
/* 802BB874 002B87D4  7C 19 B0 00 */	cmpw r25, r22
/* 802BB878 002B87D8  41 80 FE F0 */	blt lbl_802BB768
/* 802BB87C 002B87DC  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 802BB880 002B87E0  2C 06 00 03 */	cmpwi r6, 3
/* 802BB884 002B87E4  41 80 00 1C */	blt lbl_802BB8A0
/* 802BB888 002B87E8  7E 63 9B 78 */	mr r3, r19
/* 802BB88C 002B87EC  7E 84 A3 78 */	mr r4, r20
/* 802BB890 002B87F0  7F 65 DB 78 */	mr r5, r27
/* 802BB894 002B87F4  7E E7 BB 78 */	mr r7, r23
/* 802BB898 002B87F8  39 18 00 01 */	addi r8, r24, 1
/* 802BB89C 002B87FC  4B FF FD D9 */	bl DrawFogFans__13CCubeRendererFPC6CPlaneiPC9CVector3fiii
lbl_802BB8A0:
/* 802BB8A0 002B8800  80 A1 00 08 */	lwz r5, 8(r1)
/* 802BB8A4 002B8804  38 60 00 00 */	li r3, 0
/* 802BB8A8 002B8808  2C 05 00 00 */	cmpwi r5, 0
/* 802BB8AC 002B880C  40 81 00 40 */	ble lbl_802BB8EC
/* 802BB8B0 002B8810  2C 05 00 08 */	cmpwi r5, 8
/* 802BB8B4 002B8814  38 85 FF F8 */	addi r4, r5, -8
/* 802BB8B8 002B8818  40 81 00 20 */	ble lbl_802BB8D8
/* 802BB8BC 002B881C  38 04 00 07 */	addi r0, r4, 7
/* 802BB8C0 002B8820  54 00 E8 FE */	srwi r0, r0, 3
/* 802BB8C4 002B8824  7C 09 03 A6 */	mtctr r0
/* 802BB8C8 002B8828  2C 04 00 00 */	cmpwi r4, 0
/* 802BB8CC 002B882C  40 81 00 0C */	ble lbl_802BB8D8
lbl_802BB8D0:
/* 802BB8D0 002B8830  38 63 00 08 */	addi r3, r3, 8
/* 802BB8D4 002B8834  42 00 FF FC */	bdnz lbl_802BB8D0
lbl_802BB8D8:
/* 802BB8D8 002B8838  7C 03 28 50 */	subf r0, r3, r5
/* 802BB8DC 002B883C  7C 09 03 A6 */	mtctr r0
/* 802BB8E0 002B8840  7C 03 28 00 */	cmpw r3, r5
/* 802BB8E4 002B8844  40 80 00 08 */	bge lbl_802BB8EC
lbl_802BB8E8:
/* 802BB8E8 002B8848  42 00 00 00 */	bdnz lbl_802BB8E8
lbl_802BB8EC:
/* 802BB8EC 002B884C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 802BB8F0 002B8850  38 60 00 00 */	li r3, 0
/* 802BB8F4 002B8854  90 61 00 08 */	stw r3, 8(r1)
/* 802BB8F8 002B8858  2C 05 00 00 */	cmpwi r5, 0
/* 802BB8FC 002B885C  40 81 00 40 */	ble lbl_802BB93C
/* 802BB900 002B8860  2C 05 00 08 */	cmpwi r5, 8
/* 802BB904 002B8864  38 85 FF F8 */	addi r4, r5, -8
/* 802BB908 002B8868  40 81 00 20 */	ble lbl_802BB928
/* 802BB90C 002B886C  38 04 00 07 */	addi r0, r4, 7
/* 802BB910 002B8870  54 00 E8 FE */	srwi r0, r0, 3
/* 802BB914 002B8874  7C 09 03 A6 */	mtctr r0
/* 802BB918 002B8878  2C 04 00 00 */	cmpwi r4, 0
/* 802BB91C 002B887C  40 81 00 0C */	ble lbl_802BB928
lbl_802BB920:
/* 802BB920 002B8880  38 63 00 08 */	addi r3, r3, 8
/* 802BB924 002B8884  42 00 FF FC */	bdnz lbl_802BB920
lbl_802BB928:
/* 802BB928 002B8888  7C 03 28 50 */	subf r0, r3, r5
/* 802BB92C 002B888C  7C 09 03 A6 */	mtctr r0
/* 802BB930 002B8890  7C 03 28 00 */	cmpw r3, r5
/* 802BB934 002B8894  40 80 00 08 */	bge lbl_802BB93C
lbl_802BB938:
/* 802BB938 002B8898  42 00 00 00 */	bdnz lbl_802BB938
lbl_802BB93C:
/* 802BB93C 002B889C  38 00 00 00 */	li r0, 0
/* 802BB940 002B88A0  90 01 00 20 */	stw r0, 0x20(r1)
lbl_802BB944:
/* 802BB944 002B88A4  BA 41 01 18 */	lmw r18, 0x118(r1)
/* 802BB948 002B88A8  80 01 01 54 */	lwz r0, 0x154(r1)
/* 802BB94C 002B88AC  7C 08 03 A6 */	mtlr r0
/* 802BB950 002B88B0  38 21 01 50 */	addi r1, r1, 0x150
/* 802BB954 002B88B4  4E 80 00 20 */	blr

.global DrawFogFan__13CCubeRendererFPC9CVector3fi
DrawFogFan__13CCubeRendererFPC9CVector3fi:
/* 802BB958 002B88B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BB95C 002B88BC  7C 08 02 A6 */	mflr r0
/* 802BB960 002B88C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BB964 002B88C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BB968 002B88C8  7C 9F 23 78 */	mr r31, r4
/* 802BB96C 002B88CC  2C 1F 00 03 */	cmpwi r31, 3
/* 802BB970 002B88D0  93 C1 00 08 */	stw r30, 8(r1)
/* 802BB974 002B88D4  7C 7E 1B 78 */	mr r30, r3
/* 802BB978 002B88D8  41 80 01 54 */	blt lbl_802BBACC
/* 802BB97C 002B88DC  57 E5 04 3E */	clrlwi r5, r31, 0x10
/* 802BB980 002B88E0  38 60 00 A0 */	li r3, 0xa0
/* 802BB984 002B88E4  38 80 00 00 */	li r4, 0
/* 802BB988 002B88E8  48 04 CB FD */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802BB98C 002B88EC  2C 1F 00 00 */	cmpwi r31, 0
/* 802BB990 002B88F0  38 C0 00 00 */	li r6, 0
/* 802BB994 002B88F4  40 81 01 34 */	ble lbl_802BBAC8
/* 802BB998 002B88F8  2C 1F 00 08 */	cmpwi r31, 8
/* 802BB99C 002B88FC  38 9F FF F8 */	addi r4, r31, -8
/* 802BB9A0 002B8900  40 81 00 EC */	ble lbl_802BBA8C
/* 802BB9A4 002B8904  38 04 00 07 */	addi r0, r4, 7
/* 802BB9A8 002B8908  7F C5 F3 78 */	mr r5, r30
/* 802BB9AC 002B890C  54 00 E8 FE */	srwi r0, r0, 3
/* 802BB9B0 002B8910  3C 60 CC 01 */	lis r3, 0xcc01
/* 802BB9B4 002B8914  7C 09 03 A6 */	mtctr r0
/* 802BB9B8 002B8918  2C 04 00 00 */	cmpwi r4, 0
/* 802BB9BC 002B891C  40 81 00 D0 */	ble lbl_802BBA8C
lbl_802BB9C0:
/* 802BB9C0 002B8920  C0 05 00 08 */	lfs f0, 8(r5)
/* 802BB9C4 002B8924  38 C6 00 08 */	addi r6, r6, 8
/* 802BB9C8 002B8928  C0 25 00 04 */	lfs f1, 4(r5)
/* 802BB9CC 002B892C  C0 45 00 00 */	lfs f2, 0(r5)
/* 802BB9D0 002B8930  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BB9D4 002B8934  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BB9D8 002B8938  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BB9DC 002B893C  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 802BB9E0 002B8940  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 802BB9E4 002B8944  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 802BB9E8 002B8948  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BB9EC 002B894C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BB9F0 002B8950  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BB9F4 002B8954  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 802BB9F8 002B8958  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 802BB9FC 002B895C  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 802BBA00 002B8960  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BBA04 002B8964  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BBA08 002B8968  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BBA0C 002B896C  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 802BBA10 002B8970  C0 25 00 28 */	lfs f1, 0x28(r5)
/* 802BBA14 002B8974  C0 45 00 24 */	lfs f2, 0x24(r5)
/* 802BBA18 002B8978  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BBA1C 002B897C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BBA20 002B8980  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BBA24 002B8984  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 802BBA28 002B8988  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 802BBA2C 002B898C  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 802BBA30 002B8990  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BBA34 002B8994  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BBA38 002B8998  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BBA3C 002B899C  C0 05 00 44 */	lfs f0, 0x44(r5)
/* 802BBA40 002B89A0  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 802BBA44 002B89A4  C0 45 00 3C */	lfs f2, 0x3c(r5)
/* 802BBA48 002B89A8  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BBA4C 002B89AC  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BBA50 002B89B0  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BBA54 002B89B4  C0 05 00 50 */	lfs f0, 0x50(r5)
/* 802BBA58 002B89B8  C0 25 00 4C */	lfs f1, 0x4c(r5)
/* 802BBA5C 002B89BC  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 802BBA60 002B89C0  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BBA64 002B89C4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BBA68 002B89C8  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BBA6C 002B89CC  C0 25 00 5C */	lfs f1, 0x5c(r5)
/* 802BBA70 002B89D0  C0 45 00 58 */	lfs f2, 0x58(r5)
/* 802BBA74 002B89D4  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 802BBA78 002B89D8  38 A5 00 60 */	addi r5, r5, 0x60
/* 802BBA7C 002B89DC  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BBA80 002B89E0  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BBA84 002B89E4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BBA88 002B89E8  42 00 FF 38 */	bdnz lbl_802BB9C0
lbl_802BBA8C:
/* 802BBA8C 002B89EC  1C 86 00 0C */	mulli r4, r6, 0xc
/* 802BBA90 002B89F0  7C 06 F8 50 */	subf r0, r6, r31
/* 802BBA94 002B89F4  3C 60 CC 01 */	lis r3, 0xcc01
/* 802BBA98 002B89F8  7C 9E 22 14 */	add r4, r30, r4
/* 802BBA9C 002B89FC  7C 09 03 A6 */	mtctr r0
/* 802BBAA0 002B8A00  7C 06 F8 00 */	cmpw r6, r31
/* 802BBAA4 002B8A04  40 80 00 24 */	bge lbl_802BBAC8
lbl_802BBAA8:
/* 802BBAA8 002B8A08  C0 24 00 08 */	lfs f1, 8(r4)
/* 802BBAAC 002B8A0C  C0 44 00 04 */	lfs f2, 4(r4)
/* 802BBAB0 002B8A10  C0 04 00 00 */	lfs f0, 0(r4)
/* 802BBAB4 002B8A14  38 84 00 0C */	addi r4, r4, 0xc
/* 802BBAB8 002B8A18  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BBABC 002B8A1C  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BBAC0 002B8A20  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BBAC4 002B8A24  42 00 FF E4 */	bdnz lbl_802BBAA8
lbl_802BBAC8:
/* 802BBAC8 002B8A28  48 04 CA B9 */	bl End__3CGXFv
lbl_802BBACC:
/* 802BBACC 002B8A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BBAD0 002B8A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BBAD4 002B8A34  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BBAD8 002B8A38  7C 08 03 A6 */	mtlr r0
/* 802BBADC 002B8A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BBAE0 002B8A40  4E 80 00 20 */	blr

.global GetStaticWorldDataSize__13CCubeRendererFv
GetStaticWorldDataSize__13CCubeRendererFv:
/* 802BBAE4 002B8A44  80 83 00 20 */	lwz r4, 0x20(r3)
/* 802BBAE8 002B8A48  38 A0 00 00 */	li r5, 0
/* 802BBAEC 002B8A4C  80 63 00 24 */	lwz r3, 0x24(r3)
/* 802BBAF0 002B8A50  48 00 00 20 */	b lbl_802BBB10
lbl_802BBAF4:
/* 802BBAF4 002B8A54  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 802BBAF8 002B8A58  28 06 00 00 */	cmplwi r6, 0
/* 802BBAFC 002B8A5C  41 82 00 10 */	beq lbl_802BBB0C
/* 802BBB00 002B8A60  80 06 00 04 */	lwz r0, 4(r6)
/* 802BBB04 002B8A64  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802BBB08 002B8A68  7C A5 02 14 */	add r5, r5, r0
lbl_802BBB0C:
/* 802BBB0C 002B8A6C  80 84 00 04 */	lwz r4, 4(r4)
lbl_802BBB10:
/* 802BBB10 002B8A70  7C 04 18 40 */	cmplw r4, r3
/* 802BBB14 002B8A74  40 82 FF E0 */	bne lbl_802BBAF4
/* 802BBB18 002B8A78  7C A3 2B 78 */	mr r3, r5
/* 802BBB1C 002B8A7C  4E 80 00 20 */	blr

.global SetWorldFog__13CCubeRendererF11ERglFogModeffRC6CColor
SetWorldFog__13CCubeRendererF11ERglFogModeffRC6CColor:
/* 802BBB20 002B8A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BBB24 002B8A84  7C 08 02 A6 */	mflr r0
/* 802BBB28 002B8A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBB2C 002B8A8C  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802BBB30 002B8A90  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802BBB34 002B8A94  41 82 00 08 */	beq lbl_802BBB3C
/* 802BBB38 002B8A98  38 80 00 00 */	li r4, 0
lbl_802BBB3C:
/* 802BBB3C 002B8A9C  7C 83 23 78 */	mr r3, r4
/* 802BBB40 002B8AA0  7C A4 2B 78 */	mr r4, r5
/* 802BBB44 002B8AA4  48 04 E7 45 */	bl SetFog__9CGraphicsF11ERglFogModeffRC6CColor
/* 802BBB48 002B8AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BBB4C 002B8AAC  7C 08 03 A6 */	mtlr r0
/* 802BBB50 002B8AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BBB54 002B8AB4  4E 80 00 20 */	blr

.global SetWireframeFlags__13CCubeRendererFi
SetWireframeFlags__13CCubeRendererFi:
/* 802BBB58 002B8AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BBB5C 002B8ABC  7C 08 02 A6 */	mflr r0
/* 802BBB60 002B8AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBB64 002B8AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BBB68 002B8AC8  7C 9F 23 78 */	mr r31, r4
/* 802BBB6C 002B8ACC  93 C1 00 08 */	stw r30, 8(r1)
/* 802BBB70 002B8AD0  7C 7E 1B 78 */	mr r30, r3
/* 802BBB74 002B8AD4  54 83 07 FE */	clrlwi r3, r4, 0x1f
/* 802BBB78 002B8AD8  38 03 FF FF */	addi r0, r3, -1
/* 802BBB7C 002B8ADC  7C 00 00 34 */	cntlzw r0, r0
/* 802BBB80 002B8AE0  54 03 D9 7E */	srwi r3, r0, 5
/* 802BBB84 002B8AE4  48 04 AD 0D */	bl SetModelWireframe__10CCubeModelFb
/* 802BBB88 002B8AE8  57 E3 07 BC */	rlwinm r3, r31, 0, 0x1e, 0x1e
/* 802BBB8C 002B8AEC  88 1E 03 18 */	lbz r0, 0x318(r30)
/* 802BBB90 002B8AF0  38 63 FF FE */	addi r3, r3, -2
/* 802BBB94 002B8AF4  7C 63 00 34 */	cntlzw r3, r3
/* 802BBB98 002B8AF8  50 60 0E 72 */	rlwimi r0, r3, 1, 0x19, 0x19
/* 802BBB9C 002B8AFC  98 1E 03 18 */	stb r0, 0x318(r30)
/* 802BBBA0 002B8B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BBBA4 002B8B04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BBBA8 002B8B08  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BBBAC 002B8B0C  7C 08 03 A6 */	mtlr r0
/* 802BBBB0 002B8B10  38 21 00 10 */	addi r1, r1, 0x10
/* 802BBBB4 002B8B14  4E 80 00 20 */	blr

.global _DrawSpaceWarp__13CCubeRendererFRC9CVector3ff
_DrawSpaceWarp__13CCubeRendererFRC9CVector3ff:
/* 802BBBB8 002B8B18  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 802BBBBC 002B8B1C  7C 08 02 A6 */	mflr r0
/* 802BBBC0 002B8B20  90 01 01 84 */	stw r0, 0x184(r1)
/* 802BBBC4 002B8B24  DB E1 01 70 */	stfd f31, 0x170(r1)
/* 802BBBC8 002B8B28  F3 E1 01 78 */	psq_st f31, 376(r1), 0, qr0
/* 802BBBCC 002B8B2C  BF 41 01 58 */	stmw r26, 0x158(r1)
/* 802BBBD0 002B8B30  3C A0 80 3F */	lis r5, mViewport__9CGraphics@ha
/* 802BBBD4 002B8B34  3C E0 43 30 */	lis r7, 0x4330
/* 802BBBD8 002B8B38  38 A5 D9 10 */	addi r5, r5, mViewport__9CGraphics@l
/* 802BBBDC 002B8B3C  C0 E4 00 04 */	lfs f7, 4(r4)
/* 802BBBE0 002B8B40  83 A5 00 08 */	lwz r29, 8(r5)
/* 802BBBE4 002B8B44  7C 7B 1B 78 */	mr r27, r3
/* 802BBBE8 002B8B48  83 85 00 0C */	lwz r28, 0xc(r5)
/* 802BBBEC 002B8B4C  FC 40 38 50 */	fneg f2, f7
/* 802BBBF0 002B8B50  57 A0 0F FE */	srwi r0, r29, 0x1f
/* 802BBBF4 002B8B54  83 E5 00 00 */	lwz r31, 0(r5)
/* 802BBBF8 002B8B58  7C 60 EA 14 */	add r3, r0, r29
/* 802BBBFC 002B8B5C  57 80 0F FE */	srwi r0, r28, 0x1f
/* 802BBC00 002B8B60  7C 63 0E 70 */	srawi r3, r3, 1
/* 802BBC04 002B8B64  7C 00 E2 14 */	add r0, r0, r28
/* 802BBC08 002B8B68  83 C5 00 04 */	lwz r30, 4(r5)
/* 802BBC0C 002B8B6C  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 802BBC10 002B8B70  6F E8 80 00 */	xoris r8, r31, 0x8000
/* 802BBC14 002B8B74  7C 00 0E 70 */	srawi r0, r0, 1
/* 802BBC18 002B8B78  90 C1 00 FC */	stw r6, 0xfc(r1)
/* 802BBC1C 002B8B7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BBC20 002B8B80  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 802BBC24 002B8B84  90 E1 00 F8 */	stw r7, 0xf8(r1)
/* 802BBC28 002B8B88  FF E0 08 90 */	fmr f31, f1
/* 802BBC2C 002B8B8C  C8 A2 C2 A0 */	lfd f5, lbl_805ADFC0@sda21(r2)
/* 802BBC30 002B8B90  38 61 00 78 */	addi r3, r1, 0x78
/* 802BBC34 002B8B94  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 802BBC38 002B8B98  C1 04 00 00 */	lfs f8, 0(r4)
/* 802BBC3C 002B8B9C  90 C1 01 04 */	stw r6, 0x104(r1)
/* 802BBC40 002B8BA0  EC 60 28 28 */	fsubs f3, f0, f5
/* 802BBC44 002B8BA4  C0 C4 00 08 */	lfs f6, 8(r4)
/* 802BBC48 002B8BA8  90 E1 01 00 */	stw r7, 0x100(r1)
/* 802BBC4C 002B8BAC  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 802BBC50 002B8BB0  90 01 01 14 */	stw r0, 0x114(r1)
/* 802BBC54 002B8BB4  EC 20 28 28 */	fsubs f1, f0, f5
/* 802BBC58 002B8BB8  90 E1 01 10 */	stw r7, 0x110(r1)
/* 802BBC5C 002B8BBC  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802BBC60 002B8BC0  EC 63 0A 3A */	fmadds f3, f3, f8, f1
/* 802BBC64 002B8BC4  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802BBC68 002B8BC8  EC 20 28 28 */	fsubs f1, f0, f5
/* 802BBC6C 002B8BCC  90 E1 01 18 */	stw r7, 0x118(r1)
/* 802BBC70 002B8BD0  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802BBC74 002B8BD4  91 01 00 F4 */	stw r8, 0xf4(r1)
/* 802BBC78 002B8BD8  EC 00 28 28 */	fsubs f0, f0, f5
/* 802BBC7C 002B8BDC  90 E1 00 F0 */	stw r7, 0xf0(r1)
/* 802BBC80 002B8BE0  C8 81 00 F0 */	lfd f4, 0xf0(r1)
/* 802BBC84 002B8BE4  EC 21 00 BA */	fmadds f1, f1, f2, f0
/* 802BBC88 002B8BE8  90 A1 01 0C */	stw r5, 0x10c(r1)
/* 802BBC8C 002B8BEC  EC 44 28 28 */	fsubs f2, f4, f5
/* 802BBC90 002B8BF0  90 E1 01 08 */	stw r7, 0x108(r1)
/* 802BBC94 002B8BF4  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 802BBC98 002B8BF8  EC 62 18 2A */	fadds f3, f2, f3
/* 802BBC9C 002B8BFC  D1 01 00 80 */	stfs f8, 0x80(r1)
/* 802BBCA0 002B8C00  EC 40 28 28 */	fsubs f2, f0, f5
/* 802BBCA4 002B8C04  FC 00 18 1E */	fctiwz f0, f3
/* 802BBCA8 002B8C08  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 802BBCAC 002B8C0C  EC 22 08 2A */	fadds f1, f2, f1
/* 802BBCB0 002B8C10  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 802BBCB4 002B8C14  D8 01 01 20 */	stfd f0, 0x120(r1)
/* 802BBCB8 002B8C18  FC 00 08 1E */	fctiwz f0, f1
/* 802BBCBC 002B8C1C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802BBCC0 002B8C20  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 802BBCC4 002B8C24  54 04 00 3A */	rlwinm r4, r0, 0, 0, 0x1d
/* 802BBCC8 002B8C28  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 802BBCCC 002B8C2C  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 802BBCD0 002B8C30  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 802BBCD4 002B8C34  54 05 00 3A */	rlwinm r5, r0, 0, 0, 0x1d
/* 802BBCD8 002B8C38  48 05 86 75 */	bl __ct__9CVector2iFii
/* 802BBCDC 002B8C3C  38 61 00 40 */	addi r3, r1, 0x40
/* 802BBCE0 002B8C40  38 80 00 60 */	li r4, 0x60
/* 802BBCE4 002B8C44  38 A0 00 60 */	li r5, 0x60
/* 802BBCE8 002B8C48  48 05 86 65 */	bl __ct__9CVector2iFii
/* 802BBCEC 002B8C4C  7C 65 1B 78 */	mr r5, r3
/* 802BBCF0 002B8C50  38 61 00 48 */	addi r3, r1, 0x48
/* 802BBCF4 002B8C54  38 81 00 78 */	addi r4, r1, 0x78
/* 802BBCF8 002B8C58  48 05 85 E5 */	bl __mi__FRC9CVector2iRC9CVector2i
/* 802BBCFC 002B8C5C  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 802BBD00 002B8C60  38 61 00 30 */	addi r3, r1, 0x30
/* 802BBD04 002B8C64  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802BBD08 002B8C68  38 80 00 60 */	li r4, 0x60
/* 802BBD0C 002B8C6C  90 A1 00 70 */	stw r5, 0x70(r1)
/* 802BBD10 002B8C70  38 A0 00 60 */	li r5, 0x60
/* 802BBD14 002B8C74  90 01 00 74 */	stw r0, 0x74(r1)
/* 802BBD18 002B8C78  48 05 86 35 */	bl __ct__9CVector2iFii
/* 802BBD1C 002B8C7C  7C 65 1B 78 */	mr r5, r3
/* 802BBD20 002B8C80  38 61 00 38 */	addi r3, r1, 0x38
/* 802BBD24 002B8C84  38 81 00 78 */	addi r4, r1, 0x78
/* 802BBD28 002B8C88  48 05 85 ED */	bl __pl__FRC9CVector2iRC9CVector2i
/* 802BBD2C 002B8C8C  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802BBD30 002B8C90  38 61 00 60 */	addi r3, r1, 0x60
/* 802BBD34 002B8C94  80 81 00 38 */	lwz r4, 0x38(r1)
/* 802BBD38 002B8C98  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802BBD3C 002B8C9C  FC 40 08 90 */	fmr f2, f1
/* 802BBD40 002B8CA0  90 81 00 68 */	stw r4, 0x68(r1)
/* 802BBD44 002B8CA4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802BBD48 002B8CA8  48 05 84 B9 */	bl __ct__9CVector2fFff
/* 802BBD4C 002B8CAC  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802BBD50 002B8CB0  38 61 00 58 */	addi r3, r1, 0x58
/* 802BBD54 002B8CB4  FC 40 08 90 */	fmr f2, f1
/* 802BBD58 002B8CB8  48 05 84 A9 */	bl __ct__9CVector2fFff
/* 802BBD5C 002B8CBC  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802BBD60 002B8CC0  57 E5 00 3A */	rlwinm r5, r31, 0, 0, 0x1d
/* 802BBD64 002B8CC4  38 9D 00 03 */	addi r4, r29, 3
/* 802BBD68 002B8CC8  38 7C 00 03 */	addi r3, r28, 3
/* 802BBD6C 002B8CCC  7C 00 28 00 */	cmpw r0, r5
/* 802BBD70 002B8CD0  57 C6 00 3A */	rlwinm r6, r30, 0, 0, 0x1d
/* 802BBD74 002B8CD4  7C 9F 22 14 */	add r4, r31, r4
/* 802BBD78 002B8CD8  7C 1E 1A 14 */	add r0, r30, r3
/* 802BBD7C 002B8CDC  54 84 00 3A */	rlwinm r4, r4, 0, 0, 0x1d
/* 802BBD80 002B8CE0  54 07 00 3A */	rlwinm r7, r0, 0, 0, 0x1d
/* 802BBD84 002B8CE4  40 80 00 38 */	bge lbl_802BBDBC
/* 802BBD88 002B8CE8  80 61 00 70 */	lwz r3, 0x70(r1)
/* 802BBD8C 002B8CEC  3C 00 43 30 */	lis r0, 0x4330
/* 802BBD90 002B8CF0  90 01 01 28 */	stw r0, 0x128(r1)
/* 802BBD94 002B8CF4  7C 03 28 50 */	subf r0, r3, r5
/* 802BBD98 002B8CF8  C8 22 C2 A0 */	lfd f1, lbl_805ADFC0@sda21(r2)
/* 802BBD9C 002B8CFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BBDA0 002B8D00  C0 42 C2 F8 */	lfs f2, lbl_805AE018@sda21(r2)
/* 802BBDA4 002B8D04  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802BBDA8 002B8D08  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802BBDAC 002B8D0C  90 A1 00 70 */	stw r5, 0x70(r1)
/* 802BBDB0 002B8D10  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BBDB4 002B8D14  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BBDB8 002B8D18  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_802BBDBC:
/* 802BBDBC 002B8D1C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802BBDC0 002B8D20  7C 00 30 00 */	cmpw r0, r6
/* 802BBDC4 002B8D24  40 80 00 38 */	bge lbl_802BBDFC
/* 802BBDC8 002B8D28  80 61 00 74 */	lwz r3, 0x74(r1)
/* 802BBDCC 002B8D2C  3C 00 43 30 */	lis r0, 0x4330
/* 802BBDD0 002B8D30  90 01 01 28 */	stw r0, 0x128(r1)
/* 802BBDD4 002B8D34  7C 03 30 50 */	subf r0, r3, r6
/* 802BBDD8 002B8D38  C8 22 C2 A0 */	lfd f1, lbl_805ADFC0@sda21(r2)
/* 802BBDDC 002B8D3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BBDE0 002B8D40  C0 42 C2 F8 */	lfs f2, lbl_805AE018@sda21(r2)
/* 802BBDE4 002B8D44  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802BBDE8 002B8D48  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802BBDEC 002B8D4C  90 C1 00 74 */	stw r6, 0x74(r1)
/* 802BBDF0 002B8D50  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BBDF4 002B8D54  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BBDF8 002B8D58  D0 01 00 64 */	stfs f0, 0x64(r1)
lbl_802BBDFC:
/* 802BBDFC 002B8D5C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802BBE00 002B8D60  7C 00 20 00 */	cmpw r0, r4
/* 802BBE04 002B8D64  40 81 00 3C */	ble lbl_802BBE40
/* 802BBE08 002B8D68  80 61 00 68 */	lwz r3, 0x68(r1)
/* 802BBE0C 002B8D6C  3C 00 43 30 */	lis r0, 0x4330
/* 802BBE10 002B8D70  90 01 01 28 */	stw r0, 0x128(r1)
/* 802BBE14 002B8D74  7C 04 18 50 */	subf r0, r4, r3
/* 802BBE18 002B8D78  C8 42 C2 A0 */	lfd f2, lbl_805ADFC0@sda21(r2)
/* 802BBE1C 002B8D7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BBE20 002B8D80  C0 62 C2 F8 */	lfs f3, lbl_805AE018@sda21(r2)
/* 802BBE24 002B8D84  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802BBE28 002B8D88  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BBE2C 002B8D8C  C8 21 01 28 */	lfd f1, 0x128(r1)
/* 802BBE30 002B8D90  90 81 00 68 */	stw r4, 0x68(r1)
/* 802BBE34 002B8D94  EC 21 10 28 */	fsubs f1, f1, f2
/* 802BBE38 002B8D98  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 802BBE3C 002B8D9C  D0 01 00 58 */	stfs f0, 0x58(r1)
lbl_802BBE40:
/* 802BBE40 002B8DA0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 802BBE44 002B8DA4  7C 00 38 00 */	cmpw r0, r7
/* 802BBE48 002B8DA8  40 81 00 3C */	ble lbl_802BBE84
/* 802BBE4C 002B8DAC  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 802BBE50 002B8DB0  3C 00 43 30 */	lis r0, 0x4330
/* 802BBE54 002B8DB4  90 01 01 28 */	stw r0, 0x128(r1)
/* 802BBE58 002B8DB8  7C 07 18 50 */	subf r0, r7, r3
/* 802BBE5C 002B8DBC  C8 42 C2 A0 */	lfd f2, lbl_805ADFC0@sda21(r2)
/* 802BBE60 002B8DC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BBE64 002B8DC4  C0 62 C2 F8 */	lfs f3, lbl_805AE018@sda21(r2)
/* 802BBE68 002B8DC8  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802BBE6C 002B8DCC  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BBE70 002B8DD0  C8 21 01 28 */	lfd f1, 0x128(r1)
/* 802BBE74 002B8DD4  90 E1 00 6C */	stw r7, 0x6c(r1)
/* 802BBE78 002B8DD8  EC 21 10 28 */	fsubs f1, f1, f2
/* 802BBE7C 002B8DDC  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 802BBE80 002B8DE0  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_802BBE84:
/* 802BBE84 002B8DE4  38 61 00 28 */	addi r3, r1, 0x28
/* 802BBE88 002B8DE8  38 81 00 68 */	addi r4, r1, 0x68
/* 802BBE8C 002B8DEC  38 A1 00 70 */	addi r5, r1, 0x70
/* 802BBE90 002B8DF0  48 05 84 4D */	bl __mi__FRC9CVector2iRC9CVector2i
/* 802BBE94 002B8DF4  80 61 00 28 */	lwz r3, 0x28(r1)
/* 802BBE98 002B8DF8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802BBE9C 002B8DFC  2C 03 00 00 */	cmpwi r3, 0
/* 802BBEA0 002B8E00  90 61 00 50 */	stw r3, 0x50(r1)
/* 802BBEA4 002B8E04  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BBEA8 002B8E08  40 81 04 A0 */	ble lbl_802BC348
/* 802BBEAC 002B8E0C  2C 00 00 00 */	cmpwi r0, 0
/* 802BBEB0 002B8E10  41 81 00 08 */	bgt lbl_802BBEB8
/* 802BBEB4 002B8E14  48 00 04 94 */	b lbl_802BC348
lbl_802BBEB8:
/* 802BBEB8 002B8E18  38 61 00 24 */	addi r3, r1, 0x24
/* 802BBEBC 002B8E1C  38 81 00 20 */	addi r4, r1, 0x20
/* 802BBEC0 002B8E20  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802BBEC4 002B8E24  38 C1 00 18 */	addi r6, r1, 0x18
/* 802BBEC8 002B8E28  38 E1 00 14 */	addi r7, r1, 0x14
/* 802BBECC 002B8E2C  39 01 00 10 */	addi r8, r1, 0x10
/* 802BBED0 002B8E30  48 04 BC ED */	bl GetFog__3CGXFP10_GXFogTypePfPfPfPfP8_GXColor
/* 802BBED4 002B8E34  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 802BBED8 002B8E38  38 81 00 10 */	addi r4, r1, 0x10
/* 802BBEDC 002B8E3C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 802BBEE0 002B8E40  38 60 00 00 */	li r3, 0
/* 802BBEE4 002B8E44  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 802BBEE8 002B8E48  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 802BBEEC 002B8E4C  48 04 C6 11 */	bl SetFog__3CGXF10_GXFogTypeffffRC8_GXColor
/* 802BBEF0 002B8E50  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802BBEF4 002B8E54  80 81 00 74 */	lwz r4, 0x74(r1)
/* 802BBEF8 002B8E58  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 802BBEFC 002B8E5C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 802BBF00 002B8E60  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BBF04 002B8E64  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 802BBF08 002B8E68  83 4D A8 28 */	lwz r26, mpSpareBuffer__9CGraphics@sda21(r13)
/* 802BBF0C 002B8E6C  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 802BBF10 002B8E70  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 802BBF14 002B8E74  48 0B CE A1 */	bl GXSetTexCopySrc
/* 802BBF18 002B8E78  80 61 00 50 */	lwz r3, 0x50(r1)
/* 802BBF1C 002B8E7C  38 A0 00 06 */	li r5, 6
/* 802BBF20 002B8E80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BBF24 002B8E84  38 C0 00 00 */	li r6, 0
/* 802BBF28 002B8E88  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802BBF2C 002B8E8C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 802BBF30 002B8E90  48 0B CF 51 */	bl GXSetTexCopyDst
/* 802BBF34 002B8E94  7F 43 D3 78 */	mr r3, r26
/* 802BBF38 002B8E98  38 80 00 00 */	li r4, 0
/* 802BBF3C 002B8E9C  48 0B D5 F9 */	bl GXCopyTex
/* 802BBF40 002B8EA0  48 0B C6 25 */	bl GXPixModeSync
/* 802BBF44 002B8EA4  80 61 00 50 */	lwz r3, 0x50(r1)
/* 802BBF48 002B8EA8  38 A0 00 06 */	li r5, 6
/* 802BBF4C 002B8EAC  80 81 00 54 */	lwz r4, 0x54(r1)
/* 802BBF50 002B8EB0  38 C0 00 00 */	li r6, 0
/* 802BBF54 002B8EB4  80 E2 C7 A8 */	lwz r7, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802BBF58 002B8EB8  48 04 E0 C9 */	bl LoadDolphinSpareTexture__9CGraphicsFii9_GXTexFmtPv11_GXTexMapID
/* 802BBF5C 002B8EBC  38 7B 01 50 */	addi r3, r27, 0x150
/* 802BBF60 002B8EC0  38 80 00 01 */	li r4, 1
/* 802BBF64 002B8EC4  38 A0 00 00 */	li r5, 0
/* 802BBF68 002B8EC8  48 05 37 D5 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 802BBF6C 002B8ECC  38 60 00 00 */	li r3, 0
/* 802BBF70 002B8ED0  38 80 00 0F */	li r4, 0xf
/* 802BBF74 002B8ED4  38 A0 00 0F */	li r5, 0xf
/* 802BBF78 002B8ED8  38 C0 00 0F */	li r6, 0xf
/* 802BBF7C 002B8EDC  38 E0 00 08 */	li r7, 8
/* 802BBF80 002B8EE0  48 04 CC 6D */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802BBF84 002B8EE4  38 60 00 00 */	li r3, 0
/* 802BBF88 002B8EE8  38 80 00 00 */	li r4, 0
/* 802BBF8C 002B8EEC  38 A0 00 00 */	li r5, 0
/* 802BBF90 002B8EF0  38 C0 00 00 */	li r6, 0
/* 802BBF94 002B8EF4  38 E0 00 01 */	li r7, 1
/* 802BBF98 002B8EF8  39 00 00 00 */	li r8, 0
/* 802BBF9C 002B8EFC  48 04 CB 9D */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 802BBFA0 002B8F00  38 60 00 00 */	li r3, 0
/* 802BBFA4 002B8F04  38 80 00 00 */	li r4, 0
/* 802BBFA8 002B8F08  38 A0 00 04 */	li r5, 4
/* 802BBFAC 002B8F0C  38 C0 00 3C */	li r6, 0x3c
/* 802BBFB0 002B8F10  38 E0 00 00 */	li r7, 0
/* 802BBFB4 002B8F14  39 00 00 7D */	li r8, 0x7d
/* 802BBFB8 002B8F18  48 04 C7 15 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802BBFBC 002B8F1C  38 60 00 01 */	li r3, 1
/* 802BBFC0 002B8F20  38 80 00 00 */	li r4, 0
/* 802BBFC4 002B8F24  38 A0 00 05 */	li r5, 5
/* 802BBFC8 002B8F28  38 C0 00 3C */	li r6, 0x3c
/* 802BBFCC 002B8F2C  38 E0 00 00 */	li r7, 0
/* 802BBFD0 002B8F30  39 00 00 7D */	li r8, 0x7d
/* 802BBFD4 002B8F34  48 04 C6 F9 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 802BBFD8 002B8F38  80 A2 C7 A8 */	lwz r5, kSpareBufferTexMapID__9CGraphics@sda21(r2)
/* 802BBFDC 002B8F3C  38 60 00 00 */	li r3, 0
/* 802BBFE0 002B8F40  38 80 00 00 */	li r4, 0
/* 802BBFE4 002B8F44  38 C0 00 FF */	li r6, 0xff
/* 802BBFE8 002B8F48  48 04 C9 65 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802BBFEC 002B8F4C  C8 02 C3 00 */	lfd f0, lbl_805AE020@sda21(r2)
/* 802BBFF0 002B8F50  3C 60 80 3D */	lis r3, lbl_803D65A0@ha
/* 802BBFF4 002B8F54  39 23 65 A0 */	addi r9, r3, lbl_803D65A0@l
/* 802BBFF8 002B8F58  38 81 00 A8 */	addi r4, r1, 0xa8
/* 802BBFFC 002B8F5C  FC 00 07 F2 */	fmul f0, f0, f31
/* 802BC000 002B8F60  80 C9 00 00 */	lwz r6, 0(r9)
/* 802BC004 002B8F64  80 09 00 10 */	lwz r0, 0x10(r9)
/* 802BC008 002B8F68  38 60 00 01 */	li r3, 1
/* 802BC00C 002B8F6C  81 09 00 04 */	lwz r8, 4(r9)
/* 802BC010 002B8F70  38 A0 FF FF */	li r5, -1
/* 802BC014 002B8F74  80 E9 00 08 */	lwz r7, 8(r9)
/* 802BC018 002B8F78  FC 00 00 18 */	frsp f0, f0
/* 802BC01C 002B8F7C  90 C1 00 A8 */	stw r6, 0xa8(r1)
/* 802BC020 002B8F80  80 C9 00 0C */	lwz r6, 0xc(r9)
/* 802BC024 002B8F84  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 802BC028 002B8F88  80 09 00 14 */	lwz r0, 0x14(r9)
/* 802BC02C 002B8F8C  91 01 00 AC */	stw r8, 0xac(r1)
/* 802BC030 002B8F90  90 E1 00 B0 */	stw r7, 0xb0(r1)
/* 802BC034 002B8F94  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 802BC038 002B8F98  90 01 00 BC */	stw r0, 0xbc(r1)
/* 802BC03C 002B8F9C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 802BC040 002B8FA0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 802BC044 002B8FA4  48 0B EE 85 */	bl GXSetIndTexMtx
/* 802BC048 002B8FA8  38 60 00 00 */	li r3, 0
/* 802BC04C 002B8FAC  38 80 00 01 */	li r4, 1
/* 802BC050 002B8FB0  38 A0 00 01 */	li r5, 1
/* 802BC054 002B8FB4  48 0B F1 51 */	bl GXSetIndTexOrder
/* 802BC058 002B8FB8  38 00 00 00 */	li r0, 0
/* 802BC05C 002B8FBC  38 60 00 00 */	li r3, 0
/* 802BC060 002B8FC0  90 01 00 08 */	stw r0, 8(r1)
/* 802BC064 002B8FC4  38 80 00 00 */	li r4, 0
/* 802BC068 002B8FC8  38 A0 00 00 */	li r5, 0
/* 802BC06C 002B8FCC  38 C0 00 07 */	li r6, 7
/* 802BC070 002B8FD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BC074 002B8FD4  38 E0 00 01 */	li r7, 1
/* 802BC078 002B8FD8  39 00 00 00 */	li r8, 0
/* 802BC07C 002B8FDC  39 20 00 00 */	li r9, 0
/* 802BC080 002B8FE0  39 40 00 00 */	li r10, 0
/* 802BC084 002B8FE4  48 04 C7 09 */	bl SetTevIndirect__3CGXF13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
/* 802BC088 002B8FE8  38 60 00 01 */	li r3, 1
/* 802BC08C 002B8FEC  48 04 C6 05 */	bl SetNumIndStages__3CGXFUc
/* 802BC090 002B8FF0  38 60 00 01 */	li r3, 1
/* 802BC094 002B8FF4  48 04 CB FD */	bl SetNumTevStages__3CGXFUc
/* 802BC098 002B8FF8  38 60 00 02 */	li r3, 2
/* 802BC09C 002B8FFC  48 04 CD 79 */	bl SetNumTexGens__3CGXFUc
/* 802BC0A0 002B9000  38 60 00 00 */	li r3, 0
/* 802BC0A4 002B9004  48 04 CD AD */	bl SetNumChans__3CGXFUc
/* 802BC0A8 002B9008  38 60 00 01 */	li r3, 1
/* 802BC0AC 002B900C  38 80 00 01 */	li r4, 1
/* 802BC0B0 002B9010  38 A0 00 00 */	li r5, 0
/* 802BC0B4 002B9014  38 C0 00 00 */	li r6, 0
/* 802BC0B8 002B9018  48 04 C8 19 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 802BC0BC 002B901C  3C 60 80 3D */	lis r3, lbl_803D65B8@ha
/* 802BC0C0 002B9020  38 63 65 B8 */	addi r3, r3, lbl_803D65B8@l
/* 802BC0C4 002B9024  48 04 BD 65 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802BC0C8 002B9028  48 04 DD 95 */	bl GetProjectionState__9CGraphicsFv
/* 802BC0CC 002B902C  88 03 00 00 */	lbz r0, 0(r3)
/* 802BC0D0 002B9030  3C 80 80 5A */	lis r4, mViewMatrix__9CGraphics@ha
/* 802BC0D4 002B9034  38 84 61 D4 */	addi r4, r4, mViewMatrix__9CGraphics@l
/* 802BC0D8 002B9038  98 01 00 8C */	stb r0, 0x8c(r1)
/* 802BC0DC 002B903C  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BC0E0 002B9040  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 802BC0E4 002B9044  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BC0E8 002B9048  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 802BC0EC 002B904C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802BC0F0 002B9050  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 802BC0F4 002B9054  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802BC0F8 002B9058  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 802BC0FC 002B905C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802BC100 002B9060  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 802BC104 002B9064  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 802BC108 002B9068  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802BC10C 002B906C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 802BC110 002B9070  48 05 6A 65 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802BC114 002B9074  7C 7D FA 14 */	add r3, r29, r31
/* 802BC118 002B9078  7C 1C F2 14 */	add r0, r28, r30
/* 802BC11C 002B907C  3C A0 43 30 */	lis r5, 0x4330
/* 802BC120 002B9080  6F E6 80 00 */	xoris r6, r31, 0x8000
/* 802BC124 002B9084  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 802BC128 002B9088  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 802BC12C 002B908C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BC130 002B9090  90 C1 01 2C */	stw r6, 0x12c(r1)
/* 802BC134 002B9094  C8 82 C2 A0 */	lfd f4, lbl_805ADFC0@sda21(r2)
/* 802BC138 002B9098  90 A1 01 28 */	stw r5, 0x128(r1)
/* 802BC13C 002B909C  C0 A2 C2 90 */	lfs f5, lbl_805ADFB0@sda21(r2)
/* 802BC140 002B90A0  C8 01 01 28 */	lfd f0, 0x128(r1)
/* 802BC144 002B90A4  90 81 01 24 */	stw r4, 0x124(r1)
/* 802BC148 002B90A8  EC 20 20 28 */	fsubs f1, f0, f4
/* 802BC14C 002B90AC  C0 C2 C2 94 */	lfs f6, lbl_805ADFB4@sda21(r2)
/* 802BC150 002B90B0  90 A1 01 20 */	stw r5, 0x120(r1)
/* 802BC154 002B90B4  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 802BC158 002B90B8  90 61 01 1C */	stw r3, 0x11c(r1)
/* 802BC15C 002B90BC  EC 40 20 28 */	fsubs f2, f0, f4
/* 802BC160 002B90C0  90 A1 01 18 */	stw r5, 0x118(r1)
/* 802BC164 002B90C4  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 802BC168 002B90C8  90 01 01 14 */	stw r0, 0x114(r1)
/* 802BC16C 002B90CC  EC 60 20 28 */	fsubs f3, f0, f4
/* 802BC170 002B90D0  90 A1 01 10 */	stw r5, 0x110(r1)
/* 802BC174 002B90D4  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 802BC178 002B90D8  EC 80 20 28 */	fsubs f4, f0, f4
/* 802BC17C 002B90DC  48 05 03 D9 */	bl SetOrtho__9CGraphicsFffffff
/* 802BC180 002B90E0  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BC184 002B90E4  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BC188 002B90E8  48 05 05 C5 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BC18C 002B90EC  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BC190 002B90F0  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BC194 002B90F4  48 05 04 4D */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BC198 002B90F8  38 60 00 00 */	li r3, 0
/* 802BC19C 002B90FC  38 80 00 07 */	li r4, 7
/* 802BC1A0 002B9100  38 A0 00 00 */	li r5, 0
/* 802BC1A4 002B9104  48 04 C6 D9 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802BC1A8 002B9108  38 60 00 00 */	li r3, 0
/* 802BC1AC 002B910C  48 0B C9 AD */	bl GXSetCullMode
/* 802BC1B0 002B9110  38 60 00 A0 */	li r3, 0xa0
/* 802BC1B4 002B9114  38 80 00 00 */	li r4, 0
/* 802BC1B8 002B9118  38 A0 00 04 */	li r5, 4
/* 802BC1BC 002B911C  48 04 C3 C9 */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802BC1C0 002B9120  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802BC1C4 002B9124  3C 80 43 30 */	lis r4, 0x4330
/* 802BC1C8 002B9128  90 81 01 08 */	stw r4, 0x108(r1)
/* 802BC1CC 002B912C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 802BC1D0 002B9130  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BC1D4 002B9134  C8 E2 C2 A0 */	lfd f7, lbl_805ADFC0@sda21(r2)
/* 802BC1D8 002B9138  90 01 01 0C */	stw r0, 0x10c(r1)
/* 802BC1DC 002B913C  C0 C2 C2 80 */	lfs f6, lbl_805ADFA0@sda21(r2)
/* 802BC1E0 002B9140  C8 01 01 08 */	lfd f0, 0x108(r1)
/* 802BC1E4 002B9144  90 81 01 00 */	stw r4, 0x100(r1)
/* 802BC1E8 002B9148  EC 00 38 28 */	fsubs f0, f0, f7
/* 802BC1EC 002B914C  C0 A2 C2 74 */	lfs f5, lbl_805ADF94@sda21(r2)
/* 802BC1F0 002B9150  90 01 00 FC */	stw r0, 0xfc(r1)
/* 802BC1F4 002B9154  C0 82 C2 70 */	lfs f4, lbl_805ADF90@sda21(r2)
/* 802BC1F8 002B9158  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BC1FC 002B915C  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802BC200 002B9160  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802BC204 002B9164  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 802BC208 002B9168  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BC20C 002B916C  90 01 01 04 */	stw r0, 0x104(r1)
/* 802BC210 002B9170  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 802BC214 002B9174  C8 21 01 00 */	lfd f1, 0x100(r1)
/* 802BC218 002B9178  EC 00 38 28 */	fsubs f0, f0, f7
/* 802BC21C 002B917C  90 81 00 F0 */	stw r4, 0xf0(r1)
/* 802BC220 002B9180  EC 21 38 28 */	fsubs f1, f1, f7
/* 802BC224 002B9184  90 81 01 30 */	stw r4, 0x130(r1)
/* 802BC228 002B9188  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BC22C 002B918C  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802BC230 002B9190  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802BC234 002B9194  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 802BC238 002B9198  90 81 01 38 */	stw r4, 0x138(r1)
/* 802BC23C 002B919C  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BC240 002B91A0  C1 21 00 64 */	lfs f9, 0x64(r1)
/* 802BC244 002B91A4  90 81 01 40 */	stw r4, 0x140(r1)
/* 802BC248 002B91A8  D1 23 80 00 */	stfs f9, 0xCC008000@l(r3)
/* 802BC24C 002B91AC  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BC250 002B91B0  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802BC254 002B91B4  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 802BC258 002B91B8  90 01 01 4C */	stw r0, 0x14c(r1)
/* 802BC25C 002B91BC  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802BC260 002B91C0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802BC264 002B91C4  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 802BC268 002B91C8  90 01 01 3C */	stw r0, 0x13c(r1)
/* 802BC26C 002B91CC  EC 20 38 28 */	fsubs f1, f0, f7
/* 802BC270 002B91D0  C8 01 01 38 */	lfd f0, 0x138(r1)
/* 802BC274 002B91D4  90 81 01 48 */	stw r4, 0x148(r1)
/* 802BC278 002B91D8  EC 40 38 28 */	fsubs f2, f0, f7
/* 802BC27C 002B91DC  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BC280 002B91E0  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 802BC284 002B91E4  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802BC288 002B91E8  EC 00 38 28 */	fsubs f0, f0, f7
/* 802BC28C 002B91EC  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802BC290 002B91F0  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 802BC294 002B91F4  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BC298 002B91F8  C1 01 00 5C */	lfs f8, 0x5c(r1)
/* 802BC29C 002B91FC  D1 03 80 00 */	stfs f8, 0xCC008000@l(r3)
/* 802BC2A0 002B9200  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802BC2A4 002B9204  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BC2A8 002B9208  90 01 01 34 */	stw r0, 0x134(r1)
/* 802BC2AC 002B920C  C8 21 01 30 */	lfd f1, 0x130(r1)
/* 802BC2B0 002B9210  90 01 01 44 */	stw r0, 0x144(r1)
/* 802BC2B4 002B9214  EC 61 38 28 */	fsubs f3, f1, f7
/* 802BC2B8 002B9218  C8 21 01 40 */	lfd f1, 0x140(r1)
/* 802BC2BC 002B921C  D0 63 80 00 */	stfs f3, 0xCC008000@l(r3)
/* 802BC2C0 002B9220  EC 21 38 28 */	fsubs f1, f1, f7
/* 802BC2C4 002B9224  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802BC2C8 002B9228  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BC2CC 002B922C  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802BC2D0 002B9230  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802BC2D4 002B9234  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 802BC2D8 002B9238  D0 43 80 00 */	stfs f2, 0xCC008000@l(r3)
/* 802BC2DC 002B923C  D1 03 80 00 */	stfs f8, 0xCC008000@l(r3)
/* 802BC2E0 002B9240  D0 23 80 00 */	stfs f1, 0xCC008000@l(r3)
/* 802BC2E4 002B9244  D0 C3 80 00 */	stfs f6, 0xCC008000@l(r3)
/* 802BC2E8 002B9248  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BC2EC 002B924C  D0 83 80 00 */	stfs f4, 0xCC008000@l(r3)
/* 802BC2F0 002B9250  D0 A3 80 00 */	stfs f5, 0xCC008000@l(r3)
/* 802BC2F4 002B9254  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 802BC2F8 002B9258  D0 03 80 00 */	stfs f0, 0xCC008000@l(r3)
/* 802BC2FC 002B925C  D1 23 80 00 */	stfs f9, 0xCC008000@l(r3)
/* 802BC300 002B9260  48 04 C2 81 */	bl End__3CGXFv
/* 802BC304 002B9264  38 60 00 01 */	li r3, 1
/* 802BC308 002B9268  48 0B C8 51 */	bl GXSetCullMode
/* 802BC30C 002B926C  38 60 00 00 */	li r3, 0
/* 802BC310 002B9270  48 04 C4 35 */	bl SetTevDirect__3CGXF13_GXTevStageID
/* 802BC314 002B9274  38 60 00 00 */	li r3, 0
/* 802BC318 002B9278  48 04 C3 79 */	bl SetNumIndStages__3CGXFUc
/* 802BC31C 002B927C  38 61 00 8C */	addi r3, r1, 0x8c
/* 802BC320 002B9280  48 04 DA E1 */	bl SetProjectionState__9CGraphicsFRCQ29CGraphics16CProjectionState
/* 802BC324 002B9284  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802BC328 002B9288  48 05 04 25 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BC32C 002B928C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802BC330 002B9290  38 81 00 10 */	addi r4, r1, 0x10
/* 802BC334 002B9294  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 802BC338 002B9298  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 802BC33C 002B929C  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 802BC340 002B92A0  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 802BC344 002B92A4  48 04 C1 B9 */	bl SetFog__3CGXF10_GXFogTypeffffRC8_GXColor
lbl_802BC348:
/* 802BC348 002B92A8  E3 E1 01 78 */	psq_l f31, 376(r1), 0, qr0
/* 802BC34C 002B92AC  CB E1 01 70 */	lfd f31, 0x170(r1)
/* 802BC350 002B92B0  BB 41 01 58 */	lmw r26, 0x158(r1)
/* 802BC354 002B92B4  80 01 01 84 */	lwz r0, 0x184(r1)
/* 802BC358 002B92B8  7C 08 03 A6 */	mtlr r0
/* 802BC35C 002B92BC  38 21 01 80 */	addi r1, r1, 0x180
/* 802BC360 002B92C0  4E 80 00 20 */	blr

.global DrawSpaceWarp__13CCubeRendererFRC9CVector3ff
DrawSpaceWarp__13CCubeRendererFRC9CVector3ff:
/* 802BC364 002B92C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC368 002B92C8  7C 08 02 A6 */	mflr r0
/* 802BC36C 002B92CC  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BC370 002B92D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC374 002B92D4  C0 44 00 08 */	lfs f2, 8(r4)
/* 802BC378 002B92D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BC37C 002B92DC  4C 41 13 82 */	cror 2, 1, 2
/* 802BC380 002B92E0  41 82 00 08 */	beq lbl_802BC388
/* 802BC384 002B92E4  4B FF F8 35 */	bl _DrawSpaceWarp__13CCubeRendererFRC9CVector3ff
lbl_802BC388:
/* 802BC388 002B92E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC38C 002B92EC  7C 08 03 A6 */	mtlr r0
/* 802BC390 002B92F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC394 002B92F4  4E 80 00 20 */	blr

.global CacheReflection__13CCubeRendererFPFPvRC9CVector3f_vPvb
CacheReflection__13CCubeRendererFPFPvRC9CVector3f_vPvb:
/* 802BC398 002B92F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BC39C 002B92FC  7C 08 02 A6 */	mflr r0
/* 802BC3A0 002B9300  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BC3A4 002B9304  BE E1 00 0C */	stmw r23, 0xc(r1)
/* 802BC3A8 002B9308  7C 7C 1B 78 */	mr r28, r3
/* 802BC3AC 002B930C  7C 9D 23 78 */	mr r29, r4
/* 802BC3B0 002B9310  7C BE 2B 78 */	mr r30, r5
/* 802BC3B4 002B9314  7C DF 33 78 */	mr r31, r6
/* 802BC3B8 002B9318  88 63 03 18 */	lbz r3, 0x318(r3)
/* 802BC3BC 002B931C  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 802BC3C0 002B9320  41 82 01 6C */	beq lbl_802BC52C
/* 802BC3C4 002B9324  38 00 00 00 */	li r0, 0
/* 802BC3C8 002B9328  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 802BC3CC 002B932C  98 7C 03 18 */	stb r3, 0x318(r28)
/* 802BC3D0 002B9330  90 1C 02 DC */	stw r0, 0x2dc(r28)
/* 802BC3D4 002B9334  80 1C 01 4C */	lwz r0, 0x14c(r28)
/* 802BC3D8 002B9338  28 00 00 00 */	cmplwi r0, 0
/* 802BC3DC 002B933C  40 82 00 48 */	bne lbl_802BC424
/* 802BC3E0 002B9340  3C 80 80 3D */	lis r4, lbl_803D685C@ha
/* 802BC3E4 002B9344  38 60 00 68 */	li r3, 0x68
/* 802BC3E8 002B9348  38 84 68 5C */	addi r4, r4, lbl_803D685C@l
/* 802BC3EC 002B934C  38 A0 00 00 */	li r5, 0
/* 802BC3F0 002B9350  48 05 94 7D */	bl __nw__FUlPCcPCc
/* 802BC3F4 002B9354  7C 7B 1B 79 */	or. r27, r3, r3
/* 802BC3F8 002B9358  41 82 00 1C */	beq lbl_802BC414
/* 802BC3FC 002B935C  38 80 00 07 */	li r4, 7
/* 802BC400 002B9360  38 A0 00 80 */	li r5, 0x80
/* 802BC404 002B9364  38 C0 00 80 */	li r6, 0x80
/* 802BC408 002B9368  38 E0 00 01 */	li r7, 1
/* 802BC40C 002B936C  48 05 3A 21 */	bl __ct__8CTextureF12ETexelFormatssi
/* 802BC410 002B9370  7C 7B 1B 78 */	mr r27, r3
lbl_802BC414:
/* 802BC414 002B9374  80 7C 01 4C */	lwz r3, 0x14c(r28)
/* 802BC418 002B9378  38 80 00 01 */	li r4, 1
/* 802BC41C 002B937C  48 05 35 DD */	bl __dt__8CTextureFv
/* 802BC420 002B9380  93 7C 01 4C */	stw r27, 0x14c(r28)
lbl_802BC424:
/* 802BC424 002B9384  3C 60 80 5A */	lis r3, mRenderModeObj__9CGraphics@ha
/* 802BC428 002B9388  3C A0 80 3F */	lis r5, mViewport__9CGraphics@ha
/* 802BC42C 002B938C  38 83 65 00 */	addi r4, r3, mRenderModeObj__9CGraphics@l
/* 802BC430 002B9390  38 60 00 00 */	li r3, 0
/* 802BC434 002B9394  A0 84 00 06 */	lhz r4, 6(r4)
/* 802BC438 002B9398  38 C5 D9 10 */	addi r6, r5, mViewport__9CGraphics@l
/* 802BC43C 002B939C  83 46 00 00 */	lwz r26, 0(r6)
/* 802BC440 002B93A0  38 A0 01 00 */	li r5, 0x100
/* 802BC444 002B93A4  3B 64 FF 00 */	addi r27, r4, -256
/* 802BC448 002B93A8  83 26 00 04 */	lwz r25, 4(r6)
/* 802BC44C 002B93AC  83 06 00 08 */	lwz r24, 8(r6)
/* 802BC450 002B93B0  7F 64 DB 78 */	mr r4, r27
/* 802BC454 002B93B4  82 E6 00 0C */	lwz r23, 0xc(r6)
/* 802BC458 002B93B8  38 C0 01 00 */	li r6, 0x100
/* 802BC45C 002B93BC  48 04 FC 35 */	bl SetViewport__9CGraphicsFiiii
/* 802BC460 002B93C0  7F 64 DB 78 */	mr r4, r27
/* 802BC464 002B93C4  38 60 00 00 */	li r3, 0
/* 802BC468 002B93C8  38 A0 01 00 */	li r5, 0x100
/* 802BC46C 002B93CC  38 C0 01 00 */	li r6, 0x100
/* 802BC470 002B93D0  48 04 FB ED */	bl SetScissor__9CGraphicsFiiii
/* 802BC474 002B93D4  83 6D A8 28 */	lwz r27, mpSpareBuffer__9CGraphics@sda21(r13)
/* 802BC478 002B93D8  38 60 00 00 */	li r3, 0
/* 802BC47C 002B93DC  38 80 00 00 */	li r4, 0
/* 802BC480 002B93E0  38 A0 01 00 */	li r5, 0x100
/* 802BC484 002B93E4  38 C0 01 00 */	li r6, 0x100
/* 802BC488 002B93E8  48 0B C9 2D */	bl GXSetTexCopySrc
/* 802BC48C 002B93EC  38 60 00 80 */	li r3, 0x80
/* 802BC490 002B93F0  38 80 00 80 */	li r4, 0x80
/* 802BC494 002B93F4  38 A0 00 04 */	li r5, 4
/* 802BC498 002B93F8  38 C0 00 01 */	li r6, 1
/* 802BC49C 002B93FC  48 0B C9 E5 */	bl GXSetTexCopyDst
/* 802BC4A0 002B9400  38 60 00 01 */	li r3, 1
/* 802BC4A4 002B9404  38 80 00 03 */	li r4, 3
/* 802BC4A8 002B9408  38 A0 00 01 */	li r5, 1
/* 802BC4AC 002B940C  48 04 C3 D1 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802BC4B0 002B9410  7F 63 DB 78 */	mr r3, r27
/* 802BC4B4 002B9414  38 80 00 01 */	li r4, 1
/* 802BC4B8 002B9418  48 0B D0 7D */	bl GXCopyTex
/* 802BC4BC 002B941C  3C 60 80 5A */	lis r3, sViewingFrom__13CCubeMaterial@ha
/* 802BC4C0 002B9420  7F AC EB 78 */	mr r12, r29
/* 802BC4C4 002B9424  38 83 67 B4 */	addi r4, r3, sViewingFrom__13CCubeMaterial@l
/* 802BC4C8 002B9428  7F C3 F3 78 */	mr r3, r30
/* 802BC4CC 002B942C  7D 89 03 A6 */	mtctr r12
/* 802BC4D0 002B9430  4E 80 04 21 */	bctrl
/* 802BC4D4 002B9434  80 7C 01 4C */	lwz r3, 0x14c(r28)
/* 802BC4D8 002B9438  38 80 00 00 */	li r4, 0
/* 802BC4DC 002B943C  48 05 21 19 */	bl GetConstBitMapData__8CTextureCFi
/* 802BC4E0 002B9440  7C 60 1B 78 */	mr r0, r3
/* 802BC4E4 002B9444  38 60 00 01 */	li r3, 1
/* 802BC4E8 002B9448  7C 1B 03 78 */	mr r27, r0
/* 802BC4EC 002B944C  38 80 00 03 */	li r4, 3
/* 802BC4F0 002B9450  38 A0 00 01 */	li r5, 1
/* 802BC4F4 002B9454  48 04 C3 89 */	bl SetZMode__3CGXFUi10_GXCompareUi
/* 802BC4F8 002B9458  7F 63 DB 78 */	mr r3, r27
/* 802BC4FC 002B945C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802BC500 002B9460  48 0B D0 35 */	bl GXCopyTex
/* 802BC504 002B9464  7F 43 D3 78 */	mr r3, r26
/* 802BC508 002B9468  7F 24 CB 78 */	mr r4, r25
/* 802BC50C 002B946C  7F 05 C3 78 */	mr r5, r24
/* 802BC510 002B9470  7E E6 BB 78 */	mr r6, r23
/* 802BC514 002B9474  48 04 FB 7D */	bl SetViewport__9CGraphicsFiiii
/* 802BC518 002B9478  7F 43 D3 78 */	mr r3, r26
/* 802BC51C 002B947C  7F 24 CB 78 */	mr r4, r25
/* 802BC520 002B9480  7F 05 C3 78 */	mr r5, r24
/* 802BC524 002B9484  7E E6 BB 78 */	mr r6, r23
/* 802BC528 002B9488  48 04 FB 35 */	bl SetScissor__9CGraphicsFiiii
lbl_802BC52C:
/* 802BC52C 002B948C  BA E1 00 0C */	lmw r23, 0xc(r1)
/* 802BC530 002B9490  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BC534 002B9494  7C 08 03 A6 */	mtlr r0
/* 802BC538 002B9498  38 21 00 30 */	addi r1, r1, 0x30
/* 802BC53C 002B949C  4E 80 00 20 */	blr

.global GetRealReflection__13CCubeRendererFv
GetRealReflection__13CCubeRendererFv:
/* 802BC540 002B94A0  38 00 00 00 */	li r0, 0
/* 802BC544 002B94A4  90 03 02 DC */	stw r0, 0x2dc(r3)
/* 802BC548 002B94A8  80 03 01 4C */	lwz r0, 0x14c(r3)
/* 802BC54C 002B94AC  28 00 00 00 */	cmplwi r0, 0
/* 802BC550 002B94B0  40 82 00 0C */	bne lbl_802BC55C
/* 802BC554 002B94B4  38 63 00 E4 */	addi r3, r3, 0xe4
/* 802BC558 002B94B8  4E 80 00 20 */	blr
lbl_802BC55C:
/* 802BC55C 002B94BC  7C 03 03 78 */	mr r3, r0
/* 802BC560 002B94C0  4E 80 00 20 */	blr

.global SetDebugOption__13CCubeRendererFQ29IRenderer12EDebugOptioni
SetDebugOption__13CCubeRendererFQ29IRenderer12EDebugOptioni:
/* 802BC564 002B94C4  2C 04 00 01 */	cmpwi r4, 1
/* 802BC568 002B94C8  41 82 00 34 */	beq lbl_802BC59C
/* 802BC56C 002B94CC  40 80 00 10 */	bge lbl_802BC57C
/* 802BC570 002B94D0  2C 04 00 00 */	cmpwi r4, 0
/* 802BC574 002B94D4  40 80 00 14 */	bge lbl_802BC588

.global sub_802bc578
sub_802bc578:
/* 802BC578 002B94D8  4E 80 00 20 */	blr
lbl_802BC57C:
/* 802BC57C 002B94DC  2C 04 00 03 */	cmpwi r4, 3
/* 802BC580 002B94E0  4C 80 00 20 */	bgelr
/* 802BC584 002B94E4  48 00 00 20 */	b lbl_802BC5A4
lbl_802BC588:
/* 802BC588 002B94E8  7C 05 00 D0 */	neg r0, r5
/* 802BC58C 002B94EC  7C 00 2B 78 */	or r0, r0, r5
/* 802BC590 002B94F0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802BC594 002B94F4  98 03 00 C0 */	stb r0, 0xc0(r3)
/* 802BC598 002B94F8  4E 80 00 20 */	blr
lbl_802BC59C:
/* 802BC59C 002B94FC  90 A3 00 C4 */	stw r5, 0xc4(r3)
/* 802BC5A0 002B9500  4E 80 00 20 */	blr
lbl_802BC5A4:
/* 802BC5A4 002B9504  7C 85 00 D0 */	neg r4, r5
/* 802BC5A8 002B9508  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802BC5AC 002B950C  7C 84 2B 78 */	or r4, r4, r5
/* 802BC5B0 002B9510  50 80 27 38 */	rlwimi r0, r4, 4, 0x1c, 0x1c
/* 802BC5B4 002B9514  98 03 03 18 */	stb r0, 0x318(r3)
/* 802BC5B8 002B9518  4E 80 00 20 */	blr

.global SetDrawableCallback__13CCubeRendererFPFPCvPCvi_vPCv
SetDrawableCallback__13CCubeRendererFPFPCvPCvi_vPCv:
/* 802BC5BC 002B951C  90 83 00 A8 */	stw r4, 0xa8(r3)
/* 802BC5C0 002B9520  90 A3 00 AC */	stw r5, 0xac(r3)
/* 802BC5C4 002B9524  4E 80 00 20 */	blr

.global GetFPS__13CCubeRendererFv
GetFPS__13CCubeRendererFv:
/* 802BC5C8 002B9528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC5CC 002B952C  7C 08 02 A6 */	mflr r0
/* 802BC5D0 002B9530  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC5D4 002B9534  48 04 D2 81 */	bl GetFPS__9CGraphicsFv
/* 802BC5D8 002B9538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC5DC 002B953C  7C 08 03 A6 */	mtlr r0
/* 802BC5E0 002B9540  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC5E4 002B9544  4E 80 00 20 */	blr

.global SetClippingPlanes__13CCubeRendererFRC14CFrustumPlanes
SetClippingPlanes__13CCubeRendererFRC14CFrustumPlanes:
/* 802BC5E8 002B9548  38 03 00 44 */	addi r0, r3, 0x44
/* 802BC5EC 002B954C  7C 00 20 40 */	cmplw r0, r4
/* 802BC5F0 002B9550  4D 82 00 20 */	beqlr
/* 802BC5F4 002B9554  80 E3 00 44 */	lwz r7, 0x44(r3)
/* 802BC5F8 002B9558  39 03 00 48 */	addi r8, r3, 0x48
/* 802BC5FC 002B955C  38 A0 00 00 */	li r5, 0
/* 802BC600 002B9560  2C 07 00 00 */	cmpwi r7, 0
/* 802BC604 002B9564  40 81 00 40 */	ble lbl_802BC644
/* 802BC608 002B9568  2C 07 00 08 */	cmpwi r7, 8
/* 802BC60C 002B956C  38 C7 FF F8 */	addi r6, r7, -8
/* 802BC610 002B9570  40 81 00 20 */	ble lbl_802BC630
/* 802BC614 002B9574  38 06 00 07 */	addi r0, r6, 7
/* 802BC618 002B9578  54 00 E8 FE */	srwi r0, r0, 3
/* 802BC61C 002B957C  7C 09 03 A6 */	mtctr r0
/* 802BC620 002B9580  2C 06 00 00 */	cmpwi r6, 0
/* 802BC624 002B9584  40 81 00 0C */	ble lbl_802BC630
lbl_802BC628:
/* 802BC628 002B9588  38 A5 00 08 */	addi r5, r5, 8
/* 802BC62C 002B958C  42 00 FF FC */	bdnz lbl_802BC628
lbl_802BC630:
/* 802BC630 002B9590  7C 05 38 50 */	subf r0, r5, r7
/* 802BC634 002B9594  7C 09 03 A6 */	mtctr r0
/* 802BC638 002B9598  7C 05 38 00 */	cmpw r5, r7
/* 802BC63C 002B959C  40 80 00 08 */	bge lbl_802BC644
lbl_802BC640:
/* 802BC640 002B95A0  42 00 00 00 */	bdnz lbl_802BC640
lbl_802BC644:
/* 802BC644 002B95A4  38 00 00 00 */	li r0, 0
/* 802BC648 002B95A8  38 A4 00 04 */	addi r5, r4, 4
/* 802BC64C 002B95AC  90 03 00 44 */	stw r0, 0x44(r3)
/* 802BC650 002B95B0  80 04 00 00 */	lwz r0, 0(r4)
/* 802BC654 002B95B4  54 00 20 36 */	slwi r0, r0, 4
/* 802BC658 002B95B8  7C C4 02 14 */	add r6, r4, r0
/* 802BC65C 002B95BC  38 C6 00 04 */	addi r6, r6, 4
/* 802BC660 002B95C0  48 00 00 34 */	b lbl_802BC694
lbl_802BC664:
/* 802BC664 002B95C4  28 08 00 00 */	cmplwi r8, 0
/* 802BC668 002B95C8  41 82 00 24 */	beq lbl_802BC68C
/* 802BC66C 002B95CC  C0 05 00 00 */	lfs f0, 0(r5)
/* 802BC670 002B95D0  D0 08 00 00 */	stfs f0, 0(r8)
/* 802BC674 002B95D4  C0 05 00 04 */	lfs f0, 4(r5)
/* 802BC678 002B95D8  D0 08 00 04 */	stfs f0, 4(r8)
/* 802BC67C 002B95DC  C0 05 00 08 */	lfs f0, 8(r5)
/* 802BC680 002B95E0  D0 08 00 08 */	stfs f0, 8(r8)
/* 802BC684 002B95E4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802BC688 002B95E8  D0 08 00 0C */	stfs f0, 0xc(r8)
lbl_802BC68C:
/* 802BC68C 002B95EC  39 08 00 10 */	addi r8, r8, 0x10
/* 802BC690 002B95F0  38 A5 00 10 */	addi r5, r5, 0x10
lbl_802BC694:
/* 802BC694 002B95F4  7C 05 30 40 */	cmplw r5, r6
/* 802BC698 002B95F8  40 82 FF CC */	bne lbl_802BC664
/* 802BC69C 002B95FC  80 04 00 00 */	lwz r0, 0(r4)
/* 802BC6A0 002B9600  90 03 00 44 */	stw r0, 0x44(r3)
/* 802BC6A4 002B9604  4E 80 00 20 */	blr

.global SetBlendMode_AdditiveDestColor__13CCubeRendererFv
SetBlendMode_AdditiveDestColor__13CCubeRendererFv:
/* 802BC6A8 002B9608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC6AC 002B960C  7C 08 02 A6 */	mflr r0
/* 802BC6B0 002B9610  38 60 00 01 */	li r3, 1
/* 802BC6B4 002B9614  38 80 00 02 */	li r4, 2
/* 802BC6B8 002B9618  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC6BC 002B961C  38 A0 00 01 */	li r5, 1
/* 802BC6C0 002B9620  38 C0 00 00 */	li r6, 0
/* 802BC6C4 002B9624  48 04 F3 8D */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC6C8 002B9628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC6CC 002B962C  7C 08 03 A6 */	mtlr r0
/* 802BC6D0 002B9630  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC6D4 002B9634  4E 80 00 20 */	blr

.global SetBlendMode_Replace__13CCubeRendererFv
SetBlendMode_Replace__13CCubeRendererFv:
/* 802BC6D8 002B9638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC6DC 002B963C  7C 08 02 A6 */	mflr r0
/* 802BC6E0 002B9640  38 60 00 01 */	li r3, 1
/* 802BC6E4 002B9644  38 80 00 01 */	li r4, 1
/* 802BC6E8 002B9648  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC6EC 002B964C  38 A0 00 00 */	li r5, 0
/* 802BC6F0 002B9650  38 C0 00 00 */	li r6, 0
/* 802BC6F4 002B9654  48 04 F3 5D */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC6F8 002B9658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC6FC 002B965C  7C 08 03 A6 */	mtlr r0
/* 802BC700 002B9660  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC704 002B9664  4E 80 00 20 */	blr

.global SetBlendMode_InvertSrc__13CCubeRendererFv
SetBlendMode_InvertSrc__13CCubeRendererFv:
/* 802BC708 002B9668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC70C 002B966C  7C 08 02 A6 */	mflr r0
/* 802BC710 002B9670  38 60 00 02 */	li r3, 2
/* 802BC714 002B9674  38 80 00 01 */	li r4, 1
/* 802BC718 002B9678  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC71C 002B967C  38 A0 00 00 */	li r5, 0
/* 802BC720 002B9680  38 C0 00 0C */	li r6, 0xc
/* 802BC724 002B9684  48 04 F3 2D */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC728 002B9688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC72C 002B968C  7C 08 03 A6 */	mtlr r0
/* 802BC730 002B9690  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC734 002B9694  4E 80 00 20 */	blr

.global SetBlendMode_InvertDst__13CCubeRendererFv
SetBlendMode_InvertDst__13CCubeRendererFv:
/* 802BC738 002B9698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC73C 002B969C  7C 08 02 A6 */	mflr r0
/* 802BC740 002B96A0  38 60 00 01 */	li r3, 1
/* 802BC744 002B96A4  38 80 00 03 */	li r4, 3
/* 802BC748 002B96A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC74C 002B96AC  38 A0 00 00 */	li r5, 0
/* 802BC750 002B96B0  38 C0 00 00 */	li r6, 0
/* 802BC754 002B96B4  48 04 F2 FD */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC758 002B96B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC75C 002B96BC  7C 08 03 A6 */	mtlr r0
/* 802BC760 002B96C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC764 002B96C4  4E 80 00 20 */	blr

.global SetBlendMode_ColorMultiply__13CCubeRendererFv
SetBlendMode_ColorMultiply__13CCubeRendererFv:
/* 802BC768 002B96C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC76C 002B96CC  7C 08 02 A6 */	mflr r0
/* 802BC770 002B96D0  38 60 00 01 */	li r3, 1
/* 802BC774 002B96D4  38 80 00 00 */	li r4, 0
/* 802BC778 002B96D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC77C 002B96DC  38 A0 00 02 */	li r5, 2
/* 802BC780 002B96E0  38 C0 00 00 */	li r6, 0
/* 802BC784 002B96E4  48 04 F2 CD */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC788 002B96E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC78C 002B96EC  7C 08 03 A6 */	mtlr r0
/* 802BC790 002B96F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC794 002B96F4  4E 80 00 20 */	blr

.global SetBlendMode_NoColorWrite__13CCubeRendererFv
SetBlendMode_NoColorWrite__13CCubeRendererFv:
/* 802BC798 002B96F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC79C 002B96FC  7C 08 02 A6 */	mflr r0
/* 802BC7A0 002B9700  38 60 00 01 */	li r3, 1
/* 802BC7A4 002B9704  38 80 00 00 */	li r4, 0
/* 802BC7A8 002B9708  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC7AC 002B970C  38 A0 00 01 */	li r5, 1
/* 802BC7B0 002B9710  38 C0 00 00 */	li r6, 0
/* 802BC7B4 002B9714  48 04 F2 9D */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC7B8 002B9718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC7BC 002B971C  7C 08 03 A6 */	mtlr r0
/* 802BC7C0 002B9720  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC7C4 002B9724  4E 80 00 20 */	blr

.global SetBlendMode_AlphaBlended__13CCubeRendererFv
SetBlendMode_AlphaBlended__13CCubeRendererFv:
/* 802BC7C8 002B9728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC7CC 002B972C  7C 08 02 A6 */	mflr r0
/* 802BC7D0 002B9730  38 60 00 01 */	li r3, 1
/* 802BC7D4 002B9734  38 80 00 04 */	li r4, 4
/* 802BC7D8 002B9738  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC7DC 002B973C  38 A0 00 05 */	li r5, 5
/* 802BC7E0 002B9740  38 C0 00 00 */	li r6, 0
/* 802BC7E4 002B9744  48 04 F2 6D */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC7E8 002B9748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC7EC 002B974C  7C 08 03 A6 */	mtlr r0
/* 802BC7F0 002B9750  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC7F4 002B9754  4E 80 00 20 */	blr

.global SetBlendMode_AdditiveAlpha__13CCubeRendererFv
SetBlendMode_AdditiveAlpha__13CCubeRendererFv:
/* 802BC7F8 002B9758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC7FC 002B975C  7C 08 02 A6 */	mflr r0
/* 802BC800 002B9760  38 60 00 01 */	li r3, 1
/* 802BC804 002B9764  38 80 00 04 */	li r4, 4
/* 802BC808 002B9768  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC80C 002B976C  38 A0 00 01 */	li r5, 1
/* 802BC810 002B9770  38 C0 00 00 */	li r6, 0
/* 802BC814 002B9774  48 04 F2 3D */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BC818 002B9778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC81C 002B977C  7C 08 03 A6 */	mtlr r0
/* 802BC820 002B9780  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC824 002B9784  4E 80 00 20 */	blr

.global SetDepthReadWrite__13CCubeRendererFbb
SetDepthReadWrite__13CCubeRendererFbb:
/* 802BC828 002B9788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC82C 002B978C  7C 08 02 A6 */	mflr r0
/* 802BC830 002B9790  7C 83 23 78 */	mr r3, r4
/* 802BC834 002B9794  38 80 00 03 */	li r4, 3
/* 802BC838 002B9798  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC83C 002B979C  48 04 F2 59 */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 802BC840 002B97A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC844 002B97A4  7C 08 03 A6 */	mtlr r0
/* 802BC848 002B97A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC84C 002B97AC  4E 80 00 20 */	blr

.global SetViewport__13CCubeRendererFiiii
SetViewport__13CCubeRendererFiiii:
/* 802BC850 002B97B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BC854 002B97B4  7C 08 02 A6 */	mflr r0
/* 802BC858 002B97B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BC85C 002B97BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BC860 002B97C0  7C FF 3B 78 */	mr r31, r7
/* 802BC864 002B97C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BC868 002B97C8  7C DE 33 78 */	mr r30, r6
/* 802BC86C 002B97CC  7F E6 FB 78 */	mr r6, r31
/* 802BC870 002B97D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BC874 002B97D4  7C BD 2B 78 */	mr r29, r5
/* 802BC878 002B97D8  7F C5 F3 78 */	mr r5, r30
/* 802BC87C 002B97DC  93 81 00 10 */	stw r28, 0x10(r1)
/* 802BC880 002B97E0  7C 9C 23 78 */	mr r28, r4
/* 802BC884 002B97E4  7F 83 E3 78 */	mr r3, r28
/* 802BC888 002B97E8  7F A4 EB 78 */	mr r4, r29
/* 802BC88C 002B97EC  48 04 F8 05 */	bl SetViewport__9CGraphicsFiiii
/* 802BC890 002B97F0  7F 83 E3 78 */	mr r3, r28
/* 802BC894 002B97F4  7F A4 EB 78 */	mr r4, r29
/* 802BC898 002B97F8  7F C5 F3 78 */	mr r5, r30
/* 802BC89C 002B97FC  7F E6 FB 78 */	mr r6, r31
/* 802BC8A0 002B9800  48 04 F7 BD */	bl SetScissor__9CGraphicsFiiii
/* 802BC8A4 002B9804  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BC8A8 002B9808  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BC8AC 002B980C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BC8B0 002B9810  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BC8B4 002B9814  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802BC8B8 002B9818  7C 08 03 A6 */	mtlr r0
/* 802BC8BC 002B981C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BC8C0 002B9820  4E 80 00 20 */	blr

.global SetViewportOrtho__13CCubeRendererFbff
SetViewportOrtho__13CCubeRendererFbff:
/* 802BC8C4 002B9824  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802BC8C8 002B9828  7C 08 02 A6 */	mflr r0
/* 802BC8CC 002B982C  90 01 00 84 */	stw r0, 0x84(r1)
/* 802BC8D0 002B9830  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802BC8D4 002B9834  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 802BC8D8 002B9838  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802BC8DC 002B983C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 802BC8E0 002B9840  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802BC8E4 002B9844  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 802BC8E8 002B9848  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 802BC8EC 002B984C  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 802BC8F0 002B9850  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802BC8F4 002B9854  3C 80 80 3F */	lis r4, mViewport__9CGraphics@ha
/* 802BC8F8 002B9858  84 C4 D9 10 */	lwzu r6, mViewport__9CGraphics@l(r4)
/* 802BC8FC 002B985C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802BC900 002B9860  FC A0 08 90 */	fmr f5, f1
/* 802BC904 002B9864  FC C0 10 90 */	fmr f6, f2
/* 802BC908 002B9868  80 04 00 04 */	lwz r0, 4(r4)
/* 802BC90C 002B986C  80 E4 00 08 */	lwz r7, 8(r4)
/* 802BC910 002B9870  7C 7F 1B 78 */	mr r31, r3
/* 802BC914 002B9874  81 04 00 0C */	lwz r8, 0xc(r4)
/* 802BC918 002B9878  41 82 00 18 */	beq lbl_802BC930
/* 802BC91C 002B987C  54 E3 0F FE */	srwi r3, r7, 0x1f
/* 802BC920 002B9880  7C 63 3A 14 */	add r3, r3, r7
/* 802BC924 002B9884  7C 63 0E 70 */	srawi r3, r3, 1
/* 802BC928 002B9888  7C 63 30 50 */	subf r3, r3, r6
/* 802BC92C 002B988C  48 00 00 08 */	b lbl_802BC934
lbl_802BC930:
/* 802BC930 002B9890  7C C3 33 78 */	mr r3, r6
lbl_802BC934:
/* 802BC934 002B9894  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802BC938 002B9898  3C 80 43 30 */	lis r4, 0x4330
/* 802BC93C 002B989C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802BC940 002B98A0  54 A3 06 3F */	clrlwi. r3, r5, 0x18
/* 802BC944 002B98A4  C8 22 C2 A0 */	lfd f1, lbl_805ADFC0@sda21(r2)
/* 802BC948 002B98A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 802BC94C 002B98AC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802BC950 002B98B0  EF E0 08 28 */	fsubs f31, f0, f1
/* 802BC954 002B98B4  41 82 00 18 */	beq lbl_802BC96C
/* 802BC958 002B98B8  55 03 0F FE */	srwi r3, r8, 0x1f
/* 802BC95C 002B98BC  7C 63 42 14 */	add r3, r3, r8
/* 802BC960 002B98C0  7C 63 0E 70 */	srawi r3, r3, 1
/* 802BC964 002B98C4  7C 63 00 50 */	subf r3, r3, r0
/* 802BC968 002B98C8  48 00 00 08 */	b lbl_802BC970
lbl_802BC96C:
/* 802BC96C 002B98CC  7C 03 03 78 */	mr r3, r0
lbl_802BC970:
/* 802BC970 002B98D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802BC974 002B98D4  3C 80 43 30 */	lis r4, 0x4330
/* 802BC978 002B98D8  90 61 00 24 */	stw r3, 0x24(r1)
/* 802BC97C 002B98DC  54 A3 06 3F */	clrlwi. r3, r5, 0x18
/* 802BC980 002B98E0  C8 22 C2 A0 */	lfd f1, lbl_805ADFC0@sda21(r2)
/* 802BC984 002B98E4  90 81 00 20 */	stw r4, 0x20(r1)
/* 802BC988 002B98E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BC98C 002B98EC  EF C0 08 28 */	fsubs f30, f0, f1
/* 802BC990 002B98F0  41 82 00 18 */	beq lbl_802BC9A8
/* 802BC994 002B98F4  54 E3 0F FE */	srwi r3, r7, 0x1f
/* 802BC998 002B98F8  7C 63 3A 14 */	add r3, r3, r7
/* 802BC99C 002B98FC  7C 63 0E 70 */	srawi r3, r3, 1
/* 802BC9A0 002B9900  7C 66 1A 14 */	add r3, r6, r3
/* 802BC9A4 002B9904  48 00 00 08 */	b lbl_802BC9AC
lbl_802BC9A8:
/* 802BC9A8 002B9908  7C 66 3A 14 */	add r3, r6, r7
lbl_802BC9AC:
/* 802BC9AC 002B990C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 802BC9B0 002B9910  3C 80 43 30 */	lis r4, 0x4330
/* 802BC9B4 002B9914  90 61 00 2C */	stw r3, 0x2c(r1)
/* 802BC9B8 002B9918  54 A3 06 3F */	clrlwi. r3, r5, 0x18
/* 802BC9BC 002B991C  C8 22 C2 A0 */	lfd f1, lbl_805ADFC0@sda21(r2)
/* 802BC9C0 002B9920  90 81 00 28 */	stw r4, 0x28(r1)
/* 802BC9C4 002B9924  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802BC9C8 002B9928  EF A0 08 28 */	fsubs f29, f0, f1
/* 802BC9CC 002B992C  41 82 00 18 */	beq lbl_802BC9E4
/* 802BC9D0 002B9930  55 03 0F FE */	srwi r3, r8, 0x1f
/* 802BC9D4 002B9934  7C 63 42 14 */	add r3, r3, r8
/* 802BC9D8 002B9938  7C 63 0E 70 */	srawi r3, r3, 1
/* 802BC9DC 002B993C  7C 00 1A 14 */	add r0, r0, r3
/* 802BC9E0 002B9940  48 00 00 08 */	b lbl_802BC9E8
lbl_802BC9E4:
/* 802BC9E4 002B9944  7C 00 42 14 */	add r0, r0, r8
lbl_802BC9E8:
/* 802BC9E8 002B9948  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 802BC9EC 002B994C  3C 00 43 30 */	lis r0, 0x4330
/* 802BC9F0 002B9950  90 61 00 34 */	stw r3, 0x34(r1)
/* 802BC9F4 002B9954  FC 20 F8 90 */	fmr f1, f31
/* 802BC9F8 002B9958  C8 62 C2 A0 */	lfd f3, lbl_805ADFC0@sda21(r2)
/* 802BC9FC 002B995C  FC 40 E8 90 */	fmr f2, f29
/* 802BCA00 002B9960  90 01 00 30 */	stw r0, 0x30(r1)
/* 802BCA04 002B9964  FC 80 F0 90 */	fmr f4, f30
/* 802BCA08 002B9968  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802BCA0C 002B996C  EF 80 18 28 */	fsubs f28, f0, f3
/* 802BCA10 002B9970  FC 60 E0 90 */	fmr f3, f28
/* 802BCA14 002B9974  48 04 FB 41 */	bl SetOrtho__9CGraphicsFffffff
/* 802BCA18 002B9978  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BCA1C 002B997C  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BCA20 002B9980  48 04 FD 2D */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BCA24 002B9984  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BCA28 002B9988  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BCA2C 002B998C  48 04 FB B5 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BCA30 002B9990  FC 20 E8 90 */	fmr f1, f29
/* 802BCA34 002B9994  38 61 00 08 */	addi r3, r1, 8
/* 802BCA38 002B9998  FC 40 E0 90 */	fmr f2, f28
/* 802BCA3C 002B999C  48 05 77 C5 */	bl __ct__9CVector2fFff
/* 802BCA40 002B99A0  FC 20 F8 90 */	fmr f1, f31
/* 802BCA44 002B99A4  38 61 00 10 */	addi r3, r1, 0x10
/* 802BCA48 002B99A8  FC 40 F0 90 */	fmr f2, f30
/* 802BCA4C 002B99AC  48 05 77 B5 */	bl __ct__9CVector2fFff
/* 802BCA50 002B99B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802BCA54 002B99B4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802BCA58 002B99B8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802BCA5C 002B99BC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802BCA60 002B99C0  C0 01 00 08 */	lfs f0, 8(r1)
/* 802BCA64 002B99C4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802BCA68 002B99C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802BCA6C 002B99CC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802BCA70 002B99D0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 802BCA74 002B99D4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802BCA78 002B99D8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 802BCA7C 002B99DC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 802BCA80 002B99E0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 802BCA84 002B99E4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 802BCA88 002B99E8  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 802BCA8C 002B99EC  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 802BCA90 002B99F0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802BCA94 002B99F4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802BCA98 002B99F8  7C 08 03 A6 */	mtlr r0
/* 802BCA9C 002B99FC  38 21 00 80 */	addi r1, r1, 0x80
/* 802BCAA0 002B9A00  4E 80 00 20 */	blr

.global SetPerspective__13CCubeRendererFffff
SetPerspective__13CCubeRendererFffff:
/* 802BCAA4 002B9A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCAA8 002B9A08  7C 08 02 A6 */	mflr r0
/* 802BCAAC 002B9A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCAB0 002B9A10  48 04 F9 E1 */	bl SetPerspective__9CGraphicsFffff
/* 802BCAB4 002B9A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCAB8 002B9A18  7C 08 03 A6 */	mtlr r0
/* 802BCABC 002B9A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCAC0 002B9A20  4E 80 00 20 */	blr

.global SetPerspective__13CCubeRendererFfffff
SetPerspective__13CCubeRendererFfffff:
/* 802BCAC4 002B9A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCAC8 002B9A28  7C 08 02 A6 */	mflr r0
/* 802BCACC 002B9A2C  EC 42 18 24 */	fdivs f2, f2, f3
/* 802BCAD0 002B9A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCAD4 002B9A34  FC 60 20 90 */	fmr f3, f4
/* 802BCAD8 002B9A38  FC 80 28 90 */	fmr f4, f5
/* 802BCADC 002B9A3C  48 04 F9 B5 */	bl SetPerspective__9CGraphicsFffff
/* 802BCAE0 002B9A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCAE4 002B9A44  7C 08 03 A6 */	mtlr r0
/* 802BCAE8 002B9A48  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCAEC 002B9A4C  4E 80 00 20 */	blr

.global SetAmbientColor__13CCubeRendererFRC6CColor
SetAmbientColor__13CCubeRendererFRC6CColor:
/* 802BCAF0 002B9A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCAF4 002B9A54  7C 08 02 A6 */	mflr r0
/* 802BCAF8 002B9A58  7C 83 23 78 */	mr r3, r4
/* 802BCAFC 002B9A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCB00 002B9A60  48 04 F5 1D */	bl SetAmbientColor__9CGraphicsFRC6CColor
/* 802BCB04 002B9A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCB08 002B9A68  7C 08 03 A6 */	mtlr r0
/* 802BCB0C 002B9A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCB10 002B9A70  4E 80 00 20 */	blr

.global EndPrimitive__13CCubeRendererFv
EndPrimitive__13CCubeRendererFv:
/* 802BCB14 002B9A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCB18 002B9A78  7C 08 02 A6 */	mflr r0
/* 802BCB1C 002B9A7C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 802BCB20 002B9A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCB24 002B9A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BCB28 002B9A88  3B E4 66 A0 */	addi r31, r4, sZeroVector__9CVector3f@l
/* 802BCB2C 002B9A8C  93 C1 00 08 */	stw r30, 8(r1)
/* 802BCB30 002B9A90  7C 7E 1B 78 */	mr r30, r3
/* 802BCB34 002B9A94  48 00 00 1C */	b lbl_802BCB50
lbl_802BCB38:
/* 802BCB38 002B9A98  7F C3 F3 78 */	mr r3, r30
/* 802BCB3C 002B9A9C  7F E4 FB 78 */	mr r4, r31
/* 802BCB40 002B9AA0  81 9E 00 00 */	lwz r12, 0(r30)
/* 802BCB44 002B9AA4  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 802BCB48 002B9AA8  7D 89 03 A6 */	mtctr r12
/* 802BCB4C 002B9AAC  4E 80 04 21 */	bctrl
lbl_802BCB50:
/* 802BCB50 002B9AB0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802BCB54 002B9AB4  2C 00 00 00 */	cmpwi r0, 0
/* 802BCB58 002B9AB8  40 82 FF E0 */	bne lbl_802BCB38
/* 802BCB5C 002B9ABC  48 04 BA 25 */	bl End__3CGXFv
/* 802BCB60 002B9AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCB64 002B9AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BCB68 002B9AC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BCB6C 002B9ACC  7C 08 03 A6 */	mtlr r0
/* 802BCB70 002B9AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCB74 002B9AD4  4E 80 00 20 */	blr

.global PrimNormal__13CCubeRendererFRC9CVector3f
PrimNormal__13CCubeRendererFRC9CVector3f:
/* 802BCB78 002B9AD8  C0 04 00 00 */	lfs f0, 0(r4)
/* 802BCB7C 002B9ADC  D0 03 02 E4 */	stfs f0, 0x2e4(r3)
/* 802BCB80 002B9AE0  C0 04 00 04 */	lfs f0, 4(r4)
/* 802BCB84 002B9AE4  D0 03 02 E8 */	stfs f0, 0x2e8(r3)
/* 802BCB88 002B9AE8  C0 04 00 08 */	lfs f0, 8(r4)
/* 802BCB8C 002B9AEC  D0 03 02 EC */	stfs f0, 0x2ec(r3)
/* 802BCB90 002B9AF0  4E 80 00 20 */	blr

.global PrimVertex__13CCubeRendererFRC9CVector3f
PrimVertex__13CCubeRendererFRC9CVector3f:
/* 802BCB94 002B9AF4  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 802BCB98 002B9AF8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 802BCB9C 002B9AFC  38 06 FF FF */	addi r0, r6, -1
/* 802BCBA0 002B9B00  90 03 00 18 */	stw r0, 0x18(r3)
/* 802BCBA4 002B9B04  C0 24 00 08 */	lfs f1, 8(r4)
/* 802BCBA8 002B9B08  C0 44 00 04 */	lfs f2, 4(r4)
/* 802BCBAC 002B9B0C  C0 04 00 00 */	lfs f0, 0(r4)
/* 802BCBB0 002B9B10  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BCBB4 002B9B14  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BCBB8 002B9B18  D0 25 80 00 */	stfs f1, 0xCC008000@l(r5)
/* 802BCBBC 002B9B1C  C0 23 02 EC */	lfs f1, 0x2ec(r3)
/* 802BCBC0 002B9B20  C0 43 02 E8 */	lfs f2, 0x2e8(r3)
/* 802BCBC4 002B9B24  C0 03 02 E4 */	lfs f0, 0x2e4(r3)
/* 802BCBC8 002B9B28  D0 05 80 00 */	stfs f0, 0xCC008000@l(r5)
/* 802BCBCC 002B9B2C  D0 45 80 00 */	stfs f2, 0xCC008000@l(r5)
/* 802BCBD0 002B9B30  D0 25 80 00 */	stfs f1, 0xCC008000@l(r5)
/* 802BCBD4 002B9B34  80 03 02 E0 */	lwz r0, 0x2e0(r3)
/* 802BCBD8 002B9B38  90 05 80 00 */	stw r0, 0xCC008000@l(r5)
/* 802BCBDC 002B9B3C  4E 80 00 20 */	blr

.global BeginTriangleFan__13CCubeRendererFi
BeginTriangleFan__13CCubeRendererFi:
/* 802BCBE0 002B9B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCBE4 002B9B44  7C 08 02 A6 */	mflr r0
/* 802BCBE8 002B9B48  7C 85 23 78 */	mr r5, r4
/* 802BCBEC 002B9B4C  38 80 00 A0 */	li r4, 0xa0
/* 802BCBF0 002B9B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCBF4 002B9B54  48 00 00 B5 */	bl BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei
/* 802BCBF8 002B9B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCBFC 002B9B5C  7C 08 03 A6 */	mtlr r0
/* 802BCC00 002B9B60  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCC04 002B9B64  4E 80 00 20 */	blr

.global BeginTriangleStrip__13CCubeRendererFi
BeginTriangleStrip__13CCubeRendererFi:
/* 802BCC08 002B9B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCC0C 002B9B6C  7C 08 02 A6 */	mflr r0
/* 802BCC10 002B9B70  7C 85 23 78 */	mr r5, r4
/* 802BCC14 002B9B74  38 80 00 98 */	li r4, 0x98
/* 802BCC18 002B9B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCC1C 002B9B7C  48 00 00 8D */	bl BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei
/* 802BCC20 002B9B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCC24 002B9B84  7C 08 03 A6 */	mtlr r0
/* 802BCC28 002B9B88  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCC2C 002B9B8C  4E 80 00 20 */	blr

.global BeginTriangles__13CCubeRendererFi
BeginTriangles__13CCubeRendererFi:
/* 802BCC30 002B9B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCC34 002B9B94  7C 08 02 A6 */	mflr r0
/* 802BCC38 002B9B98  7C 85 23 78 */	mr r5, r4
/* 802BCC3C 002B9B9C  38 80 00 90 */	li r4, 0x90
/* 802BCC40 002B9BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCC44 002B9BA4  48 00 00 65 */	bl BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei
/* 802BCC48 002B9BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCC4C 002B9BAC  7C 08 03 A6 */	mtlr r0
/* 802BCC50 002B9BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCC54 002B9BB4  4E 80 00 20 */	blr

.global BeginLineStrip__13CCubeRendererFi
BeginLineStrip__13CCubeRendererFi:
/* 802BCC58 002B9BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCC5C 002B9BBC  7C 08 02 A6 */	mflr r0
/* 802BCC60 002B9BC0  7C 85 23 78 */	mr r5, r4
/* 802BCC64 002B9BC4  38 80 00 B0 */	li r4, 0xb0
/* 802BCC68 002B9BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCC6C 002B9BCC  48 00 00 3D */	bl BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei
/* 802BCC70 002B9BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCC74 002B9BD4  7C 08 03 A6 */	mtlr r0
/* 802BCC78 002B9BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCC7C 002B9BDC  4E 80 00 20 */	blr

.global BeginLines__13CCubeRendererFi
BeginLines__13CCubeRendererFi:
/* 802BCC80 002B9BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCC84 002B9BE4  7C 08 02 A6 */	mflr r0
/* 802BCC88 002B9BE8  7C 85 23 78 */	mr r5, r4
/* 802BCC8C 002B9BEC  38 80 00 A8 */	li r4, 0xa8
/* 802BCC90 002B9BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCC94 002B9BF4  48 00 00 15 */	bl BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei
/* 802BCC98 002B9BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCC9C 002B9BFC  7C 08 03 A6 */	mtlr r0
/* 802BCCA0 002B9C00  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCCA4 002B9C04  4E 80 00 20 */	blr

.global BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei
BeginPrimitive__13CCubeRendererFQ29IRenderer14EPrimitiveTypei:
/* 802BCCA8 002B9C08  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BCCAC 002B9C0C  7C 08 02 A6 */	mflr r0
/* 802BCCB0 002B9C10  3C C0 80 3D */	lis r6, lbl_803D6580@ha
/* 802BCCB4 002B9C14  38 E0 00 00 */	li r7, 0
/* 802BCCB8 002B9C18  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BCCBC 002B9C1C  39 26 65 80 */	addi r9, r6, lbl_803D6580@l
/* 802BCCC0 002B9C20  38 C0 00 01 */	li r6, 1
/* 802BCCC4 002B9C24  39 00 00 00 */	li r8, 0
/* 802BCCC8 002B9C28  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 802BCCCC 002B9C2C  7C 79 1B 78 */	mr r25, r3
/* 802BCCD0 002B9C30  7C 9A 23 78 */	mr r26, r4
/* 802BCCD4 002B9C34  7C BB 2B 78 */	mr r27, r5
/* 802BCCD8 002B9C38  38 60 00 00 */	li r3, 0
/* 802BCCDC 002B9C3C  38 80 00 00 */	li r4, 0
/* 802BCCE0 002B9C40  38 A0 00 00 */	li r5, 0
/* 802BCCE4 002B9C44  83 89 00 00 */	lwz r28, 0(r9)
/* 802BCCE8 002B9C48  83 A9 00 04 */	lwz r29, 4(r9)
/* 802BCCEC 002B9C4C  83 C9 00 08 */	lwz r30, 8(r9)
/* 802BCCF0 002B9C50  83 E9 00 0C */	lwz r31, 0xc(r9)
/* 802BCCF4 002B9C54  81 89 00 10 */	lwz r12, 0x10(r9)
/* 802BCCF8 002B9C58  81 69 00 14 */	lwz r11, 0x14(r9)
/* 802BCCFC 002B9C5C  81 49 00 18 */	lwz r10, 0x18(r9)
/* 802BCD00 002B9C60  80 09 00 1C */	lwz r0, 0x1c(r9)
/* 802BCD04 002B9C64  39 20 00 02 */	li r9, 2
/* 802BCD08 002B9C68  93 81 00 08 */	stw r28, 8(r1)
/* 802BCD0C 002B9C6C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802BCD10 002B9C70  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802BCD14 002B9C74  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802BCD18 002B9C78  91 81 00 18 */	stw r12, 0x18(r1)
/* 802BCD1C 002B9C7C  91 61 00 1C */	stw r11, 0x1c(r1)
/* 802BCD20 002B9C80  91 41 00 20 */	stw r10, 0x20(r1)
/* 802BCD24 002B9C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BCD28 002B9C88  48 04 BF A5 */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 802BCD2C 002B9C8C  38 60 00 01 */	li r3, 1
/* 802BCD30 002B9C90  48 04 C1 21 */	bl SetNumChans__3CGXFUc
/* 802BCD34 002B9C94  38 60 00 00 */	li r3, 0
/* 802BCD38 002B9C98  48 04 C0 DD */	bl SetNumTexGens__3CGXFUc
/* 802BCD3C 002B9C9C  38 60 00 01 */	li r3, 1
/* 802BCD40 002B9CA0  48 04 BF 51 */	bl SetNumTevStages__3CGXFUc
/* 802BCD44 002B9CA4  38 60 00 00 */	li r3, 0
/* 802BCD48 002B9CA8  38 80 00 FF */	li r4, 0xff
/* 802BCD4C 002B9CAC  38 A0 00 FF */	li r5, 0xff
/* 802BCD50 002B9CB0  38 C0 00 04 */	li r6, 4
/* 802BCD54 002B9CB4  48 04 BB F9 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 802BCD58 002B9CB8  38 60 00 00 */	li r3, 0
/* 802BCD5C 002B9CBC  38 80 00 0F */	li r4, 0xf
/* 802BCD60 002B9CC0  38 A0 00 0F */	li r5, 0xf
/* 802BCD64 002B9CC4  38 C0 00 0F */	li r6, 0xf
/* 802BCD68 002B9CC8  38 E0 00 0A */	li r7, 0xa
/* 802BCD6C 002B9CCC  48 04 BE 81 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 802BCD70 002B9CD0  38 60 00 00 */	li r3, 0
/* 802BCD74 002B9CD4  38 80 00 07 */	li r4, 7
/* 802BCD78 002B9CD8  38 A0 00 07 */	li r5, 7
/* 802BCD7C 002B9CDC  38 C0 00 07 */	li r6, 7
/* 802BCD80 002B9CE0  38 E0 00 05 */	li r7, 5
/* 802BCD84 002B9CE4  48 04 BE 11 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 802BCD88 002B9CE8  38 60 00 00 */	li r3, 0
/* 802BCD8C 002B9CEC  48 04 AE C5 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 802BCD90 002B9CF0  93 79 00 18 */	stw r27, 0x18(r25)
/* 802BCD94 002B9CF4  38 61 00 08 */	addi r3, r1, 8
/* 802BCD98 002B9CF8  48 04 B0 91 */	bl SetVtxDescv__3CGXFPC14_GXVtxDescList
/* 802BCD9C 002B9CFC  7F 43 D3 78 */	mr r3, r26
/* 802BCDA0 002B9D00  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 802BCDA4 002B9D04  38 80 00 00 */	li r4, 0
/* 802BCDA8 002B9D08  48 04 B7 DD */	bl Begin__3CGXF12_GXPrimitive9_GXVtxFmtUs
/* 802BCDAC 002B9D0C  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 802BCDB0 002B9D10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BCDB4 002B9D14  7C 08 03 A6 */	mtlr r0
/* 802BCDB8 002B9D18  38 21 00 50 */	addi r1, r1, 0x50
/* 802BCDBC 002B9D1C  4E 80 00 20 */	blr

.global PrimColor__13CCubeRendererFRC6CColor
PrimColor__13CCubeRendererFRC6CColor:
/* 802BCDC0 002B9D20  80 04 00 00 */	lwz r0, 0(r4)
/* 802BCDC4 002B9D24  90 03 02 E0 */	stw r0, 0x2e0(r3)
/* 802BCDC8 002B9D28  4E 80 00 20 */	blr

.global PrimColor__13CCubeRendererFffff
PrimColor__13CCubeRendererFffff:
/* 802BCDCC 002B9D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCDD0 002B9D30  7C 08 02 A6 */	mflr r0
/* 802BCDD4 002B9D34  38 63 02 E0 */	addi r3, r3, 0x2e0
/* 802BCDD8 002B9D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCDDC 002B9D3C  48 0A 65 C1 */	bl Set__6CColorFffff
/* 802BCDE0 002B9D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCDE4 002B9D44  7C 08 03 A6 */	mtlr r0
/* 802BCDE8 002B9D48  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCDEC 002B9D4C  4E 80 00 20 */	blr

.global AllocateRenderer__8RendererFR12IObjectStoreR10COsContextR10CMemorySysR11CResFactory
AllocateRenderer__8RendererFR12IObjectStoreR10COsContextR10CMemorySysR11CResFactory:
/* 802BCDF0 002B9D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BCDF4 002B9D54  7C 08 02 A6 */	mflr r0
/* 802BCDF8 002B9D58  3C E0 80 3D */	lis r7, lbl_803D685C@ha
/* 802BCDFC 002B9D5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BCE00 002B9D60  38 07 68 5C */	addi r0, r7, lbl_803D685C@l
/* 802BCE04 002B9D64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BCE08 002B9D68  7C DF 33 78 */	mr r31, r6
/* 802BCE0C 002B9D6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BCE10 002B9D70  7C BE 2B 78 */	mr r30, r5
/* 802BCE14 002B9D74  38 A0 00 00 */	li r5, 0
/* 802BCE18 002B9D78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BCE1C 002B9D7C  7C 9D 23 78 */	mr r29, r4
/* 802BCE20 002B9D80  7C 04 03 78 */	mr r4, r0
/* 802BCE24 002B9D84  93 81 00 10 */	stw r28, 0x10(r1)
/* 802BCE28 002B9D88  7C 7C 1B 78 */	mr r28, r3
/* 802BCE2C 002B9D8C  38 60 03 1C */	li r3, 0x31c
/* 802BCE30 002B9D90  48 00 31 A9 */	bl "__nw__27TOneStatic<13CCubeRenderer>FUlPCcPCc"
/* 802BCE34 002B9D94  7C 64 1B 79 */	or. r4, r3, r3
/* 802BCE38 002B9D98  41 82 00 1C */	beq lbl_802BCE54
/* 802BCE3C 002B9D9C  7F 84 E3 78 */	mr r4, r28
/* 802BCE40 002B9DA0  7F A5 EB 78 */	mr r5, r29
/* 802BCE44 002B9DA4  7F C6 F3 78 */	mr r6, r30
/* 802BCE48 002B9DA8  7F E7 FB 78 */	mr r7, r31
/* 802BCE4C 002B9DAC  48 00 22 15 */	bl __ct__13CCubeRendererFR12IObjectStoreR10COsContextR10CMemorySysR11CResFactory
/* 802BCE50 002B9DB0  7C 64 1B 78 */	mr r4, r3
lbl_802BCE54:
/* 802BCE54 002B9DB4  28 04 00 00 */	cmplwi r4, 0
/* 802BCE58 002B9DB8  7C 80 23 78 */	mr r0, r4
/* 802BCE5C 002B9DBC  41 82 00 08 */	beq lbl_802BCE64
/* 802BCE60 002B9DC0  38 04 00 04 */	addi r0, r4, 4
lbl_802BCE64:
/* 802BCE64 002B9DC4  90 0D 9A 90 */	stw r0, sWeaponRenderer__15IWeaponRenderer@sda21(r13)
/* 802BCE68 002B9DC8  7C 83 23 78 */	mr r3, r4
/* 802BCE6C 002B9DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BCE70 002B9DD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BCE74 002B9DD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BCE78 002B9DD8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BCE7C 002B9DDC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802BCE80 002B9DE0  7C 08 03 A6 */	mtlr r0
/* 802BCE84 002B9DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802BCE88 002B9DE8  4E 80 00 20 */	blr

.global "ActivateLightsForModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>RC6CAABox"
"ActivateLightsForModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>RC6CAABox":
/* 802BCE8C 002B9DEC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802BCE90 002B9DF0  7C 08 02 A6 */	mflr r0
/* 802BCE94 002B9DF4  90 01 00 94 */	stw r0, 0x94(r1)
/* 802BCE98 002B9DF8  BE 01 00 50 */	stmw r16, 0x50(r1)
/* 802BCE9C 002B9DFC  7C 70 1B 78 */	mr r16, r3
/* 802BCEA0 002B9E00  7C B1 2B 78 */	mr r17, r5
/* 802BCEA4 002B9E04  3A E0 00 00 */	li r23, 0
/* 802BCEA8 002B9E08  80 03 03 04 */	lwz r0, 0x304(r3)
/* 802BCEAC 002B9E0C  2C 00 00 00 */	cmpwi r0, 0
/* 802BCEB0 002B9E10  41 82 01 E0 */	beq lbl_802BD090
/* 802BCEB4 002B9E14  3C 60 80 3D */	lis r3, lbl_803D6570@ha
/* 802BCEB8 002B9E18  28 04 00 00 */	cmplwi r4, 0
/* 802BCEBC 002B9E1C  38 E3 65 70 */	addi r7, r3, lbl_803D6570@l
/* 802BCEC0 002B9E20  3B F1 00 20 */	addi r31, r17, 0x20
/* 802BCEC4 002B9E24  80 C7 00 00 */	lwz r6, 0(r7)
/* 802BCEC8 002B9E28  3A C0 00 00 */	li r22, 0
/* 802BCECC 002B9E2C  80 A7 00 04 */	lwz r5, 4(r7)
/* 802BCED0 002B9E30  3A A0 00 00 */	li r21, 0
/* 802BCED4 002B9E34  80 67 00 08 */	lwz r3, 8(r7)
/* 802BCED8 002B9E38  39 00 00 00 */	li r8, 0
/* 802BCEDC 002B9E3C  80 07 00 0C */	lwz r0, 0xc(r7)
/* 802BCEE0 002B9E40  90 C1 00 30 */	stw r6, 0x30(r1)
/* 802BCEE4 002B9E44  90 A1 00 34 */	stw r5, 0x34(r1)
/* 802BCEE8 002B9E48  90 61 00 38 */	stw r3, 0x38(r1)
/* 802BCEEC 002B9E4C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802BCEF0 002B9E50  41 82 00 1C */	beq lbl_802BCF0C
/* 802BCEF4 002B9E54  80 11 00 44 */	lwz r0, 0x44(r17)
/* 802BCEF8 002B9E58  2C 00 FF FF */	cmpwi r0, -1
/* 802BCEFC 002B9E5C  41 82 00 10 */	beq lbl_802BCF0C
/* 802BCF00 002B9E60  80 64 00 04 */	lwz r3, 4(r4)
/* 802BCF04 002B9E64  82 A4 00 28 */	lwz r21, 0x28(r4)
/* 802BCF08 002B9E68  81 03 00 14 */	lwz r8, 0x14(r3)
lbl_802BCF0C:
/* 802BCF0C 002B9E6C  3B 01 00 40 */	addi r24, r1, 0x40
/* 802BCF10 002B9E70  7E BC AB 78 */	mr r28, r21
/* 802BCF14 002B9E74  7F 19 C3 78 */	mr r25, r24
/* 802BCF18 002B9E78  55 1B 10 3A */	slwi r27, r8, 2
/* 802BCF1C 002B9E7C  3B 41 00 30 */	addi r26, r1, 0x30
/* 802BCF20 002B9E80  3A 80 00 00 */	li r20, 0
/* 802BCF24 002B9E84  3B A0 00 00 */	li r29, 0
/* 802BCF28 002B9E88  48 00 01 54 */	b lbl_802BD07C
lbl_802BCF2C:
/* 802BCF2C 002B9E8C  80 10 03 0C */	lwz r0, 0x30c(r16)
/* 802BCF30 002B9E90  28 15 00 00 */	cmplwi r21, 0
/* 802BCF34 002B9E94  7F C0 EA 14 */	add r30, r0, r29
/* 802BCF38 002B9E98  41 82 00 18 */	beq lbl_802BCF50
/* 802BCF3C 002B9E9C  80 91 00 44 */	lwz r4, 0x44(r17)
/* 802BCF40 002B9EA0  7F 83 E3 78 */	mr r3, r28
/* 802BCF44 002B9EA4  4B FF 17 81 */	bl TestBit__13CCubeRendererFPCUii
/* 802BCF48 002B9EA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BCF4C 002B9EAC  41 82 01 24 */	beq lbl_802BD070
lbl_802BCF50:
/* 802BCF50 002B9EB0  7F 04 C3 78 */	mr r4, r24
/* 802BCF54 002B9EB4  3A 60 00 00 */	li r19, 0
/* 802BCF58 002B9EB8  3A 40 00 00 */	li r18, 0
/* 802BCF5C 002B9EBC  7E C9 03 A6 */	mtctr r22
/* 802BCF60 002B9EC0  2C 16 00 00 */	cmpwi r22, 0
/* 802BCF64 002B9EC4  40 81 00 8C */	ble lbl_802BCFF0
lbl_802BCF68:
/* 802BCF68 002B9EC8  80 64 00 00 */	lwz r3, 0(r4)
/* 802BCF6C 002B9ECC  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 802BCF70 002B9ED0  7C 03 00 00 */	cmpw r3, r0
/* 802BCF74 002B9ED4  40 82 00 70 */	bne lbl_802BCFE4
/* 802BCF78 002B9ED8  7F C3 F3 78 */	mr r3, r30
/* 802BCF7C 002B9EDC  48 04 93 59 */	bl GetRadius__6CLightCFv
/* 802BCF80 002B9EE0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802BCF84 002B9EE4  7F E3 FB 78 */	mr r3, r31
/* 802BCF88 002B9EE8  38 81 00 20 */	addi r4, r1, 0x20
/* 802BCF8C 002B9EEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802BCF90 002B9EF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802BCF94 002B9EF4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802BCF98 002B9EF8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802BCF9C 002B9EFC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802BCFA0 002B9F00  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 802BCFA4 002B9F04  48 01 59 45 */	bl AABoxSphereIntersectionRadius__13CollisionUtilFRC6CAABoxRC7CSphere
/* 802BCFA8 002B9F08  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BCFAC 002B9F0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BCFB0 002B9F10  4C 41 13 82 */	cror 2, 1, 2
/* 802BCFB4 002B9F14  40 82 00 3C */	bne lbl_802BCFF0
/* 802BCFB8 002B9F18  56 40 10 3A */	slwi r0, r18, 2
/* 802BCFBC 002B9F1C  38 61 00 30 */	addi r3, r1, 0x30
/* 802BCFC0 002B9F20  7C 03 04 2E */	lfsx f0, r3, r0
/* 802BCFC4 002B9F24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BCFC8 002B9F28  40 81 00 28 */	ble lbl_802BCFF0
/* 802BCFCC 002B9F2C  7C 23 05 2E */	stfsx f1, r3, r0
/* 802BCFD0 002B9F30  7E 43 93 78 */	mr r3, r18
/* 802BCFD4 002B9F34  7F C4 F3 78 */	mr r4, r30
/* 802BCFD8 002B9F38  48 04 F9 ED */	bl LoadLight__9CGraphicsF9ERglLightRC6CLight
/* 802BCFDC 002B9F3C  3A 60 00 01 */	li r19, 1
/* 802BCFE0 002B9F40  48 00 00 10 */	b lbl_802BCFF0
lbl_802BCFE4:
/* 802BCFE4 002B9F44  38 84 00 04 */	addi r4, r4, 4
/* 802BCFE8 002B9F48  3A 52 00 01 */	addi r18, r18, 1
/* 802BCFEC 002B9F4C  42 00 FF 7C */	bdnz lbl_802BCF68
lbl_802BCFF0:
/* 802BCFF0 002B9F50  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 802BCFF4 002B9F54  40 82 00 7C */	bne lbl_802BD070
/* 802BCFF8 002B9F58  7F C3 F3 78 */	mr r3, r30
/* 802BCFFC 002B9F5C  48 04 92 D9 */	bl GetRadius__6CLightCFv
/* 802BD000 002B9F60  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802BD004 002B9F64  7F E3 FB 78 */	mr r3, r31
/* 802BD008 002B9F68  38 81 00 10 */	addi r4, r1, 0x10
/* 802BD00C 002B9F6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802BD010 002B9F70  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802BD014 002B9F74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802BD018 002B9F78  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802BD01C 002B9F7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802BD020 002B9F80  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802BD024 002B9F84  48 01 58 C5 */	bl AABoxSphereIntersectionRadius__13CollisionUtilFRC6CAABoxRC7CSphere
/* 802BD028 002B9F88  D0 3A 00 00 */	stfs f1, 0(r26)
/* 802BD02C 002B9F8C  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BD030 002B9F90  C0 3A 00 00 */	lfs f1, 0(r26)
/* 802BD034 002B9F94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BD038 002B9F98  4C 41 13 82 */	cror 2, 1, 2
/* 802BD03C 002B9F9C  40 82 00 34 */	bne lbl_802BD070
/* 802BD040 002B9FA0  7E C3 B3 78 */	mr r3, r22
/* 802BD044 002B9FA4  7F C4 F3 78 */	mr r4, r30
/* 802BD048 002B9FA8  48 04 F9 7D */	bl LoadLight__9CGraphicsF9ERglLightRC6CLight
/* 802BD04C 002B9FAC  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 802BD050 002B9FB0  38 60 00 01 */	li r3, 1
/* 802BD054 002B9FB4  7C 63 B0 30 */	slw r3, r3, r22
/* 802BD058 002B9FB8  3A D6 00 01 */	addi r22, r22, 1
/* 802BD05C 002B9FBC  90 19 00 00 */	stw r0, 0(r25)
/* 802BD060 002B9FC0  7E E0 1B 78 */	or r0, r23, r3
/* 802BD064 002B9FC4  54 17 06 3E */	clrlwi r23, r0, 0x18
/* 802BD068 002B9FC8  3B 39 00 04 */	addi r25, r25, 4
/* 802BD06C 002B9FCC  3B 5A 00 04 */	addi r26, r26, 4
lbl_802BD070:
/* 802BD070 002B9FD0  7F 9C DA 14 */	add r28, r28, r27
/* 802BD074 002B9FD4  3B BD 00 50 */	addi r29, r29, 0x50
/* 802BD078 002B9FD8  3A 94 00 01 */	addi r20, r20, 1
lbl_802BD07C:
/* 802BD07C 002B9FDC  80 10 03 04 */	lwz r0, 0x304(r16)
/* 802BD080 002B9FE0  7C 14 00 00 */	cmpw r20, r0
/* 802BD084 002B9FE4  40 80 00 0C */	bge lbl_802BD090
/* 802BD088 002B9FE8  2C 16 00 04 */	cmpwi r22, 4
/* 802BD08C 002B9FEC  41 80 FE A0 */	blt lbl_802BCF2C
lbl_802BD090:
/* 802BD090 002B9FF0  56 E3 06 3F */	clrlwi. r3, r23, 0x18
/* 802BD094 002B9FF4  41 82 00 20 */	beq lbl_802BD0B4
/* 802BD098 002B9FF8  80 02 C2 6C */	lwz r0, lbl_805ADF8C@sda21(r2)
/* 802BD09C 002B9FFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BD0A0 002BA000  48 04 F8 31 */	bl SetLightState__9CGraphicsFUc
/* 802BD0A4 002BA004  38 81 00 0C */	addi r4, r1, 0xc
/* 802BD0A8 002BA008  38 60 00 00 */	li r3, 0
/* 802BD0AC 002BA00C  48 04 BC B1 */	bl SetChanMatColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 802BD0B0 002BA010  48 00 00 20 */	b lbl_802BD0D0
lbl_802BD0B4:
/* 802BD0B4 002BA014  48 04 F8 C9 */	bl DisableAllLights__9CGraphicsFv
/* 802BD0B8 002BA018  38 60 00 00 */	li r3, 0
/* 802BD0BC 002BA01C  48 04 BC F1 */	bl GetChanAmbColor__3CGXFQ23CGX10EChannelId
/* 802BD0C0 002BA020  90 61 00 08 */	stw r3, 8(r1)
/* 802BD0C4 002BA024  38 81 00 08 */	addi r4, r1, 8
/* 802BD0C8 002BA028  38 60 00 00 */	li r3, 0
/* 802BD0CC 002BA02C  48 04 BC 91 */	bl SetChanMatColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
lbl_802BD0D0:
/* 802BD0D0 002BA030  BA 01 00 50 */	lmw r16, 0x50(r1)
/* 802BD0D4 002BA034  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802BD0D8 002BA038  7C 08 03 A6 */	mtlr r0
/* 802BD0DC 002BA03C  38 21 00 90 */	addi r1, r1, 0x90
/* 802BD0E0 002BA040  4E 80 00 20 */	blr

.global "DrawStaticGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
"DrawStaticGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi":
/* 802BD0E4 002BA044  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD0E8 002BA048  7C 08 02 A6 */	mflr r0
/* 802BD0EC 002BA04C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD0F0 002BA050  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD0F4 002BA054  7C DF 33 78 */	mr r31, r6
/* 802BD0F8 002BA058  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BD0FC 002BA05C  7C BE 2B 78 */	mr r30, r5
/* 802BD100 002BA060  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BD104 002BA064  7C 9D 23 78 */	mr r29, r4
/* 802BD108 002BA068  93 81 00 10 */	stw r28, 0x10(r1)
/* 802BD10C 002BA06C  7C 7C 1B 78 */	mr r28, r3
/* 802BD110 002BA070  48 00 01 15 */	bl "DrawUnsortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
/* 802BD114 002BA074  7F 83 E3 78 */	mr r3, r28
/* 802BD118 002BA078  7F A4 EB 78 */	mr r4, r29
/* 802BD11C 002BA07C  7F C5 F3 78 */	mr r5, r30
/* 802BD120 002BA080  7F E6 FB 78 */	mr r6, r31
/* 802BD124 002BA084  48 00 00 25 */	bl "DrawSortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
/* 802BD128 002BA088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD12C 002BA08C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BD130 002BA090  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BD134 002BA094  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BD138 002BA098  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802BD13C 002BA09C  7C 08 03 A6 */	mtlr r0
/* 802BD140 002BA0A0  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD144 002BA0A4  4E 80 00 20 */	blr

.global "DrawSortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
"DrawSortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi":
/* 802BD148 002BA0A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD14C 002BA0AC  7C 08 02 A6 */	mflr r0
/* 802BD150 002BA0B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD154 002BA0B4  BF 41 00 08 */	stmw r26, 8(r1)
/* 802BD158 002BA0B8  7C 9B 23 78 */	mr r27, r4
/* 802BD15C 002BA0BC  7C 7A 1B 78 */	mr r26, r3
/* 802BD160 002BA0C0  38 80 00 01 */	li r4, 1
/* 802BD164 002BA0C4  48 00 06 CD */	bl SetupRendererStates__13CCubeRendererFb
/* 802BD168 002BA0C8  83 DA 00 20 */	lwz r30, 0x20(r26)
/* 802BD16C 002BA0CC  3B 80 00 00 */	li r28, 0
/* 802BD170 002BA0D0  48 00 00 70 */	b lbl_802BD1E0
lbl_802BD174:
/* 802BD174 002BA0D4  2C 1B FF FF */	cmpwi r27, -1
/* 802BD178 002BA0D8  38 7E 00 08 */	addi r3, r30, 8
/* 802BD17C 002BA0DC  41 82 00 10 */	beq lbl_802BD18C
/* 802BD180 002BA0E0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802BD184 002BA0E4  7C 1B 00 00 */	cmpw r27, r0
/* 802BD188 002BA0E8  40 82 00 54 */	bne lbl_802BD1DC
lbl_802BD18C:
/* 802BD18C 002BA0EC  80 03 00 04 */	lwz r0, 4(r3)
/* 802BD190 002BA0F0  28 00 00 00 */	cmplwi r0, 0
/* 802BD194 002BA0F4  41 82 00 08 */	beq lbl_802BD19C
/* 802BD198 002BA0F8  7C 7C 1B 78 */	mr r28, r3
lbl_802BD19C:
/* 802BD19C 002BA0FC  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 802BD1A0 002BA100  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 802BD1A4 002BA104  48 00 00 20 */	b lbl_802BD1C4
lbl_802BD1A8:
/* 802BD1A8 002BA108  80 9D 00 04 */	lwz r4, 4(r29)
/* 802BD1AC 002BA10C  88 04 00 40 */	lbz r0, 0x40(r4)
/* 802BD1B0 002BA110  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802BD1B4 002BA114  41 82 00 0C */	beq lbl_802BD1C0
/* 802BD1B8 002BA118  7F 43 D3 78 */	mr r3, r26
/* 802BD1BC 002BA11C  48 00 04 F5 */	bl AddWorldSurfaces__13CCubeRendererFR10CCubeModel
lbl_802BD1C0:
/* 802BD1C0 002BA120  3B BD 00 08 */	addi r29, r29, 8
lbl_802BD1C4:
/* 802BD1C4 002BA124  80 1F 00 04 */	lwz r0, 4(r31)
/* 802BD1C8 002BA128  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802BD1CC 002BA12C  54 00 18 38 */	slwi r0, r0, 3
/* 802BD1D0 002BA130  7C 03 02 14 */	add r0, r3, r0
/* 802BD1D4 002BA134  7C 1D 00 40 */	cmplw r29, r0
/* 802BD1D8 002BA138  40 82 FF D0 */	bne lbl_802BD1A8
lbl_802BD1DC:
/* 802BD1DC 002BA13C  83 DE 00 04 */	lwz r30, 4(r30)
lbl_802BD1E0:
/* 802BD1E0 002BA140  80 1A 00 24 */	lwz r0, 0x24(r26)
/* 802BD1E4 002BA144  7C 1E 00 40 */	cmplw r30, r0
/* 802BD1E8 002BA148  40 82 FF 8C */	bne lbl_802BD174
/* 802BD1EC 002BA14C  48 00 23 B9 */	bl Sort__7BucketsFv
/* 802BD1F0 002BA150  7F 43 D3 78 */	mr r3, r26
/* 802BD1F4 002BA154  7F 84 E3 78 */	mr r4, r28
/* 802BD1F8 002BA158  48 00 03 45 */	bl "RenderBucketItems__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>"
/* 802BD1FC 002BA15C  7F 43 D3 78 */	mr r3, r26
/* 802BD200 002BA160  48 00 05 9D */	bl SetupCGraphicsStates__13CCubeRendererFv
/* 802BD204 002BA164  7F 43 D3 78 */	mr r3, r26
/* 802BD208 002BA168  48 00 04 A5 */	bl DrawRenderBucketsDebug__13CCubeRendererFv
/* 802BD20C 002BA16C  48 00 21 A1 */	bl Clear__7BucketsFv
/* 802BD210 002BA170  BB 41 00 08 */	lmw r26, 8(r1)
/* 802BD214 002BA174  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD218 002BA178  7C 08 03 A6 */	mtlr r0
/* 802BD21C 002BA17C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD220 002BA180  4E 80 00 20 */	blr

.global "DrawUnsortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi"
"DrawUnsortedGeometry__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>iUiUi":
/* 802BD224 002BA184  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BD228 002BA188  7C 08 02 A6 */	mflr r0
/* 802BD22C 002BA18C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BD230 002BA190  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 802BD234 002BA194  7C 96 23 78 */	mr r22, r4
/* 802BD238 002BA198  7C 75 1B 78 */	mr r21, r3
/* 802BD23C 002BA19C  7C B7 2B 78 */	mr r23, r5
/* 802BD240 002BA1A0  7C D8 33 78 */	mr r24, r6
/* 802BD244 002BA1A4  3B 60 00 00 */	li r27, 0
/* 802BD248 002BA1A8  38 80 00 01 */	li r4, 1
/* 802BD24C 002BA1AC  48 00 05 E5 */	bl SetupRendererStates__13CCubeRendererFb
/* 802BD250 002BA1B0  83 B5 00 20 */	lwz r29, 0x20(r21)
/* 802BD254 002BA1B4  48 00 01 84 */	b lbl_802BD3D8
lbl_802BD258:
/* 802BD258 002BA1B8  2C 16 FF FF */	cmpwi r22, -1
/* 802BD25C 002BA1BC  38 9D 00 08 */	addi r4, r29, 8
/* 802BD260 002BA1C0  41 82 00 10 */	beq lbl_802BD270
/* 802BD264 002BA1C4  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802BD268 002BA1C8  7C 16 00 00 */	cmpw r22, r0
/* 802BD26C 002BA1CC  40 82 01 68 */	bne lbl_802BD3D4
lbl_802BD270:
/* 802BD270 002BA1D0  80 04 00 04 */	lwz r0, 4(r4)
/* 802BD274 002BA1D4  28 00 00 00 */	cmplwi r0, 0
/* 802BD278 002BA1D8  41 82 00 08 */	beq lbl_802BD280
/* 802BD27C 002BA1DC  7C 9B 23 78 */	mr r27, r4
lbl_802BD280:
/* 802BD280 002BA1E0  88 15 00 DC */	lbz r0, 0xdc(r21)
/* 802BD284 002BA1E4  83 E4 00 14 */	lwz r31, 0x14(r4)
/* 802BD288 002BA1E8  28 00 00 00 */	cmplwi r0, 0
/* 802BD28C 002BA1EC  41 82 00 0C */	beq lbl_802BD298
/* 802BD290 002BA1F0  3B 55 00 C8 */	addi r26, r21, 0xc8
/* 802BD294 002BA1F4  48 00 00 08 */	b lbl_802BD29C
lbl_802BD298:
/* 802BD298 002BA1F8  3B 40 00 00 */	li r26, 0
lbl_802BD29C:
/* 802BD29C 002BA1FC  80 75 00 E0 */	lwz r3, 0xe0(r21)
/* 802BD2A0 002BA200  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802BD2A4 002BA204  7C 03 00 00 */	cmpw r3, r0
/* 802BD2A8 002BA208  41 82 00 08 */	beq lbl_802BD2B0
/* 802BD2AC 002BA20C  3B 40 00 00 */	li r26, 0
lbl_802BD2B0:
/* 802BD2B0 002BA210  83 9F 00 0C */	lwz r28, 0xc(r31)
/* 802BD2B4 002BA214  3B 20 00 00 */	li r25, 0
/* 802BD2B8 002BA218  48 00 01 04 */	b lbl_802BD3BC
lbl_802BD2BC:
/* 802BD2BC 002BA21C  28 1A 00 00 */	cmplwi r26, 0
/* 802BD2C0 002BA220  83 DC 00 04 */	lwz r30, 4(r28)
/* 802BD2C4 002BA224  41 82 00 54 */	beq lbl_802BD318
/* 802BD2C8 002BA228  7F 43 D3 78 */	mr r3, r26
/* 802BD2CC 002BA22C  7F 24 CB 78 */	mr r4, r25
/* 802BD2D0 002BA230  48 05 90 09 */	bl GetVisible__10CPVSVisSetCFi
/* 802BD2D4 002BA234  80 95 00 C4 */	lwz r4, 0xc4(r21)
/* 802BD2D8 002BA238  7C 03 00 D0 */	neg r0, r3
/* 802BD2DC 002BA23C  7C 00 1B 78 */	or r0, r0, r3
/* 802BD2E0 002BA240  2C 04 00 01 */	cmpwi r4, 1
/* 802BD2E4 002BA244  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802BD2E8 002BA248  40 82 00 0C */	bne lbl_802BD2F4
/* 802BD2EC 002BA24C  28 00 00 00 */	cmplwi r0, 0
/* 802BD2F0 002BA250  41 82 00 14 */	beq lbl_802BD304
lbl_802BD2F4:
/* 802BD2F4 002BA254  2C 04 00 02 */	cmpwi r4, 2
/* 802BD2F8 002BA258  40 82 00 20 */	bne lbl_802BD318
/* 802BD2FC 002BA25C  28 00 00 00 */	cmplwi r0, 0
/* 802BD300 002BA260  41 82 00 18 */	beq lbl_802BD318
lbl_802BD304:
/* 802BD304 002BA264  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 802BD308 002BA268  38 60 00 00 */	li r3, 0
/* 802BD30C 002BA26C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BD310 002BA270  98 1E 00 40 */	stb r0, 0x40(r30)
/* 802BD314 002BA274  48 00 00 A0 */	b lbl_802BD3B4
lbl_802BD318:
/* 802BD318 002BA278  88 1E 00 41 */	lbz r0, 0x41(r30)
/* 802BD31C 002BA27C  7E E0 00 38 */	and r0, r23, r0
/* 802BD320 002BA280  7C 18 00 40 */	cmplw r24, r0
/* 802BD324 002BA284  41 82 00 18 */	beq lbl_802BD33C
/* 802BD328 002BA288  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 802BD32C 002BA28C  38 60 00 00 */	li r3, 0
/* 802BD330 002BA290  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BD334 002BA294  98 1E 00 40 */	stb r0, 0x40(r30)
/* 802BD338 002BA298  48 00 00 7C */	b lbl_802BD3B4
lbl_802BD33C:
/* 802BD33C 002BA29C  38 75 00 44 */	addi r3, r21, 0x44
/* 802BD340 002BA2A0  38 9E 00 20 */	addi r4, r30, 0x20
/* 802BD344 002BA2A4  48 08 7E 8D */	bl BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox
/* 802BD348 002BA2A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802BD34C 002BA2AC  40 82 00 18 */	bne lbl_802BD364
/* 802BD350 002BA2B0  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 802BD354 002BA2B4  38 60 00 00 */	li r3, 0
/* 802BD358 002BA2B8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BD35C 002BA2BC  98 1E 00 40 */	stb r0, 0x40(r30)
/* 802BD360 002BA2C0  48 00 00 54 */	b lbl_802BD3B4
lbl_802BD364:
/* 802BD364 002BA2C4  88 15 03 18 */	lbz r0, 0x318(r21)
/* 802BD368 002BA2C8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802BD36C 002BA2CC  41 82 00 28 */	beq lbl_802BD394
/* 802BD370 002BA2D0  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 802BD374 002BA2D4  38 60 00 00 */	li r3, 0
/* 802BD378 002BA2D8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BD37C 002BA2DC  7E A3 AB 78 */	mr r3, r21
/* 802BD380 002BA2E0  98 1E 00 40 */	stb r0, 0x40(r30)
/* 802BD384 002BA2E4  7F 64 DB 78 */	mr r4, r27
/* 802BD388 002BA2E8  7F C5 F3 78 */	mr r5, r30
/* 802BD38C 002BA2EC  48 00 00 75 */	bl "HandleUnsortedModelWireframe__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>R10CCubeModel"
/* 802BD390 002BA2F0  48 00 00 24 */	b lbl_802BD3B4
lbl_802BD394:
/* 802BD394 002BA2F4  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 802BD398 002BA2F8  38 60 00 01 */	li r3, 1
/* 802BD39C 002BA2FC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BD3A0 002BA300  7E A3 AB 78 */	mr r3, r21
/* 802BD3A4 002BA304  98 1E 00 40 */	stb r0, 0x40(r30)
/* 802BD3A8 002BA308  7F 64 DB 78 */	mr r4, r27
/* 802BD3AC 002BA30C  7F C5 F3 78 */	mr r5, r30
/* 802BD3B0 002BA310  48 00 00 F9 */	bl "HandleUnsortedModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>R10CCubeModel"
lbl_802BD3B4:
/* 802BD3B4 002BA314  3B 9C 00 08 */	addi r28, r28, 8
/* 802BD3B8 002BA318  3B 39 00 01 */	addi r25, r25, 1
lbl_802BD3BC:
/* 802BD3BC 002BA31C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802BD3C0 002BA320  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802BD3C4 002BA324  54 00 18 38 */	slwi r0, r0, 3
/* 802BD3C8 002BA328  7C 03 02 14 */	add r0, r3, r0
/* 802BD3CC 002BA32C  7C 1C 00 40 */	cmplw r28, r0
/* 802BD3D0 002BA330  40 82 FE EC */	bne lbl_802BD2BC
lbl_802BD3D4:
/* 802BD3D4 002BA334  83 BD 00 04 */	lwz r29, 4(r29)
lbl_802BD3D8:
/* 802BD3D8 002BA338  80 15 00 24 */	lwz r0, 0x24(r21)
/* 802BD3DC 002BA33C  7C 1D 00 40 */	cmplw r29, r0
/* 802BD3E0 002BA340  40 82 FE 78 */	bne lbl_802BD258
/* 802BD3E4 002BA344  7E A3 AB 78 */	mr r3, r21
/* 802BD3E8 002BA348  48 00 03 B5 */	bl SetupCGraphicsStates__13CCubeRendererFv
/* 802BD3EC 002BA34C  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 802BD3F0 002BA350  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BD3F4 002BA354  7C 08 03 A6 */	mtlr r0
/* 802BD3F8 002BA358  38 21 00 40 */	addi r1, r1, 0x40
/* 802BD3FC 002BA35C  4E 80 00 20 */	blr

.global "HandleUnsortedModelWireframe__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>R10CCubeModel"
"HandleUnsortedModelWireframe__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>R10CCubeModel":
/* 802BD400 002BA360  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BD404 002BA364  7C 08 02 A6 */	mflr r0
/* 802BD408 002BA368  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BD40C 002BA36C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802BD410 002BA370  7C BD 2B 78 */	mr r29, r5
/* 802BD414 002BA374  7C 7B 1B 78 */	mr r27, r3
/* 802BD418 002BA378  7C 9C 23 78 */	mr r28, r4
/* 802BD41C 002BA37C  7F A3 EB 78 */	mr r3, r29
/* 802BD420 002BA380  83 E5 00 38 */	lwz r31, 0x38(r5)
/* 802BD424 002BA384  83 C5 00 3C */	lwz r30, 0x3c(r5)
/* 802BD428 002BA388  48 04 A1 F9 */	bl SetArraysCurrent__10CCubeModelCFv
/* 802BD42C 002BA38C  7F 63 DB 78 */	mr r3, r27
/* 802BD430 002BA390  7F 84 E3 78 */	mr r4, r28
/* 802BD434 002BA394  7F A5 EB 78 */	mr r5, r29
/* 802BD438 002BA398  4B FF FA 55 */	bl "ActivateLightsForModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>RC6CAABox"
/* 802BD43C 002BA39C  93 E1 00 08 */	stw r31, 8(r1)
/* 802BD440 002BA3A0  48 00 00 1C */	b lbl_802BD45C
lbl_802BD444:
/* 802BD444 002BA3A4  7F A3 EB 78 */	mr r3, r29
/* 802BD448 002BA3A8  38 81 00 08 */	addi r4, r1, 8
/* 802BD44C 002BA3AC  48 04 9A 8D */	bl DrawSurfaceWireframe__10CCubeModelCFRC12CCubeSurface
/* 802BD450 002BA3B0  80 61 00 08 */	lwz r3, 8(r1)
/* 802BD454 002BA3B4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802BD458 002BA3B8  90 01 00 08 */	stw r0, 8(r1)
lbl_802BD45C:
/* 802BD45C 002BA3BC  80 01 00 08 */	lwz r0, 8(r1)
/* 802BD460 002BA3C0  28 00 00 00 */	cmplwi r0, 0
/* 802BD464 002BA3C4  40 82 FF E0 */	bne lbl_802BD444
/* 802BD468 002BA3C8  93 C1 00 08 */	stw r30, 8(r1)
/* 802BD46C 002BA3CC  48 00 00 1C */	b lbl_802BD488
lbl_802BD470:
/* 802BD470 002BA3D0  7F A3 EB 78 */	mr r3, r29
/* 802BD474 002BA3D4  38 81 00 08 */	addi r4, r1, 8
/* 802BD478 002BA3D8  48 04 9A 61 */	bl DrawSurfaceWireframe__10CCubeModelCFRC12CCubeSurface
/* 802BD47C 002BA3DC  80 61 00 08 */	lwz r3, 8(r1)
/* 802BD480 002BA3E0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802BD484 002BA3E4  90 01 00 08 */	stw r0, 8(r1)
lbl_802BD488:
/* 802BD488 002BA3E8  80 01 00 08 */	lwz r0, 8(r1)
/* 802BD48C 002BA3EC  28 00 00 00 */	cmplwi r0, 0
/* 802BD490 002BA3F0  40 82 FF E0 */	bne lbl_802BD470
/* 802BD494 002BA3F4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802BD498 002BA3F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BD49C 002BA3FC  7C 08 03 A6 */	mtlr r0
/* 802BD4A0 002BA400  38 21 00 30 */	addi r1, r1, 0x30
/* 802BD4A4 002BA404  4E 80 00 20 */	blr

.global "HandleUnsortedModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>R10CCubeModel"
"HandleUnsortedModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>R10CCubeModel":
/* 802BD4A8 002BA408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD4AC 002BA40C  7C 08 02 A6 */	mflr r0
/* 802BD4B0 002BA410  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD4B4 002BA414  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD4B8 002BA418  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BD4BC 002BA41C  7C BE 2B 78 */	mr r30, r5
/* 802BD4C0 002BA420  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BD4C4 002BA424  7C 9D 23 78 */	mr r29, r4
/* 802BD4C8 002BA428  93 81 00 10 */	stw r28, 0x10(r1)
/* 802BD4CC 002BA42C  7C 7C 1B 78 */	mr r28, r3
/* 802BD4D0 002BA430  83 E5 00 38 */	lwz r31, 0x38(r5)
/* 802BD4D4 002BA434  28 1F 00 00 */	cmplwi r31, 0
/* 802BD4D8 002BA438  41 82 00 44 */	beq lbl_802BD51C
/* 802BD4DC 002BA43C  7F C3 F3 78 */	mr r3, r30
/* 802BD4E0 002BA440  48 04 A1 41 */	bl SetArraysCurrent__10CCubeModelCFv
/* 802BD4E4 002BA444  7F 83 E3 78 */	mr r3, r28
/* 802BD4E8 002BA448  7F A4 EB 78 */	mr r4, r29
/* 802BD4EC 002BA44C  7F C5 F3 78 */	mr r5, r30
/* 802BD4F0 002BA450  4B FF F9 9D */	bl "ActivateLightsForModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>RC6CAABox"
/* 802BD4F4 002BA454  93 E1 00 08 */	stw r31, 8(r1)
lbl_802BD4F8:
/* 802BD4F8 002BA458  7F C3 F3 78 */	mr r3, r30
/* 802BD4FC 002BA45C  38 81 00 08 */	addi r4, r1, 8
/* 802BD500 002BA460  38 AD A5 F4 */	addi r5, r13, skNormalFlag@sda21
/* 802BD504 002BA464  48 04 9F 41 */	bl DrawSurface__10CCubeModelCFRC12CCubeSurfaceRC11CModelFlags
/* 802BD508 002BA468  80 61 00 08 */	lwz r3, 8(r1)
/* 802BD50C 002BA46C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802BD510 002BA470  28 00 00 00 */	cmplwi r0, 0
/* 802BD514 002BA474  90 01 00 08 */	stw r0, 8(r1)
/* 802BD518 002BA478  40 82 FF E0 */	bne lbl_802BD4F8
lbl_802BD51C:
/* 802BD51C 002BA47C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD520 002BA480  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BD524 002BA484  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BD528 002BA488  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BD52C 002BA48C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802BD530 002BA490  7C 08 03 A6 */	mtlr r0
/* 802BD534 002BA494  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD538 002BA498  4E 80 00 20 */	blr

.global "RenderBucketItems__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>"
"RenderBucketItems__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>":
/* 802BD53C 002BA49C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BD540 002BA4A0  7C 08 02 A6 */	mflr r0
/* 802BD544 002BA4A4  3C A0 80 47 */	lis r5, sBucketIndex__7Buckets@ha
/* 802BD548 002BA4A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BD54C 002BA4AC  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 802BD550 002BA4B0  3B E5 E2 0C */	addi r31, r5, sBucketIndex__7Buckets@l
/* 802BD554 002BA4B4  7C 9B 23 78 */	mr r27, r4
/* 802BD558 002BA4B8  7C 7A 1B 78 */	mr r26, r3
/* 802BD55C 002BA4BC  38 80 FF FF */	li r4, -1
/* 802BD560 002BA4C0  3B 9F 00 04 */	addi r28, r31, 4
/* 802BD564 002BA4C4  3B A0 00 00 */	li r29, 0
/* 802BD568 002BA4C8  83 CD A6 10 */	lwz r30, sBuckets__7Buckets@sda21(r13)
/* 802BD56C 002BA4CC  48 00 01 14 */	b lbl_802BD680
lbl_802BD570:
/* 802BD570 002BA4D0  A0 1C 00 00 */	lhz r0, 0(r28)
/* 802BD574 002BA4D4  1C 00 02 04 */	mulli r0, r0, 0x204
/* 802BD578 002BA4D8  7F 3E 02 14 */	add r25, r30, r0
/* 802BD57C 002BA4DC  3B 19 00 08 */	addi r24, r25, 8
/* 802BD580 002BA4E0  3B 39 00 04 */	addi r25, r25, 4
/* 802BD584 002BA4E4  48 00 00 E0 */	b lbl_802BD664
lbl_802BD588:
/* 802BD588 002BA4E8  82 F8 00 00 */	lwz r23, 0(r24)
/* 802BD58C 002BA4EC  A2 D7 00 00 */	lhz r22, 0(r23)
/* 802BD590 002BA4F0  2C 16 00 01 */	cmpwi r22, 1
/* 802BD594 002BA4F4  41 82 00 14 */	beq lbl_802BD5A8
/* 802BD598 002BA4F8  40 80 00 94 */	bge lbl_802BD62C
/* 802BD59C 002BA4FC  2C 16 00 00 */	cmpwi r22, 0
/* 802BD5A0 002BA500  40 80 00 30 */	bge lbl_802BD5D0
/* 802BD5A4 002BA504  48 00 00 88 */	b lbl_802BD62C
lbl_802BD5A8:
/* 802BD5A8 002BA508  7C 04 B0 00 */	cmpw r4, r22
/* 802BD5AC 002BA50C  41 82 00 0C */	beq lbl_802BD5B8
/* 802BD5B0 002BA510  7F 43 D3 78 */	mr r3, r26
/* 802BD5B4 002BA514  48 00 01 E9 */	bl SetupCGraphicsStates__13CCubeRendererFv
lbl_802BD5B8:
/* 802BD5B8 002BA518  80 77 00 04 */	lwz r3, 4(r23)
/* 802BD5BC 002BA51C  81 83 00 00 */	lwz r12, 0(r3)
/* 802BD5C0 002BA520  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BD5C4 002BA524  7D 89 03 A6 */	mtctr r12
/* 802BD5C8 002BA528  4E 80 04 21 */	bctrl
/* 802BD5CC 002BA52C  48 00 00 90 */	b lbl_802BD65C
lbl_802BD5D0:
/* 802BD5D0 002BA530  7C 04 B0 00 */	cmpw r4, r22
/* 802BD5D4 002BA534  41 82 00 14 */	beq lbl_802BD5E8
/* 802BD5D8 002BA538  7F 43 D3 78 */	mr r3, r26
/* 802BD5DC 002BA53C  38 80 00 00 */	li r4, 0
/* 802BD5E0 002BA540  48 00 02 51 */	bl SetupRendererStates__13CCubeRendererFb
/* 802BD5E4 002BA544  3B A0 00 00 */	li r29, 0
lbl_802BD5E8:
/* 802BD5E8 002BA548  80 77 00 04 */	lwz r3, 4(r23)
/* 802BD5EC 002BA54C  90 61 00 08 */	stw r3, 8(r1)
/* 802BD5F0 002BA550  82 E3 00 14 */	lwz r23, 0x14(r3)
/* 802BD5F4 002BA554  7C 17 E8 40 */	cmplw r23, r29
/* 802BD5F8 002BA558  41 82 00 20 */	beq lbl_802BD618
/* 802BD5FC 002BA55C  7E E3 BB 78 */	mr r3, r23
/* 802BD600 002BA560  48 04 A0 21 */	bl SetArraysCurrent__10CCubeModelCFv
/* 802BD604 002BA564  7E FD BB 78 */	mr r29, r23
/* 802BD608 002BA568  7F 43 D3 78 */	mr r3, r26
/* 802BD60C 002BA56C  7F 64 DB 78 */	mr r4, r27
/* 802BD610 002BA570  7E E5 BB 78 */	mr r5, r23
/* 802BD614 002BA574  4B FF F8 79 */	bl "ActivateLightsForModel__13CCubeRendererFRCQ24rstl42vector<6CLight,Q24rstl17rmemory_allocator>RC6CAABox"
lbl_802BD618:
/* 802BD618 002BA578  7E E3 BB 78 */	mr r3, r23
/* 802BD61C 002BA57C  38 81 00 08 */	addi r4, r1, 8
/* 802BD620 002BA580  38 AD A5 FC */	addi r5, r13, skNormalFlagNoUpdate@sda21
/* 802BD624 002BA584  48 04 9E 21 */	bl DrawSurface__10CCubeModelCFRC12CCubeSurfaceRC11CModelFlags
/* 802BD628 002BA588  48 00 00 34 */	b lbl_802BD65C
lbl_802BD62C:
/* 802BD62C 002BA58C  7C 04 B0 00 */	cmpw r4, r22
/* 802BD630 002BA590  41 82 00 08 */	beq lbl_802BD638
/* 802BD634 002BA594  48 08 96 D1 */	bl EnsureTevsDirect__13CCubeMaterialFv
lbl_802BD638:
/* 802BD638 002BA598  81 9A 00 A8 */	lwz r12, 0xa8(r26)
/* 802BD63C 002BA59C  28 0C 00 00 */	cmplwi r12, 0
/* 802BD640 002BA5A0  41 82 00 1C */	beq lbl_802BD65C
/* 802BD644 002BA5A4  A0 97 00 00 */	lhz r4, 0(r23)
/* 802BD648 002BA5A8  80 77 00 04 */	lwz r3, 4(r23)
/* 802BD64C 002BA5AC  38 A4 FF FE */	addi r5, r4, -2
/* 802BD650 002BA5B0  80 9A 00 AC */	lwz r4, 0xac(r26)
/* 802BD654 002BA5B4  7D 89 03 A6 */	mtctr r12
/* 802BD658 002BA5B8  4E 80 04 21 */	bctrl
lbl_802BD65C:
/* 802BD65C 002BA5BC  7E C4 B3 78 */	mr r4, r22
/* 802BD660 002BA5C0  3B 18 00 04 */	addi r24, r24, 4
lbl_802BD664:
/* 802BD664 002BA5C4  80 19 00 00 */	lwz r0, 0(r25)
/* 802BD668 002BA5C8  54 00 10 3A */	slwi r0, r0, 2
/* 802BD66C 002BA5CC  7C 79 02 14 */	add r3, r25, r0
/* 802BD670 002BA5D0  38 03 00 04 */	addi r0, r3, 4
/* 802BD674 002BA5D4  7C 18 00 40 */	cmplw r24, r0
/* 802BD678 002BA5D8  40 82 FF 10 */	bne lbl_802BD588
/* 802BD67C 002BA5DC  3B 9C 00 02 */	addi r28, r28, 2
lbl_802BD680:
/* 802BD680 002BA5E0  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BD684 002BA5E4  54 00 08 3C */	slwi r0, r0, 1
/* 802BD688 002BA5E8  7C 7F 02 14 */	add r3, r31, r0
/* 802BD68C 002BA5EC  38 03 00 04 */	addi r0, r3, 4
/* 802BD690 002BA5F0  7C 1C 00 40 */	cmplw r28, r0
/* 802BD694 002BA5F4  40 82 FE DC */	bne lbl_802BD570
/* 802BD698 002BA5F8  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 802BD69C 002BA5FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BD6A0 002BA600  7C 08 03 A6 */	mtlr r0
/* 802BD6A4 002BA604  38 21 00 40 */	addi r1, r1, 0x40
/* 802BD6A8 002BA608  4E 80 00 20 */	blr

.global DrawRenderBucketsDebug__13CCubeRendererFv
DrawRenderBucketsDebug__13CCubeRendererFv:
/* 802BD6AC 002BA60C  4E 80 00 20 */	blr

.global AddWorldSurfaces__13CCubeRendererFR10CCubeModel
AddWorldSurfaces__13CCubeRendererFR10CCubeModel:
/* 802BD6B0 002BA610  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802BD6B4 002BA614  7C 08 02 A6 */	mflr r0
/* 802BD6B8 002BA618  90 01 00 74 */	stw r0, 0x74(r1)
/* 802BD6BC 002BA61C  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 802BD6C0 002BA620  7C 9B 23 78 */	mr r27, r4
/* 802BD6C4 002BA624  3C 80 00 05 */	lis r4, 0x00050004@ha
/* 802BD6C8 002BA628  3B A3 00 B0 */	addi r29, r3, 0xb0
/* 802BD6CC 002BA62C  3B E4 00 04 */	addi r31, r4, 0x00050004@l
/* 802BD6D0 002BA630  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 802BD6D4 002BA634  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BD6D8 002BA638  48 00 00 A4 */	b lbl_802BD77C
lbl_802BD6DC:
/* 802BD6DC 002BA63C  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 802BD6E0 002BA640  7F 64 DB 78 */	mr r4, r27
/* 802BD6E4 002BA644  38 61 00 08 */	addi r3, r1, 8
/* 802BD6E8 002BA648  48 04 9E 25 */	bl GetMaterialByIndex__10CCubeModelCFi
/* 802BD6EC 002BA64C  38 61 00 08 */	addi r3, r1, 8
/* 802BD6F0 002BA650  48 08 80 5D */	bl GetCompressedBlend__13CCubeMaterialCFv
/* 802BD6F4 002BA654  7C 7E 1B 78 */	mr r30, r3
/* 802BD6F8 002BA658  38 61 00 1C */	addi r3, r1, 0x1c
/* 802BD6FC 002BA65C  38 81 00 0C */	addi r4, r1, 0xc
/* 802BD700 002BA660  48 08 AB B1 */	bl GetBounds__12CCubeSurfaceCFv
/* 802BD704 002BA664  C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 802BD708 002BA668  7C 1E F8 50 */	subf r0, r30, r31
/* 802BD70C 002BA66C  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 802BD710 002BA670  7C 00 00 34 */	cntlzw r0, r0
/* 802BD714 002BA674  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 802BD718 002BA678  7F A5 EB 78 */	mr r5, r29
/* 802BD71C 002BA67C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 802BD720 002BA680  54 1E D9 7E */	srwi r30, r0, 5
/* 802BD724 002BA684  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802BD728 002BA688  38 61 00 10 */	addi r3, r1, 0x10
/* 802BD72C 002BA68C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802BD730 002BA690  38 81 00 34 */	addi r4, r1, 0x34
/* 802BD734 002BA694  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 802BD738 002BA698  83 81 00 0C */	lwz r28, 0xc(r1)
/* 802BD73C 002BA69C  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 802BD740 002BA6A0  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 802BD744 002BA6A4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 802BD748 002BA6A8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 802BD74C 002BA6AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802BD750 002BA6B0  48 07 9A 8D */	bl ClosestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802BD754 002BA6B4  7F 86 E3 78 */	mr r6, r28
/* 802BD758 002BA6B8  7F A7 EB 78 */	mr r7, r29
/* 802BD75C 002BA6BC  38 61 00 10 */	addi r3, r1, 0x10
/* 802BD760 002BA6C0  38 81 00 34 */	addi r4, r1, 0x34
/* 802BD764 002BA6C4  57 C8 04 3E */	clrlwi r8, r30, 0x10
/* 802BD768 002BA6C8  38 A0 00 00 */	li r5, 0
/* 802BD76C 002BA6CC  48 00 25 AD */	bl Insert__7BucketsFRC9CVector3fRC6CAABox13EDrawableTypePCvRC6CPlaneUs
/* 802BD770 002BA6D0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802BD774 002BA6D4  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802BD778 002BA6D8  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802BD77C:
/* 802BD77C 002BA6DC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802BD780 002BA6E0  28 03 00 00 */	cmplwi r3, 0
/* 802BD784 002BA6E4  40 82 FF 58 */	bne lbl_802BD6DC
/* 802BD788 002BA6E8  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 802BD78C 002BA6EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802BD790 002BA6F0  7C 08 03 A6 */	mtlr r0
/* 802BD794 002BA6F4  38 21 00 70 */	addi r1, r1, 0x70
/* 802BD798 002BA6F8  4E 80 00 20 */	blr

.global SetupCGraphicsStates__13CCubeRendererFv
SetupCGraphicsStates__13CCubeRendererFv:
/* 802BD79C 002BA6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD7A0 002BA700  7C 08 02 A6 */	mflr r0
/* 802BD7A4 002BA704  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD7A8 002BA708  80 02 C2 68 */	lwz r0, lbl_805ADF88@sda21(r2)
/* 802BD7AC 002BA70C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BD7B0 002BA710  48 04 F1 CD */	bl DisableAllLights__9CGraphicsFv
/* 802BD7B4 002BA714  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BD7B8 002BA718  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BD7BC 002BA71C  48 04 EE 25 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BD7C0 002BA720  48 04 B6 E9 */	bl ResetStates__13CTevCombinersFv
/* 802BD7C4 002BA724  C0 22 C3 08 */	lfs f1, lbl_805AE028@sda21(r2)
/* 802BD7C8 002BA728  38 61 00 08 */	addi r3, r1, 8
/* 802BD7CC 002BA72C  C0 82 C2 70 */	lfs f4, lbl_805ADF90@sda21(r2)
/* 802BD7D0 002BA730  FC 40 08 90 */	fmr f2, f1
/* 802BD7D4 002BA734  FC 60 08 90 */	fmr f3, f1
/* 802BD7D8 002BA738  48 0A 5C 15 */	bl __ct__6CColorFffff
/* 802BD7DC 002BA73C  48 04 E8 41 */	bl SetAmbientColor__9CGraphicsFRC6CColor
/* 802BD7E0 002BA740  38 81 00 0C */	addi r4, r1, 0xc
/* 802BD7E4 002BA744  38 60 00 00 */	li r3, 0
/* 802BD7E8 002BA748  48 04 B5 75 */	bl SetChanMatColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 802BD7EC 002BA74C  38 60 00 01 */	li r3, 1
/* 802BD7F0 002BA750  38 80 00 03 */	li r4, 3
/* 802BD7F4 002BA754  38 A0 00 01 */	li r5, 1
/* 802BD7F8 002BA758  48 04 E2 9D */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 802BD7FC 002BA75C  38 60 00 01 */	li r3, 1
/* 802BD800 002BA760  38 80 00 00 */	li r4, 0
/* 802BD804 002BA764  38 A0 00 00 */	li r5, 0
/* 802BD808 002BA768  38 C0 00 00 */	li r6, 0
/* 802BD80C 002BA76C  38 E0 00 00 */	li r7, 0
/* 802BD810 002BA770  39 00 00 00 */	li r8, 0
/* 802BD814 002BA774  39 20 00 02 */	li r9, 2
/* 802BD818 002BA778  48 04 B4 B5 */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 802BD81C 002BA77C  48 08 94 E9 */	bl EnsureTevsDirect__13CCubeMaterialFv
/* 802BD820 002BA780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD824 002BA784  7C 08 03 A6 */	mtlr r0
/* 802BD828 002BA788  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD82C 002BA78C  4E 80 00 20 */	blr

.global SetupRendererStates__13CCubeRendererFb
SetupRendererStates__13CCubeRendererFb:
/* 802BD830 002BA790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD834 002BA794  7C 08 02 A6 */	mflr r0
/* 802BD838 002BA798  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD83C 002BA79C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BD840 002BA7A0  7C 9F 23 78 */	mr r31, r4
/* 802BD844 002BA7A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BD848 002BA7A8  7C 7E 1B 78 */	mr r30, r3
/* 802BD84C 002BA7AC  48 04 F1 31 */	bl DisableAllLights__9CGraphicsFv
/* 802BD850 002BA7B0  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BD854 002BA7B4  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BD858 002BA7B8  48 04 ED 89 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BD85C 002BA7BC  38 00 00 00 */	li r0, 0
/* 802BD860 002BA7C0  38 61 00 0C */	addi r3, r1, 0xc
/* 802BD864 002BA7C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BD868 002BA7C8  48 04 E7 B5 */	bl SetAmbientColor__9CGraphicsFRC6CColor
/* 802BD86C 002BA7CC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 802BD870 002BA7D0  38 60 00 01 */	li r3, 1
/* 802BD874 002BA7D4  38 80 00 03 */	li r4, 3
/* 802BD878 002BA7D8  48 04 E2 1D */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 802BD87C 002BA7DC  48 08 80 91 */	bl ResetCachedMaterials__13CCubeMaterialFv
/* 802BD880 002BA7E0  80 1E 02 FC */	lwz r0, 0x2fc(r30)
/* 802BD884 002BA7E4  38 81 00 08 */	addi r4, r1, 8
/* 802BD888 002BA7E8  38 60 00 02 */	li r3, 2
/* 802BD88C 002BA7EC  90 01 00 08 */	stw r0, 8(r1)
/* 802BD890 002BA7F0  48 0B DD 6D */	bl GXSetTevColor
/* 802BD894 002BA7F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD898 002BA7F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BD89C 002BA7FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BD8A0 002BA800  7C 08 03 A6 */	mtlr r0
/* 802BD8A4 002BA804  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD8A8 002BA808  4E 80 00 20 */	blr

.global AddDrawable__13CCubeRendererFPCvRC9CVector3fRC6CAABoxiQ29IRenderer16EDrawableSorting
AddDrawable__13CCubeRendererFPCvRC9CVector3fRC6CAABoxiQ29IRenderer16EDrawableSorting:
/* 802BD8AC 002BA80C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD8B0 002BA810  7C 08 02 A6 */	mflr r0
/* 802BD8B4 002BA814  2C 08 00 01 */	cmpwi r8, 1
/* 802BD8B8 002BA818  7C 68 1B 78 */	mr r8, r3
/* 802BD8BC 002BA81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD8C0 002BA820  7C 80 23 78 */	mr r0, r4
/* 802BD8C4 002BA824  40 82 00 20 */	bne lbl_802BD8E4
/* 802BD8C8 002BA828  81 88 00 A8 */	lwz r12, 0xa8(r8)
/* 802BD8CC 002BA82C  7C 03 03 78 */	mr r3, r0
/* 802BD8D0 002BA830  7C E5 3B 78 */	mr r5, r7
/* 802BD8D4 002BA834  80 88 00 AC */	lwz r4, 0xac(r8)
/* 802BD8D8 002BA838  7D 89 03 A6 */	mtctr r12
/* 802BD8DC 002BA83C  4E 80 04 21 */	bctrl
/* 802BD8E0 002BA840  48 00 00 20 */	b lbl_802BD900
lbl_802BD8E4:
/* 802BD8E4 002BA844  7C A3 2B 78 */	mr r3, r5
/* 802BD8E8 002BA848  7C C4 33 78 */	mr r4, r6
/* 802BD8EC 002BA84C  7C 06 03 78 */	mr r6, r0
/* 802BD8F0 002BA850  38 A7 00 02 */	addi r5, r7, 2
/* 802BD8F4 002BA854  38 E8 00 B0 */	addi r7, r8, 0xb0
/* 802BD8F8 002BA858  39 00 00 00 */	li r8, 0
/* 802BD8FC 002BA85C  48 00 24 1D */	bl Insert__7BucketsFRC9CVector3fRC6CAABox13EDrawableTypePCvRC6CPlaneUs
lbl_802BD900:
/* 802BD900 002BA860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD904 002BA864  7C 08 03 A6 */	mtlr r0
/* 802BD908 002BA868  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD90C 002BA86C  4E 80 00 20 */	blr

.global AddPlaneObject__13CCubeRendererFPCvRC6CAABoxRC6CPlanei
AddPlaneObject__13CCubeRendererFPCvRC6CAABoxRC6CPlanei:
/* 802BD910 002BA870  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802BD914 002BA874  7C 08 02 A6 */	mflr r0
/* 802BD918 002BA878  90 01 00 64 */	stw r0, 0x64(r1)
/* 802BD91C 002BA87C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802BD920 002BA880  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 802BD924 002BA884  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 802BD928 002BA888  88 0D A6 29 */	lbz r0, "init$6480"@sda21(r13)
/* 802BD92C 002BA88C  7C 7B 1B 78 */	mr r27, r3
/* 802BD930 002BA890  7C 9C 23 78 */	mr r28, r4
/* 802BD934 002BA894  7C BD 2B 78 */	mr r29, r5
/* 802BD938 002BA898  7C 00 07 75 */	extsb. r0, r0
/* 802BD93C 002BA89C  7C DE 33 78 */	mr r30, r6
/* 802BD940 002BA8A0  7C FF 3B 78 */	mr r31, r7
/* 802BD944 002BA8A4  40 82 00 24 */	bne lbl_802BD968
/* 802BD948 002BA8A8  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802BD94C 002BA8AC  3C 60 80 48 */	lis r3, "sOptimalPlane$6479"@ha
/* 802BD950 002BA8B0  38 00 00 01 */	li r0, 1
/* 802BD954 002BA8B4  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BD958 002BA8B8  D4 23 91 6C */	stfsu f1, "sOptimalPlane$6479"@l(r3)
/* 802BD95C 002BA8BC  D0 23 00 04 */	stfs f1, 4(r3)
/* 802BD960 002BA8C0  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BD964 002BA8C4  98 0D A6 29 */	stb r0, "init$6480"@sda21(r13)
lbl_802BD968:
/* 802BD968 002BA8C8  7F A4 EB 78 */	mr r4, r29
/* 802BD96C 002BA8CC  38 61 00 20 */	addi r3, r1, 0x20
/* 802BD970 002BA8D0  38 BB 00 B0 */	addi r5, r27, 0xb0
/* 802BD974 002BA8D4  48 07 98 69 */	bl ClosestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802BD978 002BA8D8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802BD97C 002BA8DC  38 BB 00 B0 */	addi r5, r27, 0xb0
/* 802BD980 002BA8E0  C0 3B 00 B4 */	lfs f1, 0xb4(r27)
/* 802BD984 002BA8E4  7F A4 EB 78 */	mr r4, r29
/* 802BD988 002BA8E8  C0 5B 00 B0 */	lfs f2, 0xb0(r27)
/* 802BD98C 002BA8EC  38 61 00 14 */	addi r3, r1, 0x14
/* 802BD990 002BA8F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BD994 002BA8F4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 802BD998 002BA8F8  C0 9B 00 B8 */	lfs f4, 0xb8(r27)
/* 802BD99C 002BA8FC  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 802BD9A0 002BA900  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 802BD9A4 002BA904  C0 1B 00 BC */	lfs f0, 0xbc(r27)
/* 802BD9A8 002BA908  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 802BD9AC 002BA90C  EF E1 00 28 */	fsubs f31, f1, f0
/* 802BD9B0 002BA910  48 07 98 6D */	bl FurthestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802BD9B4 002BA914  C0 5B 00 B4 */	lfs f2, 0xb4(r27)
/* 802BD9B8 002BA918  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802BD9BC 002BA91C  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BD9C0 002BA920  EC 22 00 72 */	fmuls f1, f2, f1
/* 802BD9C4 002BA924  C0 7B 00 B0 */	lfs f3, 0xb0(r27)
/* 802BD9C8 002BA928  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802BD9CC 002BA92C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802BD9D0 002BA930  C0 9B 00 B8 */	lfs f4, 0xb8(r27)
/* 802BD9D4 002BA934  EC 43 08 BA */	fmadds f2, f3, f2, f1
/* 802BD9D8 002BA938  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 802BD9DC 002BA93C  C0 3B 00 BC */	lfs f1, 0xbc(r27)
/* 802BD9E0 002BA940  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 802BD9E4 002BA944  EC 42 08 28 */	fsubs f2, f2, f1
/* 802BD9E8 002BA948  40 80 00 0C */	bge lbl_802BD9F4
/* 802BD9EC 002BA94C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802BD9F0 002BA950  41 80 00 F8 */	blt lbl_802BDAE8
lbl_802BD9F4:
/* 802BD9F4 002BA954  3C 60 80 48 */	lis r3, "sOptimalPlane$6479"@ha
/* 802BD9F8 002BA958  C0 FE 00 00 */	lfs f7, 0(r30)
/* 802BD9FC 002BA95C  C4 03 91 6C */	lfsu f0, "sOptimalPlane$6479"@l(r3)
/* 802BDA00 002BA960  38 00 00 00 */	li r0, 0
/* 802BDA04 002BA964  FC 07 00 00 */	fcmpu cr0, f7, f0
/* 802BDA08 002BA968  40 82 00 28 */	bne lbl_802BDA30
/* 802BDA0C 002BA96C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 802BDA10 002BA970  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BDA14 002BA974  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802BDA18 002BA978  40 82 00 18 */	bne lbl_802BDA30
/* 802BDA1C 002BA97C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802BDA20 002BA980  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BDA24 002BA984  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802BDA28 002BA988  40 82 00 08 */	bne lbl_802BDA30
/* 802BDA2C 002BA98C  38 00 00 01 */	li r0, 1
lbl_802BDA30:
/* 802BDA30 002BA990  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802BDA34 002BA994  7C 03 00 D0 */	neg r0, r3
/* 802BDA38 002BA998  7C 00 1B 78 */	or r0, r0, r3
/* 802BDA3C 002BA99C  54 06 0F FF */	rlwinm. r6, r0, 1, 0x1f, 0x1f
/* 802BDA40 002BA9A0  41 82 00 44 */	beq lbl_802BDA84
/* 802BDA44 002BA9A4  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 802BDA48 002BA9A8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 802BDA4C 002BA9AC  38 63 61 D4 */	addi r3, r3, mViewMatrix__9CGraphics@l
/* 802BDA50 002BA9B0  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 802BDA54 002BA9B4  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802BDA58 002BA9B8  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 802BDA5C 002BA9BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDA60 002BA9C0  D0 81 00 08 */	stfs f4, 8(r1)
/* 802BDA64 002BA9C4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 802BDA68 002BA9C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802BDA6C 002BA9CC  4C 41 13 82 */	cror 2, 1, 2
/* 802BDA70 002BA9D0  40 82 00 0C */	bne lbl_802BDA7C
/* 802BDA74 002BA9D4  38 80 00 01 */	li r4, 1
/* 802BDA78 002BA9D8  48 00 00 58 */	b lbl_802BDAD0
lbl_802BDA7C:
/* 802BDA7C 002BA9DC  38 80 00 00 */	li r4, 0
/* 802BDA80 002BA9E0  48 00 00 50 */	b lbl_802BDAD0
lbl_802BDA84:
/* 802BDA84 002BA9E4  3C 60 80 5A */	lis r3, mViewMatrix__9CGraphics@ha
/* 802BDA88 002BA9E8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 802BDA8C 002BA9EC  38 63 61 D4 */	addi r3, r3, mViewMatrix__9CGraphics@l
/* 802BDA90 002BA9F0  C0 DE 00 08 */	lfs f6, 8(r30)
/* 802BDA94 002BA9F4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 802BDA98 002BA9F8  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 802BDA9C 002BA9FC  EC 61 00 32 */	fmuls f3, f1, f0
/* 802BDAA0 002BAA00  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 802BDAA4 002BAA04  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 802BDAA8 002BAA08  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BDAAC 002BAA0C  EC 67 19 3A */	fmadds f3, f7, f4, f3
/* 802BDAB0 002BAA10  EC 66 19 7A */	fmadds f3, f6, f5, f3
/* 802BDAB4 002BAA14  EC 23 08 28 */	fsubs f1, f3, f1
/* 802BDAB8 002BAA18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDABC 002BAA1C  4C 41 13 82 */	cror 2, 1, 2
/* 802BDAC0 002BAA20  40 82 00 0C */	bne lbl_802BDACC
/* 802BDAC4 002BAA24  38 80 00 01 */	li r4, 1
/* 802BDAC8 002BAA28  48 00 00 08 */	b lbl_802BDAD0
lbl_802BDACC:
/* 802BDACC 002BAA2C  38 80 00 00 */	li r4, 0
lbl_802BDAD0:
/* 802BDAD0 002BAA30  FC 20 F8 90 */	fmr f1, f31
/* 802BDAD4 002BAA34  7F A3 EB 78 */	mr r3, r29
/* 802BDAD8 002BAA38  7F C5 F3 78 */	mr r5, r30
/* 802BDADC 002BAA3C  7F 88 E3 78 */	mr r8, r28
/* 802BDAE0 002BAA40  38 FF 00 02 */	addi r7, r31, 2
/* 802BDAE4 002BAA44  48 00 20 39 */	bl InsertPlaneObject__7BucketsFffRC6CAABoxbRC6CPlaneb13EDrawableTypePCv
lbl_802BDAE8:
/* 802BDAE8 002BAA48  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 802BDAEC 002BAA4C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802BDAF0 002BAA50  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 802BDAF4 002BAA54  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802BDAF8 002BAA58  7C 08 03 A6 */	mtlr r0
/* 802BDAFC 002BAA5C  38 21 00 60 */	addi r1, r1, 0x60
/* 802BDB00 002BAA60  4E 80 00 20 */	blr

.global sub_802bdb04
sub_802bdb04:
/* 802BDB04 002BAA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDB08 002BAA68  7C 08 02 A6 */	mflr r0
/* 802BDB0C 002BAA6C  7C 67 1B 78 */	mr r7, r3
/* 802BDB10 002BAA70  7C A3 2B 78 */	mr r3, r5
/* 802BDB14 002BAA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDB18 002BAA78  7C 80 23 78 */	mr r0, r4
/* 802BDB1C 002BAA7C  7C C4 33 78 */	mr r4, r6
/* 802BDB20 002BAA80  38 E7 00 B0 */	addi r7, r7, 0xb0
/* 802BDB24 002BAA84  7C 06 03 78 */	mr r6, r0
/* 802BDB28 002BAA88  38 A0 00 01 */	li r5, 1
/* 802BDB2C 002BAA8C  39 00 00 00 */	li r8, 0
/* 802BDB30 002BAA90  48 00 21 E9 */	bl Insert__7BucketsFRC9CVector3fRC6CAABox13EDrawableTypePCvRC6CPlaneUs
/* 802BDB34 002BAA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDB38 002BAA98  7C 08 03 A6 */	mtlr r0
/* 802BDB3C 002BAA9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDB40 002BAAA0  4E 80 00 20 */	blr

.global AddParticleGen__13CCubeRendererFRC12CParticleGen
AddParticleGen__13CCubeRendererFRC12CParticleGen:
/* 802BDB44 002BAAA4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802BDB48 002BAAA8  7C 08 02 A6 */	mflr r0
/* 802BDB4C 002BAAAC  90 01 00 64 */	stw r0, 0x64(r1)
/* 802BDB50 002BAAB0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802BDB54 002BAAB4  7C 9F 23 78 */	mr r31, r4
/* 802BDB58 002BAAB8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 802BDB5C 002BAABC  7C 7E 1B 78 */	mr r30, r3
/* 802BDB60 002BAAC0  38 61 00 20 */	addi r3, r1, 0x20
/* 802BDB64 002BAAC4  81 84 00 00 */	lwz r12, 0(r4)
/* 802BDB68 002BAAC8  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 802BDB6C 002BAACC  7D 89 03 A6 */	mtctr r12
/* 802BDB70 002BAAD0  4E 80 04 21 */	bctrl
/* 802BDB74 002BAAD4  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802BDB78 002BAAD8  28 00 00 00 */	cmplwi r0, 0
/* 802BDB7C 002BAADC  98 01 00 54 */	stb r0, 0x54(r1)
/* 802BDB80 002BAAE0  41 82 00 3C */	beq lbl_802BDBBC
/* 802BDB84 002BAAE4  34 61 00 3C */	addic. r3, r1, 0x3c
/* 802BDB88 002BAAE8  41 82 00 34 */	beq lbl_802BDBBC
/* 802BDB8C 002BAAEC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802BDB90 002BAAF0  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BDB94 002BAAF4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802BDB98 002BAAF8  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BDB9C 002BAAFC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802BDBA0 002BAB00  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BDBA4 002BAB04  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802BDBA8 002BAB08  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BDBAC 002BAB0C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802BDBB0 002BAB10  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802BDBB4 002BAB14  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 802BDBB8 002BAB18  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_802BDBBC:
/* 802BDBBC 002BAB1C  88 01 00 54 */	lbz r0, 0x54(r1)
/* 802BDBC0 002BAB20  38 60 00 00 */	li r3, 0
/* 802BDBC4 002BAB24  98 61 00 38 */	stb r3, 0x38(r1)
/* 802BDBC8 002BAB28  28 00 00 00 */	cmplwi r0, 0
/* 802BDBCC 002BAB2C  41 82 00 48 */	beq lbl_802BDC14
/* 802BDBD0 002BAB30  38 61 00 08 */	addi r3, r1, 8
/* 802BDBD4 002BAB34  38 81 00 3C */	addi r4, r1, 0x3c
/* 802BDBD8 002BAB38  38 BE 00 B0 */	addi r5, r30, 0xb0
/* 802BDBDC 002BAB3C  48 07 96 01 */	bl ClosestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802BDBE0 002BAB40  C0 41 00 08 */	lfs f2, 8(r1)
/* 802BDBE4 002BAB44  7F E6 FB 78 */	mr r6, r31
/* 802BDBE8 002BAB48  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 802BDBEC 002BAB4C  38 61 00 14 */	addi r3, r1, 0x14
/* 802BDBF0 002BAB50  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802BDBF4 002BAB54  38 81 00 3C */	addi r4, r1, 0x3c
/* 802BDBF8 002BAB58  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802BDBFC 002BAB5C  38 FE 00 B0 */	addi r7, r30, 0xb0
/* 802BDC00 002BAB60  38 A0 00 01 */	li r5, 1
/* 802BDC04 002BAB64  39 00 00 00 */	li r8, 0
/* 802BDC08 002BAB68  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802BDC0C 002BAB6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802BDC10 002BAB70  48 00 21 09 */	bl Insert__7BucketsFRC9CVector3fRC6CAABox13EDrawableTypePCvRC6CPlaneUs
lbl_802BDC14:
/* 802BDC14 002BAB74  38 00 00 00 */	li r0, 0
/* 802BDC18 002BAB78  98 01 00 54 */	stb r0, 0x54(r1)
/* 802BDC1C 002BAB7C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802BDC20 002BAB80  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802BDC24 002BAB84  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802BDC28 002BAB88  7C 08 03 A6 */	mtlr r0
/* 802BDC2C 002BAB8C  38 21 00 60 */	addi r1, r1, 0x60
/* 802BDC30 002BAB90  4E 80 00 20 */	blr

.global EndScene__13CCubeRendererFv
EndScene__13CCubeRendererFv:
/* 802BDC34 002BAB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDC38 002BAB98  7C 08 02 A6 */	mflr r0
/* 802BDC3C 002BAB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDC40 002BABA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BDC44 002BABA4  7C 7F 1B 78 */	mr r31, r3
/* 802BDC48 002BABA8  88 8D 9C 6C */	lbz r4, mIsBeginSceneClearFb__9CGraphics@sda21(r13)
/* 802BDC4C 002BABAC  88 03 03 18 */	lbz r0, 0x318(r3)
/* 802BDC50 002BABB0  7C 83 00 34 */	cntlzw r3, r4
/* 802BDC54 002BABB4  50 60 DF FE */	rlwimi r0, r3, 0x1b, 0x1f, 0x1f
/* 802BDC58 002BABB8  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BDC5C 002BABBC  48 04 DE 65 */	bl EndScene__9CGraphicsFv
/* 802BDC60 002BABC0  80 7F 02 DC */	lwz r3, 0x2dc(r31)
/* 802BDC64 002BABC4  2C 03 00 02 */	cmpwi r3, 2
/* 802BDC68 002BABC8  41 80 00 1C */	blt lbl_802BDC84
/* 802BDC6C 002BABCC  80 7F 01 4C */	lwz r3, 0x14c(r31)
/* 802BDC70 002BABD0  38 80 00 01 */	li r4, 1
/* 802BDC74 002BABD4  48 05 1D 85 */	bl __dt__8CTextureFv
/* 802BDC78 002BABD8  38 00 00 00 */	li r0, 0
/* 802BDC7C 002BABDC  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 802BDC80 002BABE0  48 00 00 0C */	b lbl_802BDC8C
lbl_802BDC84:
/* 802BDC84 002BABE4  38 03 00 01 */	addi r0, r3, 1
/* 802BDC88 002BABE8  90 1F 02 DC */	stw r0, 0x2dc(r31)
lbl_802BDC8C:
/* 802BDC8C 002BABEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDC90 002BABF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BDC94 002BABF4  7C 08 03 A6 */	mtlr r0
/* 802BDC98 002BABF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDC9C 002BABFC  4E 80 00 20 */	blr

.global BeginScene__13CCubeRendererFv
BeginScene__13CCubeRendererFv:
/* 802BDCA0 002BAC00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BDCA4 002BAC04  7C 08 02 A6 */	mflr r0
/* 802BDCA8 002BAC08  3C 80 80 3F */	lis r4, mViewport__9CGraphics@ha
/* 802BDCAC 002BAC0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BDCB0 002BAC10  38 84 D9 10 */	addi r4, r4, mViewport__9CGraphics@l
/* 802BDCB4 002BAC14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BDCB8 002BAC18  7C 7F 1B 78 */	mr r31, r3
/* 802BDCBC 002BAC1C  38 60 00 01 */	li r3, 1
/* 802BDCC0 002BAC20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BDCC4 002BAC24  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BDCC8 002BAC28  83 C4 00 08 */	lwz r30, 8(r4)
/* 802BDCCC 002BAC2C  83 A4 00 0C */	lwz r29, 0xc(r4)
/* 802BDCD0 002BAC30  48 04 BB 3D */	bl SetUseVideoFilter__9CGraphicsFb
/* 802BDCD4 002BAC34  7F C5 F3 78 */	mr r5, r30
/* 802BDCD8 002BAC38  7F A6 EB 78 */	mr r6, r29
/* 802BDCDC 002BAC3C  38 60 00 00 */	li r3, 0
/* 802BDCE0 002BAC40  38 80 00 00 */	li r4, 0
/* 802BDCE4 002BAC44  48 04 E3 AD */	bl SetViewport__9CGraphicsFiiii
/* 802BDCE8 002BAC48  38 00 00 00 */	li r0, 0
/* 802BDCEC 002BAC4C  38 61 00 08 */	addi r3, r1, 8
/* 802BDCF0 002BAC50  98 01 00 08 */	stb r0, 8(r1)
/* 802BDCF4 002BAC54  98 01 00 09 */	stb r0, 9(r1)
/* 802BDCF8 002BAC58  98 01 00 0A */	stb r0, 0xa(r1)
/* 802BDCFC 002BAC5C  98 01 00 0B */	stb r0, 0xb(r1)
/* 802BDD00 002BAC60  48 04 E2 95 */	bl SetClearColor__9CGraphicsFRC6CColor
/* 802BDD04 002BAC64  38 60 00 01 */	li r3, 1
/* 802BDD08 002BAC68  48 04 DD 69 */	bl SetCullMode__9CGraphicsF12ERglCullMode
/* 802BDD0C 002BAC6C  38 60 00 01 */	li r3, 1
/* 802BDD10 002BAC70  38 80 00 03 */	li r4, 3
/* 802BDD14 002BAC74  38 A0 00 01 */	li r5, 1
/* 802BDD18 002BAC78  48 04 DD 7D */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 802BDD1C 002BAC7C  38 60 00 01 */	li r3, 1
/* 802BDD20 002BAC80  38 80 00 04 */	li r4, 4
/* 802BDD24 002BAC84  38 A0 00 05 */	li r5, 5
/* 802BDD28 002BAC88  38 C0 00 00 */	li r6, 0
/* 802BDD2C 002BAC8C  48 04 DD 25 */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 802BDD30 002BAC90  C0 22 C3 0C */	lfs f1, lbl_805AE02C@sda21(r2)
/* 802BDD34 002BAC94  C0 42 C3 10 */	lfs f2, lbl_805AE030@sda21(r2)
/* 802BDD38 002BAC98  C0 62 C2 70 */	lfs f3, lbl_805ADF90@sda21(r2)
/* 802BDD3C 002BAC9C  C0 82 C2 94 */	lfs f4, lbl_805ADFB4@sda21(r2)
/* 802BDD40 002BACA0  48 04 E7 51 */	bl SetPerspective__9CGraphicsFffff
/* 802BDD44 002BACA4  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BDD48 002BACA8  38 63 66 70 */	addi r3, r3, sIdentity__12CTransform4f@l
/* 802BDD4C 002BACAC  48 04 E8 95 */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BDD50 002BACB0  48 04 C1 B1 */	bl TickRenderTimings__9CGraphicsFv
/* 802BDD54 002BACB4  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 802BDD58 002BACB8  2C 03 00 00 */	cmpwi r3, 0
/* 802BDD5C 002BACBC  41 82 00 34 */	beq lbl_802BDD90
/* 802BDD60 002BACC0  38 03 FF FF */	addi r0, r3, -1
/* 802BDD64 002BACC4  90 1F 03 10 */	stw r0, 0x310(r31)
/* 802BDD68 002BACC8  80 1F 03 10 */	lwz r0, 0x310(r31)
/* 802BDD6C 002BACCC  2C 00 00 00 */	cmpwi r0, 0
/* 802BDD70 002BACD0  40 82 00 20 */	bne lbl_802BDD90
/* 802BDD74 002BACD4  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 802BDD78 002BACD8  48 05 03 95 */	bl sub_8030e10c__8CTextureFv
/* 802BDD7C 002BACDC  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 802BDD80 002BACE0  38 80 00 01 */	li r4, 1
/* 802BDD84 002BACE4  48 05 1C 75 */	bl __dt__8CTextureFv
/* 802BDD88 002BACE8  38 00 00 00 */	li r0, 0
/* 802BDD8C 002BACEC  90 1F 03 14 */	stw r0, 0x314(r31)
lbl_802BDD90:
/* 802BDD90 002BACF0  88 7F 03 18 */	lbz r3, 0x318(r31)
/* 802BDD94 002BACF4  50 63 FE F6 */	rlwimi r3, r3, 0x1f, 0x1b, 0x1b
/* 802BDD98 002BACF8  98 7F 03 18 */	stb r3, 0x318(r31)
/* 802BDD9C 002BACFC  88 7F 03 18 */	lbz r3, 0x318(r31)
/* 802BDDA0 002BAD00  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 802BDDA4 002BAD04  40 82 00 10 */	bne lbl_802BDDB4
/* 802BDDA8 002BAD08  38 00 00 00 */	li r0, 0
/* 802BDDAC 002BAD0C  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 802BDDB0 002BAD10  98 7F 03 18 */	stb r3, 0x318(r31)
lbl_802BDDB4:
/* 802BDDB4 002BAD14  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BDDB8 002BAD18  38 80 00 00 */	li r4, 0
/* 802BDDBC 002BAD1C  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 802BDDC0 002BAD20  7C 03 00 D0 */	neg r0, r3
/* 802BDDC4 002BAD24  7C 00 1B 78 */	or r0, r0, r3
/* 802BDDC8 002BAD28  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802BDDCC 002BAD2C  48 0B E1 F9 */	bl GXSetPixelFmt
/* 802BDDD0 002BAD30  38 60 00 01 */	li r3, 1
/* 802BDDD4 002BAD34  48 0B E1 59 */	bl GXSetAlphaUpdate
/* 802BDDD8 002BAD38  38 60 00 01 */	li r3, 1
/* 802BDDDC 002BAD3C  38 80 00 00 */	li r4, 0
/* 802BDDE0 002BAD40  48 0B E3 01 */	bl GXSetDstAlpha
/* 802BDDE4 002BAD44  48 04 E0 C1 */	bl BeginScene__9CGraphicsFv
/* 802BDDE8 002BAD48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BDDEC 002BAD4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BDDF0 002BAD50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BDDF4 002BAD54  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BDDF8 002BAD58  7C 08 03 A6 */	mtlr r0
/* 802BDDFC 002BAD5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BDE00 002BAD60  4E 80 00 20 */	blr

.global SetWorldViewpoint__13CCubeRendererFRC12CTransform4f
SetWorldViewpoint__13CCubeRendererFRC12CTransform4f:
/* 802BDE04 002BAD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDE08 002BAD68  7C 08 02 A6 */	mflr r0
/* 802BDE0C 002BAD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDE10 002BAD70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BDE14 002BAD74  7C 9F 23 78 */	mr r31, r4
/* 802BDE18 002BAD78  93 C1 00 08 */	stw r30, 8(r1)
/* 802BDE1C 002BAD7C  7C 7E 1B 78 */	mr r30, r3
/* 802BDE20 002BAD80  7F E3 FB 78 */	mr r3, r31
/* 802BDE24 002BAD84  48 04 E9 29 */	bl SetViewPointMatrix__9CGraphicsFRC12CTransform4f
/* 802BDE28 002BAD88  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 802BDE2C 002BAD8C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 802BDE30 002BAD90  C0 BF 00 24 */	lfs f5, 0x24(r31)
/* 802BDE34 002BAD94  EC 04 00 32 */	fmuls f0, f4, f0
/* 802BDE38 002BAD98  C0 7F 00 04 */	lfs f3, 4(r31)
/* 802BDE3C 002BAD9C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802BDE40 002BADA0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 802BDE44 002BADA4  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 802BDE48 002BADA8  D0 7E 00 B0 */	stfs f3, 0xb0(r30)
/* 802BDE4C 002BADAC  D0 9E 00 B4 */	stfs f4, 0xb4(r30)
/* 802BDE50 002BADB0  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 802BDE54 002BADB4  D0 BE 00 B8 */	stfs f5, 0xb8(r30)
/* 802BDE58 002BADB8  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 802BDE5C 002BADBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BDE60 002BADC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BDE64 002BADC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDE68 002BADC8  7C 08 03 A6 */	mtlr r0
/* 802BDE6C 002BADCC  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDE70 002BADD0  4E 80 00 20 */	blr

.global SetModelMatrix__13CCubeRendererFRC12CTransform4f
SetModelMatrix__13CCubeRendererFRC12CTransform4f:
/* 802BDE74 002BADD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDE78 002BADD8  7C 08 02 A6 */	mflr r0
/* 802BDE7C 002BADDC  7C 83 23 78 */	mr r3, r4
/* 802BDE80 002BADE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDE84 002BADE4  48 04 E7 5D */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 802BDE88 002BADE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDE8C 002BADEC  7C 08 03 A6 */	mtlr r0
/* 802BDE90 002BADF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDE94 002BADF4  4E 80 00 20 */	blr

.global "RemoveStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>"
"RemoveStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>":
/* 802BDE98 002BADF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BDE9C 002BADFC  7C 08 02 A6 */	mflr r0
/* 802BDEA0 002BAE00  7C 85 23 78 */	mr r5, r4
/* 802BDEA4 002BAE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BDEA8 002BAE08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BDEAC 002BAE0C  7C 7F 1B 78 */	mr r31, r3
/* 802BDEB0 002BAE10  7F E4 FB 78 */	mr r4, r31
/* 802BDEB4 002BAE14  38 61 00 08 */	addi r3, r1, 8
/* 802BDEB8 002BAE18  48 00 00 31 */	bl "FindStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>"
/* 802BDEBC 002BAE1C  80 81 00 08 */	lwz r4, 8(r1)
/* 802BDEC0 002BAE20  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 802BDEC4 002BAE24  7C 04 00 40 */	cmplw r4, r0
/* 802BDEC8 002BAE28  41 82 00 0C */	beq lbl_802BDED4
/* 802BDECC 002BAE2C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802BDED0 002BAE30  48 00 24 45 */	bl sub_802c0314
lbl_802BDED4:
/* 802BDED4 002BAE34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BDED8 002BAE38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BDEDC 002BAE3C  7C 08 03 A6 */	mtlr r0
/* 802BDEE0 002BAE40  38 21 00 20 */	addi r1, r1, 0x20
/* 802BDEE4 002BAE44  4E 80 00 20 */	blr

.global "FindStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>"
"FindStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>":
/* 802BDEE8 002BAE48  80 C4 00 20 */	lwz r6, 0x20(r4)
/* 802BDEEC 002BAE4C  80 84 00 24 */	lwz r4, 0x24(r4)
/* 802BDEF0 002BAE50  48 00 00 1C */	b lbl_802BDF0C
lbl_802BDEF4:
/* 802BDEF4 002BAE54  80 06 00 08 */	lwz r0, 8(r6)
/* 802BDEF8 002BAE58  7C 00 28 40 */	cmplw r0, r5
/* 802BDEFC 002BAE5C  40 82 00 0C */	bne lbl_802BDF08
/* 802BDF00 002BAE60  90 C3 00 00 */	stw r6, 0(r3)
/* 802BDF04 002BAE64  4E 80 00 20 */	blr
lbl_802BDF08:
/* 802BDF08 002BAE68  80 C6 00 04 */	lwz r6, 4(r6)
lbl_802BDF0C:
/* 802BDF0C 002BAE6C  7C 06 20 40 */	cmplw r6, r4
/* 802BDF10 002BAE70  40 82 FF E4 */	bne lbl_802BDEF4
/* 802BDF14 002BAE74  90 83 00 00 */	stw r4, 0(r3)
/* 802BDF18 002BAE78  4E 80 00 20 */	blr

.global "AddStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>PC12CAreaOctTreei"
"AddStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>PC12CAreaOctTreei":
/* 802BDF1C 002BAE7C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802BDF20 002BAE80  7C 08 02 A6 */	mflr r0
/* 802BDF24 002BAE84  90 01 00 94 */	stw r0, 0x94(r1)
/* 802BDF28 002BAE88  BF 01 00 70 */	stmw r24, 0x70(r1)
/* 802BDF2C 002BAE8C  7C 78 1B 78 */	mr r24, r3
/* 802BDF30 002BAE90  7C 99 23 78 */	mr r25, r4
/* 802BDF34 002BAE94  7C BA 2B 78 */	mr r26, r5
/* 802BDF38 002BAE98  7C DB 33 78 */	mr r27, r6
/* 802BDF3C 002BAE9C  7F 04 C3 78 */	mr r4, r24
/* 802BDF40 002BAEA0  7F 25 CB 78 */	mr r5, r25
/* 802BDF44 002BAEA4  83 83 00 24 */	lwz r28, 0x24(r3)
/* 802BDF48 002BAEA8  38 61 00 20 */	addi r3, r1, 0x20
/* 802BDF4C 002BAEAC  4B FF FF 9D */	bl "FindStaticGeometry__13CCubeRendererFPCQ24rstl58vector<21CMetroidModelInstance,Q24rstl17rmemory_allocator>"
/* 802BDF50 002BAEB0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802BDF54 002BAEB4  7C 00 E0 40 */	cmplw r0, r28
/* 802BDF58 002BAEB8  40 82 02 24 */	bne lbl_802BE17C
/* 802BDF5C 002BAEBC  3C 80 80 3D */	lis r4, lbl_803D685C@ha
/* 802BDF60 002BAEC0  38 60 00 10 */	li r3, 0x10
/* 802BDF64 002BAEC4  38 84 68 5C */	addi r4, r4, lbl_803D685C@l
/* 802BDF68 002BAEC8  38 A0 00 00 */	li r5, 0
/* 802BDF6C 002BAECC  48 05 79 01 */	bl __nw__FUlPCcPCc
/* 802BDF70 002BAED0  28 03 00 00 */	cmplwi r3, 0
/* 802BDF74 002BAED4  41 82 00 14 */	beq lbl_802BDF88
/* 802BDF78 002BAED8  38 00 00 00 */	li r0, 0
/* 802BDF7C 002BAEDC  90 03 00 04 */	stw r0, 4(r3)
/* 802BDF80 002BAEE0  90 03 00 08 */	stw r0, 8(r3)
/* 802BDF84 002BAEE4  90 03 00 0C */	stw r0, 0xc(r3)
lbl_802BDF88:
/* 802BDF88 002BAEE8  7C 03 00 D0 */	neg r0, r3
/* 802BDF8C 002BAEEC  3C 80 80 3D */	lis r4, lbl_803D685C@ha
/* 802BDF90 002BAEF0  7C 00 1B 78 */	or r0, r0, r3
/* 802BDF94 002BAEF4  90 61 00 38 */	stw r3, 0x38(r1)
/* 802BDF98 002BAEF8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802BDF9C 002BAEFC  38 84 68 5C */	addi r4, r4, lbl_803D685C@l
/* 802BDFA0 002BAF00  98 01 00 34 */	stb r0, 0x34(r1)
/* 802BDFA4 002BAF04  38 60 00 10 */	li r3, 0x10
/* 802BDFA8 002BAF08  38 A0 00 00 */	li r5, 0
/* 802BDFAC 002BAF0C  48 05 78 C1 */	bl __nw__FUlPCcPCc
/* 802BDFB0 002BAF10  28 03 00 00 */	cmplwi r3, 0
/* 802BDFB4 002BAF14  41 82 00 14 */	beq lbl_802BDFC8
/* 802BDFB8 002BAF18  38 00 00 00 */	li r0, 0
/* 802BDFBC 002BAF1C  90 03 00 04 */	stw r0, 4(r3)
/* 802BDFC0 002BAF20  90 03 00 08 */	stw r0, 8(r3)
/* 802BDFC4 002BAF24  90 03 00 0C */	stw r0, 0xc(r3)
lbl_802BDFC8:
/* 802BDFC8 002BAF28  7C 83 00 D0 */	neg r4, r3
/* 802BDFCC 002BAF2C  80 19 00 04 */	lwz r0, 4(r25)
/* 802BDFD0 002BAF30  7C 84 1B 78 */	or r4, r4, r3
/* 802BDFD4 002BAF34  90 61 00 30 */	stw r3, 0x30(r1)
/* 802BDFD8 002BAF38  54 84 0F FE */	srwi r4, r4, 0x1f
/* 802BDFDC 002BAF3C  2C 00 00 00 */	cmpwi r0, 0
/* 802BDFE0 002BAF40  98 81 00 2C */	stb r4, 0x2c(r1)
/* 802BDFE4 002BAF44  41 82 01 48 */	beq lbl_802BE12C
/* 802BDFE8 002BAF48  80 F9 00 0C */	lwz r7, 0xc(r25)
/* 802BDFEC 002BAF4C  7C 64 1B 78 */	mr r4, r3
/* 802BDFF0 002BAF50  80 B8 00 0C */	lwz r5, 0xc(r24)
/* 802BDFF4 002BAF54  38 C0 00 00 */	li r6, 0
/* 802BDFF8 002BAF58  80 67 00 4C */	lwz r3, 0x4c(r7)
/* 802BDFFC 002BAF5C  48 04 98 05 */	bl "MakeTexturesFromMats__10CCubeModelFPCvRQ24rstl60vector<23TCachedToken<8CTexture>,Q24rstl17rmemory_allocator>R12IObjectStoreb"
/* 802BE000 002BAF60  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802BE004 002BAF64  80 99 00 04 */	lwz r4, 4(r25)
/* 802BE008 002BAF68  48 00 26 A1 */	bl sub_802c06a8
/* 802BE00C 002BAF6C  3C 60 80 3D */	lis r3, lbl_803D685C@ha
/* 802BE010 002BAF70  3B 80 00 00 */	li r28, 0
/* 802BE014 002BAF74  3B E3 68 5C */	addi r31, r3, lbl_803D685C@l
/* 802BE018 002BAF78  3B A0 00 00 */	li r29, 0
/* 802BE01C 002BAF7C  48 00 01 04 */	b lbl_802BE120
lbl_802BE020:
/* 802BE020 002BAF80  80 19 00 0C */	lwz r0, 0xc(r25)
/* 802BE024 002BAF84  7F E4 FB 78 */	mr r4, r31
/* 802BE028 002BAF88  38 60 00 48 */	li r3, 0x48
/* 802BE02C 002BAF8C  38 A0 00 00 */	li r5, 0
/* 802BE030 002BAF90  7F C0 EA 14 */	add r30, r0, r29
/* 802BE034 002BAF94  48 05 78 39 */	bl __nw__FUlPCcPCc
/* 802BE038 002BAF98  7C 64 1B 79 */	or. r4, r3, r3
/* 802BE03C 002BAF9C  41 82 00 50 */	beq lbl_802BE08C
/* 802BE040 002BAFA0  80 DE 00 70 */	lwz r6, 0x70(r30)
/* 802BE044 002BAFA4  38 BE 00 34 */	addi r5, r30, 0x34
/* 802BE048 002BAFA8  38 00 00 00 */	li r0, 0
/* 802BE04C 002BAFAC  38 9E 00 50 */	addi r4, r30, 0x50
/* 802BE050 002BAFB0  90 C1 00 08 */	stw r6, 8(r1)
/* 802BE054 002BAFB4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802BE058 002BAFB8  80 BE 00 00 */	lwz r5, 0(r30)
/* 802BE05C 002BAFBC  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 802BE060 002BAFC0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802BE064 002BAFC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE068 002BAFC8  93 81 00 18 */	stw r28, 0x18(r1)
/* 802BE06C 002BAFCC  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 802BE070 002BAFD0  80 DE 00 4C */	lwz r6, 0x4c(r30)
/* 802BE074 002BAFD4  80 FE 00 60 */	lwz r7, 0x60(r30)
/* 802BE078 002BAFD8  81 1E 00 64 */	lwz r8, 0x64(r30)
/* 802BE07C 002BAFDC  81 3E 00 68 */	lwz r9, 0x68(r30)
/* 802BE080 002BAFE0  81 5E 00 6C */	lwz r10, 0x6c(r30)
/* 802BE084 002BAFE4  48 04 98 D1 */	bl "__ct__10CCubeModelFPQ24rstl37vector<Pv,Q24rstl17rmemory_allocator>PQ24rstl60vector<23TCachedToken<8CTexture>,Q24rstl17rmemory_allocator>PCvPCvPCvPCvPCvPCvRC6CAABoxUcb"
/* 802BE088 002BAFE8  7C 64 1B 78 */	mr r4, r3
lbl_802BE08C:
/* 802BE08C 002BAFEC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802BE090 002BAFF0  7C 04 00 D0 */	neg r0, r4
/* 802BE094 002BAFF4  7C 03 23 78 */	or r3, r0, r4
/* 802BE098 002BAFF8  90 81 00 28 */	stw r4, 0x28(r1)
/* 802BE09C 002BAFFC  80 1E 00 04 */	lwz r0, 4(r30)
/* 802BE0A0 002BB000  54 63 0F FE */	srwi r3, r3, 0x1f
/* 802BE0A4 002BB004  80 BE 00 08 */	lwz r5, 8(r30)
/* 802BE0A8 002BB008  98 61 00 24 */	stb r3, 0x24(r1)
/* 802BE0AC 002BB00C  7C 00 28 00 */	cmpw r0, r5
/* 802BE0B0 002BB010  41 80 00 1C */	blt lbl_802BE0CC
/* 802BE0B4 002BB014  2C 05 00 00 */	cmpwi r5, 0
/* 802BE0B8 002BB018  7F C3 F3 78 */	mr r3, r30
/* 802BE0BC 002BB01C  38 80 00 04 */	li r4, 4
/* 802BE0C0 002BB020  41 82 00 08 */	beq lbl_802BE0C8
/* 802BE0C4 002BB024  54 A4 08 3C */	slwi r4, r5, 1
lbl_802BE0C8:
/* 802BE0C8 002BB028  48 00 25 E1 */	bl sub_802c06a8
lbl_802BE0CC:
/* 802BE0CC 002BB02C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802BE0D0 002BB030  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802BE0D4 002BB034  54 00 18 38 */	slwi r0, r0, 3
/* 802BE0D8 002BB038  7C A3 02 15 */	add. r5, r3, r0
/* 802BE0DC 002BB03C  41 82 00 1C */	beq lbl_802BE0F8
/* 802BE0E0 002BB040  88 81 00 24 */	lbz r4, 0x24(r1)
/* 802BE0E4 002BB044  38 00 00 00 */	li r0, 0
/* 802BE0E8 002BB048  80 61 00 28 */	lwz r3, 0x28(r1)
/* 802BE0EC 002BB04C  98 85 00 00 */	stb r4, 0(r5)
/* 802BE0F0 002BB050  90 65 00 04 */	stw r3, 4(r5)
/* 802BE0F4 002BB054  98 01 00 24 */	stb r0, 0x24(r1)
lbl_802BE0F8:
/* 802BE0F8 002BB058  80 7E 00 04 */	lwz r3, 4(r30)
/* 802BE0FC 002BB05C  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802BE100 002BB060  38 63 00 01 */	addi r3, r3, 1
/* 802BE104 002BB064  28 00 00 00 */	cmplwi r0, 0
/* 802BE108 002BB068  90 7E 00 04 */	stw r3, 4(r30)
/* 802BE10C 002BB06C  41 82 00 0C */	beq lbl_802BE118
/* 802BE110 002BB070  80 61 00 28 */	lwz r3, 0x28(r1)
/* 802BE114 002BB074  48 05 78 1D */	bl Free__7CMemoryFPCv
lbl_802BE118:
/* 802BE118 002BB078  3B BD 00 74 */	addi r29, r29, 0x74
/* 802BE11C 002BB07C  3B 9C 00 01 */	addi r28, r28, 1
lbl_802BE120:
/* 802BE120 002BB080  80 19 00 04 */	lwz r0, 4(r25)
/* 802BE124 002BB084  7C 1C 00 00 */	cmpw r28, r0
/* 802BE128 002BB088  41 80 FE F8 */	blt lbl_802BE020
lbl_802BE12C:
/* 802BE12C 002BB08C  7F 24 CB 78 */	mr r4, r25
/* 802BE130 002BB090  7F 45 D3 78 */	mr r5, r26
/* 802BE134 002BB094  7F 68 DB 78 */	mr r8, r27
/* 802BE138 002BB098  38 61 00 3C */	addi r3, r1, 0x3c
/* 802BE13C 002BB09C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 802BE140 002BB0A0  38 E1 00 34 */	addi r7, r1, 0x34
/* 802BE144 002BB0A4  48 00 12 21 */	bl __ct__Q213CCubeRenderer13CAreaListItem
/* 802BE148 002BB0A8  38 78 00 1C */	addi r3, r24, 0x1c
/* 802BE14C 002BB0AC  38 81 00 3C */	addi r4, r1, 0x3c
/* 802BE150 002BB0B0  48 00 00 41 */	bl sub_802be190
/* 802BE154 002BB0B4  38 61 00 3C */	addi r3, r1, 0x3c
/* 802BE158 002BB0B8  38 80 FF FF */	li r4, -1
/* 802BE15C 002BB0BC  48 00 02 5D */	bl sub_802be3b8
/* 802BE160 002BB0C0  48 0B 9E 25 */	bl GXInvalidateVtxCache
/* 802BE164 002BB0C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 802BE168 002BB0C8  38 80 FF FF */	li r4, -1
/* 802BE16C 002BB0CC  48 00 02 F9 */	bl sub_802be464
/* 802BE170 002BB0D0  38 61 00 34 */	addi r3, r1, 0x34
/* 802BE174 002BB0D4  38 80 FF FF */	li r4, -1
/* 802BE178 002BB0D8  48 00 04 05 */	bl sub_802be57c
lbl_802BE17C:
/* 802BE17C 002BB0DC  BB 01 00 70 */	lmw r24, 0x70(r1)
/* 802BE180 002BB0E0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802BE184 002BB0E4  7C 08 03 A6 */	mtlr r0
/* 802BE188 002BB0E8  38 21 00 90 */	addi r1, r1, 0x90
/* 802BE18C 002BB0EC  4E 80 00 20 */	blr

.global sub_802be190
sub_802be190:
/* 802BE190 002BB0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE194 002BB0F4  7C 08 02 A6 */	mflr r0
/* 802BE198 002BB0F8  7C 85 23 78 */	mr r5, r4
/* 802BE19C 002BB0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE1A0 002BB100  80 83 00 08 */	lwz r4, 8(r3)
/* 802BE1A4 002BB104  48 00 00 15 */	bl sub_802be1b8
/* 802BE1A8 002BB108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE1AC 002BB10C  7C 08 03 A6 */	mtlr r0
/* 802BE1B0 002BB110  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE1B4 002BB114  4E 80 00 20 */	blr

.global sub_802be1b8
sub_802be1b8:
/* 802BE1B8 002BB118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE1BC 002BB11C  7C 08 02 A6 */	mflr r0
/* 802BE1C0 002BB120  7C A6 2B 78 */	mr r6, r5
/* 802BE1C4 002BB124  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE1C8 002BB128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE1CC 002BB12C  7C 9F 23 78 */	mr r31, r4
/* 802BE1D0 002BB130  7F E5 FB 78 */	mr r5, r31
/* 802BE1D4 002BB134  93 C1 00 08 */	stw r30, 8(r1)
/* 802BE1D8 002BB138  7C 7E 1B 78 */	mr r30, r3
/* 802BE1DC 002BB13C  80 84 00 00 */	lwz r4, 0(r4)
/* 802BE1E0 002BB140  48 00 00 49 */	bl sub_802be228
/* 802BE1E4 002BB144  80 1E 00 04 */	lwz r0, 4(r30)
/* 802BE1E8 002BB148  7C 1F 00 40 */	cmplw r31, r0
/* 802BE1EC 002BB14C  40 82 00 08 */	bne lbl_802BE1F4
/* 802BE1F0 002BB150  90 7E 00 04 */	stw r3, 4(r30)
lbl_802BE1F4:
/* 802BE1F4 002BB154  80 83 00 00 */	lwz r4, 0(r3)
/* 802BE1F8 002BB158  90 64 00 04 */	stw r3, 4(r4)
/* 802BE1FC 002BB15C  80 83 00 04 */	lwz r4, 4(r3)
/* 802BE200 002BB160  90 64 00 00 */	stw r3, 0(r4)
/* 802BE204 002BB164  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 802BE208 002BB168  38 04 00 01 */	addi r0, r4, 1
/* 802BE20C 002BB16C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802BE210 002BB170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE214 002BB174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE218 002BB178  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BE21C 002BB17C  7C 08 03 A6 */	mtlr r0
/* 802BE220 002BB180  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE224 002BB184  4E 80 00 20 */	blr

.global sub_802be228
sub_802be228:
/* 802BE228 002BB188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE22C 002BB18C  7C 08 02 A6 */	mflr r0
/* 802BE230 002BB190  3C 60 80 3D */	lis r3, lbl_803D685C@ha
/* 802BE234 002BB194  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE238 002BB198  38 03 68 5C */	addi r0, r3, lbl_803D685C@l
/* 802BE23C 002BB19C  38 60 00 34 */	li r3, 0x34
/* 802BE240 002BB1A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BE244 002BB1A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BE248 002BB1A8  7C DE 33 78 */	mr r30, r6
/* 802BE24C 002BB1AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BE250 002BB1B0  7C BD 2B 78 */	mr r29, r5
/* 802BE254 002BB1B4  38 A0 00 00 */	li r5, 0
/* 802BE258 002BB1B8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802BE25C 002BB1BC  7C 9C 23 78 */	mr r28, r4
/* 802BE260 002BB1C0  7C 04 03 78 */	mr r4, r0
/* 802BE264 002BB1C4  48 05 75 B5 */	bl __nwa__FUlPCcPCc
/* 802BE268 002BB1C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802BE26C 002BB1CC  41 82 00 0C */	beq lbl_802BE278
/* 802BE270 002BB1D0  93 9F 00 00 */	stw r28, 0(r31)
/* 802BE274 002BB1D4  93 BF 00 04 */	stw r29, 4(r31)
lbl_802BE278:
/* 802BE278 002BB1D8  34 7F 00 08 */	addic. r3, r31, 8
/* 802BE27C 002BB1DC  41 82 00 0C */	beq lbl_802BE288
/* 802BE280 002BB1E0  7F C4 F3 78 */	mr r4, r30
/* 802BE284 002BB1E4  48 00 00 29 */	bl sub_802be2ac
lbl_802BE288:
/* 802BE288 002BB1E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE28C 002BB1EC  7F E3 FB 78 */	mr r3, r31
/* 802BE290 002BB1F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BE294 002BB1F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BE298 002BB1F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BE29C 002BB1FC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802BE2A0 002BB200  7C 08 03 A6 */	mtlr r0
/* 802BE2A4 002BB204  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE2A8 002BB208  4E 80 00 20 */	blr

.global sub_802be2ac
sub_802be2ac:
/* 802BE2AC 002BB20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE2B0 002BB210  7C 08 02 A6 */	mflr r0
/* 802BE2B4 002BB214  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE2B8 002BB218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE2BC 002BB21C  7C 9F 23 78 */	mr r31, r4
/* 802BE2C0 002BB220  93 C1 00 08 */	stw r30, 8(r1)
/* 802BE2C4 002BB224  7C 7E 1B 78 */	mr r30, r3
/* 802BE2C8 002BB228  38 60 00 00 */	li r3, 0
/* 802BE2CC 002BB22C  80 04 00 00 */	lwz r0, 0(r4)
/* 802BE2D0 002BB230  90 1E 00 00 */	stw r0, 0(r30)
/* 802BE2D4 002BB234  80 04 00 04 */	lwz r0, 4(r4)
/* 802BE2D8 002BB238  90 1E 00 04 */	stw r0, 4(r30)
/* 802BE2DC 002BB23C  88 04 00 08 */	lbz r0, 8(r4)
/* 802BE2E0 002BB240  98 1E 00 08 */	stb r0, 8(r30)
/* 802BE2E4 002BB244  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802BE2E8 002BB248  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802BE2EC 002BB24C  98 64 00 08 */	stb r3, 8(r4)
/* 802BE2F0 002BB250  88 04 00 10 */	lbz r0, 0x10(r4)
/* 802BE2F4 002BB254  98 1E 00 10 */	stb r0, 0x10(r30)
/* 802BE2F8 002BB258  80 04 00 14 */	lwz r0, 0x14(r4)
/* 802BE2FC 002BB25C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802BE300 002BB260  98 64 00 10 */	stb r3, 0x10(r4)
/* 802BE304 002BB264  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802BE308 002BB268  90 1E 00 18 */	stw r0, 0x18(r30)
/* 802BE30C 002BB26C  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802BE310 002BB270  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802BE314 002BB274  80 04 00 24 */	lwz r0, 0x24(r4)
/* 802BE318 002BB278  90 1E 00 24 */	stw r0, 0x24(r30)
/* 802BE31C 002BB27C  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802BE320 002BB280  2C 00 00 00 */	cmpwi r0, 0
/* 802BE324 002BB284  40 82 00 18 */	bne lbl_802BE33C
/* 802BE328 002BB288  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 802BE32C 002BB28C  2C 00 00 00 */	cmpwi r0, 0
/* 802BE330 002BB290  40 82 00 0C */	bne lbl_802BE33C
/* 802BE334 002BB294  90 7E 00 28 */	stw r3, 0x28(r30)
/* 802BE338 002BB298  48 00 00 64 */	b lbl_802BE39C
lbl_802BE33C:
/* 802BE33C 002BB29C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 802BE340 002BB2A0  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 802BE344 002BB2A4  40 82 00 10 */	bne lbl_802BE354
/* 802BE348 002BB2A8  38 00 00 00 */	li r0, 0
/* 802BE34C 002BB2AC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802BE350 002BB2B0  48 00 00 18 */	b lbl_802BE368
lbl_802BE354:
/* 802BE354 002BB2B4  3C 80 80 3D */	lis r4, lbl_803D685C@ha
/* 802BE358 002BB2B8  38 A0 00 00 */	li r5, 0
/* 802BE35C 002BB2BC  38 84 68 5C */	addi r4, r4, lbl_803D685C@l
/* 802BE360 002BB2C0  48 05 74 B9 */	bl __nwa__FUlPCcPCc
/* 802BE364 002BB2C4  90 7E 00 28 */	stw r3, 0x28(r30)
lbl_802BE368:
/* 802BE368 002BB2C8  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802BE36C 002BB2CC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802BE370 002BB2D0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802BE374 002BB2D4  7C 09 03 A6 */	mtctr r0
/* 802BE378 002BB2D8  2C 00 00 00 */	cmpwi r0, 0
/* 802BE37C 002BB2DC  40 81 00 20 */	ble lbl_802BE39C
lbl_802BE380:
/* 802BE380 002BB2E0  28 03 00 00 */	cmplwi r3, 0
/* 802BE384 002BB2E4  41 82 00 0C */	beq lbl_802BE390
/* 802BE388 002BB2E8  80 04 00 00 */	lwz r0, 0(r4)
/* 802BE38C 002BB2EC  90 03 00 00 */	stw r0, 0(r3)
lbl_802BE390:
/* 802BE390 002BB2F0  38 63 00 04 */	addi r3, r3, 4
/* 802BE394 002BB2F4  38 84 00 04 */	addi r4, r4, 4
/* 802BE398 002BB2F8  42 00 FF E8 */	bdnz lbl_802BE380
lbl_802BE39C:
/* 802BE39C 002BB2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE3A0 002BB300  7F C3 F3 78 */	mr r3, r30
/* 802BE3A4 002BB304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE3A8 002BB308  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BE3AC 002BB30C  7C 08 03 A6 */	mtlr r0
/* 802BE3B0 002BB310  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE3B4 002BB314  4E 80 00 20 */	blr

.global sub_802be3b8
sub_802be3b8:
/* 802BE3B8 002BB318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BE3BC 002BB31C  7C 08 02 A6 */	mflr r0
/* 802BE3C0 002BB320  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE3C4 002BB324  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BE3C8 002BB328  7C 9F 23 78 */	mr r31, r4
/* 802BE3CC 002BB32C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BE3D0 002BB330  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BE3D4 002BB334  41 82 00 74 */	beq lbl_802BE448
/* 802BE3D8 002BB338  34 1E 00 1C */	addic. r0, r30, 0x1c
/* 802BE3DC 002BB33C  41 82 00 44 */	beq lbl_802BE420
/* 802BE3E0 002BB340  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802BE3E4 002BB344  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 802BE3E8 002BB348  54 00 10 3A */	slwi r0, r0, 2
/* 802BE3EC 002BB34C  7C 03 02 14 */	add r0, r3, r0
/* 802BE3F0 002BB350  90 61 00 0C */	stw r3, 0xc(r1)
/* 802BE3F4 002BB354  7C 64 1B 78 */	mr r4, r3
/* 802BE3F8 002BB358  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE3FC 002BB35C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BE400 002BB360  90 61 00 08 */	stw r3, 8(r1)
/* 802BE404 002BB364  48 00 00 08 */	b lbl_802BE40C
lbl_802BE408:
/* 802BE408 002BB368  38 84 00 04 */	addi r4, r4, 4
lbl_802BE40C:
/* 802BE40C 002BB36C  7C 04 00 40 */	cmplw r4, r0
/* 802BE410 002BB370  40 82 FF F8 */	bne lbl_802BE408
/* 802BE414 002BB374  28 03 00 00 */	cmplwi r3, 0
/* 802BE418 002BB378  41 82 00 08 */	beq lbl_802BE420
/* 802BE41C 002BB37C  48 05 75 15 */	bl Free__7CMemoryFPCv
lbl_802BE420:
/* 802BE420 002BB380  38 7E 00 10 */	addi r3, r30, 0x10
/* 802BE424 002BB384  38 80 FF FF */	li r4, -1
/* 802BE428 002BB388  48 00 01 55 */	bl sub_802be57c
/* 802BE42C 002BB38C  38 7E 00 08 */	addi r3, r30, 8
/* 802BE430 002BB390  38 80 FF FF */	li r4, -1
/* 802BE434 002BB394  48 00 00 31 */	bl sub_802be464
/* 802BE438 002BB398  7F E0 07 35 */	extsh. r0, r31
/* 802BE43C 002BB39C  40 81 00 0C */	ble lbl_802BE448
/* 802BE440 002BB3A0  7F C3 F3 78 */	mr r3, r30
/* 802BE444 002BB3A4  48 05 74 ED */	bl Free__7CMemoryFPCv
lbl_802BE448:
/* 802BE448 002BB3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BE44C 002BB3AC  7F C3 F3 78 */	mr r3, r30
/* 802BE450 002BB3B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BE454 002BB3B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BE458 002BB3B8  7C 08 03 A6 */	mtlr r0
/* 802BE45C 002BB3BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802BE460 002BB3C0  4E 80 00 20 */	blr

.global sub_802be464
sub_802be464:
/* 802BE464 002BB3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE468 002BB3C8  7C 08 02 A6 */	mflr r0
/* 802BE46C 002BB3CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE470 002BB3D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE474 002BB3D4  7C 9F 23 78 */	mr r31, r4
/* 802BE478 002BB3D8  93 C1 00 08 */	stw r30, 8(r1)
/* 802BE47C 002BB3DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BE480 002BB3E0  41 82 00 2C */	beq lbl_802BE4AC
/* 802BE484 002BB3E4  88 1E 00 00 */	lbz r0, 0(r30)
/* 802BE488 002BB3E8  28 00 00 00 */	cmplwi r0, 0
/* 802BE48C 002BB3EC  41 82 00 10 */	beq lbl_802BE49C
/* 802BE490 002BB3F0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802BE494 002BB3F4  38 80 00 01 */	li r4, 1
/* 802BE498 002BB3F8  48 00 00 31 */	bl sub_802be4c8
lbl_802BE49C:
/* 802BE49C 002BB3FC  7F E0 07 35 */	extsh. r0, r31
/* 802BE4A0 002BB400  40 81 00 0C */	ble lbl_802BE4AC
/* 802BE4A4 002BB404  7F C3 F3 78 */	mr r3, r30
/* 802BE4A8 002BB408  48 05 74 89 */	bl Free__7CMemoryFPCv
lbl_802BE4AC:
/* 802BE4AC 002BB40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE4B0 002BB410  7F C3 F3 78 */	mr r3, r30
/* 802BE4B4 002BB414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE4B8 002BB418  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BE4BC 002BB41C  7C 08 03 A6 */	mtlr r0
/* 802BE4C0 002BB420  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE4C4 002BB424  4E 80 00 20 */	blr

.global sub_802be4c8
sub_802be4c8:
/* 802BE4C8 002BB428  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BE4CC 002BB42C  7C 08 02 A6 */	mflr r0
/* 802BE4D0 002BB430  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BE4D4 002BB434  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802BE4D8 002BB438  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802BE4DC 002BB43C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802BE4E0 002BB440  7C 9D 23 78 */	mr r29, r4
/* 802BE4E4 002BB444  93 81 00 20 */	stw r28, 0x20(r1)
/* 802BE4E8 002BB448  7C 7C 1B 79 */	or. r28, r3, r3
/* 802BE4EC 002BB44C  41 82 00 6C */	beq lbl_802BE558
/* 802BE4F0 002BB450  80 1C 00 04 */	lwz r0, 4(r28)
/* 802BE4F4 002BB454  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 802BE4F8 002BB458  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802BE4FC 002BB45C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802BE500 002BB460  7F FE 02 14 */	add r31, r30, r0
/* 802BE504 002BB464  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802BE508 002BB468  93 E1 00 08 */	stw r31, 8(r1)
/* 802BE50C 002BB46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE510 002BB470  48 00 00 20 */	b lbl_802BE530
lbl_802BE514:
/* 802BE514 002BB474  28 1E 00 00 */	cmplwi r30, 0
/* 802BE518 002BB478  41 82 00 14 */	beq lbl_802BE52C
/* 802BE51C 002BB47C  41 82 00 10 */	beq lbl_802BE52C
/* 802BE520 002BB480  7F C3 F3 78 */	mr r3, r30
/* 802BE524 002BB484  38 80 00 00 */	li r4, 0
/* 802BE528 002BB488  48 08 29 19 */	bl __dt__6CTokenFv
lbl_802BE52C:
/* 802BE52C 002BB48C  3B DE 00 0C */	addi r30, r30, 0xc
lbl_802BE530:
/* 802BE530 002BB490  7C 1E F8 40 */	cmplw r30, r31
/* 802BE534 002BB494  40 82 FF E0 */	bne lbl_802BE514
/* 802BE538 002BB498  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802BE53C 002BB49C  28 03 00 00 */	cmplwi r3, 0
/* 802BE540 002BB4A0  41 82 00 08 */	beq lbl_802BE548
/* 802BE544 002BB4A4  48 05 73 ED */	bl Free__7CMemoryFPCv
lbl_802BE548:
/* 802BE548 002BB4A8  7F A0 07 35 */	extsh. r0, r29
/* 802BE54C 002BB4AC  40 81 00 0C */	ble lbl_802BE558
/* 802BE550 002BB4B0  7F 83 E3 78 */	mr r3, r28
/* 802BE554 002BB4B4  48 05 73 DD */	bl Free__7CMemoryFPCv
lbl_802BE558:
/* 802BE558 002BB4B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BE55C 002BB4BC  7F 83 E3 78 */	mr r3, r28
/* 802BE560 002BB4C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802BE564 002BB4C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802BE568 002BB4C8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802BE56C 002BB4CC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802BE570 002BB4D0  7C 08 03 A6 */	mtlr r0
/* 802BE574 002BB4D4  38 21 00 30 */	addi r1, r1, 0x30
/* 802BE578 002BB4D8  4E 80 00 20 */	blr

.global sub_802be57c
sub_802be57c:
/* 802BE57C 002BB4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BE580 002BB4E0  7C 08 02 A6 */	mflr r0
/* 802BE584 002BB4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE588 002BB4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE58C 002BB4EC  7C 9F 23 78 */	mr r31, r4
/* 802BE590 002BB4F0  93 C1 00 08 */	stw r30, 8(r1)
/* 802BE594 002BB4F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BE598 002BB4F8  41 82 00 2C */	beq lbl_802BE5C4
/* 802BE59C 002BB4FC  88 1E 00 00 */	lbz r0, 0(r30)
/* 802BE5A0 002BB500  28 00 00 00 */	cmplwi r0, 0
/* 802BE5A4 002BB504  41 82 00 10 */	beq lbl_802BE5B4
/* 802BE5A8 002BB508  80 7E 00 04 */	lwz r3, 4(r30)
/* 802BE5AC 002BB50C  38 80 00 01 */	li r4, 1
/* 802BE5B0 002BB510  48 00 00 31 */	bl sub_802be5e0
lbl_802BE5B4:
/* 802BE5B4 002BB514  7F E0 07 35 */	extsh. r0, r31
/* 802BE5B8 002BB518  40 81 00 0C */	ble lbl_802BE5C4
/* 802BE5BC 002BB51C  7F C3 F3 78 */	mr r3, r30
/* 802BE5C0 002BB520  48 05 73 71 */	bl Free__7CMemoryFPCv
lbl_802BE5C4:
/* 802BE5C4 002BB524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BE5C8 002BB528  7F C3 F3 78 */	mr r3, r30
/* 802BE5CC 002BB52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BE5D0 002BB530  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BE5D4 002BB534  7C 08 03 A6 */	mtlr r0
/* 802BE5D8 002BB538  38 21 00 10 */	addi r1, r1, 0x10
/* 802BE5DC 002BB53C  4E 80 00 20 */	blr

.global sub_802be5e0
sub_802be5e0:
/* 802BE5E0 002BB540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BE5E4 002BB544  7C 08 02 A6 */	mflr r0
/* 802BE5E8 002BB548  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BE5EC 002BB54C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802BE5F0 002BB550  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802BE5F4 002BB554  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802BE5F8 002BB558  7C 9D 23 78 */	mr r29, r4
/* 802BE5FC 002BB55C  93 81 00 20 */	stw r28, 0x20(r1)
/* 802BE600 002BB560  7C 7C 1B 79 */	or. r28, r3, r3
/* 802BE604 002BB564  41 82 00 70 */	beq lbl_802BE674
/* 802BE608 002BB568  80 1C 00 04 */	lwz r0, 4(r28)
/* 802BE60C 002BB56C  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 802BE610 002BB570  54 00 18 38 */	slwi r0, r0, 3
/* 802BE614 002BB574  7F FE 02 14 */	add r31, r30, r0
/* 802BE618 002BB578  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802BE61C 002BB57C  93 E1 00 08 */	stw r31, 8(r1)
/* 802BE620 002BB580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BE624 002BB584  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802BE628 002BB588  48 00 00 24 */	b lbl_802BE64C
lbl_802BE62C:
/* 802BE62C 002BB58C  28 1E 00 00 */	cmplwi r30, 0
/* 802BE630 002BB590  41 82 00 18 */	beq lbl_802BE648
/* 802BE634 002BB594  88 1E 00 00 */	lbz r0, 0(r30)
/* 802BE638 002BB598  28 00 00 00 */	cmplwi r0, 0
/* 802BE63C 002BB59C  41 82 00 0C */	beq lbl_802BE648
/* 802BE640 002BB5A0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802BE644 002BB5A4  48 05 72 ED */	bl Free__7CMemoryFPCv
lbl_802BE648:
/* 802BE648 002BB5A8  3B DE 00 08 */	addi r30, r30, 8
lbl_802BE64C:
/* 802BE64C 002BB5AC  7C 1E F8 40 */	cmplw r30, r31
/* 802BE650 002BB5B0  40 82 FF DC */	bne lbl_802BE62C
/* 802BE654 002BB5B4  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802BE658 002BB5B8  28 03 00 00 */	cmplwi r3, 0
/* 802BE65C 002BB5BC  41 82 00 08 */	beq lbl_802BE664
/* 802BE660 002BB5C0  48 05 72 D1 */	bl Free__7CMemoryFPCv
lbl_802BE664:
/* 802BE664 002BB5C4  7F A0 07 35 */	extsh. r0, r29
/* 802BE668 002BB5C8  40 81 00 0C */	ble lbl_802BE674
/* 802BE66C 002BB5CC  7F 83 E3 78 */	mr r3, r28
/* 802BE670 002BB5D0  48 05 72 C1 */	bl Free__7CMemoryFPCv
lbl_802BE674:
/* 802BE674 002BB5D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BE678 002BB5D8  7F 83 E3 78 */	mr r3, r28
/* 802BE67C 002BB5DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802BE680 002BB5E0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802BE684 002BB5E4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802BE688 002BB5E8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802BE68C 002BB5EC  7C 08 03 A6 */	mtlr r0
/* 802BE690 002BB5F0  38 21 00 30 */	addi r1, r1, 0x30
/* 802BE694 002BB5F4  4E 80 00 20 */	blr

.global __dt__13CCubeRendererFv
__dt__13CCubeRendererFv:
/* 802BE698 002BB5F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BE69C 002BB5FC  7C 08 02 A6 */	mflr r0
/* 802BE6A0 002BB600  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BE6A4 002BB604  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802BE6A8 002BB608  7C 9F 23 78 */	mr r31, r4
/* 802BE6AC 002BB60C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802BE6B0 002BB610  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BE6B4 002BB614  41 82 02 38 */	beq lbl_802BE8EC
/* 802BE6B8 002BB618  3C 60 80 3F */	lis r3, __vt__13CCubeRenderer@ha
/* 802BE6BC 002BB61C  38 00 00 00 */	li r0, 0
/* 802BE6C0 002BB620  38 63 C5 D8 */	addi r3, r3, __vt__13CCubeRenderer@l
/* 802BE6C4 002BB624  90 7E 00 00 */	stw r3, 0(r30)
/* 802BE6C8 002BB628  38 63 01 0C */	addi r3, r3, 0x10c
/* 802BE6CC 002BB62C  90 7E 00 04 */	stw r3, 4(r30)
/* 802BE6D0 002BB630  90 0D A5 F0 */	stw r0, sRenderer__13CCubeRenderer@sda21(r13)
/* 802BE6D4 002BB634  48 00 17 89 */	bl Shutdown__7BucketsFv
/* 802BE6D8 002BB638  48 09 40 49 */	bl sub_80352720
/* 802BE6DC 002BB63C  80 7E 03 14 */	lwz r3, 0x314(r30)
/* 802BE6E0 002BB640  28 03 00 00 */	cmplwi r3, 0
/* 802BE6E4 002BB644  41 82 00 08 */	beq lbl_802BE6EC
/* 802BE6E8 002BB648  48 04 FA 25 */	bl sub_8030e10c__8CTextureFv
lbl_802BE6EC:
/* 802BE6EC 002BB64C  34 1E 03 14 */	addic. r0, r30, 0x314
/* 802BE6F0 002BB650  41 82 00 10 */	beq lbl_802BE700
/* 802BE6F4 002BB654  80 7E 03 14 */	lwz r3, 0x314(r30)
/* 802BE6F8 002BB658  38 80 00 01 */	li r4, 1
/* 802BE6FC 002BB65C  48 05 12 FD */	bl __dt__8CTextureFv
lbl_802BE700:
/* 802BE700 002BB660  34 1E 03 00 */	addic. r0, r30, 0x300
/* 802BE704 002BB664  41 82 00 44 */	beq lbl_802BE748
/* 802BE708 002BB668  80 1E 03 04 */	lwz r0, 0x304(r30)
/* 802BE70C 002BB66C  80 7E 03 0C */	lwz r3, 0x30c(r30)
/* 802BE710 002BB670  1C 00 00 50 */	mulli r0, r0, 0x50
/* 802BE714 002BB674  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802BE718 002BB678  7C 64 1B 78 */	mr r4, r3
/* 802BE71C 002BB67C  7C 03 02 14 */	add r0, r3, r0
/* 802BE720 002BB680  90 61 00 18 */	stw r3, 0x18(r1)
/* 802BE724 002BB684  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BE728 002BB688  90 01 00 20 */	stw r0, 0x20(r1)
/* 802BE72C 002BB68C  48 00 00 08 */	b lbl_802BE734
lbl_802BE730:
/* 802BE730 002BB690  38 84 00 50 */	addi r4, r4, 0x50
lbl_802BE734:
/* 802BE734 002BB694  7C 04 00 40 */	cmplw r4, r0
/* 802BE738 002BB698  40 82 FF F8 */	bne lbl_802BE730
/* 802BE73C 002BB69C  28 03 00 00 */	cmplwi r3, 0
/* 802BE740 002BB6A0  41 82 00 08 */	beq lbl_802BE748
/* 802BE744 002BB6A4  48 05 71 ED */	bl Free__7CMemoryFPCv
lbl_802BE748:
/* 802BE748 002BB6A8  38 7E 02 C4 */	addi r3, r30, 0x2c4
/* 802BE74C 002BB6AC  38 80 FF FF */	li r4, -1
/* 802BE750 002BB6B0  48 00 1E E1 */	bl sub_802c0630
/* 802BE754 002BB6B4  38 7E 02 AC */	addi r3, r30, 0x2ac
/* 802BE758 002BB6B8  38 80 FF FF */	li r4, -1
/* 802BE75C 002BB6BC  48 00 1D AD */	bl sub_802c0508
/* 802BE760 002BB6C0  38 7E 02 88 */	addi r3, r30, 0x288
/* 802BE764 002BB6C4  38 80 FF FF */	li r4, -1
/* 802BE768 002BB6C8  48 04 F7 99 */	bl __dt__16CGraphicsPaletteFv
/* 802BE76C 002BB6CC  38 7E 02 20 */	addi r3, r30, 0x220
/* 802BE770 002BB6D0  38 80 FF FF */	li r4, -1
/* 802BE774 002BB6D4  48 05 12 85 */	bl __dt__8CTextureFv
/* 802BE778 002BB6D8  38 7E 01 B8 */	addi r3, r30, 0x1b8
/* 802BE77C 002BB6DC  38 80 FF FF */	li r4, -1
/* 802BE780 002BB6E0  48 05 12 79 */	bl __dt__8CTextureFv
/* 802BE784 002BB6E4  38 7E 01 50 */	addi r3, r30, 0x150
/* 802BE788 002BB6E8  38 80 FF FF */	li r4, -1
/* 802BE78C 002BB6EC  48 05 12 6D */	bl __dt__8CTextureFv
/* 802BE790 002BB6F0  34 1E 01 4C */	addic. r0, r30, 0x14c
/* 802BE794 002BB6F4  41 82 00 10 */	beq lbl_802BE7A4
/* 802BE798 002BB6F8  80 7E 01 4C */	lwz r3, 0x14c(r30)
/* 802BE79C 002BB6FC  38 80 00 01 */	li r4, 1
/* 802BE7A0 002BB700  48 05 12 59 */	bl __dt__8CTextureFv
lbl_802BE7A4:
/* 802BE7A4 002BB704  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 802BE7A8 002BB708  38 80 FF FF */	li r4, -1
/* 802BE7AC 002BB70C  48 05 12 4D */	bl __dt__8CTextureFv
/* 802BE7B0 002BB710  34 1E 00 C8 */	addic. r0, r30, 0xc8
/* 802BE7B4 002BB714  41 82 00 3C */	beq lbl_802BE7F0
/* 802BE7B8 002BB718  88 1E 00 DC */	lbz r0, 0xdc(r30)
/* 802BE7BC 002BB71C  28 00 00 00 */	cmplwi r0, 0
/* 802BE7C0 002BB720  41 82 00 28 */	beq lbl_802BE7E8
/* 802BE7C4 002BB724  34 7E 00 C8 */	addic. r3, r30, 0xc8
/* 802BE7C8 002BB728  41 82 00 20 */	beq lbl_802BE7E8
/* 802BE7CC 002BB72C  34 03 00 0C */	addic. r0, r3, 0xc
/* 802BE7D0 002BB730  41 82 00 18 */	beq lbl_802BE7E8
/* 802BE7D4 002BB734  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802BE7D8 002BB738  28 00 00 00 */	cmplwi r0, 0
/* 802BE7DC 002BB73C  41 82 00 0C */	beq lbl_802BE7E8
/* 802BE7E0 002BB740  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802BE7E4 002BB744  48 05 71 4D */	bl Free__7CMemoryFPCv
lbl_802BE7E8:
/* 802BE7E8 002BB748  38 00 00 00 */	li r0, 0
/* 802BE7EC 002BB74C  98 1E 00 DC */	stb r0, 0xdc(r30)
lbl_802BE7F0:
/* 802BE7F0 002BB750  34 1E 00 44 */	addic. r0, r30, 0x44
/* 802BE7F4 002BB754  41 82 00 60 */	beq lbl_802BE854
/* 802BE7F8 002BB758  34 1E 00 44 */	addic. r0, r30, 0x44
/* 802BE7FC 002BB75C  41 82 00 58 */	beq lbl_802BE854
/* 802BE800 002BB760  80 BE 00 44 */	lwz r5, 0x44(r30)
/* 802BE804 002BB764  38 60 00 00 */	li r3, 0
/* 802BE808 002BB768  2C 05 00 00 */	cmpwi r5, 0
/* 802BE80C 002BB76C  40 81 00 40 */	ble lbl_802BE84C
/* 802BE810 002BB770  2C 05 00 08 */	cmpwi r5, 8
/* 802BE814 002BB774  38 85 FF F8 */	addi r4, r5, -8
/* 802BE818 002BB778  40 81 00 20 */	ble lbl_802BE838
/* 802BE81C 002BB77C  38 04 00 07 */	addi r0, r4, 7
/* 802BE820 002BB780  54 00 E8 FE */	srwi r0, r0, 3
/* 802BE824 002BB784  7C 09 03 A6 */	mtctr r0
/* 802BE828 002BB788  2C 04 00 00 */	cmpwi r4, 0
/* 802BE82C 002BB78C  40 81 00 0C */	ble lbl_802BE838
lbl_802BE830:
/* 802BE830 002BB790  38 63 00 08 */	addi r3, r3, 8
/* 802BE834 002BB794  42 00 FF FC */	bdnz lbl_802BE830
lbl_802BE838:
/* 802BE838 002BB798  7C 03 28 50 */	subf r0, r3, r5
/* 802BE83C 002BB79C  7C 09 03 A6 */	mtctr r0
/* 802BE840 002BB7A0  7C 03 28 00 */	cmpw r3, r5
/* 802BE844 002BB7A4  40 80 00 08 */	bge lbl_802BE84C
lbl_802BE848:
/* 802BE848 002BB7A8  42 00 00 00 */	bdnz lbl_802BE848
lbl_802BE84C:
/* 802BE84C 002BB7AC  38 00 00 00 */	li r0, 0
/* 802BE850 002BB7B0  90 1E 00 44 */	stw r0, 0x44(r30)
lbl_802BE854:
/* 802BE854 002BB7B4  34 1E 00 34 */	addic. r0, r30, 0x34
/* 802BE858 002BB7B8  41 82 00 44 */	beq lbl_802BE89C
/* 802BE85C 002BB7BC  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 802BE860 002BB7C0  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 802BE864 002BB7C4  54 00 10 3A */	slwi r0, r0, 2
/* 802BE868 002BB7C8  7C 03 02 14 */	add r0, r3, r0
/* 802BE86C 002BB7CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802BE870 002BB7D0  7C 64 1B 78 */	mr r4, r3
/* 802BE874 002BB7D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BE878 002BB7D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BE87C 002BB7DC  90 61 00 08 */	stw r3, 8(r1)
/* 802BE880 002BB7E0  48 00 00 08 */	b lbl_802BE888
lbl_802BE884:
/* 802BE884 002BB7E4  38 84 00 04 */	addi r4, r4, 4
lbl_802BE888:
/* 802BE888 002BB7E8  7C 04 00 40 */	cmplw r4, r0
/* 802BE88C 002BB7EC  40 82 FF F8 */	bne lbl_802BE884
/* 802BE890 002BB7F0  28 03 00 00 */	cmplwi r3, 0
/* 802BE894 002BB7F4  41 82 00 08 */	beq lbl_802BE89C
/* 802BE898 002BB7F8  48 05 70 99 */	bl Free__7CMemoryFPCv
lbl_802BE89C:
/* 802BE89C 002BB7FC  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802BE8A0 002BB800  38 80 FF FF */	li r4, -1
/* 802BE8A4 002BB804  48 00 1B 05 */	bl sub_802c03a8
/* 802BE8A8 002BB808  38 7E 00 10 */	addi r3, r30, 0x10
/* 802BE8AC 002BB80C  38 80 FF FF */	li r4, -1
/* 802BE8B0 002BB810  48 04 77 11 */	bl __dt__5CFontFv
/* 802BE8B4 002BB814  34 1E 00 04 */	addic. r0, r30, 4
/* 802BE8B8 002BB818  41 82 00 10 */	beq lbl_802BE8C8
/* 802BE8BC 002BB81C  3C 60 80 3F */	lis r3, __vt__15IWeaponRenderer@ha
/* 802BE8C0 002BB820  38 03 C5 38 */	addi r0, r3, __vt__15IWeaponRenderer@l
/* 802BE8C4 002BB824  90 1E 00 04 */	stw r0, 4(r30)
lbl_802BE8C8:
/* 802BE8C8 002BB828  28 1E 00 00 */	cmplwi r30, 0
/* 802BE8CC 002BB82C  41 82 00 10 */	beq lbl_802BE8DC
/* 802BE8D0 002BB830  3C 60 80 3E */	lis r3, lbl_803D8D90@ha
/* 802BE8D4 002BB834  38 03 8D 90 */	addi r0, r3, lbl_803D8D90@l
/* 802BE8D8 002BB838  90 1E 00 00 */	stw r0, 0(r30)
lbl_802BE8DC:
/* 802BE8DC 002BB83C  7F E0 07 35 */	extsh. r0, r31
/* 802BE8E0 002BB840  40 81 00 0C */	ble lbl_802BE8EC
/* 802BE8E4 002BB844  7F C3 F3 78 */	mr r3, r30
/* 802BE8E8 002BB848  48 00 17 21 */	bl sub_802c0008
lbl_802BE8EC:
/* 802BE8EC 002BB84C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BE8F0 002BB850  7F C3 F3 78 */	mr r3, r30
/* 802BE8F4 002BB854  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802BE8F8 002BB858  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802BE8FC 002BB85C  7C 08 03 A6 */	mtlr r0
/* 802BE900 002BB860  38 21 00 30 */	addi r1, r1, 0x30
/* 802BE904 002BB864  4E 80 00 20 */	blr

.global sub_802be908
sub_802be908:
/* 802BE908 002BB868  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BE90C 002BB86C  7C 08 02 A6 */	mflr r0
/* 802BE910 002BB870  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BE914 002BB874  38 00 00 01 */	li r0, 1
/* 802BE918 002BB878  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802BE91C 002BB87C  7C 7F 1B 78 */	mr r31, r3
/* 802BE920 002BB880  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802BE924 002BB884  98 03 02 A4 */	stb r0, 0x2a4(r3)
/* 802BE928 002BB888  3C 60 80 3D */	lis r3, lbl_803D685C@ha
/* 802BE92C 002BB88C  38 A3 68 5C */	addi r5, r3, lbl_803D685C@l
/* 802BE930 002BB890  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802BE934 002BB894  38 61 00 08 */	addi r3, r1, 8
/* 802BE938 002BB898  38 A5 00 07 */	addi r5, r5, 7
/* 802BE93C 002BB89C  81 84 00 00 */	lwz r12, 0(r4)
/* 802BE940 002BB8A0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BE944 002BB8A4  7D 89 03 A6 */	mtctr r12
/* 802BE948 002BB8A8  4E 80 04 21 */	bctrl
/* 802BE94C 002BB8AC  3B C1 00 10 */	addi r30, r1, 0x10
/* 802BE950 002BB8B0  38 81 00 08 */	addi r4, r1, 8
/* 802BE954 002BB8B4  7F C3 F3 78 */	mr r3, r30
/* 802BE958 002BB8B8  48 08 25 51 */	bl __ct__6CTokenFRC6CToken
/* 802BE95C 002BB8BC  7F C3 F3 78 */	mr r3, r30
/* 802BE960 002BB8C0  48 08 24 AD */	bl GetObj__6CTokenFv
/* 802BE964 002BB8C4  80 03 00 04 */	lwz r0, 4(r3)
/* 802BE968 002BB8C8  38 61 00 08 */	addi r3, r1, 8
/* 802BE96C 002BB8CC  38 80 FF FF */	li r4, -1
/* 802BE970 002BB8D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BE974 002BB8D4  48 08 24 CD */	bl __dt__6CTokenFv
/* 802BE978 002BB8D8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802BE97C 002BB8DC  38 C0 00 00 */	li r6, 0
/* 802BE980 002BB8E0  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 802BE984 002BB8E4  28 05 00 00 */	cmplwi r5, 0
/* 802BE988 002BB8E8  41 82 00 B4 */	beq lbl_802BEA3C
/* 802BE98C 002BB8EC  38 00 00 02 */	li r0, 2
/* 802BE990 002BB8F0  7C 09 03 A6 */	mtctr r0
lbl_802BE994:
/* 802BE994 002BB8F4  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BE998 002BB8F8  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BE99C 002BB8FC  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BE9A0 002BB900  7C 04 33 2E */	sthx r0, r4, r6
/* 802BE9A4 002BB904  38 C6 00 02 */	addi r6, r6, 2
/* 802BE9A8 002BB908  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BE9AC 002BB90C  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BE9B0 002BB910  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BE9B4 002BB914  7C 04 33 2E */	sthx r0, r4, r6
/* 802BE9B8 002BB918  38 C6 00 02 */	addi r6, r6, 2
/* 802BE9BC 002BB91C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BE9C0 002BB920  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BE9C4 002BB924  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BE9C8 002BB928  7C 04 33 2E */	sthx r0, r4, r6
/* 802BE9CC 002BB92C  38 C6 00 02 */	addi r6, r6, 2
/* 802BE9D0 002BB930  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BE9D4 002BB934  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BE9D8 002BB938  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BE9DC 002BB93C  7C 04 33 2E */	sthx r0, r4, r6
/* 802BE9E0 002BB940  38 C6 00 02 */	addi r6, r6, 2
/* 802BE9E4 002BB944  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BE9E8 002BB948  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BE9EC 002BB94C  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BE9F0 002BB950  7C 04 33 2E */	sthx r0, r4, r6
/* 802BE9F4 002BB954  38 C6 00 02 */	addi r6, r6, 2
/* 802BE9F8 002BB958  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BE9FC 002BB95C  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA00 002BB960  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BEA04 002BB964  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA08 002BB968  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA0C 002BB96C  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BEA10 002BB970  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA14 002BB974  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BEA18 002BB978  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA1C 002BB97C  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA20 002BB980  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802BEA24 002BB984  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA28 002BB988  7C 03 32 2E */	lhzx r0, r3, r6
/* 802BEA2C 002BB98C  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA30 002BB990  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA34 002BB994  42 00 FF 60 */	bdnz lbl_802BE994
/* 802BEA38 002BB998  48 00 00 74 */	b lbl_802BEAAC
lbl_802BEA3C:
/* 802BEA3C 002BB99C  38 00 00 02 */	li r0, 2
/* 802BEA40 002BB9A0  7C 09 03 A6 */	mtctr r0
lbl_802BEA44:
/* 802BEA44 002BB9A4  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA48 002BB9A8  38 00 00 00 */	li r0, 0
/* 802BEA4C 002BB9AC  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA50 002BB9B0  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA54 002BB9B4  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA58 002BB9B8  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA5C 002BB9BC  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA60 002BB9C0  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA64 002BB9C4  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA68 002BB9C8  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA6C 002BB9CC  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA70 002BB9D0  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA74 002BB9D4  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA78 002BB9D8  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA7C 002BB9DC  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA80 002BB9E0  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA84 002BB9E4  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA88 002BB9E8  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA8C 002BB9EC  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA90 002BB9F0  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEA94 002BB9F4  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEA98 002BB9F8  38 C6 00 02 */	addi r6, r6, 2
/* 802BEA9C 002BB9FC  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802BEAA0 002BBA00  7C 04 33 2E */	sthx r0, r4, r6
/* 802BEAA4 002BBA04  38 C6 00 02 */	addi r6, r6, 2
/* 802BEAA8 002BBA08  42 00 FF 9C */	bdnz lbl_802BEA44
lbl_802BEAAC:
/* 802BEAAC 002BBA0C  38 7F 02 88 */	addi r3, r31, 0x288
/* 802BEAB0 002BBA10  48 04 F3 AD */	bl UnLock__16CGraphicsPaletteFv
/* 802BEAB4 002BBA14  38 61 00 10 */	addi r3, r1, 0x10
/* 802BEAB8 002BBA18  38 80 00 00 */	li r4, 0
/* 802BEABC 002BBA1C  48 08 23 85 */	bl __dt__6CTokenFv
/* 802BEAC0 002BBA20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BEAC4 002BBA24  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802BEAC8 002BBA28  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802BEACC 002BBA2C  7C 08 03 A6 */	mtlr r0
/* 802BEAD0 002BBA30  38 21 00 30 */	addi r1, r1, 0x30
/* 802BEAD4 002BBA34  4E 80 00 20 */	blr

.global sub_802bead8
sub_802bead8:
/* 802BEAD8 002BBA38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802BEADC 002BBA3C  7C 08 02 A6 */	mflr r0
/* 802BEAE0 002BBA40  90 01 00 94 */	stw r0, 0x94(r1)
/* 802BEAE4 002BBA44  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802BEAE8 002BBA48  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 802BEAEC 002BBA4C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802BEAF0 002BBA50  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 802BEAF4 002BBA54  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802BEAF8 002BBA58  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 802BEAFC 002BBA5C  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 802BEB00 002BBA60  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 802BEB04 002BBA64  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 802BEB08 002BBA68  7C 7B 1B 78 */	mr r27, r3
/* 802BEB0C 002BBA6C  38 60 00 01 */	li r3, 1
/* 802BEB10 002BBA70  88 1B 02 2A */	lbz r0, 0x22a(r27)
/* 802BEB14 002BBA74  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BEB18 002BBA78  38 7B 02 20 */	addi r3, r27, 0x220
/* 802BEB1C 002BBA7C  38 80 00 00 */	li r4, 0
/* 802BEB20 002BBA80  98 1B 02 2A */	stb r0, 0x22a(r27)
/* 802BEB24 002BBA84  48 04 FA B1 */	bl GetBitMapData__8CTextureFi
/* 802BEB28 002BBA88  CB 82 C2 A0 */	lfd f28, lbl_805ADFC0@sda21(r2)
/* 802BEB2C 002BBA8C  7C 7F 1B 78 */	mr r31, r3
/* 802BEB30 002BBA90  C3 A2 C3 14 */	lfs f29, lbl_805AE034@sda21(r2)
/* 802BEB34 002BBA94  3B 80 00 00 */	li r28, 0
/* 802BEB38 002BBA98  C3 C2 C2 70 */	lfs f30, lbl_805ADF90@sda21(r2)
/* 802BEB3C 002BBA9C  3B A0 00 00 */	li r29, 0
/* 802BEB40 002BBAA0  C3 E2 C2 B8 */	lfs f31, lbl_805ADFD8@sda21(r2)
/* 802BEB44 002BBAA4  3F 40 43 30 */	lis r26, 0x4330
lbl_802BEB48:
/* 802BEB48 002BBAA8  57 80 F0 02 */	slwi r0, r28, 0x1e
/* 802BEB4C 002BBAAC  57 84 0F FE */	srwi r4, r28, 0x1f
/* 802BEB50 002BBAB0  7C 64 00 50 */	subf r3, r4, r0
/* 802BEB54 002BBAB4  7F 80 16 70 */	srawi r0, r28, 2
/* 802BEB58 002BBAB8  54 63 10 3E */	rotlwi r3, r3, 2
/* 802BEB5C 002BBABC  7F DF EA 14 */	add r30, r31, r29
/* 802BEB60 002BBAC0  7C 63 22 14 */	add r3, r3, r4
/* 802BEB64 002BBAC4  7C 00 01 94 */	addze r0, r0
/* 802BEB68 002BBAC8  54 79 18 38 */	slwi r25, r3, 3
/* 802BEB6C 002BBACC  3A E0 00 00 */	li r23, 0
/* 802BEB70 002BBAD0  54 18 10 3A */	slwi r24, r0, 2
lbl_802BEB74:
/* 802BEB74 002BBAD4  7E E0 1E 70 */	srawi r0, r23, 3
/* 802BEB78 002BBAD8  56 E3 07 7E */	clrlwi r3, r23, 0x1d
/* 802BEB7C 002BBADC  7C 18 02 14 */	add r0, r24, r0
/* 802BEB80 002BBAE0  93 41 00 18 */	stw r26, 0x18(r1)
/* 802BEB84 002BBAE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BEB88 002BBAE8  7C 79 1A 14 */	add r3, r25, r3
/* 802BEB8C 002BBAEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802BEB90 002BBAF0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802BEB94 002BBAF4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802BEB98 002BBAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BEB9C 002BBAFC  EC 00 E0 28 */	fsubs f0, f0, f28
/* 802BEBA0 002BBB00  93 41 00 10 */	stw r26, 0x10(r1)
/* 802BEBA4 002BBB04  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802BEBA8 002BBB08  EC 00 E8 24 */	fdivs f0, f0, f29
/* 802BEBAC 002BBB0C  EC 21 E0 28 */	fsubs f1, f1, f28
/* 802BEBB0 002BBB10  EC 40 F0 28 */	fsubs f2, f0, f30
/* 802BEBB4 002BBB14  EC 01 E8 24 */	fdivs f0, f1, f29
/* 802BEBB8 002BBB18  EC 20 F0 28 */	fsubs f1, f0, f30
/* 802BEBBC 002BBB1C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 802BEBC0 002BBB20  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 802BEBC4 002BBB24  48 05 69 3D */	bl SqrtF__5CMathFf
/* 802BEBC8 002BBB28  EC 01 F0 7C */	fnmsubs f0, f1, f1, f30
/* 802BEBCC 002BBB2C  38 81 00 08 */	addi r4, r1, 8
/* 802BEBD0 002BBB30  38 6D 9A C8 */	addi r3, r13, lbl_805A8688@sda21
/* 802BEBD4 002BBB34  38 AD 9A CC */	addi r5, r13, lbl_805A868C@sda21
/* 802BEBD8 002BBB38  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BEBDC 002BBB3C  4B D4 D6 D9 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802BEBE0 002BBB40  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BEBE4 002BBB44  3A F7 00 01 */	addi r23, r23, 1
/* 802BEBE8 002BBB48  2C 17 00 20 */	cmpwi r23, 0x20
/* 802BEBEC 002BBB4C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802BEBF0 002BBB50  FC 00 00 1E */	fctiwz f0, f0
/* 802BEBF4 002BBB54  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802BEBF8 002BBB58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BEBFC 002BBB5C  98 1E 00 00 */	stb r0, 0(r30)
/* 802BEC00 002BBB60  3B DE 00 01 */	addi r30, r30, 1
/* 802BEC04 002BBB64  41 80 FF 70 */	blt lbl_802BEB74
/* 802BEC08 002BBB68  3B 9C 00 01 */	addi r28, r28, 1
/* 802BEC0C 002BBB6C  3B BD 00 20 */	addi r29, r29, 0x20
/* 802BEC10 002BBB70  2C 1C 00 20 */	cmpwi r28, 0x20
/* 802BEC14 002BBB74  41 80 FF 34 */	blt lbl_802BEB48
/* 802BEC18 002BBB78  38 7B 02 20 */	addi r3, r27, 0x220
/* 802BEC1C 002BBB7C  48 04 FD 01 */	bl UnLock__8CTextureFv
/* 802BEC20 002BBB80  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 802BEC24 002BBB84  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802BEC28 002BBB88  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 802BEC2C 002BBB8C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802BEC30 002BBB90  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 802BEC34 002BBB94  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802BEC38 002BBB98  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 802BEC3C 002BBB9C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802BEC40 002BBBA0  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 802BEC44 002BBBA4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802BEC48 002BBBA8  7C 08 03 A6 */	mtlr r0
/* 802BEC4C 002BBBAC  38 21 00 90 */	addi r1, r1, 0x90
/* 802BEC50 002BBBB0  4E 80 00 20 */	blr

.global sub_802bec54
sub_802bec54:
/* 802BEC54 002BBBB4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802BEC58 002BBBB8  7C 08 02 A6 */	mflr r0
/* 802BEC5C 002BBBBC  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802BEC60 002BBBC0  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 802BEC64 002BBBC4  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 802BEC68 002BBBC8  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 802BEC6C 002BBBCC  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 802BEC70 002BBBD0  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 802BEC74 002BBBD4  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 802BEC78 002BBBD8  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 802BEC7C 002BBBDC  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 802BEC80 002BBBE0  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 802BEC84 002BBBE4  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 802BEC88 002BBBE8  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 802BEC8C 002BBBEC  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 802BEC90 002BBBF0  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 802BEC94 002BBBF4  F3 21 00 78 */	psq_st f25, 120(r1), 0, qr0
/* 802BEC98 002BBBF8  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 802BEC9C 002BBBFC  F3 01 00 68 */	psq_st f24, 104(r1), 0, qr0
/* 802BECA0 002BBC00  DA E1 00 50 */	stfd f23, 0x50(r1)
/* 802BECA4 002BBC04  F2 E1 00 58 */	psq_st f23, 88(r1), 0, qr0
/* 802BECA8 002BBC08  DA C1 00 40 */	stfd f22, 0x40(r1)
/* 802BECAC 002BBC0C  F2 C1 00 48 */	psq_st f22, 72(r1), 0, qr0
/* 802BECB0 002BBC10  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 802BECB4 002BBC14  7C 78 1B 78 */	mr r24, r3
/* 802BECB8 002BBC18  38 60 00 01 */	li r3, 1
/* 802BECBC 002BBC1C  88 18 01 C2 */	lbz r0, 0x1c2(r24)
/* 802BECC0 002BBC20  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BECC4 002BBC24  38 78 01 B8 */	addi r3, r24, 0x1b8
/* 802BECC8 002BBC28  38 80 00 00 */	li r4, 0
/* 802BECCC 002BBC2C  98 18 01 C2 */	stb r0, 0x1c2(r24)
/* 802BECD0 002BBC30  48 04 F9 05 */	bl GetBitMapData__8CTextureFi
/* 802BECD4 002BBC34  7C 7F 1B 78 */	mr r31, r3
/* 802BECD8 002BBC38  38 80 00 FF */	li r4, 0xff
/* 802BECDC 002BBC3C  3C A0 00 01 */	lis r5, 1
/* 802BECE0 002BBC40  4B D4 46 C9 */	bl memset
/* 802BECE4 002BBC44  CB 62 C3 18 */	lfd f27, lbl_805AE038@sda21(r2)
/* 802BECE8 002BBC48  3B 80 00 00 */	li r28, 0
/* 802BECEC 002BBC4C  CB 82 C3 20 */	lfd f28, lbl_805AE040@sda21(r2)
/* 802BECF0 002BBC50  3B A0 00 00 */	li r29, 0
/* 802BECF4 002BBC54  CB A2 C3 28 */	lfd f29, lbl_805AE048@sda21(r2)
/* 802BECF8 002BBC58  3E E0 43 30 */	lis r23, 0x4330
/* 802BECFC 002BBC5C  CB C2 C2 E0 */	lfd f30, lbl_805AE000@sda21(r2)
/* 802BED00 002BBC60  CB E2 C3 30 */	lfd f31, lbl_805AE050@sda21(r2)
/* 802BED04 002BBC64  CA C2 C3 38 */	lfd f22, lbl_805AE058@sda21(r2)
/* 802BED08 002BBC68  CA E2 C3 40 */	lfd f23, lbl_805AE060@sda21(r2)
/* 802BED0C 002BBC6C  C3 02 C2 80 */	lfs f24, lbl_805ADFA0@sda21(r2)
/* 802BED10 002BBC70  C3 22 C2 B8 */	lfs f25, lbl_805ADFD8@sda21(r2)
lbl_802BED14:
/* 802BED14 002BBC74  57 80 D8 08 */	slwi r0, r28, 0x1b
/* 802BED18 002BBC78  57 84 0F FE */	srwi r4, r28, 0x1f
/* 802BED1C 002BBC7C  7C 64 00 50 */	subf r3, r4, r0
/* 802BED20 002BBC80  7F 80 2E 70 */	srawi r0, r28, 5
/* 802BED24 002BBC84  54 63 28 3E */	rotlwi r3, r3, 5
/* 802BED28 002BBC88  7F DF EA 14 */	add r30, r31, r29
/* 802BED2C 002BBC8C  7C 63 22 14 */	add r3, r3, r4
/* 802BED30 002BBC90  7C 00 01 94 */	addze r0, r0
/* 802BED34 002BBC94  54 7B 18 38 */	slwi r27, r3, 3
/* 802BED38 002BBC98  3B 20 00 00 */	li r25, 0
/* 802BED3C 002BBC9C  54 1A 10 3A */	slwi r26, r0, 2
lbl_802BED40:
/* 802BED40 002BBCA0  7F 23 1E 70 */	srawi r3, r25, 3
/* 802BED44 002BBCA4  57 20 07 7E */	clrlwi r0, r25, 0x1d
/* 802BED48 002BBCA8  7C 7A 1A 14 */	add r3, r26, r3
/* 802BED4C 002BBCAC  92 E1 00 10 */	stw r23, 0x10(r1)
/* 802BED50 002BBCB0  7C 1B 02 14 */	add r0, r27, r0
/* 802BED54 002BBCB4  38 81 00 0C */	addi r4, r1, 0xc
/* 802BED58 002BBCB8  54 66 80 1E */	slwi r6, r3, 0x10
/* 802BED5C 002BBCBC  38 6D 9A C0 */	addi r3, r13, lbl_805A8680@sda21
/* 802BED60 002BBCC0  54 00 40 2E */	slwi r0, r0, 8
/* 802BED64 002BBCC4  38 AD 9A C4 */	addi r5, r13, lbl_805A8684@sda21
/* 802BED68 002BBCC8  7C C0 03 78 */	or r0, r6, r0
/* 802BED6C 002BBCCC  60 00 00 7F */	ori r0, r0, 0x7f
/* 802BED70 002BBCD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BED74 002BBCD4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802BED78 002BBCD8  FC 00 F0 28 */	fsub f0, f0, f30
/* 802BED7C 002BBCDC  FC 00 F8 24 */	fdiv f0, f0, f31
/* 802BED80 002BBCE0  FC 1D B0 38 */	fmsub f0, f29, f0, f22
/* 802BED84 002BBCE4  FC 1C 00 24 */	fdiv f0, f28, f0
/* 802BED88 002BBCE8  FC 00 00 50 */	fneg f0, f0
/* 802BED8C 002BBCEC  FC 00 B8 28 */	fsub f0, f0, f23
/* 802BED90 002BBCF0  FC 1B 00 32 */	fmul f0, f27, f0
/* 802BED94 002BBCF4  FC 00 E8 24 */	fdiv f0, f0, f29
/* 802BED98 002BBCF8  FC 00 00 18 */	frsp f0, f0
/* 802BED9C 002BBCFC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BEDA0 002BBD00  4B D4 D5 15 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802BEDA4 002BBD04  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BEDA8 002BBD08  EC 00 00 3A */	fmadds f0, f0, f0, f0
/* 802BEDAC 002BBD0C  EC 18 00 32 */	fmuls f0, f24, f0
/* 802BEDB0 002BBD10  EC 00 06 72 */	fmuls f0, f0, f25
/* 802BEDB4 002BBD14  FF 40 00 90 */	fmr f26, f0
/* 802BEDB8 002BBD18  F3 41 A0 08 */	psq_st f26, 8(r1), 1, qr2
/* 802BEDBC 002BBD1C  3B 39 00 01 */	addi r25, r25, 1
/* 802BEDC0 002BBD20  88 01 00 08 */	lbz r0, 8(r1)
/* 802BEDC4 002BBD24  98 1E 00 00 */	stb r0, 0(r30)
/* 802BEDC8 002BBD28  3B DE 00 01 */	addi r30, r30, 1
/* 802BEDCC 002BBD2C  2C 19 00 20 */	cmpwi r25, 0x20
/* 802BEDD0 002BBD30  41 80 FF 70 */	blt lbl_802BED40
/* 802BEDD4 002BBD34  3B 9C 00 01 */	addi r28, r28, 1
/* 802BEDD8 002BBD38  3B BD 00 20 */	addi r29, r29, 0x20
/* 802BEDDC 002BBD3C  2C 1C 08 00 */	cmpwi r28, 0x800
/* 802BEDE0 002BBD40  41 80 FF 34 */	blt lbl_802BED14
/* 802BEDE4 002BBD44  38 78 01 B8 */	addi r3, r24, 0x1b8
/* 802BEDE8 002BBD48  48 04 FB 35 */	bl UnLock__8CTextureFv
/* 802BEDEC 002BBD4C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 802BEDF0 002BBD50  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 802BEDF4 002BBD54  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 802BEDF8 002BBD58  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 802BEDFC 002BBD5C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 802BEE00 002BBD60  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 802BEE04 002BBD64  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 802BEE08 002BBD68  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 802BEE0C 002BBD6C  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 802BEE10 002BBD70  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 802BEE14 002BBD74  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 802BEE18 002BBD78  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 802BEE1C 002BBD7C  E3 21 00 78 */	psq_l f25, 120(r1), 0, qr0
/* 802BEE20 002BBD80  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 802BEE24 002BBD84  E3 01 00 68 */	psq_l f24, 104(r1), 0, qr0
/* 802BEE28 002BBD88  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 802BEE2C 002BBD8C  E2 E1 00 58 */	psq_l f23, 88(r1), 0, qr0
/* 802BEE30 002BBD90  CA E1 00 50 */	lfd f23, 0x50(r1)
/* 802BEE34 002BBD94  E2 C1 00 48 */	psq_l f22, 72(r1), 0, qr0
/* 802BEE38 002BBD98  CA C1 00 40 */	lfd f22, 0x40(r1)
/* 802BEE3C 002BBD9C  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 802BEE40 002BBDA0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 802BEE44 002BBDA4  7C 08 03 A6 */	mtlr r0
/* 802BEE48 002BBDA8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 802BEE4C 002BBDAC  4E 80 00 20 */	blr

.global sub_802bee50
sub_802bee50:
/* 802BEE50 002BBDB0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 802BEE54 002BBDB4  7C 08 02 A6 */	mflr r0
/* 802BEE58 002BBDB8  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802BEE5C 002BBDBC  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 802BEE60 002BBDC0  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 802BEE64 002BBDC4  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 802BEE68 002BBDC8  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 802BEE6C 002BBDCC  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 802BEE70 002BBDD0  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, qr0
/* 802BEE74 002BBDD4  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 802BEE78 002BBDD8  F3 81 00 98 */	psq_st f28, 152(r1), 0, qr0
/* 802BEE7C 002BBDDC  DB 61 00 80 */	stfd f27, 0x80(r1)
/* 802BEE80 002BBDE0  F3 61 00 88 */	psq_st f27, 136(r1), 0, qr0
/* 802BEE84 002BBDE4  DB 41 00 70 */	stfd f26, 0x70(r1)
/* 802BEE88 002BBDE8  F3 41 00 78 */	psq_st f26, 120(r1), 0, qr0
/* 802BEE8C 002BBDEC  BE 21 00 34 */	stmw r17, 0x34(r1)
/* 802BEE90 002BBDF0  7C 74 1B 78 */	mr r20, r3
/* 802BEE94 002BBDF4  38 60 00 01 */	li r3, 1
/* 802BEE98 002BBDF8  88 14 01 5A */	lbz r0, 0x15a(r20)
/* 802BEE9C 002BBDFC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802BEEA0 002BBE00  38 74 01 50 */	addi r3, r20, 0x150
/* 802BEEA4 002BBE04  38 80 00 00 */	li r4, 0
/* 802BEEA8 002BBE08  98 14 01 5A */	stb r0, 0x15a(r20)
/* 802BEEAC 002BBE0C  48 04 F7 29 */	bl GetBitMapData__8CTextureFi
/* 802BEEB0 002BBE10  CB 82 C2 A0 */	lfd f28, lbl_805ADFC0@sda21(r2)
/* 802BEEB4 002BBE14  7C 7B 1B 78 */	mr r27, r3
/* 802BEEB8 002BBE18  C3 C2 C3 48 */	lfs f30, lbl_805AE068@sda21(r2)
/* 802BEEBC 002BBE1C  3B 21 00 14 */	addi r25, r1, 0x14
/* 802BEEC0 002BBE20  C3 E2 C3 4C */	lfs f31, lbl_805AE06C@sda21(r2)
/* 802BEEC4 002BBE24  3B 00 00 00 */	li r24, 0
/* 802BEEC8 002BBE28  3B 40 00 00 */	li r26, 0
/* 802BEECC 002BBE2C  3E 40 43 30 */	lis r18, 0x4330
lbl_802BEED0:
/* 802BEED0 002BBE30  7F 7C DB 78 */	mr r28, r27
/* 802BEED4 002BBE34  3A E0 00 00 */	li r23, 0
/* 802BEED8 002BBE38  3B A0 00 00 */	li r29, 0
lbl_802BEEDC:
/* 802BEEDC 002BBE3C  3A C0 00 00 */	li r22, 0
/* 802BEEE0 002BBE40  7F 9E E3 78 */	mr r30, r28
lbl_802BEEE4:
/* 802BEEE4 002BBE44  38 16 FF F2 */	addi r0, r22, -14
/* 802BEEE8 002BBE48  7F DF F3 78 */	mr r31, r30
/* 802BEEEC 002BBE4C  7C 1A 02 14 */	add r0, r26, r0
/* 802BEEF0 002BBE50  3A A0 00 00 */	li r21, 0
/* 802BEEF4 002BBE54  6C 13 80 00 */	xoris r19, r0, 0x8000
lbl_802BEEF8:
/* 802BEEF8 002BBE58  38 15 FF F2 */	addi r0, r21, -14
/* 802BEEFC 002BBE5C  C3 62 C2 74 */	lfs f27, lbl_805ADF94@sda21(r2)
/* 802BEF00 002BBE60  7C 1D 02 14 */	add r0, r29, r0
/* 802BEF04 002BBE64  92 41 00 18 */	stw r18, 0x18(r1)
/* 802BEF08 002BBE68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BEF0C 002BBE6C  FF 40 D8 90 */	fmr f26, f27
/* 802BEF10 002BBE70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802BEF14 002BBE74  38 61 00 10 */	addi r3, r1, 0x10
/* 802BEF18 002BBE78  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802BEF1C 002BBE7C  92 61 00 24 */	stw r19, 0x24(r1)
/* 802BEF20 002BBE80  EC 20 E0 28 */	fsubs f1, f0, f28
/* 802BEF24 002BBE84  92 41 00 20 */	stw r18, 0x20(r1)
/* 802BEF28 002BBE88  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802BEF2C 002BBE8C  EC 40 E0 28 */	fsubs f2, f0, f28
/* 802BEF30 002BBE90  48 05 52 D1 */	bl __ct__9CVector2fFff
/* 802BEF34 002BBE94  38 61 00 10 */	addi r3, r1, 0x10
/* 802BEF38 002BBE98  48 05 51 BD */	bl Magnitude__9CVector2fCFv
/* 802BEF3C 002BBE9C  FF A0 08 90 */	fmr f29, f1
/* 802BEF40 002BBEA0  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 802BEF44 002BBEA4  4C 40 13 82 */	cror 2, 0, 2
/* 802BEF48 002BBEA8  40 82 00 28 */	bne lbl_802BEF70
/* 802BEF4C 002BBEAC  38 61 00 10 */	addi r3, r1, 0x10
/* 802BEF50 002BBEB0  48 05 52 61 */	bl Normalize__9CVector2fFv
/* 802BEF54 002BBEB4  C0 22 C3 48 */	lfs f1, lbl_805AE068@sda21(r2)
/* 802BEF58 002BBEB8  38 61 00 10 */	addi r3, r1, 0x10
/* 802BEF5C 002BBEBC  EC 01 E8 28 */	fsubs f0, f1, f29
/* 802BEF60 002BBEC0  EC 20 08 24 */	fdivs f1, f0, f1
/* 802BEF64 002BBEC4  48 05 51 E9 */	bl __amu__9CVector2fFf
/* 802BEF68 002BBEC8  C3 61 00 10 */	lfs f27, 0x10(r1)
/* 802BEF6C 002BBECC  C3 59 00 00 */	lfs f26, 0(r25)
lbl_802BEF70:
/* 802BEF70 002BBED0  EC 1F FE FA */	fmadds f0, f31, f27, f31
/* 802BEF74 002BBED4  38 81 00 0C */	addi r4, r1, 0xc
/* 802BEF78 002BBED8  38 6D 9A B0 */	addi r3, r13, lbl_805A8670@sda21
/* 802BEF7C 002BBEDC  38 AD 9A B4 */	addi r5, r13, lbl_805A8674@sda21
/* 802BEF80 002BBEE0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BEF84 002BBEE4  4B D4 D3 31 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802BEF88 002BBEE8  C0 23 00 00 */	lfs f1, 0(r3)
/* 802BEF8C 002BBEEC  EC 1F FE BA */	fmadds f0, f31, f26, f31
/* 802BEF90 002BBEF0  38 81 00 08 */	addi r4, r1, 8
/* 802BEF94 002BBEF4  38 6D 9A B8 */	addi r3, r13, lbl_805A8678@sda21
/* 802BEF98 002BBEF8  FC 20 08 1E */	fctiwz f1, f1
/* 802BEF9C 002BBEFC  38 AD 9A BC */	addi r5, r13, lbl_805A867C@sda21
/* 802BEFA0 002BBF00  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BEFA4 002BBF04  D8 21 00 20 */	stfd f1, 0x20(r1)
/* 802BEFA8 002BBF08  82 21 00 24 */	lwz r17, 0x24(r1)
/* 802BEFAC 002BBF0C  4B D4 D3 09 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802BEFB0 002BBF10  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BEFB4 002BBF14  3A B5 00 01 */	addi r21, r21, 1
/* 802BEFB8 002BBF18  56 20 44 2E */	rlwinm r0, r17, 8, 0x10, 0x17
/* 802BEFBC 002BBF1C  3B DE 00 02 */	addi r30, r30, 2
/* 802BEFC0 002BBF20  FC 00 00 1E */	fctiwz f0, f0
/* 802BEFC4 002BBF24  2C 15 00 04 */	cmpwi r21, 4
/* 802BEFC8 002BBF28  3B 9C 00 02 */	addi r28, r28, 2
/* 802BEFCC 002BBF2C  3B 7B 00 02 */	addi r27, r27, 2
/* 802BEFD0 002BBF30  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 802BEFD4 002BBF34  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802BEFD8 002BBF38  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 802BEFDC 002BBF3C  B0 1F 00 00 */	sth r0, 0(r31)
/* 802BEFE0 002BBF40  3B FF 00 02 */	addi r31, r31, 2
/* 802BEFE4 002BBF44  41 80 FF 14 */	blt lbl_802BEEF8
/* 802BEFE8 002BBF48  3A D6 00 01 */	addi r22, r22, 1
/* 802BEFEC 002BBF4C  2C 16 00 04 */	cmpwi r22, 4
/* 802BEFF0 002BBF50  41 80 FE F4 */	blt lbl_802BEEE4
/* 802BEFF4 002BBF54  3A F7 00 01 */	addi r23, r23, 1
/* 802BEFF8 002BBF58  3B BD 00 04 */	addi r29, r29, 4
/* 802BEFFC 002BBF5C  2C 17 00 08 */	cmpwi r23, 8
/* 802BF000 002BBF60  41 80 FE DC */	blt lbl_802BEEDC
/* 802BF004 002BBF64  3B 18 00 01 */	addi r24, r24, 1
/* 802BF008 002BBF68  3B 5A 00 04 */	addi r26, r26, 4
/* 802BF00C 002BBF6C  2C 18 00 08 */	cmpwi r24, 8
/* 802BF010 002BBF70  41 80 FE C0 */	blt lbl_802BEED0
/* 802BF014 002BBF74  38 74 01 50 */	addi r3, r20, 0x150
/* 802BF018 002BBF78  48 04 F9 05 */	bl UnLock__8CTextureFv
/* 802BF01C 002BBF7C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 802BF020 002BBF80  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 802BF024 002BBF84  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 802BF028 002BBF88  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 802BF02C 002BBF8C  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, qr0
/* 802BF030 002BBF90  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 802BF034 002BBF94  E3 81 00 98 */	psq_l f28, 152(r1), 0, qr0
/* 802BF038 002BBF98  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 802BF03C 002BBF9C  E3 61 00 88 */	psq_l f27, 136(r1), 0, qr0
/* 802BF040 002BBFA0  CB 61 00 80 */	lfd f27, 0x80(r1)
/* 802BF044 002BBFA4  E3 41 00 78 */	psq_l f26, 120(r1), 0, qr0
/* 802BF048 002BBFA8  CB 41 00 70 */	lfd f26, 0x70(r1)
/* 802BF04C 002BBFAC  BA 21 00 34 */	lmw r17, 0x34(r1)
/* 802BF050 002BBFB0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 802BF054 002BBFB4  7C 08 03 A6 */	mtlr r0
/* 802BF058 002BBFB8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 802BF05C 002BBFBC  4E 80 00 20 */	blr

.global __ct__13CCubeRendererFR12IObjectStoreR10COsContextR10CMemorySysR11CResFactory
__ct__13CCubeRendererFR12IObjectStoreR10COsContextR10CMemorySysR11CResFactory:
/* 802BF060 002BBFC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BF064 002BBFC4  7C 08 02 A6 */	mflr r0
/* 802BF068 002BBFC8  3C A0 80 3E */	lis r5, lbl_803D8D90@ha
/* 802BF06C 002BBFCC  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802BF070 002BBFD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BF074 002BBFD4  38 05 8D 90 */	addi r0, r5, lbl_803D8D90@l
/* 802BF078 002BBFD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BF07C 002BBFDC  7C 7F 1B 78 */	mr r31, r3
/* 802BF080 002BBFE0  3C 60 80 3F */	lis r3, __vt__15IWeaponRenderer@ha
/* 802BF084 002BBFE4  90 1F 00 00 */	stw r0, 0(r31)
/* 802BF088 002BBFE8  38 03 C5 38 */	addi r0, r3, __vt__15IWeaponRenderer@l
/* 802BF08C 002BBFEC  3C 60 80 3F */	lis r3, __vt__13CCubeRenderer@ha
/* 802BF090 002BBFF0  90 1F 00 04 */	stw r0, 4(r31)
/* 802BF094 002BBFF4  38 A3 C5 D8 */	addi r5, r3, __vt__13CCubeRenderer@l
/* 802BF098 002BBFF8  38 05 01 0C */	addi r0, r5, 0x10c
/* 802BF09C 002BBFFC  38 7F 00 10 */	addi r3, r31, 0x10
/* 802BF0A0 002BC000  90 BF 00 00 */	stw r5, 0(r31)
/* 802BF0A4 002BC004  90 1F 00 04 */	stw r0, 4(r31)
/* 802BF0A8 002BC008  90 FF 00 08 */	stw r7, 8(r31)
/* 802BF0AC 002BC00C  90 9F 00 0C */	stw r4, 0xc(r31)
/* 802BF0B0 002BC010  48 04 6F 4D */	bl __ct__5CFontFf
/* 802BF0B4 002BC014  38 C0 00 00 */	li r6, 0
/* 802BF0B8 002BC018  C0 42 C2 70 */	lfs f2, lbl_805ADF90@sda21(r2)
/* 802BF0BC 002BC01C  90 DF 00 18 */	stw r6, 0x18(r31)
/* 802BF0C0 002BC020  38 1F 00 28 */	addi r0, r31, 0x28
/* 802BF0C4 002BC024  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 802BF0C8 002BC028  FC 60 10 90 */	fmr f3, f2
/* 802BF0CC 002BC02C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802BF0D0 002BC030  38 83 66 70 */	addi r4, r3, sIdentity__12CTransform4f@l
/* 802BF0D4 002BC034  C0 22 C3 50 */	lfs f1, lbl_805AE070@sda21(r2)
/* 802BF0D8 002BC038  38 7F 00 44 */	addi r3, r31, 0x44
/* 802BF0DC 002BC03C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802BF0E0 002BC040  C0 82 C3 54 */	lfs f4, lbl_805AE074@sda21(r2)
/* 802BF0E4 002BC044  38 A0 00 00 */	li r5, 0
/* 802BF0E8 002BC048  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802BF0EC 002BC04C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802BF0F0 002BC050  90 DF 00 30 */	stw r6, 0x30(r31)
/* 802BF0F4 002BC054  90 DF 00 38 */	stw r6, 0x38(r31)
/* 802BF0F8 002BC058  90 DF 00 3C */	stw r6, 0x3c(r31)
/* 802BF0FC 002BC05C  90 DF 00 40 */	stw r6, 0x40(r31)
/* 802BF100 002BC060  48 08 61 55 */	bl __ct__14CFrustumPlanesFRC12CTransform4ffffbf
/* 802BF104 002BC064  38 00 00 00 */	li r0, 0
/* 802BF108 002BC068  C0 22 C2 74 */	lfs f1, lbl_805ADF94@sda21(r2)
/* 802BF10C 002BC06C  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 802BF110 002BC070  38 61 00 08 */	addi r3, r1, 8
/* 802BF114 002BC074  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BF118 002BC078  D0 21 00 08 */	stfs f1, 8(r1)
/* 802BF11C 002BC07C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BF120 002BC080  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802BF124 002BC084  48 05 57 D5 */	bl Normalize__9CVector3fFv
/* 802BF128 002BC088  C0 21 00 08 */	lfs f1, 8(r1)
/* 802BF12C 002BC08C  39 00 00 00 */	li r8, 0
/* 802BF130 002BC090  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BF134 002BC094  38 00 FF FF */	li r0, -1
/* 802BF138 002BC098  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
/* 802BF13C 002BC09C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 802BF140 002BC0A0  38 80 00 07 */	li r4, 7
/* 802BF144 002BC0A4  38 A0 00 04 */	li r5, 4
/* 802BF148 002BC0A8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 802BF14C 002BC0AC  38 C0 00 04 */	li r6, 4
/* 802BF150 002BC0B0  38 E0 00 01 */	li r7, 1
/* 802BF154 002BC0B4  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
/* 802BF158 002BC0B8  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802BF15C 002BC0BC  D0 3F 00 B8 */	stfs f1, 0xb8(r31)
/* 802BF160 002BC0C0  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 802BF164 002BC0C4  99 1F 00 C0 */	stb r8, 0xc0(r31)
/* 802BF168 002BC0C8  99 1F 00 DC */	stb r8, 0xdc(r31)
/* 802BF16C 002BC0CC  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 802BF170 002BC0D0  48 05 0C BD */	bl __ct__8CTextureF12ETexelFormatssi
/* 802BF174 002BC0D4  38 00 00 00 */	li r0, 0
/* 802BF178 002BC0D8  38 7F 01 50 */	addi r3, r31, 0x150
/* 802BF17C 002BC0DC  90 1F 01 4C */	stw r0, 0x14c(r31)
/* 802BF180 002BC0E0  38 80 00 03 */	li r4, 3
/* 802BF184 002BC0E4  38 A0 00 20 */	li r5, 0x20
/* 802BF188 002BC0E8  38 C0 00 20 */	li r6, 0x20
/* 802BF18C 002BC0EC  38 E0 00 01 */	li r7, 1
/* 802BF190 002BC0F0  48 05 0C 9D */	bl __ct__8CTextureF12ETexelFormatssi
/* 802BF194 002BC0F4  38 7F 01 B8 */	addi r3, r31, 0x1b8
/* 802BF198 002BC0F8  38 80 00 01 */	li r4, 1
/* 802BF19C 002BC0FC  38 A0 01 00 */	li r5, 0x100
/* 802BF1A0 002BC100  38 C0 01 00 */	li r6, 0x100
/* 802BF1A4 002BC104  38 E0 00 01 */	li r7, 1
/* 802BF1A8 002BC108  48 05 0C 85 */	bl __ct__8CTextureF12ETexelFormatssi
/* 802BF1AC 002BC10C  38 7F 02 20 */	addi r3, r31, 0x220
/* 802BF1B0 002BC110  38 80 00 01 */	li r4, 1
/* 802BF1B4 002BC114  38 A0 00 20 */	li r5, 0x20
/* 802BF1B8 002BC118  38 C0 00 20 */	li r6, 0x20
/* 802BF1BC 002BC11C  38 E0 00 01 */	li r7, 1
/* 802BF1C0 002BC120  48 05 0C 6D */	bl __ct__8CTextureF12ETexelFormatssi
/* 802BF1C4 002BC124  38 7F 02 88 */	addi r3, r31, 0x288
/* 802BF1C8 002BC128  38 80 00 01 */	li r4, 1
/* 802BF1CC 002BC12C  38 A0 00 10 */	li r5, 0x10
/* 802BF1D0 002BC130  48 04 EE A5 */	bl __ct__16CGraphicsPaletteF14EPaletteFormati
/* 802BF1D4 002BC134  38 7F 02 A8 */	addi r3, r31, 0x2a8
/* 802BF1D8 002BC138  38 80 00 14 */	li r4, 0x14
/* 802BF1DC 002BC13C  48 05 34 11 */	bl __ct__9CRandom16FUi
/* 802BF1E0 002BC140  38 BF 02 B8 */	addi r5, r31, 0x2b8
/* 802BF1E4 002BC144  38 80 00 00 */	li r4, 0
/* 802BF1E8 002BC148  90 BF 02 B0 */	stw r5, 0x2b0(r31)
/* 802BF1EC 002BC14C  38 7F 02 D0 */	addi r3, r31, 0x2d0
/* 802BF1F0 002BC150  38 00 00 02 */	li r0, 2
/* 802BF1F4 002BC154  90 BF 02 B4 */	stw r5, 0x2b4(r31)
/* 802BF1F8 002BC158  90 BF 02 B8 */	stw r5, 0x2b8(r31)
/* 802BF1FC 002BC15C  90 BF 02 BC */	stw r5, 0x2bc(r31)
/* 802BF200 002BC160  90 9F 02 C0 */	stw r4, 0x2c0(r31)
/* 802BF204 002BC164  90 7F 02 C8 */	stw r3, 0x2c8(r31)
/* 802BF208 002BC168  90 7F 02 CC */	stw r3, 0x2cc(r31)
/* 802BF20C 002BC16C  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 802BF210 002BC170  90 7F 02 D4 */	stw r3, 0x2d4(r31)
/* 802BF214 002BC174  90 9F 02 D8 */	stw r4, 0x2d8(r31)
/* 802BF218 002BC178  90 1F 02 DC */	stw r0, 0x2dc(r31)
/* 802BF21C 002BC17C  48 08 AD 91 */	bl White__6CColorFv
/* 802BF220 002BC180  80 03 00 00 */	lwz r0, 0(r3)
/* 802BF224 002BC184  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 802BF228 002BC188  38 E3 67 24 */	addi r7, r3, sForwardVector__9CVector3f@l
/* 802BF22C 002BC18C  C0 02 C2 70 */	lfs f0, lbl_805ADF90@sda21(r2)
/* 802BF230 002BC190  90 1F 02 E0 */	stw r0, 0x2e0(r31)
/* 802BF234 002BC194  38 00 00 FF */	li r0, 0xff
/* 802BF238 002BC198  38 C0 00 00 */	li r6, 0
/* 802BF23C 002BC19C  38 A0 00 01 */	li r5, 1
/* 802BF240 002BC1A0  C0 27 00 00 */	lfs f1, 0(r7)
/* 802BF244 002BC1A4  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 802BF248 002BC1A8  38 80 00 00 */	li r4, 0
/* 802BF24C 002BC1AC  D0 3F 02 E4 */	stfs f1, 0x2e4(r31)
/* 802BF250 002BC1B0  C0 27 00 04 */	lfs f1, 4(r7)
/* 802BF254 002BC1B4  D0 3F 02 E8 */	stfs f1, 0x2e8(r31)
/* 802BF258 002BC1B8  C0 27 00 08 */	lfs f1, 8(r7)
/* 802BF25C 002BC1BC  D0 3F 02 EC */	stfs f1, 0x2ec(r31)
/* 802BF260 002BC1C0  D0 1F 02 F0 */	stfs f0, 0x2f0(r31)
/* 802BF264 002BC1C4  98 1F 02 F4 */	stb r0, 0x2f4(r31)
/* 802BF268 002BC1C8  98 DF 02 F5 */	stb r6, 0x2f5(r31)
/* 802BF26C 002BC1CC  98 1F 02 F6 */	stb r0, 0x2f6(r31)
/* 802BF270 002BC1D0  98 1F 02 F7 */	stb r0, 0x2f7(r31)
/* 802BF274 002BC1D4  98 DF 02 F8 */	stb r6, 0x2f8(r31)
/* 802BF278 002BC1D8  98 1F 02 FC */	stb r0, 0x2fc(r31)
/* 802BF27C 002BC1DC  98 DF 02 FD */	stb r6, 0x2fd(r31)
/* 802BF280 002BC1E0  98 1F 02 FE */	stb r0, 0x2fe(r31)
/* 802BF284 002BC1E4  98 1F 02 FF */	stb r0, 0x2ff(r31)
/* 802BF288 002BC1E8  90 DF 03 04 */	stw r6, 0x304(r31)
/* 802BF28C 002BC1EC  90 DF 03 08 */	stw r6, 0x308(r31)
/* 802BF290 002BC1F0  90 DF 03 0C */	stw r6, 0x30c(r31)
/* 802BF294 002BC1F4  90 DF 03 10 */	stw r6, 0x310(r31)
/* 802BF298 002BC1F8  90 DF 03 14 */	stw r6, 0x314(r31)
/* 802BF29C 002BC1FC  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2A0 002BC200  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 802BF2A4 002BC204  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2A8 002BC208  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2AC 002BC20C  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 802BF2B0 002BC210  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2B4 002BC214  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2B8 002BC218  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 802BF2BC 002BC21C  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2C0 002BC220  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2C4 002BC224  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 802BF2C8 002BC228  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2CC 002BC22C  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2D0 002BC230  50 C0 1F 38 */	rlwimi r0, r6, 3, 0x1c, 0x1c
/* 802BF2D4 002BC234  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2D8 002BC238  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2DC 002BC23C  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 802BF2E0 002BC240  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2E4 002BC244  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2E8 002BC248  50 C0 0F BC */	rlwimi r0, r6, 1, 0x1e, 0x1e
/* 802BF2EC 002BC24C  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2F0 002BC250  88 1F 03 18 */	lbz r0, 0x318(r31)
/* 802BF2F4 002BC254  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 802BF2F8 002BC258  98 1F 03 18 */	stb r0, 0x318(r31)
/* 802BF2FC 002BC25C  88 1F 00 EE */	lbz r0, 0xee(r31)
/* 802BF300 002BC260  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 802BF304 002BC264  98 1F 00 EE */	stb r0, 0xee(r31)
/* 802BF308 002BC268  48 04 F2 CD */	bl GetBitMapData__8CTextureFi
/* 802BF30C 002BC26C  38 80 00 00 */	li r4, 0
/* 802BF310 002BC270  38 A0 00 20 */	li r5, 0x20
/* 802BF314 002BC274  4B D4 40 95 */	bl memset
/* 802BF318 002BC278  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 802BF31C 002BC27C  48 04 F6 01 */	bl UnLock__8CTextureFv
/* 802BF320 002BC280  7F E3 FB 78 */	mr r3, r31
/* 802BF324 002BC284  4B FF FB 2D */	bl sub_802bee50
/* 802BF328 002BC288  7F E3 FB 78 */	mr r3, r31
/* 802BF32C 002BC28C  4B FF F9 29 */	bl sub_802bec54
/* 802BF330 002BC290  7F E3 FB 78 */	mr r3, r31
/* 802BF334 002BC294  4B FF F7 A5 */	bl sub_802bead8
/* 802BF338 002BC298  7F E3 FB 78 */	mr r3, r31
/* 802BF33C 002BC29C  4B FF F5 CD */	bl sub_802be908
/* 802BF340 002BC2A0  93 ED A5 F0 */	stw r31, sRenderer__13CCubeRenderer@sda21(r13)
/* 802BF344 002BC2A4  48 00 0B 31 */	bl Init__7BucketsFv
/* 802BF348 002BC2A8  48 09 33 F9 */	bl sub_80352740
/* 802BF34C 002BC2AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BF350 002BC2B0  7F E3 FB 78 */	mr r3, r31
/* 802BF354 002BC2B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BF358 002BC2B8  7C 08 03 A6 */	mtlr r0
/* 802BF35C 002BC2BC  38 21 00 20 */	addi r1, r1, 0x20
/* 802BF360 002BC2C0  4E 80 00 20 */	blr

.global __ct__Q213CCubeRenderer13CAreaListItem
__ct__Q213CCubeRenderer13CAreaListItem:
/* 802BF364 002BC2C4  90 83 00 00 */	stw r4, 0(r3)
/* 802BF368 002BC2C8  39 20 00 00 */	li r9, 0
/* 802BF36C 002BC2CC  90 A3 00 04 */	stw r5, 4(r3)
/* 802BF370 002BC2D0  88 06 00 00 */	lbz r0, 0(r6)
/* 802BF374 002BC2D4  98 03 00 08 */	stb r0, 8(r3)
/* 802BF378 002BC2D8  80 06 00 04 */	lwz r0, 4(r6)
/* 802BF37C 002BC2DC  90 03 00 0C */	stw r0, 0xc(r3)
/* 802BF380 002BC2E0  99 26 00 00 */	stb r9, 0(r6)
/* 802BF384 002BC2E4  88 07 00 00 */	lbz r0, 0(r7)
/* 802BF388 002BC2E8  98 03 00 10 */	stb r0, 0x10(r3)
/* 802BF38C 002BC2EC  80 07 00 04 */	lwz r0, 4(r7)
/* 802BF390 002BC2F0  90 03 00 14 */	stw r0, 0x14(r3)
/* 802BF394 002BC2F4  99 27 00 00 */	stb r9, 0(r7)
/* 802BF398 002BC2F8  91 03 00 18 */	stw r8, 0x18(r3)
/* 802BF39C 002BC2FC  91 23 00 20 */	stw r9, 0x20(r3)
/* 802BF3A0 002BC300  91 23 00 24 */	stw r9, 0x24(r3)
/* 802BF3A4 002BC304  91 23 00 28 */	stw r9, 0x28(r3)
/* 802BF3A8 002BC308  4E 80 00 20 */	blr

.global Clear__7BucketsFv
Clear__7BucketsFv:
/* 802BF3AC 002BC30C  80 CD A6 0C */	lwz r6, sData__7Buckets@sda21(r13)
/* 802BF3B0 002BC310  38 60 00 00 */	li r3, 0
/* 802BF3B4 002BC314  80 A6 00 00 */	lwz r5, 0(r6)
/* 802BF3B8 002BC318  2C 05 00 00 */	cmpwi r5, 0
/* 802BF3BC 002BC31C  40 81 00 40 */	ble lbl_802BF3FC
/* 802BF3C0 002BC320  2C 05 00 08 */	cmpwi r5, 8
/* 802BF3C4 002BC324  38 85 FF F8 */	addi r4, r5, -8
/* 802BF3C8 002BC328  40 81 00 20 */	ble lbl_802BF3E8
/* 802BF3CC 002BC32C  38 04 00 07 */	addi r0, r4, 7
/* 802BF3D0 002BC330  54 00 E8 FE */	srwi r0, r0, 3
/* 802BF3D4 002BC334  7C 09 03 A6 */	mtctr r0
/* 802BF3D8 002BC338  2C 04 00 00 */	cmpwi r4, 0
/* 802BF3DC 002BC33C  40 81 00 0C */	ble lbl_802BF3E8
lbl_802BF3E0:
/* 802BF3E0 002BC340  38 63 00 08 */	addi r3, r3, 8
/* 802BF3E4 002BC344  42 00 FF FC */	bdnz lbl_802BF3E0
lbl_802BF3E8:
/* 802BF3E8 002BC348  7C 03 28 50 */	subf r0, r3, r5
/* 802BF3EC 002BC34C  7C 09 03 A6 */	mtctr r0
/* 802BF3F0 002BC350  7C 03 28 00 */	cmpw r3, r5
/* 802BF3F4 002BC354  40 80 00 08 */	bge lbl_802BF3FC
lbl_802BF3F8:
/* 802BF3F8 002BC358  42 00 00 00 */	bdnz lbl_802BF3F8
lbl_802BF3FC:
/* 802BF3FC 002BC35C  38 80 00 00 */	li r4, 0
/* 802BF400 002BC360  3C 60 80 47 */	lis r3, sBucketIndex__7Buckets@ha
/* 802BF404 002BC364  90 86 00 00 */	stw r4, 0(r6)
/* 802BF408 002BC368  80 A3 E2 0C */	lwz r5, sBucketIndex__7Buckets@l(r3)
/* 802BF40C 002BC36C  2C 05 00 00 */	cmpwi r5, 0
/* 802BF410 002BC370  40 81 00 40 */	ble lbl_802BF450
/* 802BF414 002BC374  2C 05 00 08 */	cmpwi r5, 8
/* 802BF418 002BC378  38 65 FF F8 */	addi r3, r5, -8
/* 802BF41C 002BC37C  40 81 00 20 */	ble lbl_802BF43C
/* 802BF420 002BC380  38 03 00 07 */	addi r0, r3, 7
/* 802BF424 002BC384  54 00 E8 FE */	srwi r0, r0, 3
/* 802BF428 002BC388  7C 09 03 A6 */	mtctr r0
/* 802BF42C 002BC38C  2C 03 00 00 */	cmpwi r3, 0
/* 802BF430 002BC390  40 81 00 0C */	ble lbl_802BF43C
lbl_802BF434:
/* 802BF434 002BC394  38 84 00 08 */	addi r4, r4, 8
/* 802BF438 002BC398  42 00 FF FC */	bdnz lbl_802BF434
lbl_802BF43C:
/* 802BF43C 002BC39C  7C 04 28 50 */	subf r0, r4, r5
/* 802BF440 002BC3A0  7C 09 03 A6 */	mtctr r0
/* 802BF444 002BC3A4  7C 04 28 00 */	cmpw r4, r5
/* 802BF448 002BC3A8  40 80 00 08 */	bge lbl_802BF450
lbl_802BF44C:
/* 802BF44C 002BC3AC  42 00 00 00 */	bdnz lbl_802BF44C
lbl_802BF450:
/* 802BF450 002BC3B0  3C 60 80 47 */	lis r3, sBucketIndex__7Buckets@ha
/* 802BF454 002BC3B4  38 80 00 00 */	li r4, 0
/* 802BF458 002BC3B8  80 CD A6 1C */	lwz r6, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BF45C 002BC3BC  90 83 E2 0C */	stw r4, sBucketIndex__7Buckets@l(r3)
/* 802BF460 002BC3C0  80 A6 00 00 */	lwz r5, 0(r6)
/* 802BF464 002BC3C4  2C 05 00 00 */	cmpwi r5, 0
/* 802BF468 002BC3C8  40 81 00 40 */	ble lbl_802BF4A8
/* 802BF46C 002BC3CC  2C 05 00 08 */	cmpwi r5, 8
/* 802BF470 002BC3D0  38 65 FF F8 */	addi r3, r5, -8
/* 802BF474 002BC3D4  40 81 00 20 */	ble lbl_802BF494
/* 802BF478 002BC3D8  38 03 00 07 */	addi r0, r3, 7
/* 802BF47C 002BC3DC  54 00 E8 FE */	srwi r0, r0, 3
/* 802BF480 002BC3E0  7C 09 03 A6 */	mtctr r0
/* 802BF484 002BC3E4  2C 03 00 00 */	cmpwi r3, 0
/* 802BF488 002BC3E8  40 81 00 0C */	ble lbl_802BF494
lbl_802BF48C:
/* 802BF48C 002BC3EC  38 84 00 08 */	addi r4, r4, 8
/* 802BF490 002BC3F0  42 00 FF FC */	bdnz lbl_802BF48C
lbl_802BF494:
/* 802BF494 002BC3F4  7C 04 28 50 */	subf r0, r4, r5
/* 802BF498 002BC3F8  7C 09 03 A6 */	mtctr r0
/* 802BF49C 002BC3FC  7C 04 28 00 */	cmpw r4, r5
/* 802BF4A0 002BC400  40 80 00 08 */	bge lbl_802BF4A8
lbl_802BF4A4:
/* 802BF4A4 002BC404  42 00 00 00 */	bdnz lbl_802BF4A4
lbl_802BF4A8:
/* 802BF4A8 002BC408  38 60 00 00 */	li r3, 0
/* 802BF4AC 002BC40C  90 66 00 00 */	stw r3, 0(r6)
/* 802BF4B0 002BC410  80 CD A6 20 */	lwz r6, sPlaneObjectBucket__7Buckets@sda21(r13)
/* 802BF4B4 002BC414  80 A6 00 00 */	lwz r5, 0(r6)
/* 802BF4B8 002BC418  2C 05 00 00 */	cmpwi r5, 0
/* 802BF4BC 002BC41C  40 81 00 40 */	ble lbl_802BF4FC
/* 802BF4C0 002BC420  2C 05 00 08 */	cmpwi r5, 8
/* 802BF4C4 002BC424  38 85 FF F8 */	addi r4, r5, -8
/* 802BF4C8 002BC428  40 81 00 20 */	ble lbl_802BF4E8
/* 802BF4CC 002BC42C  38 04 00 07 */	addi r0, r4, 7
/* 802BF4D0 002BC430  54 00 E8 FE */	srwi r0, r0, 3
/* 802BF4D4 002BC434  7C 09 03 A6 */	mtctr r0
/* 802BF4D8 002BC438  2C 04 00 00 */	cmpwi r4, 0
/* 802BF4DC 002BC43C  40 81 00 0C */	ble lbl_802BF4E8
lbl_802BF4E0:
/* 802BF4E0 002BC440  38 63 00 08 */	addi r3, r3, 8
/* 802BF4E4 002BC444  42 00 FF FC */	bdnz lbl_802BF4E0
lbl_802BF4E8:
/* 802BF4E8 002BC448  7C 03 28 50 */	subf r0, r3, r5
/* 802BF4EC 002BC44C  7C 09 03 A6 */	mtctr r0
/* 802BF4F0 002BC450  7C 03 28 00 */	cmpw r3, r5
/* 802BF4F4 002BC454  40 80 00 08 */	bge lbl_802BF4FC
lbl_802BF4F8:
/* 802BF4F8 002BC458  42 00 00 00 */	bdnz lbl_802BF4F8
lbl_802BF4FC:
/* 802BF4FC 002BC45C  38 00 00 00 */	li r0, 0
/* 802BF500 002BC460  90 06 00 00 */	stw r0, 0(r6)
/* 802BF504 002BC464  80 6D A6 10 */	lwz r3, sBuckets__7Buckets@sda21(r13)
/* 802BF508 002BC468  38 C3 00 04 */	addi r6, r3, 4
/* 802BF50C 002BC46C  48 00 00 60 */	b lbl_802BF56C
lbl_802BF510:
/* 802BF510 002BC470  80 A6 00 00 */	lwz r5, 0(r6)
/* 802BF514 002BC474  38 60 00 00 */	li r3, 0
/* 802BF518 002BC478  2C 05 00 00 */	cmpwi r5, 0
/* 802BF51C 002BC47C  40 81 00 44 */	ble lbl_802BF560
/* 802BF520 002BC480  2C 05 00 08 */	cmpwi r5, 8
/* 802BF524 002BC484  38 85 FF F8 */	addi r4, r5, -8
/* 802BF528 002BC488  40 81 00 20 */	ble lbl_802BF548
/* 802BF52C 002BC48C  38 04 00 07 */	addi r0, r4, 7
/* 802BF530 002BC490  54 00 E8 FE */	srwi r0, r0, 3
/* 802BF534 002BC494  7C 09 03 A6 */	mtctr r0
/* 802BF538 002BC498  2C 04 00 00 */	cmpwi r4, 0
/* 802BF53C 002BC49C  40 81 00 0C */	ble lbl_802BF548
lbl_802BF540:
/* 802BF540 002BC4A0  38 63 00 08 */	addi r3, r3, 8
/* 802BF544 002BC4A4  42 00 FF FC */	bdnz lbl_802BF540
lbl_802BF548:
/* 802BF548 002BC4A8  7C 03 28 50 */	subf r0, r3, r5
/* 802BF54C 002BC4AC  7C 09 03 A6 */	mtctr r0
/* 802BF550 002BC4B0  7C 03 28 00 */	cmpw r3, r5
/* 802BF554 002BC4B4  40 80 00 0C */	bge lbl_802BF560
lbl_802BF558:
/* 802BF558 002BC4B8  38 63 00 01 */	addi r3, r3, 1
/* 802BF55C 002BC4BC  42 00 FF FC */	bdnz lbl_802BF558
lbl_802BF560:
/* 802BF560 002BC4C0  38 00 00 00 */	li r0, 0
/* 802BF564 002BC4C4  90 06 00 00 */	stw r0, 0(r6)
/* 802BF568 002BC4C8  38 C6 02 04 */	addi r6, r6, 0x204
lbl_802BF56C:
/* 802BF56C 002BC4CC  80 6D A6 10 */	lwz r3, sBuckets__7Buckets@sda21(r13)
/* 802BF570 002BC4D0  80 03 00 00 */	lwz r0, 0(r3)
/* 802BF574 002BC4D4  1C 00 02 04 */	mulli r0, r0, 0x204
/* 802BF578 002BC4D8  7C 63 02 14 */	add r3, r3, r0
/* 802BF57C 002BC4DC  38 63 00 04 */	addi r3, r3, 4
/* 802BF580 002BC4E0  7C 06 18 40 */	cmplw r6, r3
/* 802BF584 002BC4E4  40 82 FF 8C */	bne lbl_802BF510
/* 802BF588 002BC4E8  38 6D A6 04 */	addi r3, r13, skWorstMinMaxDistance__7Buckets@sda21
/* 802BF58C 002BC4EC  C0 2D A6 04 */	lfs f1, skWorstMinMaxDistance__7Buckets@sda21(r13)
/* 802BF590 002BC4F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BF594 002BC4F4  38 6D A6 14 */	addi r3, r13, sMinMaxDistance__7Buckets@sda21
/* 802BF598 002BC4F8  D0 2D A6 14 */	stfs f1, sMinMaxDistance__7Buckets@sda21(r13)
/* 802BF59C 002BC4FC  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BF5A0 002BC500  4E 80 00 20 */	blr

.global Sort__7BucketsFv
Sort__7BucketsFv:
/* 802BF5A4 002BC504  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802BF5A8 002BC508  7C 08 02 A6 */	mflr r0
/* 802BF5AC 002BC50C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802BF5B0 002BC510  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802BF5B4 002BC514  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 802BF5B8 002BC518  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802BF5BC 002BC51C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 802BF5C0 002BC520  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802BF5C4 002BC524  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 802BF5C8 002BC528  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 802BF5CC 002BC52C  38 6D A6 14 */	addi r3, r13, sMinMaxDistance__7Buckets@sda21
/* 802BF5D0 002BC530  C0 4D A6 14 */	lfs f2, sMinMaxDistance__7Buckets@sda21(r13)
/* 802BF5D4 002BC534  C0 23 00 04 */	lfs f1, 4(r3)
/* 802BF5D8 002BC538  C0 0D 9A A0 */	lfs f0, lbl_805A8660@sda21(r13)
/* 802BF5DC 002BC53C  FF E0 10 50 */	fneg f31, f2
/* 802BF5E0 002BC540  EC 21 10 28 */	fsubs f1, f1, f2
/* 802BF5E4 002BC544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BF5E8 002BC548  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 802BF5EC 002BC54C  40 80 00 0C */	bge lbl_802BF5F8
/* 802BF5F0 002BC550  38 6D 9A A0 */	addi r3, r13, lbl_805A8660@sda21
/* 802BF5F4 002BC554  48 00 00 08 */	b lbl_802BF5FC
lbl_802BF5F8:
/* 802BF5F8 002BC558  38 61 00 1C */	addi r3, r1, 0x1c
lbl_802BF5FC:
/* 802BF5FC 002BC55C  C3 A3 00 00 */	lfs f29, 0(r3)
/* 802BF600 002BC560  38 C0 00 00 */	li r6, 0
/* 802BF604 002BC564  C0 02 C3 58 */	lfs f0, lbl_805AE078@sda21(r2)
/* 802BF608 002BC568  80 6D A6 1C */	lwz r3, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BF60C 002BC56C  EC 00 07 72 */	fmuls f0, f0, f29
/* 802BF610 002BC570  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802BF614 002BC574  38 E3 00 04 */	addi r7, r3, 4
/* 802BF618 002BC578  EF C1 00 24 */	fdivs f30, f1, f0
/* 802BF61C 002BC57C  48 00 00 40 */	b lbl_802BF65C
lbl_802BF620:
/* 802BF620 002BC580  80 AD A6 20 */	lwz r5, sPlaneObjectBucket__7Buckets@sda21(r13)
/* 802BF624 002BC584  80 05 00 00 */	lwz r0, 0(r5)
/* 802BF628 002BC588  2C 00 00 08 */	cmpwi r0, 8
/* 802BF62C 002BC58C  40 80 00 28 */	bge lbl_802BF654
/* 802BF630 002BC590  54 00 08 3C */	slwi r0, r0, 1
/* 802BF634 002BC594  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 802BF638 002BC598  7C 85 02 14 */	add r4, r5, r0
/* 802BF63C 002BC59C  34 84 00 04 */	addic. r4, r4, 4
/* 802BF640 002BC5A0  41 82 00 08 */	beq lbl_802BF648
/* 802BF644 002BC5A4  B0 64 00 00 */	sth r3, 0(r4)
lbl_802BF648:
/* 802BF648 002BC5A8  80 65 00 00 */	lwz r3, 0(r5)
/* 802BF64C 002BC5AC  38 03 00 01 */	addi r0, r3, 1
/* 802BF650 002BC5B0  90 05 00 00 */	stw r0, 0(r5)
lbl_802BF654:
/* 802BF654 002BC5B4  38 E7 00 40 */	addi r7, r7, 0x40
/* 802BF658 002BC5B8  38 C6 00 01 */	addi r6, r6, 1
lbl_802BF65C:
/* 802BF65C 002BC5BC  80 6D A6 1C */	lwz r3, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BF660 002BC5C0  80 03 00 00 */	lwz r0, 0(r3)
/* 802BF664 002BC5C4  54 00 30 32 */	slwi r0, r0, 6
/* 802BF668 002BC5C8  7C 63 02 14 */	add r3, r3, r0
/* 802BF66C 002BC5CC  38 63 00 04 */	addi r3, r3, 4
/* 802BF670 002BC5D0  7C 07 18 40 */	cmplw r7, r3
/* 802BF674 002BC5D4  40 82 FF AC */	bne lbl_802BF620
/* 802BF678 002BC5D8  83 CD A6 20 */	lwz r30, sPlaneObjectBucket__7Buckets@sda21(r13)
/* 802BF67C 002BC5DC  3B E0 00 32 */	li r31, 0x32
/* 802BF680 002BC5E0  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BF684 002BC5E4  2C 00 00 00 */	cmpwi r0, 0
/* 802BF688 002BC5E8  41 82 00 B0 */	beq lbl_802BF738
/* 802BF68C 002BC5EC  88 0D A6 24 */	lbz r0, "@4756"@sda21(r13)
/* 802BF690 002BC5F0  38 7E 00 04 */	addi r3, r30, 4
/* 802BF694 002BC5F4  38 A1 00 0C */	addi r5, r1, 0xc
/* 802BF698 002BC5F8  98 01 00 0C */	stb r0, 0xc(r1)
/* 802BF69C 002BC5FC  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BF6A0 002BC600  54 00 08 3C */	slwi r0, r0, 1
/* 802BF6A4 002BC604  7C 9E 02 14 */	add r4, r30, r0
/* 802BF6A8 002BC608  38 84 00 04 */	addi r4, r4, 4
/* 802BF6AC 002BC60C  48 00 09 B9 */	bl sub_802c0064
/* 802BF6B0 002BC610  80 7E 00 00 */	lwz r3, 0(r30)
/* 802BF6B4 002BC614  3C 00 43 30 */	lis r0, 0x4330
/* 802BF6B8 002BC618  38 80 00 32 */	li r4, 0x32
/* 802BF6BC 002BC61C  90 01 00 38 */	stw r0, 0x38(r1)
/* 802BF6C0 002BC620  38 03 00 01 */	addi r0, r3, 1
/* 802BF6C4 002BC624  C8 22 C2 A0 */	lfd f1, lbl_805ADFC0@sda21(r2)
/* 802BF6C8 002BC628  7F E4 03 D6 */	divw r31, r4, r0
/* 802BF6CC 002BC62C  C0 42 C2 70 */	lfs f2, lbl_805ADF90@sda21(r2)
/* 802BF6D0 002BC630  38 DE 00 04 */	addi r6, r30, 4
/* 802BF6D4 002BC634  38 A0 00 00 */	li r5, 0
/* 802BF6D8 002BC638  38 1F FF FE */	addi r0, r31, -2
/* 802BF6DC 002BC63C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802BF6E0 002BC640  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802BF6E4 002BC644  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802BF6E8 002BC648  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BF6EC 002BC64C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BF6F0 002BC650  EC 1D 00 32 */	fmuls f0, f29, f0
/* 802BF6F4 002BC654  EF C2 00 24 */	fdivs f30, f2, f0
/* 802BF6F8 002BC658  48 00 00 28 */	b lbl_802BF720
lbl_802BF6FC:
/* 802BF6FC 002BC65C  38 65 00 01 */	addi r3, r5, 1
/* 802BF700 002BC660  A0 06 00 00 */	lhz r0, 0(r6)
/* 802BF704 002BC664  7C 9F 19 D6 */	mullw r4, r31, r3
/* 802BF708 002BC668  80 6D A6 1C */	lwz r3, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BF70C 002BC66C  54 00 30 32 */	slwi r0, r0, 6
/* 802BF710 002BC670  38 C6 00 02 */	addi r6, r6, 2
/* 802BF714 002BC674  7C 63 02 14 */	add r3, r3, r0
/* 802BF718 002BC678  38 A5 00 01 */	addi r5, r5, 1
/* 802BF71C 002BC67C  B0 83 00 28 */	sth r4, 0x28(r3)
lbl_802BF720:
/* 802BF720 002BC680  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BF724 002BC684  54 00 08 3C */	slwi r0, r0, 1
/* 802BF728 002BC688  7C 7E 02 14 */	add r3, r30, r0
/* 802BF72C 002BC68C  38 03 00 04 */	addi r0, r3, 4
/* 802BF730 002BC690  7C 06 00 40 */	cmplw r6, r0
/* 802BF734 002BC694  40 82 FF C8 */	bne lbl_802BF6FC
lbl_802BF738:
/* 802BF738 002BC698  80 6D A6 0C */	lwz r3, sData__7Buckets@sda21(r13)
/* 802BF73C 002BC69C  83 AD A6 20 */	lwz r29, sPlaneObjectBucket__7Buckets@sda21(r13)
/* 802BF740 002BC6A0  83 8D A6 1C */	lwz r28, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BF744 002BC6A4  3B C3 00 04 */	addi r30, r3, 4
/* 802BF748 002BC6A8  48 00 02 8C */	b lbl_802BF9D4
lbl_802BF74C:
/* 802BF74C 002BC6AC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 802BF750 002BC6B0  80 1D 00 00 */	lwz r0, 0(r29)
/* 802BF754 002BC6B4  EC 1F 00 2A */	fadds f0, f31, f0
/* 802BF758 002BC6B8  2C 00 00 00 */	cmpwi r0, 0
/* 802BF75C 002BC6BC  40 82 00 48 */	bne lbl_802BF7A4
/* 802BF760 002BC6C0  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802BF764 002BC6C4  80 0D 9A A4 */	lwz r0, lbl_805A8664@sda21(r13)
/* 802BF768 002BC6C8  38 8D 9A A4 */	addi r4, r13, lbl_805A8664@sda21
/* 802BF76C 002BC6CC  FC 00 00 1E */	fctiwz f0, f0
/* 802BF770 002BC6D0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 802BF774 002BC6D4  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802BF778 002BC6D8  7C 03 00 00 */	cmpw r3, r0
/* 802BF77C 002BC6DC  90 61 00 18 */	stw r3, 0x18(r1)
/* 802BF780 002BC6E0  40 80 00 08 */	bge lbl_802BF788
/* 802BF784 002BC6E4  38 81 00 18 */	addi r4, r1, 0x18
lbl_802BF788:
/* 802BF788 002BC6E8  80 64 00 00 */	lwz r3, 0(r4)
/* 802BF78C 002BC6EC  80 0D 9A A8 */	lwz r0, lbl_805A8668@sda21(r13)
/* 802BF790 002BC6F0  7C 03 00 00 */	cmpw r3, r0
/* 802BF794 002BC6F4  40 80 00 08 */	bge lbl_802BF79C
/* 802BF798 002BC6F8  38 8D 9A A8 */	addi r4, r13, lbl_805A8668@sda21
lbl_802BF79C:
/* 802BF79C 002BC6FC  83 64 00 00 */	lwz r27, 0(r4)
/* 802BF7A0 002BC700  48 00 01 EC */	b lbl_802BF98C
lbl_802BF7A4:
/* 802BF7A4 002BC704  EC 00 07 B2 */	fmuls f0, f0, f30
/* 802BF7A8 002BC708  38 1F FF FE */	addi r0, r31, -2
/* 802BF7AC 002BC70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BF7B0 002BC710  38 81 00 14 */	addi r4, r1, 0x14
/* 802BF7B4 002BC714  FC 00 00 1E */	fctiwz f0, f0
/* 802BF7B8 002BC718  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 802BF7BC 002BC71C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802BF7C0 002BC720  7C 03 00 00 */	cmpw r3, r0
/* 802BF7C4 002BC724  90 61 00 10 */	stw r3, 0x10(r1)
/* 802BF7C8 002BC728  40 80 00 08 */	bge lbl_802BF7D0
/* 802BF7CC 002BC72C  38 81 00 10 */	addi r4, r1, 0x10
lbl_802BF7D0:
/* 802BF7D0 002BC730  80 64 00 00 */	lwz r3, 0(r4)
/* 802BF7D4 002BC734  80 0D 9A AC */	lwz r0, lbl_805A866C@sda21(r13)
/* 802BF7D8 002BC738  7C 03 00 00 */	cmpw r3, r0
/* 802BF7DC 002BC73C  40 80 00 08 */	bge lbl_802BF7E4
/* 802BF7E0 002BC740  38 8D 9A AC */	addi r4, r13, lbl_805A866C@sda21
lbl_802BF7E4:
/* 802BF7E4 002BC744  83 64 00 00 */	lwz r27, 0(r4)
/* 802BF7E8 002BC748  3B 5D 00 04 */	addi r26, r29, 4
/* 802BF7EC 002BC74C  48 00 01 88 */	b lbl_802BF974
lbl_802BF7F0:
/* 802BF7F0 002BC750  A0 1A 00 00 */	lhz r0, 0(r26)
/* 802BF7F4 002BC754  54 00 30 32 */	slwi r0, r0, 6
/* 802BF7F8 002BC758  7F 3C 02 14 */	add r25, r28, r0
/* 802BF7FC 002BC75C  88 19 00 40 */	lbz r0, 0x40(r25)
/* 802BF800 002BC760  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802BF804 002BC764  41 82 00 40 */	beq lbl_802BF844
/* 802BF808 002BC768  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 802BF80C 002BC76C  C0 39 00 3C */	lfs f1, 0x3c(r25)
/* 802BF810 002BC770  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BF814 002BC774  40 81 00 0C */	ble lbl_802BF820
/* 802BF818 002BC778  38 00 00 01 */	li r0, 1
/* 802BF81C 002BC77C  48 00 00 08 */	b lbl_802BF824
lbl_802BF820:
/* 802BF820 002BC780  38 00 00 00 */	li r0, 0
lbl_802BF824:
/* 802BF824 002BC784  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 802BF828 002BC788  7C 18 03 78 */	mr r24, r0
/* 802BF82C 002BC78C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802BF830 002BC790  40 81 00 0C */	ble lbl_802BF83C
/* 802BF834 002BC794  38 80 00 01 */	li r4, 1
/* 802BF838 002BC798  48 00 00 B4 */	b lbl_802BF8EC
lbl_802BF83C:
/* 802BF83C 002BC79C  38 80 00 00 */	li r4, 0
/* 802BF840 002BC7A0  48 00 00 AC */	b lbl_802BF8EC
lbl_802BF844:
/* 802BF844 002BC7A4  38 61 00 2C */	addi r3, r1, 0x2c
/* 802BF848 002BC7A8  38 9E 00 08 */	addi r4, r30, 8
/* 802BF84C 002BC7AC  38 B9 00 30 */	addi r5, r25, 0x30
/* 802BF850 002BC7B0  48 07 79 8D */	bl ClosestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802BF854 002BC7B4  C0 39 00 34 */	lfs f1, 0x34(r25)
/* 802BF858 002BC7B8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802BF85C 002BC7BC  C0 59 00 30 */	lfs f2, 0x30(r25)
/* 802BF860 002BC7C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BF864 002BC7C4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802BF868 002BC7C8  C0 99 00 38 */	lfs f4, 0x38(r25)
/* 802BF86C 002BC7CC  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 802BF870 002BC7D0  EC 42 00 7A */	fmadds f2, f2, f1, f0
/* 802BF874 002BC7D4  C0 39 00 3C */	lfs f1, 0x3c(r25)
/* 802BF878 002BC7D8  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BF87C 002BC7DC  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 802BF880 002BC7E0  EC 22 08 28 */	fsubs f1, f2, f1
/* 802BF884 002BC7E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BF888 002BC7E8  40 81 00 0C */	ble lbl_802BF894
/* 802BF88C 002BC7EC  3B 00 00 01 */	li r24, 1
/* 802BF890 002BC7F0  48 00 00 08 */	b lbl_802BF898
lbl_802BF894:
/* 802BF894 002BC7F4  3B 00 00 00 */	li r24, 0
lbl_802BF898:
/* 802BF898 002BC7F8  38 61 00 20 */	addi r3, r1, 0x20
/* 802BF89C 002BC7FC  38 9E 00 08 */	addi r4, r30, 8
/* 802BF8A0 002BC800  38 B9 00 30 */	addi r5, r25, 0x30
/* 802BF8A4 002BC804  48 07 79 79 */	bl FurthestPointAlongVector__6CAABoxCFRC9CVector3f
/* 802BF8A8 002BC808  C0 39 00 34 */	lfs f1, 0x34(r25)
/* 802BF8AC 002BC80C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802BF8B0 002BC810  C0 59 00 30 */	lfs f2, 0x30(r25)
/* 802BF8B4 002BC814  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BF8B8 002BC818  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 802BF8BC 002BC81C  C0 99 00 38 */	lfs f4, 0x38(r25)
/* 802BF8C0 002BC820  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 802BF8C4 002BC824  EC 42 00 7A */	fmadds f2, f2, f1, f0
/* 802BF8C8 002BC828  C0 39 00 3C */	lfs f1, 0x3c(r25)
/* 802BF8CC 002BC82C  C0 02 C2 74 */	lfs f0, lbl_805ADF94@sda21(r2)
/* 802BF8D0 002BC830  EC 44 10 FA */	fmadds f2, f4, f3, f2
/* 802BF8D4 002BC834  EC 22 08 28 */	fsubs f1, f2, f1
/* 802BF8D8 002BC838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BF8DC 002BC83C  40 81 00 0C */	ble lbl_802BF8E8
/* 802BF8E0 002BC840  38 80 00 01 */	li r4, 1
/* 802BF8E4 002BC844  48 00 00 08 */	b lbl_802BF8EC
lbl_802BF8E8:
/* 802BF8E8 002BC848  38 80 00 00 */	li r4, 0
lbl_802BF8EC:
/* 802BF8EC 002BC84C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 802BF8F0 002BC850  2C 00 00 01 */	cmpwi r0, 1
/* 802BF8F4 002BC854  40 82 00 28 */	bne lbl_802BF91C
/* 802BF8F8 002BC858  88 19 00 40 */	lbz r0, 0x40(r25)
/* 802BF8FC 002BC85C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802BF900 002BC860  41 82 00 14 */	beq lbl_802BF914
/* 802BF904 002BC864  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 802BF908 002BC868  7C 00 00 34 */	cntlzw r0, r0
/* 802BF90C 002BC86C  54 00 D9 7E */	srwi r0, r0, 5
/* 802BF910 002BC870  48 00 00 54 */	b lbl_802BF964
lbl_802BF914:
/* 802BF914 002BC874  7C 80 23 78 */	mr r0, r4
/* 802BF918 002BC878  48 00 00 4C */	b lbl_802BF964
lbl_802BF91C:
/* 802BF91C 002BC87C  88 19 00 40 */	lbz r0, 0x40(r25)
/* 802BF920 002BC880  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802BF924 002BC884  41 82 00 24 */	beq lbl_802BF948
/* 802BF928 002BC888  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 802BF92C 002BC88C  38 60 00 00 */	li r3, 0
/* 802BF930 002BC890  41 82 00 0C */	beq lbl_802BF93C
/* 802BF934 002BC894  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802BF938 002BC898  40 82 00 08 */	bne lbl_802BF940
lbl_802BF93C:
/* 802BF93C 002BC89C  38 60 00 01 */	li r3, 1
lbl_802BF940:
/* 802BF940 002BC8A0  7C 60 1B 78 */	mr r0, r3
/* 802BF944 002BC8A4  48 00 00 20 */	b lbl_802BF964
lbl_802BF948:
/* 802BF948 002BC8A8  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 802BF94C 002BC8AC  38 60 00 00 */	li r3, 0
/* 802BF950 002BC8B0  40 82 00 0C */	bne lbl_802BF95C
/* 802BF954 002BC8B4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802BF958 002BC8B8  41 82 00 08 */	beq lbl_802BF960
lbl_802BF95C:
/* 802BF95C 002BC8BC  38 60 00 01 */	li r3, 1
lbl_802BF960:
/* 802BF960 002BC8C0  7C 60 1B 78 */	mr r0, r3
lbl_802BF964:
/* 802BF964 002BC8C4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802BF968 002BC8C8  41 82 00 24 */	beq lbl_802BF98C
/* 802BF96C 002BC8CC  7F 7B FA 14 */	add r27, r27, r31
/* 802BF970 002BC8D0  3B 5A 00 02 */	addi r26, r26, 2
lbl_802BF974:
/* 802BF974 002BC8D4  80 1D 00 00 */	lwz r0, 0(r29)
/* 802BF978 002BC8D8  54 00 08 3C */	slwi r0, r0, 1
/* 802BF97C 002BC8DC  7C 7D 02 14 */	add r3, r29, r0
/* 802BF980 002BC8E0  38 03 00 04 */	addi r0, r3, 4
/* 802BF984 002BC8E4  7C 1A 00 40 */	cmplw r26, r0
/* 802BF988 002BC8E8  40 82 FE 68 */	bne lbl_802BF7F0
lbl_802BF98C:
/* 802BF98C 002BC8EC  2C 1B FF FF */	cmpwi r27, -1
/* 802BF990 002BC8F0  40 82 00 08 */	bne lbl_802BF998
/* 802BF994 002BC8F4  3B 60 00 31 */	li r27, 0x31
lbl_802BF998:
/* 802BF998 002BC8F8  1C 1B 02 04 */	mulli r0, r27, 0x204
/* 802BF99C 002BC8FC  80 6D A6 10 */	lwz r3, sBuckets__7Buckets@sda21(r13)
/* 802BF9A0 002BC900  7C 83 02 14 */	add r4, r3, r0
/* 802BF9A4 002BC904  84 04 00 04 */	lwzu r0, 4(r4)
/* 802BF9A8 002BC908  2C 00 00 80 */	cmpwi r0, 0x80
/* 802BF9AC 002BC90C  40 80 00 24 */	bge lbl_802BF9D0
/* 802BF9B0 002BC910  54 00 10 3A */	slwi r0, r0, 2
/* 802BF9B4 002BC914  7C 64 02 14 */	add r3, r4, r0
/* 802BF9B8 002BC918  34 63 00 04 */	addic. r3, r3, 4
/* 802BF9BC 002BC91C  41 82 00 08 */	beq lbl_802BF9C4
/* 802BF9C0 002BC920  93 C3 00 00 */	stw r30, 0(r3)
lbl_802BF9C4:
/* 802BF9C4 002BC924  80 64 00 00 */	lwz r3, 0(r4)
/* 802BF9C8 002BC928  38 03 00 01 */	addi r0, r3, 1
/* 802BF9CC 002BC92C  90 04 00 00 */	stw r0, 0(r4)
lbl_802BF9D0:
/* 802BF9D0 002BC930  3B DE 00 24 */	addi r30, r30, 0x24
lbl_802BF9D4:
/* 802BF9D4 002BC934  80 6D A6 0C */	lwz r3, sData__7Buckets@sda21(r13)
/* 802BF9D8 002BC938  80 03 00 00 */	lwz r0, 0(r3)
/* 802BF9DC 002BC93C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802BF9E0 002BC940  7C 63 02 14 */	add r3, r3, r0
/* 802BF9E4 002BC944  38 63 00 04 */	addi r3, r3, 4
/* 802BF9E8 002BC948  7C 1E 18 40 */	cmplw r30, r3
/* 802BF9EC 002BC94C  40 82 FD 60 */	bne lbl_802BF74C
/* 802BF9F0 002BC950  80 8D A6 10 */	lwz r4, sBuckets__7Buckets@sda21(r13)
/* 802BF9F4 002BC954  3C 60 80 47 */	lis r3, sBucketIndex__7Buckets@ha
/* 802BF9F8 002BC958  3B 63 E2 0C */	addi r27, r3, sBucketIndex__7Buckets@l
/* 802BF9FC 002BC95C  80 64 00 00 */	lwz r3, 0(r4)
/* 802BFA00 002BC960  3B DB 00 04 */	addi r30, r27, 4
/* 802BFA04 002BC964  3B 43 FF FF */	addi r26, r3, -1
/* 802BFA08 002BC968  1F FA 02 04 */	mulli r31, r26, 0x204
/* 802BFA0C 002BC96C  48 00 00 6C */	b lbl_802BFA78
lbl_802BFA10:
/* 802BFA10 002BC970  80 1B 00 00 */	lwz r0, 0(r27)
/* 802BFA14 002BC974  57 44 04 3E */	clrlwi r4, r26, 0x10
/* 802BFA18 002BC978  80 6D A6 10 */	lwz r3, sBuckets__7Buckets@sda21(r13)
/* 802BFA1C 002BC97C  54 00 08 3C */	slwi r0, r0, 1
/* 802BFA20 002BC980  7C BE 02 15 */	add. r5, r30, r0
/* 802BFA24 002BC984  7C C3 FA 14 */	add r6, r3, r31
/* 802BFA28 002BC988  38 C6 00 04 */	addi r6, r6, 4
/* 802BFA2C 002BC98C  41 82 00 08 */	beq lbl_802BFA34
/* 802BFA30 002BC990  B0 85 00 00 */	sth r4, 0(r5)
lbl_802BFA34:
/* 802BFA34 002BC994  80 7B 00 00 */	lwz r3, 0(r27)
/* 802BFA38 002BC998  38 03 00 01 */	addi r0, r3, 1
/* 802BFA3C 002BC99C  90 1B 00 00 */	stw r0, 0(r27)
/* 802BFA40 002BC9A0  80 06 00 00 */	lwz r0, 0(r6)
/* 802BFA44 002BC9A4  2C 00 00 00 */	cmpwi r0, 0
/* 802BFA48 002BC9A8  41 82 00 28 */	beq lbl_802BFA70
/* 802BFA4C 002BC9AC  88 0D A6 28 */	lbz r0, "@4808"@sda21(r13)
/* 802BFA50 002BC9B0  38 66 00 04 */	addi r3, r6, 4
/* 802BFA54 002BC9B4  38 A1 00 08 */	addi r5, r1, 8
/* 802BFA58 002BC9B8  98 01 00 08 */	stb r0, 8(r1)
/* 802BFA5C 002BC9BC  80 06 00 00 */	lwz r0, 0(r6)
/* 802BFA60 002BC9C0  54 00 10 3A */	slwi r0, r0, 2
/* 802BFA64 002BC9C4  7C 86 02 14 */	add r4, r6, r0
/* 802BFA68 002BC9C8  38 84 00 04 */	addi r4, r4, 4
/* 802BFA6C 002BC9CC  48 00 07 3D */	bl sub_802c01a8
lbl_802BFA70:
/* 802BFA70 002BC9D0  3B FF FD FC */	addi r31, r31, -516
/* 802BFA74 002BC9D4  3B 5A FF FF */	addi r26, r26, -1
lbl_802BFA78:
/* 802BFA78 002BC9D8  2C 1A 00 00 */	cmpwi r26, 0
/* 802BFA7C 002BC9DC  40 80 FF 94 */	bge lbl_802BFA10
/* 802BFA80 002BC9E0  80 1D 00 00 */	lwz r0, 0(r29)
/* 802BFA84 002BC9E4  38 DD 00 02 */	addi r6, r29, 2
/* 802BFA88 002BC9E8  54 00 08 3C */	slwi r0, r0, 1
/* 802BFA8C 002BC9EC  7C 7D 02 14 */	add r3, r29, r0
/* 802BFA90 002BC9F0  38 E3 00 02 */	addi r7, r3, 2
/* 802BFA94 002BC9F4  48 00 00 54 */	b lbl_802BFAE8
lbl_802BFA98:
/* 802BFA98 002BC9F8  A0 07 00 00 */	lhz r0, 0(r7)
/* 802BFA9C 002BC9FC  80 6D A6 10 */	lwz r3, sBuckets__7Buckets@sda21(r13)
/* 802BFAA0 002BCA00  54 00 30 32 */	slwi r0, r0, 6
/* 802BFAA4 002BCA04  7C 9C 02 14 */	add r4, r28, r0
/* 802BFAA8 002BCA08  A0 04 00 28 */	lhz r0, 0x28(r4)
/* 802BFAAC 002BCA0C  38 84 00 04 */	addi r4, r4, 4
/* 802BFAB0 002BCA10  1C 00 02 04 */	mulli r0, r0, 0x204
/* 802BFAB4 002BCA14  7C A3 02 14 */	add r5, r3, r0
/* 802BFAB8 002BCA18  84 05 00 04 */	lwzu r0, 4(r5)
/* 802BFABC 002BCA1C  2C 00 00 80 */	cmpwi r0, 0x80
/* 802BFAC0 002BCA20  40 80 00 24 */	bge lbl_802BFAE4
/* 802BFAC4 002BCA24  54 00 10 3A */	slwi r0, r0, 2
/* 802BFAC8 002BCA28  7C 65 02 14 */	add r3, r5, r0
/* 802BFACC 002BCA2C  34 63 00 04 */	addic. r3, r3, 4
/* 802BFAD0 002BCA30  41 82 00 08 */	beq lbl_802BFAD8
/* 802BFAD4 002BCA34  90 83 00 00 */	stw r4, 0(r3)
lbl_802BFAD8:
/* 802BFAD8 002BCA38  80 65 00 00 */	lwz r3, 0(r5)
/* 802BFADC 002BCA3C  38 03 00 01 */	addi r0, r3, 1
/* 802BFAE0 002BCA40  90 05 00 00 */	stw r0, 0(r5)
lbl_802BFAE4:
/* 802BFAE4 002BCA44  38 E7 FF FE */	addi r7, r7, -2
lbl_802BFAE8:
/* 802BFAE8 002BCA48  7C 07 30 40 */	cmplw r7, r6
/* 802BFAEC 002BCA4C  40 82 FF AC */	bne lbl_802BFA98
/* 802BFAF0 002BCA50  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 802BFAF4 002BCA54  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802BFAF8 002BCA58  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 802BFAFC 002BCA5C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802BFB00 002BCA60  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 802BFB04 002BCA64  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802BFB08 002BCA68  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 802BFB0C 002BCA6C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802BFB10 002BCA70  7C 08 03 A6 */	mtlr r0
/* 802BFB14 002BCA74  38 21 00 90 */	addi r1, r1, 0x90
/* 802BFB18 002BCA78  4E 80 00 20 */	blr

.global InsertPlaneObject__7BucketsFffRC6CAABoxbRC6CPlaneb13EDrawableTypePCv
InsertPlaneObject__7BucketsFffRC6CAABoxbRC6CPlaneb13EDrawableTypePCv:
/* 802BFB1C 002BCA7C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802BFB20 002BCA80  7C 08 02 A6 */	mflr r0
/* 802BFB24 002BCA84  7C AC 2B 78 */	mr r12, r5
/* 802BFB28 002BCA88  7C CB 33 78 */	mr r11, r6
/* 802BFB2C 002BCA8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802BFB30 002BCA90  7D 09 43 78 */	mr r9, r8
/* 802BFB34 002BCA94  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802BFB38 002BCA98  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802BFB3C 002BCA9C  7C 9E 23 78 */	mr r30, r4
/* 802BFB40 002BCAA0  81 4D A6 1C */	lwz r10, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BFB44 002BCAA4  80 0A 00 00 */	lwz r0, 0(r10)
/* 802BFB48 002BCAA8  7D 5F 53 78 */	mr r31, r10
/* 802BFB4C 002BCAAC  2C 00 00 08 */	cmpwi r0, 8
/* 802BFB50 002BCAB0  41 82 00 2C */	beq lbl_802BFB7C
/* 802BFB54 002BCAB4  7C E4 3B 78 */	mr r4, r7
/* 802BFB58 002BCAB8  7C 65 1B 78 */	mr r5, r3
/* 802BFB5C 002BCABC  7F C6 F3 78 */	mr r6, r30
/* 802BFB60 002BCAC0  7D 87 63 78 */	mr r7, r12
/* 802BFB64 002BCAC4  7D 68 5B 78 */	mr r8, r11
/* 802BFB68 002BCAC8  38 61 00 08 */	addi r3, r1, 8
/* 802BFB6C 002BCACC  48 00 01 25 */	bl __ct__20CDrawablePlaneObjectF13EDrawableTypeffRC6CAABoxbRC6CPlanebPCv
/* 802BFB70 002BCAD0  7C 64 1B 78 */	mr r4, r3
/* 802BFB74 002BCAD4  7F E3 FB 78 */	mr r3, r31
/* 802BFB78 002BCAD8  48 00 00 1D */	bl "push_back__Q24rstl41reserved_vector<20CDrawablePlaneObject,8>FRC20CDrawablePlaneObject"
lbl_802BFB7C:
/* 802BFB7C 002BCADC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802BFB80 002BCAE0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802BFB84 002BCAE4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802BFB88 002BCAE8  7C 08 03 A6 */	mtlr r0
/* 802BFB8C 002BCAEC  38 21 00 50 */	addi r1, r1, 0x50
/* 802BFB90 002BCAF0  4E 80 00 20 */	blr

.global "push_back__Q24rstl41reserved_vector<20CDrawablePlaneObject,8>FRC20CDrawablePlaneObject"
"push_back__Q24rstl41reserved_vector<20CDrawablePlaneObject,8>FRC20CDrawablePlaneObject":
/* 802BFB94 002BCAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BFB98 002BCAF8  7C 08 02 A6 */	mflr r0
/* 802BFB9C 002BCAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BFBA0 002BCB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BFBA4 002BCB04  7C 7F 1B 78 */	mr r31, r3
/* 802BFBA8 002BCB08  80 03 00 00 */	lwz r0, 0(r3)
/* 802BFBAC 002BCB0C  54 00 30 32 */	slwi r0, r0, 6
/* 802BFBB0 002BCB10  7C 7F 02 14 */	add r3, r31, r0
/* 802BFBB4 002BCB14  38 63 00 04 */	addi r3, r3, 4
/* 802BFBB8 002BCB18  48 00 00 25 */	bl "construct<20CDrawablePlaneObject>__4rstlFPvRC20CDrawablePlaneObject"
/* 802BFBBC 002BCB1C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BFBC0 002BCB20  38 03 00 01 */	addi r0, r3, 1
/* 802BFBC4 002BCB24  90 1F 00 00 */	stw r0, 0(r31)
/* 802BFBC8 002BCB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BFBCC 002BCB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BFBD0 002BCB30  7C 08 03 A6 */	mtlr r0
/* 802BFBD4 002BCB34  38 21 00 10 */	addi r1, r1, 0x10
/* 802BFBD8 002BCB38  4E 80 00 20 */	blr

.global "construct<20CDrawablePlaneObject>__4rstlFPvRC20CDrawablePlaneObject"
"construct<20CDrawablePlaneObject>__4rstlFPvRC20CDrawablePlaneObject":
/* 802BFBDC 002BCB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BFBE0 002BCB40  7C 08 02 A6 */	mflr r0
/* 802BFBE4 002BCB44  28 03 00 00 */	cmplwi r3, 0
/* 802BFBE8 002BCB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BFBEC 002BCB4C  41 82 00 08 */	beq lbl_802BFBF4
/* 802BFBF0 002BCB50  48 00 00 15 */	bl __ct__20CDrawablePlaneObjectFRC20CDrawablePlaneObject
lbl_802BFBF4:
/* 802BFBF4 002BCB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BFBF8 002BCB58  7C 08 03 A6 */	mtlr r0
/* 802BFBFC 002BCB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802BFC00 002BCB60  4E 80 00 20 */	blr

.global __ct__20CDrawablePlaneObjectFRC20CDrawablePlaneObject
__ct__20CDrawablePlaneObjectFRC20CDrawablePlaneObject:
/* 802BFC04 002BCB64  A0 04 00 00 */	lhz r0, 0(r4)
/* 802BFC08 002BCB68  B0 03 00 00 */	sth r0, 0(r3)
/* 802BFC0C 002BCB6C  A0 04 00 02 */	lhz r0, 2(r4)
/* 802BFC10 002BCB70  B0 03 00 02 */	sth r0, 2(r3)
/* 802BFC14 002BCB74  80 04 00 04 */	lwz r0, 4(r4)
/* 802BFC18 002BCB78  90 03 00 04 */	stw r0, 4(r3)
/* 802BFC1C 002BCB7C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802BFC20 002BCB80  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BFC24 002BCB84  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802BFC28 002BCB88  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BFC2C 002BCB8C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 802BFC30 002BCB90  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802BFC34 002BCB94  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 802BFC38 002BCB98  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802BFC3C 002BCB9C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 802BFC40 002BCBA0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802BFC44 002BCBA4  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 802BFC48 002BCBA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802BFC4C 002BCBAC  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 802BFC50 002BCBB0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802BFC54 002BCBB4  A0 04 00 24 */	lhz r0, 0x24(r4)
/* 802BFC58 002BCBB8  B0 03 00 24 */	sth r0, 0x24(r3)
/* 802BFC5C 002BCBBC  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 802BFC60 002BCBC0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802BFC64 002BCBC4  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 802BFC68 002BCBC8  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802BFC6C 002BCBCC  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 802BFC70 002BCBD0  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802BFC74 002BCBD4  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 802BFC78 002BCBD8  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802BFC7C 002BCBDC  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 802BFC80 002BCBE0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802BFC84 002BCBE4  88 04 00 3C */	lbz r0, 0x3c(r4)
/* 802BFC88 002BCBE8  98 03 00 3C */	stb r0, 0x3c(r3)
/* 802BFC8C 002BCBEC  4E 80 00 20 */	blr

.global __ct__20CDrawablePlaneObjectF13EDrawableTypeffRC6CAABoxbRC6CPlanebPCv
__ct__20CDrawablePlaneObjectF13EDrawableTypeffRC6CAABoxbRC6CPlanebPCv:
/* 802BFC90 002BCBF0  B0 83 00 00 */	sth r4, 0(r3)
/* 802BFC94 002BCBF4  38 00 00 00 */	li r0, 0
/* 802BFC98 002BCBF8  B0 03 00 02 */	sth r0, 2(r3)
/* 802BFC9C 002BCBFC  91 23 00 04 */	stw r9, 4(r3)
/* 802BFCA0 002BCC00  C0 05 00 00 */	lfs f0, 0(r5)
/* 802BFCA4 002BCC04  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BFCA8 002BCC08  C0 05 00 04 */	lfs f0, 4(r5)
/* 802BFCAC 002BCC0C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BFCB0 002BCC10  C0 05 00 08 */	lfs f0, 8(r5)
/* 802BFCB4 002BCC14  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802BFCB8 002BCC18  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 802BFCBC 002BCC1C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802BFCC0 002BCC20  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 802BFCC4 002BCC24  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802BFCC8 002BCC28  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 802BFCCC 002BCC2C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802BFCD0 002BCC30  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 802BFCD4 002BCC34  B0 03 00 24 */	sth r0, 0x24(r3)
/* 802BFCD8 002BCC38  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 802BFCDC 002BCC3C  C0 07 00 00 */	lfs f0, 0(r7)
/* 802BFCE0 002BCC40  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802BFCE4 002BCC44  C0 07 00 04 */	lfs f0, 4(r7)
/* 802BFCE8 002BCC48  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802BFCEC 002BCC4C  C0 07 00 08 */	lfs f0, 8(r7)
/* 802BFCF0 002BCC50  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802BFCF4 002BCC54  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 802BFCF8 002BCC58  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 802BFCFC 002BCC5C  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 802BFD00 002BCC60  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 802BFD04 002BCC64  98 03 00 3C */	stb r0, 0x3c(r3)
/* 802BFD08 002BCC68  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 802BFD0C 002BCC6C  51 00 36 72 */	rlwimi r0, r8, 6, 0x19, 0x19
/* 802BFD10 002BCC70  98 03 00 3C */	stb r0, 0x3c(r3)
/* 802BFD14 002BCC74  4E 80 00 20 */	blr

.global Insert__7BucketsFRC9CVector3fRC6CAABox13EDrawableTypePCvRC6CPlaneUs
Insert__7BucketsFRC9CVector3fRC6CAABox13EDrawableTypePCvRC6CPlaneUs:
/* 802BFD18 002BCC78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BFD1C 002BCC7C  81 4D A6 0C */	lwz r10, sData__7Buckets@sda21(r13)
/* 802BFD20 002BCC80  80 0A 00 00 */	lwz r0, 0(r10)
/* 802BFD24 002BCC84  2C 00 02 00 */	cmpwi r0, 0x200
/* 802BFD28 002BCC88  41 82 01 2C */	beq lbl_802BFE54
/* 802BFD2C 002BCC8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BFD30 002BCC90  39 2A 00 04 */	addi r9, r10, 4
/* 802BFD34 002BCC94  C0 27 00 04 */	lfs f1, 4(r7)
/* 802BFD38 002BCC98  C0 C4 00 00 */	lfs f6, 0(r4)
/* 802BFD3C 002BCC9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802BFD40 002BCCA0  C0 23 00 00 */	lfs f1, 0(r3)
/* 802BFD44 002BCCA4  C0 47 00 00 */	lfs f2, 0(r7)
/* 802BFD48 002BCCA8  C0 A4 00 04 */	lfs f5, 4(r4)
/* 802BFD4C 002BCCAC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 802BFD50 002BCCB0  C0 23 00 08 */	lfs f1, 8(r3)
/* 802BFD54 002BCCB4  C0 47 00 08 */	lfs f2, 8(r7)
/* 802BFD58 002BCCB8  C0 84 00 08 */	lfs f4, 8(r4)
/* 802BFD5C 002BCCBC  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 802BFD60 002BCCC0  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 802BFD64 002BCCC4  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 802BFD68 002BCCC8  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 802BFD6C 002BCCCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BFD70 002BCCD0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 802BFD74 002BCCD4  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 802BFD78 002BCCD8  D0 01 00 08 */	stfs f0, 8(r1)
/* 802BFD7C 002BCCDC  80 0A 00 00 */	lwz r0, 0(r10)
/* 802BFD80 002BCCE0  B1 01 00 0E */	sth r8, 0xe(r1)
/* 802BFD84 002BCCE4  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802BFD88 002BCCE8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802BFD8C 002BCCEC  7C 69 02 15 */	add. r3, r9, r0
/* 802BFD90 002BCCF0  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 802BFD94 002BCCF4  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 802BFD98 002BCCF8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 802BFD9C 002BCCFC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 802BFDA0 002BCD00  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 802BFDA4 002BCD04  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 802BFDA8 002BCD08  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802BFDAC 002BCD0C  41 82 00 30 */	beq lbl_802BFDDC
/* 802BFDB0 002BCD10  B0 A3 00 00 */	sth r5, 0(r3)
/* 802BFDB4 002BCD14  FC 00 00 18 */	frsp f0, f0
/* 802BFDB8 002BCD18  B1 03 00 02 */	sth r8, 2(r3)
/* 802BFDBC 002BCD1C  90 C3 00 04 */	stw r6, 4(r3)
/* 802BFDC0 002BCD20  D0 C3 00 08 */	stfs f6, 8(r3)
/* 802BFDC4 002BCD24  D0 A3 00 0C */	stfs f5, 0xc(r3)
/* 802BFDC8 002BCD28  D0 83 00 10 */	stfs f4, 0x10(r3)
/* 802BFDCC 002BCD2C  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 802BFDD0 002BCD30  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 802BFDD4 002BCD34  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 802BFDD8 002BCD38  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_802BFDDC:
/* 802BFDDC 002BCD3C  80 6A 00 00 */	lwz r3, 0(r10)
/* 802BFDE0 002BCD40  38 03 00 01 */	addi r0, r3, 1
/* 802BFDE4 002BCD44  90 0A 00 00 */	stw r0, 0(r10)
/* 802BFDE8 002BCD48  C0 2D A6 14 */	lfs f1, sMinMaxDistance__7Buckets@sda21(r13)
/* 802BFDEC 002BCD4C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802BFDF0 002BCD50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BFDF4 002BCD54  40 80 00 0C */	bge lbl_802BFE00
/* 802BFDF8 002BCD58  38 8D A6 14 */	addi r4, r13, sMinMaxDistance__7Buckets@sda21
/* 802BFDFC 002BCD5C  48 00 00 08 */	b lbl_802BFE04
lbl_802BFE00:
/* 802BFE00 002BCD60  38 81 00 08 */	addi r4, r1, 8
lbl_802BFE04:
/* 802BFE04 002BCD64  38 6D A6 14 */	addi r3, r13, sMinMaxDistance__7Buckets@sda21
/* 802BFE08 002BCD68  C0 44 00 00 */	lfs f2, 0(r4)
/* 802BFE0C 002BCD6C  C0 21 00 08 */	lfs f1, 8(r1)
/* 802BFE10 002BCD70  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BFE14 002BCD74  D0 4D A6 14 */	stfs f2, sMinMaxDistance__7Buckets@sda21(r13)
/* 802BFE18 002BCD78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BFE1C 002BCD7C  40 80 00 0C */	bge lbl_802BFE28
/* 802BFE20 002BCD80  38 63 00 04 */	addi r3, r3, 4
/* 802BFE24 002BCD84  48 00 00 08 */	b lbl_802BFE2C
lbl_802BFE28:
/* 802BFE28 002BCD88  38 61 00 08 */	addi r3, r1, 8
lbl_802BFE2C:
/* 802BFE2C 002BCD8C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BFE30 002BCD90  38 6D A6 14 */	addi r3, r13, sMinMaxDistance__7Buckets@sda21
/* 802BFE34 002BCD94  38 8A 00 04 */	addi r4, r10, 4
/* 802BFE38 002BCD98  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BFE3C 002BCD9C  80 6A 00 00 */	lwz r3, 0(r10)
/* 802BFE40 002BCDA0  38 03 FF FF */	addi r0, r3, -1
/* 802BFE44 002BCDA4  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802BFE48 002BCDA8  7C 64 02 14 */	add r3, r4, r0
/* 802BFE4C 002BCDAC  38 03 00 24 */	addi r0, r3, 0x24
/* 802BFE50 002BCDB0  7C 00 02 2C */	dcbt r0, r0
lbl_802BFE54:
/* 802BFE54 002BCDB4  38 21 00 30 */	addi r1, r1, 0x30
/* 802BFE58 002BCDB8  4E 80 00 20 */	blr

.global Shutdown__7BucketsFv
Shutdown__7BucketsFv:
/* 802BFE5C 002BCDBC  38 00 00 00 */	li r0, 0
/* 802BFE60 002BCDC0  90 0D A6 0C */	stw r0, sData__7Buckets@sda21(r13)
/* 802BFE64 002BCDC4  90 0D A6 10 */	stw r0, sBuckets__7Buckets@sda21(r13)
/* 802BFE68 002BCDC8  90 0D A6 1C */	stw r0, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BFE6C 002BCDCC  90 0D A6 20 */	stw r0, sPlaneObjectBucket__7Buckets@sda21(r13)
/* 802BFE70 002BCDD0  4E 80 00 20 */	blr

.global Init__7BucketsFv
Init__7BucketsFv:
/* 802BFE74 002BCDD4  3C 60 80 47 */	lis r3, "sDataHolder$4374"@ha
/* 802BFE78 002BCDD8  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 802BFE7C 002BCDDC  34 83 E2 74 */	addic. r4, r3, "sDataHolder$4374"@l
/* 802BFE80 002BCDE0  41 82 00 0C */	beq lbl_802BFE8C
/* 802BFE84 002BCDE4  38 00 00 00 */	li r0, 0
/* 802BFE88 002BCDE8  90 04 00 00 */	stw r0, 0(r4)
lbl_802BFE8C:
/* 802BFE8C 002BCDEC  3C 60 80 47 */	lis r3, "sBucketsHolder$4375"@ha
/* 802BFE90 002BCDF0  90 8D A6 0C */	stw r4, sData__7Buckets@sda21(r13)
/* 802BFE94 002BCDF4  34 83 2A 7C */	addic. r4, r3, "sBucketsHolder$4375"@l
/* 802BFE98 002BCDF8  41 82 00 0C */	beq lbl_802BFEA4
/* 802BFE9C 002BCDFC  38 00 00 00 */	li r0, 0
/* 802BFEA0 002BCE00  90 04 00 00 */	stw r0, 0(r4)
lbl_802BFEA4:
/* 802BFEA4 002BCE04  3C 60 80 48 */	lis r3, "sPlaneObjectDataHolder$4376"@ha
/* 802BFEA8 002BCE08  90 8D A6 10 */	stw r4, sBuckets__7Buckets@sda21(r13)
/* 802BFEAC 002BCE0C  34 83 8F 4C */	addic. r4, r3, "sPlaneObjectDataHolder$4376"@l
/* 802BFEB0 002BCE10  41 82 00 0C */	beq lbl_802BFEBC
/* 802BFEB4 002BCE14  38 00 00 00 */	li r0, 0
/* 802BFEB8 002BCE18  90 04 00 00 */	stw r0, 0(r4)
lbl_802BFEBC:
/* 802BFEBC 002BCE1C  3C 60 80 48 */	lis r3, "sPlaneObjectBucketHolder$4377"@ha
/* 802BFEC0 002BCE20  90 8D A6 1C */	stw r4, sPlaneObjectData__7Buckets@sda21(r13)
/* 802BFEC4 002BCE24  34 63 91 54 */	addic. r3, r3, "sPlaneObjectBucketHolder$4377"@l
/* 802BFEC8 002BCE28  41 82 00 0C */	beq lbl_802BFED4
/* 802BFECC 002BCE2C  38 00 00 00 */	li r0, 0
/* 802BFED0 002BCE30  90 03 00 00 */	stw r0, 0(r3)
lbl_802BFED4:
/* 802BFED4 002BCE34  90 6D A6 20 */	stw r3, sPlaneObjectBucket__7Buckets@sda21(r13)
/* 802BFED8 002BCE38  38 80 00 00 */	li r4, 0
/* 802BFEDC 002BCE3C  81 4D A6 10 */	lwz r10, sBuckets__7Buckets@sda21(r13)
/* 802BFEE0 002BCE40  90 81 00 08 */	stw r4, 8(r1)
/* 802BFEE4 002BCE44  80 6A 00 00 */	lwz r3, 0(r10)
/* 802BFEE8 002BCE48  2C 03 00 32 */	cmpwi r3, 0x32
/* 802BFEEC 002BCE4C  40 80 00 78 */	bge lbl_802BFF64
/* 802BFEF0 002BCE50  1C 03 02 04 */	mulli r0, r3, 0x204
/* 802BFEF4 002BCE54  7C 85 23 78 */	mr r5, r4
/* 802BFEF8 002BCE58  20 C3 00 32 */	subfic r6, r3, 0x32
/* 802BFEFC 002BCE5C  39 21 00 0C */	addi r9, r1, 0xc
/* 802BFF00 002BCE60  7C 6A 02 14 */	add r3, r10, r0
/* 802BFF04 002BCE64  38 63 00 04 */	addi r3, r3, 4
/* 802BFF08 002BCE68  48 00 00 4C */	b lbl_802BFF54
lbl_802BFF0C:
/* 802BFF0C 002BCE6C  28 03 00 00 */	cmplwi r3, 0
/* 802BFF10 002BCE70  41 82 00 3C */	beq lbl_802BFF4C
/* 802BFF14 002BCE74  90 83 00 00 */	stw r4, 0(r3)
/* 802BFF18 002BCE78  7D 28 4B 78 */	mr r8, r9
/* 802BFF1C 002BCE7C  38 E3 00 04 */	addi r7, r3, 4
/* 802BFF20 002BCE80  80 03 00 00 */	lwz r0, 0(r3)
/* 802BFF24 002BCE84  7C 09 03 A6 */	mtctr r0
/* 802BFF28 002BCE88  2C 00 00 00 */	cmpwi r0, 0
/* 802BFF2C 002BCE8C  40 81 00 20 */	ble lbl_802BFF4C
lbl_802BFF30:
/* 802BFF30 002BCE90  28 07 00 00 */	cmplwi r7, 0
/* 802BFF34 002BCE94  41 82 00 0C */	beq lbl_802BFF40
/* 802BFF38 002BCE98  80 08 00 00 */	lwz r0, 0(r8)
/* 802BFF3C 002BCE9C  90 07 00 00 */	stw r0, 0(r7)
lbl_802BFF40:
/* 802BFF40 002BCEA0  38 E7 00 04 */	addi r7, r7, 4
/* 802BFF44 002BCEA4  39 08 00 04 */	addi r8, r8, 4
/* 802BFF48 002BCEA8  42 00 FF E8 */	bdnz lbl_802BFF30
lbl_802BFF4C:
/* 802BFF4C 002BCEAC  38 A5 00 01 */	addi r5, r5, 1
/* 802BFF50 002BCEB0  38 63 02 04 */	addi r3, r3, 0x204
lbl_802BFF54:
/* 802BFF54 002BCEB4  7C 05 30 00 */	cmpw r5, r6
/* 802BFF58 002BCEB8  41 80 FF B4 */	blt lbl_802BFF0C
/* 802BFF5C 002BCEBC  38 00 00 32 */	li r0, 0x32
/* 802BFF60 002BCEC0  90 0A 00 00 */	stw r0, 0(r10)
lbl_802BFF64:
/* 802BFF64 002BCEC4  80 A1 00 08 */	lwz r5, 8(r1)
/* 802BFF68 002BCEC8  38 60 00 00 */	li r3, 0
/* 802BFF6C 002BCECC  2C 05 00 00 */	cmpwi r5, 0
/* 802BFF70 002BCED0  40 81 00 40 */	ble lbl_802BFFB0
/* 802BFF74 002BCED4  2C 05 00 08 */	cmpwi r5, 8
/* 802BFF78 002BCED8  38 85 FF F8 */	addi r4, r5, -8
/* 802BFF7C 002BCEDC  40 81 00 20 */	ble lbl_802BFF9C
/* 802BFF80 002BCEE0  38 04 00 07 */	addi r0, r4, 7
/* 802BFF84 002BCEE4  54 00 E8 FE */	srwi r0, r0, 3
/* 802BFF88 002BCEE8  7C 09 03 A6 */	mtctr r0
/* 802BFF8C 002BCEEC  2C 04 00 00 */	cmpwi r4, 0
/* 802BFF90 002BCEF0  40 81 00 0C */	ble lbl_802BFF9C
lbl_802BFF94:
/* 802BFF94 002BCEF4  38 63 00 08 */	addi r3, r3, 8
/* 802BFF98 002BCEF8  42 00 FF FC */	bdnz lbl_802BFF94
lbl_802BFF9C:
/* 802BFF9C 002BCEFC  7C 03 28 50 */	subf r0, r3, r5
/* 802BFFA0 002BCF00  7C 09 03 A6 */	mtctr r0
/* 802BFFA4 002BCF04  7C 03 28 00 */	cmpw r3, r5
/* 802BFFA8 002BCF08  40 80 00 08 */	bge lbl_802BFFB0
lbl_802BFFAC:
/* 802BFFAC 002BCF0C  42 00 00 00 */	bdnz lbl_802BFFAC
lbl_802BFFB0:
/* 802BFFB0 002BCF10  38 6D A6 04 */	addi r3, r13, skWorstMinMaxDistance__7Buckets@sda21
/* 802BFFB4 002BCF14  C0 2D A6 04 */	lfs f1, skWorstMinMaxDistance__7Buckets@sda21(r13)
/* 802BFFB8 002BCF18  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BFFBC 002BCF1C  38 00 00 00 */	li r0, 0
/* 802BFFC0 002BCF20  38 6D A6 14 */	addi r3, r13, sMinMaxDistance__7Buckets@sda21
/* 802BFFC4 002BCF24  90 01 00 08 */	stw r0, 8(r1)
/* 802BFFC8 002BCF28  D0 2D A6 14 */	stfs f1, sMinMaxDistance__7Buckets@sda21(r13)
/* 802BFFCC 002BCF2C  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BFFD0 002BCF30  38 21 02 10 */	addi r1, r1, 0x210
/* 802BFFD4 002BCF34  4E 80 00 20 */	blr

.global "__nw__27TOneStatic<13CCubeRenderer>FUlPCcPCc"
"__nw__27TOneStatic<13CCubeRenderer>FUlPCcPCc":
/* 802BFFD8 002BCF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BFFDC 002BCF3C  7C 08 02 A6 */	mflr r0
/* 802BFFE0 002BCF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BFFE4 002BCF44  48 00 00 5D */	bl sub_802c0040
/* 802BFFE8 002BCF48  80 83 00 00 */	lwz r4, 0(r3)
/* 802BFFEC 002BCF4C  38 04 00 01 */	addi r0, r4, 1
/* 802BFFF0 002BCF50  90 03 00 00 */	stw r0, 0(r3)
/* 802BFFF4 002BCF54  48 00 00 41 */	bl sub_802c0034
/* 802BFFF8 002BCF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BFFFC 002BCF5C  7C 08 03 A6 */	mtlr r0
/* 802C0000 002BCF60  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0004 002BCF64  4E 80 00 20 */	blr

.global sub_802c0008
sub_802c0008:
/* 802C0008 002BCF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C000C 002BCF6C  7C 08 02 A6 */	mflr r0
/* 802C0010 002BCF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0014 002BCF74  48 00 00 2D */	bl sub_802c0040
/* 802C0018 002BCF78  80 83 00 00 */	lwz r4, 0(r3)
/* 802C001C 002BCF7C  38 04 FF FF */	addi r0, r4, -1
/* 802C0020 002BCF80  90 03 00 00 */	stw r0, 0(r3)
/* 802C0024 002BCF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0028 002BCF88  7C 08 03 A6 */	mtlr r0
/* 802C002C 002BCF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0030 002BCF90  4E 80 00 20 */	blr

.global sub_802c0034
sub_802c0034:
/* 802C0034 002BCF94  3C 60 80 48 */	lis r3, "sAllocSpace$9000"@ha
/* 802C0038 002BCF98  38 63 91 78 */	addi r3, r3, "sAllocSpace$9000"@l
/* 802C003C 002BCF9C  4E 80 00 20 */	blr

.global sub_802c0040
sub_802c0040:
/* 802C0040 002BCFA0  88 0D A6 34 */	lbz r0, "init$9006"@sda21(r13)
/* 802C0044 002BCFA4  7C 00 07 75 */	extsb. r0, r0
/* 802C0048 002BCFA8  40 82 00 14 */	bne lbl_802C005C
/* 802C004C 002BCFAC  38 60 00 00 */	li r3, 0
/* 802C0050 002BCFB0  38 00 00 01 */	li r0, 1
/* 802C0054 002BCFB4  90 6D A6 30 */	stw r3, "sReferenceCount$9005"@sda21(r13)
/* 802C0058 002BCFB8  98 0D A6 34 */	stb r0, "init$9006"@sda21(r13)
lbl_802C005C:
/* 802C005C 002BCFBC  38 6D A6 30 */	addi r3, r13, "sReferenceCount$9005"@sda21
/* 802C0060 002BCFC0  4E 80 00 20 */	blr

.global sub_802c0064
sub_802c0064:
/* 802C0064 002BCFC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C0068 002BCFC8  7C 08 02 A6 */	mflr r0
/* 802C006C 002BCFCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C0070 002BCFD0  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802C0074 002BCFD4  7C 7B 1B 78 */	mr r27, r3
/* 802C0078 002BCFD8  7C 9C 23 78 */	mr r28, r4
/* 802C007C 002BCFDC  7C BD 2B 78 */	mr r29, r5
/* 802C0080 002BCFE0  7C DB E0 50 */	subf r6, r27, r28
/* 802C0084 002BCFE4  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 802C0088 002BCFE8  7C 00 32 14 */	add r0, r0, r6
/* 802C008C 002BCFEC  7C 05 0E 70 */	srawi r5, r0, 1
/* 802C0090 002BCFF0  2C 05 00 01 */	cmpwi r5, 1
/* 802C0094 002BCFF4  40 81 01 00 */	ble lbl_802C0194
/* 802C0098 002BCFF8  2C 05 00 14 */	cmpwi r5, 0x14
/* 802C009C 002BCFFC  41 81 00 18 */	bgt lbl_802C00B4
/* 802C00A0 002BD000  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C00A4 002BD004  38 A1 00 14 */	addi r5, r1, 0x14
/* 802C00A8 002BD008  98 01 00 14 */	stb r0, 0x14(r1)
/* 802C00AC 002BD00C  48 00 07 05 */	bl sub_802c07b0
/* 802C00B0 002BD010  48 00 00 E4 */	b lbl_802C0194
lbl_802C00B4:
/* 802C00B4 002BD014  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 802C00B8 002BD018  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C00BC 002BD01C  7C 84 2A 14 */	add r4, r4, r5
/* 802C00C0 002BD020  3B FC FF FE */	addi r31, r28, -2
/* 802C00C4 002BD024  7C 84 0E 70 */	srawi r4, r4, 1
/* 802C00C8 002BD028  98 01 00 10 */	stb r0, 0x10(r1)
/* 802C00CC 002BD02C  54 80 08 3C */	slwi r0, r4, 1
/* 802C00D0 002BD030  7F E5 FB 78 */	mr r5, r31
/* 802C00D4 002BD034  7F DB 02 14 */	add r30, r27, r0
/* 802C00D8 002BD038  38 C1 00 10 */	addi r6, r1, 0x10
/* 802C00DC 002BD03C  7F C4 F3 78 */	mr r4, r30
/* 802C00E0 002BD040  48 00 08 B5 */	bl sub_802c0994
/* 802C00E4 002BD044  A0 1E 00 00 */	lhz r0, 0(r30)
/* 802C00E8 002BD048  3B DB 00 02 */	addi r30, r27, 2
/* 802C00EC 002BD04C  3B FF FF FE */	addi r31, r31, -2
/* 802C00F0 002BD050  54 04 32 B2 */	rlwinm r4, r0, 6, 0xa, 0x19
lbl_802C00F4:
/* 802C00F4 002BD054  80 6D A6 1C */	lwz r3, sPlaneObjectData__7Buckets@sda21(r13)
/* 802C00F8 002BD058  38 A3 00 04 */	addi r5, r3, 4
/* 802C00FC 002BD05C  7C C5 22 14 */	add r6, r5, r4
/* 802C0100 002BD060  48 00 00 08 */	b lbl_802C0108
lbl_802C0104:
/* 802C0104 002BD064  3B DE 00 02 */	addi r30, r30, 2
lbl_802C0108:
/* 802C0108 002BD068  A0 FE 00 00 */	lhz r7, 0(r30)
/* 802C010C 002BD06C  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 802C0110 002BD070  54 E0 32 B2 */	rlwinm r0, r7, 6, 0xa, 0x19
/* 802C0114 002BD074  7C 65 02 14 */	add r3, r5, r0
/* 802C0118 002BD078  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 802C011C 002BD07C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C0120 002BD080  41 80 FF E4 */	blt lbl_802C0104
/* 802C0124 002BD084  48 00 00 08 */	b lbl_802C012C
lbl_802C0128:
/* 802C0128 002BD088  3B FF FF FE */	addi r31, r31, -2
lbl_802C012C:
/* 802C012C 002BD08C  A1 1F 00 00 */	lhz r8, 0(r31)
/* 802C0130 002BD090  C0 26 00 20 */	lfs f1, 0x20(r6)
/* 802C0134 002BD094  55 00 32 B2 */	rlwinm r0, r8, 6, 0xa, 0x19
/* 802C0138 002BD098  7C 65 02 14 */	add r3, r5, r0
/* 802C013C 002BD09C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802C0140 002BD0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C0144 002BD0A4  41 80 FF E4 */	blt lbl_802C0128
/* 802C0148 002BD0A8  7C 1E F8 40 */	cmplw r30, r31
/* 802C014C 002BD0AC  40 80 00 18 */	bge lbl_802C0164
/* 802C0150 002BD0B0  B1 1E 00 00 */	sth r8, 0(r30)
/* 802C0154 002BD0B4  3B DE 00 02 */	addi r30, r30, 2
/* 802C0158 002BD0B8  B0 FF 00 00 */	sth r7, 0(r31)
/* 802C015C 002BD0BC  3B FF FF FE */	addi r31, r31, -2
/* 802C0160 002BD0C0  4B FF FF 94 */	b lbl_802C00F4
lbl_802C0164:
/* 802C0164 002BD0C4  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C0168 002BD0C8  7F 63 DB 78 */	mr r3, r27
/* 802C016C 002BD0CC  7F C4 F3 78 */	mr r4, r30
/* 802C0170 002BD0D0  38 A1 00 0C */	addi r5, r1, 0xc
/* 802C0174 002BD0D4  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C0178 002BD0D8  4B FF FE ED */	bl sub_802c0064
/* 802C017C 002BD0DC  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C0180 002BD0E0  7F C3 F3 78 */	mr r3, r30
/* 802C0184 002BD0E4  7F 84 E3 78 */	mr r4, r28
/* 802C0188 002BD0E8  38 A1 00 08 */	addi r5, r1, 8
/* 802C018C 002BD0EC  98 01 00 08 */	stb r0, 8(r1)
/* 802C0190 002BD0F0  4B FF FE D5 */	bl sub_802c0064
lbl_802C0194:
/* 802C0194 002BD0F4  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802C0198 002BD0F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C019C 002BD0FC  7C 08 03 A6 */	mtlr r0
/* 802C01A0 002BD100  38 21 00 30 */	addi r1, r1, 0x30
/* 802C01A4 002BD104  4E 80 00 20 */	blr

.global sub_802c01a8
sub_802c01a8:
/* 802C01A8 002BD108  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C01AC 002BD10C  7C 08 02 A6 */	mflr r0
/* 802C01B0 002BD110  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C01B4 002BD114  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802C01B8 002BD118  7C 7B 1B 78 */	mr r27, r3
/* 802C01BC 002BD11C  7C 9C 23 78 */	mr r28, r4
/* 802C01C0 002BD120  7C BD 2B 78 */	mr r29, r5
/* 802C01C4 002BD124  7C 1B E0 50 */	subf r0, r27, r28
/* 802C01C8 002BD128  7C 00 16 70 */	srawi r0, r0, 2
/* 802C01CC 002BD12C  7C A0 01 94 */	addze r5, r0
/* 802C01D0 002BD130  2C 05 00 01 */	cmpwi r5, 1
/* 802C01D4 002BD134  40 81 01 2C */	ble lbl_802C0300
/* 802C01D8 002BD138  2C 05 00 14 */	cmpwi r5, 0x14
/* 802C01DC 002BD13C  41 81 00 18 */	bgt lbl_802C01F4
/* 802C01E0 002BD140  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C01E4 002BD144  38 A1 00 14 */	addi r5, r1, 0x14
/* 802C01E8 002BD148  98 01 00 14 */	stb r0, 0x14(r1)
/* 802C01EC 002BD14C  48 00 06 41 */	bl sub_802c082c
/* 802C01F0 002BD150  48 00 01 10 */	b lbl_802C0300
lbl_802C01F4:
/* 802C01F4 002BD154  54 A4 0F FE */	srwi r4, r5, 0x1f
/* 802C01F8 002BD158  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C01FC 002BD15C  7C 84 2A 14 */	add r4, r4, r5
/* 802C0200 002BD160  3B FC FF FC */	addi r31, r28, -4
/* 802C0204 002BD164  7C 84 0E 70 */	srawi r4, r4, 1
/* 802C0208 002BD168  98 01 00 10 */	stb r0, 0x10(r1)
/* 802C020C 002BD16C  54 80 10 3A */	slwi r0, r4, 2
/* 802C0210 002BD170  7F E5 FB 78 */	mr r5, r31
/* 802C0214 002BD174  7F DB 02 14 */	add r30, r27, r0
/* 802C0218 002BD178  38 C1 00 10 */	addi r6, r1, 0x10
/* 802C021C 002BD17C  7F C4 F3 78 */	mr r4, r30
/* 802C0220 002BD180  48 00 06 99 */	bl sub_802c08b8
/* 802C0224 002BD184  80 DE 00 00 */	lwz r6, 0(r30)
/* 802C0228 002BD188  3B DB 00 04 */	addi r30, r27, 4
/* 802C022C 002BD18C  3B FF FF FC */	addi r31, r31, -4
lbl_802C0230:
/* 802C0230 002BD190  C0 26 00 20 */	lfs f1, 0x20(r6)
/* 802C0234 002BD194  48 00 00 08 */	b lbl_802C023C
lbl_802C0238:
/* 802C0238 002BD198  3B DE 00 04 */	addi r30, r30, 4
lbl_802C023C:
/* 802C023C 002BD19C  80 9E 00 00 */	lwz r4, 0(r30)
/* 802C0240 002BD1A0  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 802C0244 002BD1A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C0248 002BD1A8  40 82 00 18 */	bne lbl_802C0260
/* 802C024C 002BD1AC  A0 64 00 02 */	lhz r3, 2(r4)
/* 802C0250 002BD1B0  A0 06 00 02 */	lhz r0, 2(r6)
/* 802C0254 002BD1B4  7C 03 00 50 */	subf r0, r3, r0
/* 802C0258 002BD1B8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C025C 002BD1BC  48 00 00 10 */	b lbl_802C026C
lbl_802C0260:
/* 802C0260 002BD1C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C0264 002BD1C4  7C 00 00 26 */	mfcr r0
/* 802C0268 002BD1C8  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
lbl_802C026C:
/* 802C026C 002BD1CC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802C0270 002BD1D0  40 82 FF C8 */	bne lbl_802C0238
/* 802C0274 002BD1D4  48 00 00 08 */	b lbl_802C027C
lbl_802C0278:
/* 802C0278 002BD1D8  3B FF FF FC */	addi r31, r31, -4
lbl_802C027C:
/* 802C027C 002BD1DC  80 BF 00 00 */	lwz r5, 0(r31)
/* 802C0280 002BD1E0  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 802C0284 002BD1E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802C0288 002BD1E8  40 82 00 18 */	bne lbl_802C02A0
/* 802C028C 002BD1EC  A0 66 00 02 */	lhz r3, 2(r6)
/* 802C0290 002BD1F0  A0 05 00 02 */	lhz r0, 2(r5)
/* 802C0294 002BD1F4  7C 03 00 50 */	subf r0, r3, r0
/* 802C0298 002BD1F8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C029C 002BD1FC  48 00 00 10 */	b lbl_802C02AC
lbl_802C02A0:
/* 802C02A0 002BD200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C02A4 002BD204  7C 00 00 26 */	mfcr r0
/* 802C02A8 002BD208  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
lbl_802C02AC:
/* 802C02AC 002BD20C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802C02B0 002BD210  40 82 FF C8 */	bne lbl_802C0278
/* 802C02B4 002BD214  7C 1E F8 40 */	cmplw r30, r31
/* 802C02B8 002BD218  40 80 00 18 */	bge lbl_802C02D0
/* 802C02BC 002BD21C  90 BE 00 00 */	stw r5, 0(r30)
/* 802C02C0 002BD220  3B DE 00 04 */	addi r30, r30, 4
/* 802C02C4 002BD224  90 9F 00 00 */	stw r4, 0(r31)
/* 802C02C8 002BD228  3B FF FF FC */	addi r31, r31, -4
/* 802C02CC 002BD22C  4B FF FF 64 */	b lbl_802C0230
lbl_802C02D0:
/* 802C02D0 002BD230  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C02D4 002BD234  7F 63 DB 78 */	mr r3, r27
/* 802C02D8 002BD238  7F C4 F3 78 */	mr r4, r30
/* 802C02DC 002BD23C  38 A1 00 0C */	addi r5, r1, 0xc
/* 802C02E0 002BD240  98 01 00 0C */	stb r0, 0xc(r1)
/* 802C02E4 002BD244  4B FF FE C5 */	bl sub_802c01a8
/* 802C02E8 002BD248  88 1D 00 00 */	lbz r0, 0(r29)
/* 802C02EC 002BD24C  7F C3 F3 78 */	mr r3, r30
/* 802C02F0 002BD250  7F 84 E3 78 */	mr r4, r28
/* 802C02F4 002BD254  38 A1 00 08 */	addi r5, r1, 8
/* 802C02F8 002BD258  98 01 00 08 */	stb r0, 8(r1)
/* 802C02FC 002BD25C  4B FF FE AD */	bl sub_802c01a8
lbl_802C0300:
/* 802C0300 002BD260  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802C0304 002BD264  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C0308 002BD268  7C 08 03 A6 */	mtlr r0
/* 802C030C 002BD26C  38 21 00 30 */	addi r1, r1, 0x30
/* 802C0310 002BD270  4E 80 00 20 */	blr

.global sub_802c0314
sub_802c0314:
/* 802C0314 002BD274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0318 002BD278  7C 08 02 A6 */	mflr r0
/* 802C031C 002BD27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0320 002BD280  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0324 002BD284  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C0328 002BD288  7C 9E 23 78 */	mr r30, r4
/* 802C032C 002BD28C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C0330 002BD290  7C 7D 1B 78 */	mr r29, r3
/* 802C0334 002BD294  80 03 00 04 */	lwz r0, 4(r3)
/* 802C0338 002BD298  83 E4 00 04 */	lwz r31, 4(r4)
/* 802C033C 002BD29C  7C 1E 00 40 */	cmplw r30, r0
/* 802C0340 002BD2A0  40 82 00 08 */	bne lbl_802C0348
/* 802C0344 002BD2A4  93 FD 00 04 */	stw r31, 4(r29)
lbl_802C0348:
/* 802C0348 002BD2A8  80 1E 00 04 */	lwz r0, 4(r30)
/* 802C034C 002BD2AC  38 7E 00 08 */	addi r3, r30, 8
/* 802C0350 002BD2B0  80 BE 00 00 */	lwz r5, 0(r30)
/* 802C0354 002BD2B4  38 80 FF FF */	li r4, -1
/* 802C0358 002BD2B8  90 05 00 04 */	stw r0, 4(r5)
/* 802C035C 002BD2BC  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C0360 002BD2C0  80 BE 00 04 */	lwz r5, 4(r30)
/* 802C0364 002BD2C4  90 05 00 00 */	stw r0, 0(r5)
/* 802C0368 002BD2C8  4B FF E0 51 */	bl sub_802be3b8
/* 802C036C 002BD2CC  28 1E 00 00 */	cmplwi r30, 0
/* 802C0370 002BD2D0  41 82 00 0C */	beq lbl_802C037C
/* 802C0374 002BD2D4  7F C3 F3 78 */	mr r3, r30
/* 802C0378 002BD2D8  48 05 55 B9 */	bl Free__7CMemoryFPCv
lbl_802C037C:
/* 802C037C 002BD2DC  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 802C0380 002BD2E0  7F E3 FB 78 */	mr r3, r31
/* 802C0384 002BD2E4  38 04 FF FF */	addi r0, r4, -1
/* 802C0388 002BD2E8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 802C038C 002BD2EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0390 002BD2F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C0394 002BD2F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C0398 002BD2F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C039C 002BD2FC  7C 08 03 A6 */	mtlr r0
/* 802C03A0 002BD300  38 21 00 20 */	addi r1, r1, 0x20
/* 802C03A4 002BD304  4E 80 00 20 */	blr

.global sub_802c03a8
sub_802c03a8:
/* 802C03A8 002BD308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C03AC 002BD30C  7C 08 02 A6 */	mflr r0
/* 802C03B0 002BD310  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C03B4 002BD314  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C03B8 002BD318  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C03BC 002BD31C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C03C0 002BD320  7C 9D 23 78 */	mr r29, r4
/* 802C03C4 002BD324  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C03C8 002BD328  7C 7C 1B 79 */	or. r28, r3, r3
/* 802C03CC 002BD32C  41 82 00 4C */	beq lbl_802C0418
/* 802C03D0 002BD330  83 FC 00 04 */	lwz r31, 4(r28)
/* 802C03D4 002BD334  48 00 00 28 */	b lbl_802C03FC
lbl_802C03D8:
/* 802C03D8 002BD338  7F FE FB 78 */	mr r30, r31
/* 802C03DC 002BD33C  83 FF 00 04 */	lwz r31, 4(r31)
/* 802C03E0 002BD340  38 7E 00 08 */	addi r3, r30, 8
/* 802C03E4 002BD344  38 80 FF FF */	li r4, -1
/* 802C03E8 002BD348  4B FF DF D1 */	bl sub_802be3b8
/* 802C03EC 002BD34C  28 1E 00 00 */	cmplwi r30, 0
/* 802C03F0 002BD350  41 82 00 0C */	beq lbl_802C03FC
/* 802C03F4 002BD354  7F C3 F3 78 */	mr r3, r30
/* 802C03F8 002BD358  48 05 55 39 */	bl Free__7CMemoryFPCv
lbl_802C03FC:
/* 802C03FC 002BD35C  80 1C 00 08 */	lwz r0, 8(r28)
/* 802C0400 002BD360  7C 1F 00 40 */	cmplw r31, r0
/* 802C0404 002BD364  40 82 FF D4 */	bne lbl_802C03D8
/* 802C0408 002BD368  7F A0 07 35 */	extsh. r0, r29
/* 802C040C 002BD36C  40 81 00 0C */	ble lbl_802C0418
/* 802C0410 002BD370  7F 83 E3 78 */	mr r3, r28
/* 802C0414 002BD374  48 05 55 1D */	bl Free__7CMemoryFPCv
lbl_802C0418:
/* 802C0418 002BD378  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C041C 002BD37C  7F 83 E3 78 */	mr r3, r28
/* 802C0420 002BD380  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0424 002BD384  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C0428 002BD388  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C042C 002BD38C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C0430 002BD390  7C 08 03 A6 */	mtlr r0
/* 802C0434 002BD394  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0438 002BD398  4E 80 00 20 */	blr

.global sub_802c043c
sub_802c043c:
/* 802C043C 002BD39C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0440 002BD3A0  7C 08 02 A6 */	mflr r0
/* 802C0444 002BD3A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0448 002BD3A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C044C 002BD3AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C0450 002BD3B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C0454 002BD3B4  7C 9D 23 78 */	mr r29, r4
/* 802C0458 002BD3B8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C045C 002BD3BC  7C 7C 1B 78 */	mr r28, r3
/* 802C0460 002BD3C0  80 03 00 04 */	lwz r0, 4(r3)
/* 802C0464 002BD3C4  83 C4 00 04 */	lwz r30, 4(r4)
/* 802C0468 002BD3C8  7C 1D 00 40 */	cmplw r29, r0
/* 802C046C 002BD3CC  40 82 00 08 */	bne lbl_802C0474
/* 802C0470 002BD3D0  93 DC 00 04 */	stw r30, 4(r28)
lbl_802C0474:
/* 802C0474 002BD3D4  80 1D 00 04 */	lwz r0, 4(r29)
/* 802C0478 002BD3D8  37 FD 00 08 */	addic. r31, r29, 8
/* 802C047C 002BD3DC  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C0480 002BD3E0  90 03 00 04 */	stw r0, 4(r3)
/* 802C0484 002BD3E4  80 1D 00 00 */	lwz r0, 0(r29)
/* 802C0488 002BD3E8  80 7D 00 04 */	lwz r3, 4(r29)
/* 802C048C 002BD3EC  90 03 00 00 */	stw r0, 0(r3)
/* 802C0490 002BD3F0  41 82 00 38 */	beq lbl_802C04C8
/* 802C0494 002BD3F4  34 1F 00 4C */	addic. r0, r31, 0x4c
/* 802C0498 002BD3F8  41 82 00 30 */	beq lbl_802C04C8
/* 802C049C 002BD3FC  88 1F 00 58 */	lbz r0, 0x58(r31)
/* 802C04A0 002BD400  28 00 00 00 */	cmplwi r0, 0
/* 802C04A4 002BD404  41 82 00 1C */	beq lbl_802C04C0
/* 802C04A8 002BD408  34 7F 00 4C */	addic. r3, r31, 0x4c
/* 802C04AC 002BD40C  41 82 00 14 */	beq lbl_802C04C0
/* 802C04B0 002BD410  28 03 00 00 */	cmplwi r3, 0
/* 802C04B4 002BD414  41 82 00 0C */	beq lbl_802C04C0
/* 802C04B8 002BD418  38 80 00 00 */	li r4, 0
/* 802C04BC 002BD41C  48 08 09 85 */	bl __dt__6CTokenFv
lbl_802C04C0:
/* 802C04C0 002BD420  38 00 00 00 */	li r0, 0
/* 802C04C4 002BD424  98 1F 00 58 */	stb r0, 0x58(r31)
lbl_802C04C8:
/* 802C04C8 002BD428  28 1D 00 00 */	cmplwi r29, 0
/* 802C04CC 002BD42C  41 82 00 0C */	beq lbl_802C04D8
/* 802C04D0 002BD430  7F A3 EB 78 */	mr r3, r29
/* 802C04D4 002BD434  48 05 54 5D */	bl Free__7CMemoryFPCv
lbl_802C04D8:
/* 802C04D8 002BD438  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 802C04DC 002BD43C  7F C3 F3 78 */	mr r3, r30
/* 802C04E0 002BD440  38 04 FF FF */	addi r0, r4, -1
/* 802C04E4 002BD444  90 1C 00 14 */	stw r0, 0x14(r28)
/* 802C04E8 002BD448  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C04EC 002BD44C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C04F0 002BD450  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C04F4 002BD454  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C04F8 002BD458  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C04FC 002BD45C  7C 08 03 A6 */	mtlr r0
/* 802C0500 002BD460  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0504 002BD464  4E 80 00 20 */	blr

.global sub_802c0508
sub_802c0508:
/* 802C0508 002BD468  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C050C 002BD46C  7C 08 02 A6 */	mflr r0
/* 802C0510 002BD470  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0514 002BD474  BF 41 00 08 */	stmw r26, 8(r1)
/* 802C0518 002BD478  7C 7A 1B 79 */	or. r26, r3, r3
/* 802C051C 002BD47C  7C 9B 23 78 */	mr r27, r4
/* 802C0520 002BD480  41 82 00 7C */	beq lbl_802C059C
/* 802C0524 002BD484  83 BA 00 04 */	lwz r29, 4(r26)
/* 802C0528 002BD488  3B E0 00 00 */	li r31, 0
/* 802C052C 002BD48C  48 00 00 54 */	b lbl_802C0580
lbl_802C0530:
/* 802C0530 002BD490  7F BC EB 78 */	mr r28, r29
/* 802C0534 002BD494  83 BD 00 04 */	lwz r29, 4(r29)
/* 802C0538 002BD498  37 DC 00 08 */	addic. r30, r28, 8
/* 802C053C 002BD49C  41 82 00 34 */	beq lbl_802C0570
/* 802C0540 002BD4A0  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 802C0544 002BD4A4  41 82 00 2C */	beq lbl_802C0570
/* 802C0548 002BD4A8  88 1E 00 58 */	lbz r0, 0x58(r30)
/* 802C054C 002BD4AC  28 00 00 00 */	cmplwi r0, 0
/* 802C0550 002BD4B0  41 82 00 1C */	beq lbl_802C056C
/* 802C0554 002BD4B4  34 7E 00 4C */	addic. r3, r30, 0x4c
/* 802C0558 002BD4B8  41 82 00 14 */	beq lbl_802C056C
/* 802C055C 002BD4BC  28 03 00 00 */	cmplwi r3, 0
/* 802C0560 002BD4C0  41 82 00 0C */	beq lbl_802C056C
/* 802C0564 002BD4C4  38 80 00 00 */	li r4, 0
/* 802C0568 002BD4C8  48 08 08 D9 */	bl __dt__6CTokenFv
lbl_802C056C:
/* 802C056C 002BD4CC  9B FE 00 58 */	stb r31, 0x58(r30)
lbl_802C0570:
/* 802C0570 002BD4D0  28 1C 00 00 */	cmplwi r28, 0
/* 802C0574 002BD4D4  41 82 00 0C */	beq lbl_802C0580
/* 802C0578 002BD4D8  7F 83 E3 78 */	mr r3, r28
/* 802C057C 002BD4DC  48 05 53 B5 */	bl Free__7CMemoryFPCv
lbl_802C0580:
/* 802C0580 002BD4E0  80 1A 00 08 */	lwz r0, 8(r26)
/* 802C0584 002BD4E4  7C 1D 00 40 */	cmplw r29, r0
/* 802C0588 002BD4E8  40 82 FF A8 */	bne lbl_802C0530
/* 802C058C 002BD4EC  7F 60 07 35 */	extsh. r0, r27
/* 802C0590 002BD4F0  40 81 00 0C */	ble lbl_802C059C
/* 802C0594 002BD4F4  7F 43 D3 78 */	mr r3, r26
/* 802C0598 002BD4F8  48 05 53 99 */	bl Free__7CMemoryFPCv
lbl_802C059C:
/* 802C059C 002BD4FC  7F 43 D3 78 */	mr r3, r26
/* 802C05A0 002BD500  BB 41 00 08 */	lmw r26, 8(r1)
/* 802C05A4 002BD504  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C05A8 002BD508  7C 08 03 A6 */	mtlr r0
/* 802C05AC 002BD50C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C05B0 002BD510  4E 80 00 20 */	blr

.global sub_802c05b4
sub_802c05b4:
/* 802C05B4 002BD514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C05B8 002BD518  7C 08 02 A6 */	mflr r0
/* 802C05BC 002BD51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C05C0 002BD520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C05C4 002BD524  93 C1 00 08 */	stw r30, 8(r1)
/* 802C05C8 002BD528  7C 7E 1B 78 */	mr r30, r3
/* 802C05CC 002BD52C  80 03 00 04 */	lwz r0, 4(r3)
/* 802C05D0 002BD530  83 E4 00 04 */	lwz r31, 4(r4)
/* 802C05D4 002BD534  7C 04 00 40 */	cmplw r4, r0
/* 802C05D8 002BD538  40 82 00 08 */	bne lbl_802C05E0
/* 802C05DC 002BD53C  93 FE 00 04 */	stw r31, 4(r30)
lbl_802C05E0:
/* 802C05E0 002BD540  80 04 00 04 */	lwz r0, 4(r4)
/* 802C05E4 002BD544  28 04 00 00 */	cmplwi r4, 0
/* 802C05E8 002BD548  80 64 00 00 */	lwz r3, 0(r4)
/* 802C05EC 002BD54C  90 03 00 04 */	stw r0, 4(r3)
/* 802C05F0 002BD550  80 04 00 00 */	lwz r0, 0(r4)
/* 802C05F4 002BD554  80 64 00 04 */	lwz r3, 4(r4)
/* 802C05F8 002BD558  90 03 00 00 */	stw r0, 0(r3)
/* 802C05FC 002BD55C  41 82 00 0C */	beq lbl_802C0608
/* 802C0600 002BD560  7C 83 23 78 */	mr r3, r4
/* 802C0604 002BD564  48 05 53 2D */	bl Free__7CMemoryFPCv
lbl_802C0608:
/* 802C0608 002BD568  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 802C060C 002BD56C  7F E3 FB 78 */	mr r3, r31
/* 802C0610 002BD570  38 04 FF FF */	addi r0, r4, -1
/* 802C0614 002BD574  90 1E 00 14 */	stw r0, 0x14(r30)
/* 802C0618 002BD578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C061C 002BD57C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C0620 002BD580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0624 002BD584  7C 08 03 A6 */	mtlr r0
/* 802C0628 002BD588  38 21 00 10 */	addi r1, r1, 0x10
/* 802C062C 002BD58C  4E 80 00 20 */	blr

.global sub_802c0630
sub_802c0630:
/* 802C0630 002BD590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0634 002BD594  7C 08 02 A6 */	mflr r0
/* 802C0638 002BD598  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C063C 002BD59C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0640 002BD5A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C0644 002BD5A4  7C 9E 23 78 */	mr r30, r4
/* 802C0648 002BD5A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C064C 002BD5AC  7C 7D 1B 79 */	or. r29, r3, r3
/* 802C0650 002BD5B0  41 82 00 38 */	beq lbl_802C0688
/* 802C0654 002BD5B4  83 FD 00 04 */	lwz r31, 4(r29)
/* 802C0658 002BD5B8  48 00 00 14 */	b lbl_802C066C
lbl_802C065C:
/* 802C065C 002BD5BC  7F E3 FB 79 */	or. r3, r31, r31
/* 802C0660 002BD5C0  83 FF 00 04 */	lwz r31, 4(r31)
/* 802C0664 002BD5C4  41 82 00 08 */	beq lbl_802C066C
/* 802C0668 002BD5C8  48 05 52 C9 */	bl Free__7CMemoryFPCv
lbl_802C066C:
/* 802C066C 002BD5CC  80 1D 00 08 */	lwz r0, 8(r29)
/* 802C0670 002BD5D0  7C 1F 00 40 */	cmplw r31, r0
/* 802C0674 002BD5D4  40 82 FF E8 */	bne lbl_802C065C
/* 802C0678 002BD5D8  7F C0 07 35 */	extsh. r0, r30
/* 802C067C 002BD5DC  40 81 00 0C */	ble lbl_802C0688
/* 802C0680 002BD5E0  7F A3 EB 78 */	mr r3, r29
/* 802C0684 002BD5E4  48 05 52 AD */	bl Free__7CMemoryFPCv
lbl_802C0688:
/* 802C0688 002BD5E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C068C 002BD5EC  7F A3 EB 78 */	mr r3, r29
/* 802C0690 002BD5F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0694 002BD5F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C0698 002BD5F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C069C 002BD5FC  7C 08 03 A6 */	mtlr r0
/* 802C06A0 002BD600  38 21 00 20 */	addi r1, r1, 0x20
/* 802C06A4 002BD604  4E 80 00 20 */	blr

.global sub_802c06a8
sub_802c06a8:
/* 802C06A8 002BD608  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C06AC 002BD60C  7C 08 02 A6 */	mflr r0
/* 802C06B0 002BD610  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C06B4 002BD614  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802C06B8 002BD618  7C 9F 23 78 */	mr r31, r4
/* 802C06BC 002BD61C  7C 7E 1B 78 */	mr r30, r3
/* 802C06C0 002BD620  80 03 00 08 */	lwz r0, 8(r3)
/* 802C06C4 002BD624  7C 1F 00 00 */	cmpw r31, r0
/* 802C06C8 002BD628  40 81 00 D4 */	ble lbl_802C079C
/* 802C06CC 002BD62C  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 802C06D0 002BD630  40 82 00 0C */	bne lbl_802C06DC
/* 802C06D4 002BD634  3B A0 00 00 */	li r29, 0
/* 802C06D8 002BD638  48 00 00 18 */	b lbl_802C06F0
lbl_802C06DC:
/* 802C06DC 002BD63C  3C 80 80 3D */	lis r4, lbl_803D685C@ha
/* 802C06E0 002BD640  38 A0 00 00 */	li r5, 0
/* 802C06E4 002BD644  38 84 68 5C */	addi r4, r4, lbl_803D685C@l
/* 802C06E8 002BD648  48 05 51 31 */	bl __nwa__FUlPCcPCc
/* 802C06EC 002BD64C  7C 7D 1B 78 */	mr r29, r3
lbl_802C06F0:
/* 802C06F0 002BD650  80 7E 00 04 */	lwz r3, 4(r30)
/* 802C06F4 002BD654  7F A5 EB 78 */	mr r5, r29
/* 802C06F8 002BD658  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 802C06FC 002BD65C  38 00 00 00 */	li r0, 0
/* 802C0700 002BD660  54 63 18 38 */	slwi r3, r3, 3
/* 802C0704 002BD664  7C 86 1A 14 */	add r4, r6, r3
/* 802C0708 002BD668  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802C070C 002BD66C  90 81 00 08 */	stw r4, 8(r1)
/* 802C0710 002BD670  90 81 00 0C */	stw r4, 0xc(r1)
/* 802C0714 002BD674  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802C0718 002BD678  48 00 00 28 */	b lbl_802C0740
lbl_802C071C:
/* 802C071C 002BD67C  28 05 00 00 */	cmplwi r5, 0
/* 802C0720 002BD680  41 82 00 18 */	beq lbl_802C0738
/* 802C0724 002BD684  88 66 00 00 */	lbz r3, 0(r6)
/* 802C0728 002BD688  98 65 00 00 */	stb r3, 0(r5)
/* 802C072C 002BD68C  80 66 00 04 */	lwz r3, 4(r6)
/* 802C0730 002BD690  90 65 00 04 */	stw r3, 4(r5)
/* 802C0734 002BD694  98 06 00 00 */	stb r0, 0(r6)
lbl_802C0738:
/* 802C0738 002BD698  38 A5 00 08 */	addi r5, r5, 8
/* 802C073C 002BD69C  38 C6 00 08 */	addi r6, r6, 8
lbl_802C0740:
/* 802C0740 002BD6A0  7C 06 20 40 */	cmplw r6, r4
/* 802C0744 002BD6A4  40 82 FF D8 */	bne lbl_802C071C
/* 802C0748 002BD6A8  80 1E 00 04 */	lwz r0, 4(r30)
/* 802C074C 002BD6AC  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 802C0750 002BD6B0  54 00 18 38 */	slwi r0, r0, 3
/* 802C0754 002BD6B4  7F 9B 02 14 */	add r28, r27, r0
/* 802C0758 002BD6B8  48 00 00 24 */	b lbl_802C077C
lbl_802C075C:
/* 802C075C 002BD6BC  28 1B 00 00 */	cmplwi r27, 0
/* 802C0760 002BD6C0  41 82 00 18 */	beq lbl_802C0778
/* 802C0764 002BD6C4  88 1B 00 00 */	lbz r0, 0(r27)
/* 802C0768 002BD6C8  28 00 00 00 */	cmplwi r0, 0
/* 802C076C 002BD6CC  41 82 00 0C */	beq lbl_802C0778
/* 802C0770 002BD6D0  80 7B 00 04 */	lwz r3, 4(r27)
/* 802C0774 002BD6D4  48 05 51 BD */	bl Free__7CMemoryFPCv
lbl_802C0778:
/* 802C0778 002BD6D8  3B 7B 00 08 */	addi r27, r27, 8
lbl_802C077C:
/* 802C077C 002BD6DC  7C 1B E0 40 */	cmplw r27, r28
/* 802C0780 002BD6E0  40 82 FF DC */	bne lbl_802C075C
/* 802C0784 002BD6E4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802C0788 002BD6E8  28 03 00 00 */	cmplwi r3, 0
/* 802C078C 002BD6EC  41 82 00 08 */	beq lbl_802C0794
/* 802C0790 002BD6F0  48 05 51 A1 */	bl Free__7CMemoryFPCv
lbl_802C0794:
/* 802C0794 002BD6F4  93 BE 00 0C */	stw r29, 0xc(r30)
/* 802C0798 002BD6F8  93 FE 00 08 */	stw r31, 8(r30)
lbl_802C079C:
/* 802C079C 002BD6FC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802C07A0 002BD700  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C07A4 002BD704  7C 08 03 A6 */	mtlr r0
/* 802C07A8 002BD708  38 21 00 30 */	addi r1, r1, 0x30
/* 802C07AC 002BD70C  4E 80 00 20 */	blr

.global sub_802c07b0
sub_802c07b0:
/* 802C07B0 002BD710  39 03 00 02 */	addi r8, r3, 2
/* 802C07B4 002BD714  38 04 00 01 */	addi r0, r4, 1
/* 802C07B8 002BD718  7C 08 00 50 */	subf r0, r8, r0
/* 802C07BC 002BD71C  54 00 F8 7E */	srwi r0, r0, 1
/* 802C07C0 002BD720  7C 09 03 A6 */	mtctr r0
/* 802C07C4 002BD724  7C 08 20 40 */	cmplw r8, r4
/* 802C07C8 002BD728  4C 80 00 20 */	bgelr
lbl_802C07CC:
/* 802C07CC 002BD72C  A1 28 00 00 */	lhz r9, 0(r8)
/* 802C07D0 002BD730  7D 0B 43 78 */	mr r11, r8
/* 802C07D4 002BD734  39 48 FF FE */	addi r10, r8, -2
/* 802C07D8 002BD738  55 26 32 B2 */	rlwinm r6, r9, 6, 0xa, 0x19
/* 802C07DC 002BD73C  48 00 00 10 */	b lbl_802C07EC
lbl_802C07E0:
/* 802C07E0 002BD740  B0 EB 00 00 */	sth r7, 0(r11)
/* 802C07E4 002BD744  39 6B FF FE */	addi r11, r11, -2
/* 802C07E8 002BD748  39 4A FF FE */	addi r10, r10, -2
lbl_802C07EC:
/* 802C07EC 002BD74C  7C 03 58 40 */	cmplw r3, r11
/* 802C07F0 002BD750  40 80 00 2C */	bge lbl_802C081C
/* 802C07F4 002BD754  80 8D A6 1C */	lwz r4, sPlaneObjectData__7Buckets@sda21(r13)
/* 802C07F8 002BD758  A0 EA 00 00 */	lhz r7, 0(r10)
/* 802C07FC 002BD75C  38 A4 00 04 */	addi r5, r4, 4
/* 802C0800 002BD760  54 E0 32 B2 */	rlwinm r0, r7, 6, 0xa, 0x19
/* 802C0804 002BD764  7C 85 32 14 */	add r4, r5, r6
/* 802C0808 002BD768  7C A5 02 14 */	add r5, r5, r0
/* 802C080C 002BD76C  C0 24 00 20 */	lfs f1, 0x20(r4)
/* 802C0810 002BD770  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 802C0814 002BD774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C0818 002BD778  41 80 FF C8 */	blt lbl_802C07E0
lbl_802C081C:
/* 802C081C 002BD77C  B1 2B 00 00 */	sth r9, 0(r11)
/* 802C0820 002BD780  39 08 00 02 */	addi r8, r8, 2
/* 802C0824 002BD784  42 00 FF A8 */	bdnz lbl_802C07CC

.global sub_802c0828
sub_802c0828:
/* 802C0828 002BD788  4E 80 00 20 */	blr

.global sub_802c082c
sub_802c082c:
/* 802C082C 002BD78C  38 C3 00 04 */	addi r6, r3, 4
/* 802C0830 002BD790  38 04 00 03 */	addi r0, r4, 3
/* 802C0834 002BD794  7C 06 00 50 */	subf r0, r6, r0
/* 802C0838 002BD798  54 00 F0 BE */	srwi r0, r0, 2
/* 802C083C 002BD79C  7C 09 03 A6 */	mtctr r0
/* 802C0840 002BD7A0  7C 06 20 40 */	cmplw r6, r4
/* 802C0844 002BD7A4  4C 80 00 20 */	bgelr
lbl_802C0848:
/* 802C0848 002BD7A8  80 E6 00 00 */	lwz r7, 0(r6)
/* 802C084C 002BD7AC  7C C9 33 78 */	mr r9, r6
/* 802C0850 002BD7B0  39 06 FF FC */	addi r8, r6, -4
/* 802C0854 002BD7B4  48 00 00 10 */	b lbl_802C0864
lbl_802C0858:
/* 802C0858 002BD7B8  90 A9 00 00 */	stw r5, 0(r9)
/* 802C085C 002BD7BC  39 29 FF FC */	addi r9, r9, -4
/* 802C0860 002BD7C0  39 08 FF FC */	addi r8, r8, -4
lbl_802C0864:
/* 802C0864 002BD7C4  7C 03 48 40 */	cmplw r3, r9
/* 802C0868 002BD7C8  40 80 00 40 */	bge lbl_802C08A8
/* 802C086C 002BD7CC  80 A8 00 00 */	lwz r5, 0(r8)
/* 802C0870 002BD7D0  C0 07 00 20 */	lfs f0, 0x20(r7)
/* 802C0874 002BD7D4  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 802C0878 002BD7D8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C087C 002BD7DC  40 82 00 18 */	bne lbl_802C0894
/* 802C0880 002BD7E0  A0 87 00 02 */	lhz r4, 2(r7)
/* 802C0884 002BD7E4  A0 05 00 02 */	lhz r0, 2(r5)
/* 802C0888 002BD7E8  7C 04 00 50 */	subf r0, r4, r0
/* 802C088C 002BD7EC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C0890 002BD7F0  48 00 00 10 */	b lbl_802C08A0
lbl_802C0894:
/* 802C0894 002BD7F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C0898 002BD7F8  7C 00 00 26 */	mfcr r0
/* 802C089C 002BD7FC  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
lbl_802C08A0:
/* 802C08A0 002BD800  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802C08A4 002BD804  40 82 FF B4 */	bne lbl_802C0858
lbl_802C08A8:
/* 802C08A8 002BD808  90 E9 00 00 */	stw r7, 0(r9)
/* 802C08AC 002BD80C  38 C6 00 04 */	addi r6, r6, 4
/* 802C08B0 002BD810  42 00 FF 98 */	bdnz lbl_802C0848

.global sub_802c08b4
sub_802c08b4:
/* 802C08B4 002BD814  4E 80 00 20 */	blr

.global sub_802c08b8
sub_802c08b8:
/* 802C08B8 002BD818  80 E3 00 00 */	lwz r7, 0(r3)
/* 802C08BC 002BD81C  81 04 00 00 */	lwz r8, 0(r4)
/* 802C08C0 002BD820  C0 27 00 20 */	lfs f1, 0x20(r7)
/* 802C08C4 002BD824  C0 08 00 20 */	lfs f0, 0x20(r8)
/* 802C08C8 002BD828  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C08CC 002BD82C  40 82 00 18 */	bne lbl_802C08E4
/* 802C08D0 002BD830  A0 C8 00 02 */	lhz r6, 2(r8)
/* 802C08D4 002BD834  A0 07 00 02 */	lhz r0, 2(r7)
/* 802C08D8 002BD838  7C 06 00 50 */	subf r0, r6, r0
/* 802C08DC 002BD83C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C08E0 002BD840  48 00 00 10 */	b lbl_802C08F0
lbl_802C08E4:
/* 802C08E4 002BD844  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C08E8 002BD848  7C 00 00 26 */	mfcr r0
/* 802C08EC 002BD84C  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
lbl_802C08F0:
/* 802C08F0 002BD850  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802C08F4 002BD854  41 82 00 0C */	beq lbl_802C0900
/* 802C08F8 002BD858  91 03 00 00 */	stw r8, 0(r3)
/* 802C08FC 002BD85C  90 E4 00 00 */	stw r7, 0(r4)
lbl_802C0900:
/* 802C0900 002BD860  81 04 00 00 */	lwz r8, 0(r4)
/* 802C0904 002BD864  80 E5 00 00 */	lwz r7, 0(r5)
/* 802C0908 002BD868  C0 28 00 20 */	lfs f1, 0x20(r8)
/* 802C090C 002BD86C  C0 07 00 20 */	lfs f0, 0x20(r7)
/* 802C0910 002BD870  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C0914 002BD874  40 82 00 18 */	bne lbl_802C092C
/* 802C0918 002BD878  A0 C7 00 02 */	lhz r6, 2(r7)
/* 802C091C 002BD87C  A0 08 00 02 */	lhz r0, 2(r8)
/* 802C0920 002BD880  7C 06 00 50 */	subf r0, r6, r0
/* 802C0924 002BD884  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C0928 002BD888  48 00 00 10 */	b lbl_802C0938
lbl_802C092C:
/* 802C092C 002BD88C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C0930 002BD890  7C 00 00 26 */	mfcr r0
/* 802C0934 002BD894  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
lbl_802C0938:
/* 802C0938 002BD898  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802C093C 002BD89C  4D 82 00 20 */	beqlr
/* 802C0940 002BD8A0  91 05 00 00 */	stw r8, 0(r5)
/* 802C0944 002BD8A4  80 C3 00 00 */	lwz r6, 0(r3)
/* 802C0948 002BD8A8  C0 07 00 20 */	lfs f0, 0x20(r7)
/* 802C094C 002BD8AC  C0 26 00 20 */	lfs f1, 0x20(r6)
/* 802C0950 002BD8B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C0954 002BD8B4  40 82 00 18 */	bne lbl_802C096C
/* 802C0958 002BD8B8  A0 A7 00 02 */	lhz r5, 2(r7)
/* 802C095C 002BD8BC  A0 06 00 02 */	lhz r0, 2(r6)
/* 802C0960 002BD8C0  7C 05 00 50 */	subf r0, r5, r0
/* 802C0964 002BD8C4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C0968 002BD8C8  48 00 00 10 */	b lbl_802C0978
lbl_802C096C:
/* 802C096C 002BD8CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C0970 002BD8D0  7C 00 00 26 */	mfcr r0
/* 802C0974 002BD8D4  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
lbl_802C0978:
/* 802C0978 002BD8D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802C097C 002BD8DC  41 82 00 10 */	beq lbl_802C098C
/* 802C0980 002BD8E0  90 C4 00 00 */	stw r6, 0(r4)
/* 802C0984 002BD8E4  90 E3 00 00 */	stw r7, 0(r3)
/* 802C0988 002BD8E8  4E 80 00 20 */	blr
lbl_802C098C:
/* 802C098C 002BD8EC  90 E4 00 00 */	stw r7, 0(r4)
/* 802C0990 002BD8F0  4E 80 00 20 */	blr

.global sub_802c0994
sub_802c0994:
/* 802C0994 002BD8F4  80 CD A6 1C */	lwz r6, sPlaneObjectData__7Buckets@sda21(r13)
/* 802C0998 002BD8F8  A1 24 00 00 */	lhz r9, 0(r4)
/* 802C099C 002BD8FC  A1 03 00 00 */	lhz r8, 0(r3)
/* 802C09A0 002BD900  38 E6 00 04 */	addi r7, r6, 4
/* 802C09A4 002BD904  55 26 32 B2 */	rlwinm r6, r9, 6, 0xa, 0x19
/* 802C09A8 002BD908  55 00 32 B2 */	rlwinm r0, r8, 6, 0xa, 0x19
/* 802C09AC 002BD90C  7C C7 32 14 */	add r6, r7, r6
/* 802C09B0 002BD910  7C E7 02 14 */	add r7, r7, r0
/* 802C09B4 002BD914  C0 26 00 20 */	lfs f1, 0x20(r6)
/* 802C09B8 002BD918  C0 07 00 20 */	lfs f0, 0x20(r7)
/* 802C09BC 002BD91C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C09C0 002BD920  40 80 00 0C */	bge lbl_802C09CC
/* 802C09C4 002BD924  B1 23 00 00 */	sth r9, 0(r3)
/* 802C09C8 002BD928  B1 04 00 00 */	sth r8, 0(r4)
lbl_802C09CC:
/* 802C09CC 002BD92C  80 CD A6 1C */	lwz r6, sPlaneObjectData__7Buckets@sda21(r13)
/* 802C09D0 002BD930  A1 25 00 00 */	lhz r9, 0(r5)
/* 802C09D4 002BD934  A1 44 00 00 */	lhz r10, 0(r4)
/* 802C09D8 002BD938  39 06 00 04 */	addi r8, r6, 4
/* 802C09DC 002BD93C  55 26 32 B2 */	rlwinm r6, r9, 6, 0xa, 0x19
/* 802C09E0 002BD940  55 40 32 B2 */	rlwinm r0, r10, 6, 0xa, 0x19
/* 802C09E4 002BD944  7C E8 32 14 */	add r7, r8, r6
/* 802C09E8 002BD948  7D 08 02 14 */	add r8, r8, r0
/* 802C09EC 002BD94C  C0 27 00 20 */	lfs f1, 0x20(r7)
/* 802C09F0 002BD950  C0 08 00 20 */	lfs f0, 0x20(r8)
/* 802C09F4 002BD954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C09F8 002BD958  4C 80 00 20 */	bgelr
/* 802C09FC 002BD95C  B1 45 00 00 */	sth r10, 0(r5)
/* 802C0A00 002BD960  80 AD A6 1C */	lwz r5, sPlaneObjectData__7Buckets@sda21(r13)
/* 802C0A04 002BD964  A1 03 00 00 */	lhz r8, 0(r3)
/* 802C0A08 002BD968  38 E5 00 04 */	addi r7, r5, 4
/* 802C0A0C 002BD96C  55 00 32 B2 */	rlwinm r0, r8, 6, 0xa, 0x19
/* 802C0A10 002BD970  7C A7 32 14 */	add r5, r7, r6
/* 802C0A14 002BD974  7C C7 02 14 */	add r6, r7, r0
/* 802C0A18 002BD978  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 802C0A1C 002BD97C  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 802C0A20 002BD980  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C0A24 002BD984  40 80 00 10 */	bge lbl_802C0A34
/* 802C0A28 002BD988  B1 04 00 00 */	sth r8, 0(r4)
/* 802C0A2C 002BD98C  B1 23 00 00 */	sth r9, 0(r3)
/* 802C0A30 002BD990  4E 80 00 20 */	blr
lbl_802C0A34:
/* 802C0A34 002BD994  B1 24 00 00 */	sth r9, 0(r4)
/* 802C0A38 002BD998  4E 80 00 20 */	blr

.global __sinit_CCubeRenderer_cpp
__sinit_CCubeRenderer_cpp:
/* 802C0A3C 002BD99C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0A40 002BD9A0  7C 08 02 A6 */	mflr r0
/* 802C0A44 002BD9A4  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802C0A48 002BD9A8  38 80 00 00 */	li r4, 0
/* 802C0A4C 002BD9AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0A50 002BD9B0  38 00 00 03 */	li r0, 3
/* 802C0A54 002BD9B4  FC 40 08 90 */	fmr f2, f1
/* 802C0A58 002BD9B8  38 61 00 14 */	addi r3, r1, 0x14
/* 802C0A5C 002BD9BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0A60 002BD9C0  FC 60 08 90 */	fmr f3, f1
/* 802C0A64 002BD9C4  FC 80 08 90 */	fmr f4, f1
/* 802C0A68 002BD9C8  98 81 00 10 */	stb r4, 0x10(r1)
/* 802C0A6C 002BD9CC  98 81 00 11 */	stb r4, 0x11(r1)
/* 802C0A70 002BD9D0  B0 01 00 12 */	sth r0, 0x12(r1)
/* 802C0A74 002BD9D4  48 0A 29 79 */	bl __ct__6CColorFffff
/* 802C0A78 002BD9D8  C0 22 C2 70 */	lfs f1, lbl_805ADF90@sda21(r2)
/* 802C0A7C 002BD9DC  38 80 00 00 */	li r4, 0
/* 802C0A80 002BD9E0  89 21 00 10 */	lbz r9, 0x10(r1)
/* 802C0A84 002BD9E4  38 00 00 03 */	li r0, 3
/* 802C0A88 002BD9E8  89 01 00 11 */	lbz r8, 0x11(r1)
/* 802C0A8C 002BD9EC  38 ED A5 F4 */	addi r7, r13, skNormalFlag@sda21
/* 802C0A90 002BD9F0  A0 C1 00 12 */	lhz r6, 0x12(r1)
/* 802C0A94 002BD9F4  FC 40 08 90 */	fmr f2, f1
/* 802C0A98 002BD9F8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 802C0A9C 002BD9FC  FC 60 08 90 */	fmr f3, f1
/* 802C0AA0 002BDA00  FC 80 08 90 */	fmr f4, f1
/* 802C0AA4 002BDA04  99 2D A5 F4 */	stb r9, skNormalFlag@sda21(r13)
/* 802C0AA8 002BDA08  38 61 00 0C */	addi r3, r1, 0xc
/* 802C0AAC 002BDA0C  99 07 00 01 */	stb r8, 1(r7)
/* 802C0AB0 002BDA10  B0 C7 00 02 */	sth r6, 2(r7)
/* 802C0AB4 002BDA14  90 A7 00 04 */	stw r5, 4(r7)
/* 802C0AB8 002BDA18  98 81 00 08 */	stb r4, 8(r1)
/* 802C0ABC 002BDA1C  98 81 00 09 */	stb r4, 9(r1)
/* 802C0AC0 002BDA20  B0 01 00 0A */	sth r0, 0xa(r1)
/* 802C0AC4 002BDA24  48 0A 29 29 */	bl __ct__6CColorFffff
/* 802C0AC8 002BDA28  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 802C0ACC 002BDA2C  3C 80 80 2C */	lis r4, sub_802c0b50@ha
/* 802C0AD0 002BDA30  89 41 00 08 */	lbz r10, 8(r1)
/* 802C0AD4 002BDA34  3C A0 80 47 */	lis r5, "@4370"@ha
/* 802C0AD8 002BDA38  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 802C0ADC 002BDA3C  C0 2D 9A 98 */	lfs f1, lbl_805A8658@sda21(r13)
/* 802C0AE0 002BDA40  60 07 00 01 */	ori r7, r0, 1
/* 802C0AE4 002BDA44  39 0D A5 FC */	addi r8, r13, skNormalFlagNoUpdate@sda21
/* 802C0AE8 002BDA48  89 21 00 09 */	lbz r9, 9(r1)
/* 802C0AEC 002BDA4C  38 00 00 00 */	li r0, 0
/* 802C0AF0 002BDA50  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 802C0AF4 002BDA54  3C 60 80 47 */	lis r3, sBucketIndex__7Buckets@ha
/* 802C0AF8 002BDA58  C0 0D 9A 9C */	lfs f0, lbl_805A865C@sda21(r13)
/* 802C0AFC 002BDA5C  3B ED A6 04 */	addi r31, r13, skWorstMinMaxDistance__7Buckets@sda21
/* 802C0B00 002BDA60  99 4D A5 FC */	stb r10, skNormalFlagNoUpdate@sda21(r13)
/* 802C0B04 002BDA64  38 84 0B 50 */	addi r4, r4, sub_802c0b50@l
/* 802C0B08 002BDA68  38 A5 E2 00 */	addi r5, r5, "@4370"@l
/* 802C0B0C 002BDA6C  99 28 00 01 */	stb r9, 1(r8)
/* 802C0B10 002BDA70  B0 E8 00 02 */	sth r7, 2(r8)
/* 802C0B14 002BDA74  90 C8 00 04 */	stw r6, 4(r8)
/* 802C0B18 002BDA78  D0 2D A6 04 */	stfs f1, skWorstMinMaxDistance__7Buckets@sda21(r13)
/* 802C0B1C 002BDA7C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802C0B20 002BDA80  94 03 E2 0C */	stwu r0, sBucketIndex__7Buckets@l(r3)
/* 802C0B24 002BDA84  48 0C 8B 69 */	bl __register_global_object
/* 802C0B28 002BDA88  C0 2D A6 04 */	lfs f1, skWorstMinMaxDistance__7Buckets@sda21(r13)
/* 802C0B2C 002BDA8C  38 6D A6 14 */	addi r3, r13, sMinMaxDistance__7Buckets@sda21
/* 802C0B30 002BDA90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802C0B34 002BDA94  D0 2D A6 14 */	stfs f1, sMinMaxDistance__7Buckets@sda21(r13)
/* 802C0B38 002BDA98  D0 03 00 04 */	stfs f0, 4(r3)
/* 802C0B3C 002BDA9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0B40 002BDAA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0B44 002BDAA4  7C 08 03 A6 */	mtlr r0
/* 802C0B48 002BDAA8  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0B4C 002BDAAC  4E 80 00 20 */	blr

.global sub_802c0b50
sub_802c0b50:
/* 802C0B50 002BDAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C0B54 002BDAB4  7C 08 02 A6 */	mflr r0
/* 802C0B58 002BDAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C0B5C 002BDABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C0B60 002BDAC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C0B64 002BDAC4  41 82 00 68 */	beq lbl_802C0BCC
/* 802C0B68 002BDAC8  80 DF 00 00 */	lwz r6, 0(r31)
/* 802C0B6C 002BDACC  38 60 00 00 */	li r3, 0
/* 802C0B70 002BDAD0  2C 06 00 00 */	cmpwi r6, 0
/* 802C0B74 002BDAD4  40 81 00 40 */	ble lbl_802C0BB4
/* 802C0B78 002BDAD8  2C 06 00 08 */	cmpwi r6, 8
/* 802C0B7C 002BDADC  38 A6 FF F8 */	addi r5, r6, -8
/* 802C0B80 002BDAE0  40 81 00 20 */	ble lbl_802C0BA0
/* 802C0B84 002BDAE4  38 05 00 07 */	addi r0, r5, 7
/* 802C0B88 002BDAE8  54 00 E8 FE */	srwi r0, r0, 3
/* 802C0B8C 002BDAEC  7C 09 03 A6 */	mtctr r0
/* 802C0B90 002BDAF0  2C 05 00 00 */	cmpwi r5, 0
/* 802C0B94 002BDAF4  40 81 00 0C */	ble lbl_802C0BA0
lbl_802C0B98:
/* 802C0B98 002BDAF8  38 63 00 08 */	addi r3, r3, 8
/* 802C0B9C 002BDAFC  42 00 FF FC */	bdnz lbl_802C0B98
lbl_802C0BA0:
/* 802C0BA0 002BDB00  7C 03 30 50 */	subf r0, r3, r6
/* 802C0BA4 002BDB04  7C 09 03 A6 */	mtctr r0
/* 802C0BA8 002BDB08  7C 03 30 00 */	cmpw r3, r6
/* 802C0BAC 002BDB0C  40 80 00 08 */	bge lbl_802C0BB4
lbl_802C0BB0:
/* 802C0BB0 002BDB10  42 00 00 00 */	bdnz lbl_802C0BB0
lbl_802C0BB4:
/* 802C0BB4 002BDB14  38 60 00 00 */	li r3, 0
/* 802C0BB8 002BDB18  7C 80 07 35 */	extsh. r0, r4
/* 802C0BBC 002BDB1C  90 7F 00 00 */	stw r3, 0(r31)
/* 802C0BC0 002BDB20  40 81 00 0C */	ble lbl_802C0BCC
/* 802C0BC4 002BDB24  7F E3 FB 78 */	mr r3, r31
/* 802C0BC8 002BDB28  48 05 4D 69 */	bl Free__7CMemoryFPCv
lbl_802C0BCC:
/* 802C0BCC 002BDB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C0BD0 002BDB30  7F E3 FB 78 */	mr r3, r31
/* 802C0BD4 002BDB34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C0BD8 002BDB38  7C 08 03 A6 */	mtlr r0
/* 802C0BDC 002BDB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C0BE0 002BDB40  4E 80 00 20 */	blr

.global "@4@AddParticleGen__13CCubeRendererFRC12CParticleGen"
"@4@AddParticleGen__13CCubeRendererFRC12CParticleGen":
/* 802C0BE4 002BDB44  38 63 FF FC */	addi r3, r3, -4
/* 802C0BE8 002BDB48  4B FF CF 5C */	b AddParticleGen__13CCubeRendererFRC12CParticleGen

.global "@4@__dt__13CCubeRendererFv"
"@4@__dt__13CCubeRendererFv":
/* 802C0BEC 002BDB4C  38 63 FF FC */	addi r3, r3, -4
/* 802C0BF0 002BDB50  4B FF DA A8 */	b __dt__13CCubeRendererFv

.section .sdata2, "a"
.balign 8
.global lbl_805ADF88
lbl_805ADF88:
	# ROM: 0x3FA828
	.4byte 0xFFFFFFFF

.global lbl_805ADF8C
lbl_805ADF8C:
	# ROM: 0x3FA82C
	.4byte 0xFFFFFFFF

.global lbl_805ADF90
lbl_805ADF90:
	# ROM: 0x3FA830
	.float 1.0

.global lbl_805ADF94
lbl_805ADF94:
	# ROM: 0x3FA834
	.4byte 0

.global lbl_805ADF98
lbl_805ADF98:
	# ROM: 0x3FA838
	.4byte 0x3B808081

.global lbl_805ADF9C
lbl_805ADF9C:
	# ROM: 0x3FA83C
	.float 0.25

.global lbl_805ADFA0
lbl_805ADFA0:
	# ROM: 0x3FA840
	.float 0.5

.global lbl_805ADFA4
lbl_805ADFA4:
	# ROM: 0x3FA844
	.4byte 0x3F7D70A4

.global lbl_805ADFA8
lbl_805ADFA8:
	# ROM: 0x3FA848
	.float 2.0

.global lbl_805ADFAC
lbl_805ADFAC:
	# ROM: 0x3FA84C
	.4byte 0x3EFAE148

.global lbl_805ADFB0
lbl_805ADFB0:
	# ROM: 0x3FA850
	.4byte 0xC5800000

.global lbl_805ADFB4
lbl_805ADFB4:
	# ROM: 0x3FA854
	.4byte 0x45800000

.global lbl_805ADFB8
lbl_805ADFB8:
	# ROM: 0x3FA858
	.float 0.01
	.4byte 0

.global lbl_805ADFC0
lbl_805ADFC0:
	# ROM: 0x3FA860
	.double 4.503601774854144E15

.global lbl_805ADFC8
lbl_805ADFC8:
	# ROM: 0x3FA868
	.float -1.0

.global lbl_805ADFCC
lbl_805ADFCC:
	# ROM: 0x3FA86C
	.float 0.3

.global lbl_805ADFD0
lbl_805ADFD0:
	# ROM: 0x3FA870
	.float 1.5

.global lbl_805ADFD4
lbl_805ADFD4:
	# ROM: 0x3FA874
	.float 0.35

.global lbl_805ADFD8
lbl_805ADFD8:
	# ROM: 0x3FA878
	.float 255.0

.global lbl_805ADFDC
lbl_805ADFDC:
	# ROM: 0x3FA87C
	.4byte 0xBF490FDB

.global lbl_805ADFE0
lbl_805ADFE0:
	# ROM: 0x3FA880
	.float 5.0

.global lbl_805ADFE4
lbl_805ADFE4:
	# ROM: 0x3FA884
	.4byte 0x40C00000

.global lbl_805ADFE8
lbl_805ADFE8:
	# ROM: 0x3FA888
	.4byte 0xBF59999A

.global lbl_805ADFEC
lbl_805ADFEC:
	# ROM: 0x3FA88C
	.float 0.15

.global lbl_805ADFF0
lbl_805ADFF0:
	# ROM: 0x3FA890
	.4byte 0x3F8020C5
	.4byte 0

.global lbl_805ADFF8
lbl_805ADFF8:
	# ROM: 0x3FA898
	.4byte 0x3FB99999
	.4byte 0x9999999A

.global lbl_805AE000
lbl_805AE000:
	# ROM: 0x3FA8A0
	.4byte 0x43300000
	.4byte 0

.global lbl_805AE008
lbl_805AE008:
	# ROM: 0x3FA8A8
	.float 0.1

.global lbl_805AE00C
lbl_805AE00C:
	# ROM: 0x3FA8AC
	.float 0.2

.global lbl_805AE010
lbl_805AE010:
	# ROM: 0x3FA8B0
	.4byte 0
	.4byte 0

.global lbl_805AE018
lbl_805AE018:
	# ROM: 0x3FA8B8
	.4byte 0x3BAAAAAB
	.4byte 0

.global lbl_805AE020
lbl_805AE020:
	# ROM: 0x3FA8C0
	.4byte 0x3FE00000
	.4byte 0

.global lbl_805AE028
lbl_805AE028:
	# ROM: 0x3FA8C8
	.float 0.4

.global lbl_805AE02C
lbl_805AE02C:
	# ROM: 0x3FA8CC
	.4byte 0x42960000

.global lbl_805AE030
lbl_805AE030:
	# ROM: 0x3FA8D0
	.4byte 0x3FAAAAAB

.global lbl_805AE034
lbl_805AE034:
	# ROM: 0x3FA8D4
	.4byte 0x41780000

.global lbl_805AE038
lbl_805AE038:
	# ROM: 0x3FA8D8
	.4byte 0x40080000
	.4byte 0

.global lbl_805AE040
lbl_805AE040:
	# ROM: 0x3FA8E0
	.4byte 0x4062C000
	.4byte 0

.global lbl_805AE048
lbl_805AE048:
	# ROM: 0x3FA8E8
	.4byte 0x40876E66
	.4byte 0x60000000

.global lbl_805AE050
lbl_805AE050:
	# ROM: 0x3FA8F0
	.4byte 0x416FFFFF
	.4byte 0xE0000000

.global lbl_805AE058
lbl_805AE058:
	# ROM: 0x3FA8F8
	.4byte 0x40877000
	.4byte 0

.global lbl_805AE060
lbl_805AE060:
	# ROM: 0x3FA900
	.4byte 0x3FC99999
	.4byte 0xA0000000

.global lbl_805AE068
lbl_805AE068:
	# ROM: 0x3FA908
	.4byte 0x41600000

.global lbl_805AE06C
lbl_805AE06C:
	# ROM: 0x3FA90C
	.4byte 0x43000000

.global lbl_805AE070
lbl_805AE070:
	# ROM: 0x3FA910
	.4byte 0x3FC90FDB

.global lbl_805AE074
lbl_805AE074:
	# ROM: 0x3FA914
	.4byte 0x42C80000

.global lbl_805AE078
lbl_805AE078:
	# ROM: 0x3FA918
	.4byte 0x3CA72F05
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D6570
lbl_803D6570:
	# ROM: 0x3D3570
	.float -1.0
	.float -1.0
	.float -1.0
	.float -1.0

.global lbl_803D6580
lbl_803D6580:
	# ROM: 0x3D3580
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D65A0
lbl_803D65A0:
	# ROM: 0x3D35A0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D65B8
lbl_803D65B8:
	# ROM: 0x3D35B8
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D65FC
lbl_803D65FC:
	# ROM: 0x3D35FC
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000001

.global lbl_803D6614
lbl_803D6614:
	# ROM: 0x3D3614
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6624
lbl_803D6624:
	# ROM: 0x3D3624
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D663C
lbl_803D663C:
	# ROM: 0x3D363C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D6654
lbl_803D6654:
	# ROM: 0x3D3654
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6704
lbl_803D6704:
	# ROM: 0x3D3704
	.float 0.5
	.4byte 0
	.4byte 0
	.float 0.5
	.4byte 0
	.4byte 0
	.float 0.5
	.float 0.5
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0

.global lbl_803D6734
lbl_803D6734:
	# ROM: 0x3D3734
	.float 1.0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0

.global lbl_803D6764
lbl_803D6764:
	# ROM: 0x3D3764
	.float 1.0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0

.global lbl_803D6794
lbl_803D6794:
	# ROM: 0x3D3794
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D67B4
lbl_803D67B4:
	# ROM: 0x3D37B4
	.float -1.0
	.float -1.0
	.float 1.0
	.float -1.0
	.float -1.0
	.float 1.0
	.float 1.0
	.float 1.0
	.float -1.0
	.float 0.0
	.float 1.0
	.float 0.0
	.float 0.0
	.float 1.0
	.float 0.0
	.float -1.0

.global lbl_803D67F4
lbl_803D67F4:
	# ROM: 0x3D37F4
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D6814
lbl_803D6814:
	# ROM: 0x3D3814
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D682C
lbl_803D682C:
	# ROM: 0x3D382C
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0

.global lbl_803D685C
lbl_803D685C:
	# ROM: 0x3D385C
	.asciz "??(??)"
	.byte 0x54
	.asciz "XTR_ThermoPalette"
	.balign 4

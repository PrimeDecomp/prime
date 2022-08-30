#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Graphics/CTexture.hpp"

#include <limits.h>

CGX::SGXState CGX::sGXState;

static GXVtxDescList sVtxDescList[GX_MAX_VTXDESCLIST_SZ];

void CGX::SetNumChans(u8 num) {
  sGXState.x4e_numChans = num;
  sGXState.x4c_numChansDirty = sGXState.x4e_numChans != sGXState.x4d_prevNumChans;
}

void CGX::SetNumTexGens(u8 num) {
  if (num != sGXState.x4f_numTexGens) {
    sGXState.x4f_numTexGens = num;
    GXSetNumTexGens(num);
  }
}

void CGX::SetChanAmbColor(EChannelId channel, const GXColor& color) {
  if (!CompareGXColors(color, sGXState.x38_chanAmbColors[channel])) {
    CopyGXColor(sGXState.x38_chanAmbColors[channel], color);
    GXSetChanAmbColor(static_cast< GXChannelID >(GX_COLOR0A0 + channel), color);
  }
}

GXColor CGX::GetChanAmbColor(EChannelId channel) { return sGXState.x38_chanAmbColors[channel]; }

void CGX::SetChanMatColor(EChannelId channel, const GXColor& color) {
  if (!CompareGXColors(color, sGXState.x40_chanMatColors[channel])) {
    CopyGXColor(sGXState.x40_chanMatColors[channel], color);
    GXSetChanMatColor(static_cast< GXChannelID >(GX_COLOR0A0 + channel), color);
  }
}

// TODO non-matching
void CGX::SetChanCtrl(EChannelId channel, GXBool enable, GXColorSrc ambSrc, GXColorSrc matSrc, GXLightID lights, GXDiffuseFn diffFn,
                      GXAttnFn attnFn) {
  u16 flags = (lights == GX_LIGHT_NULL ? 0 : enable) & 1 | (ambSrc & 1) << 1 | (matSrc & 1) << 2 | (lights & 0xFF) << 3 |
              (diffFn & 3) << 11 | (attnFn & 3) << 13;
  sGXState.x34_chanCtrls[channel] = flags;
  // sGXState.x4c_dirtyChanCtrl = (((sGXState.x34_chanCtrls[channel] != sGXState.x30_prevChanCtrls[channel]) & 1) << channel) &
  //                              (sGXState.x4c_dirtyChanCtrl & ~(1 << channel));
  // if (channel == Channel0) {
  //   sGXState.x4c_dirtyChanCtrl0 = (sGXState.x34_chanCtrls[channel] != sGXState.x30_prevChanCtrls[channel]);
  // } else {
  //   sGXState.x4c_dirtyChanCtrl1 = (sGXState.x34_chanCtrls[channel] != sGXState.x30_prevChanCtrls[channel]);
  // }
}

void CGX::SetNumTevStages(u8 num) {
  if (sGXState.x50_numTevStages != num) {
    sGXState.x50_numTevStages = num;
    GXSetNumTevStages(num);
  }
}

void CGX::SetTevKColor(GXTevKColorID id, const GXColor& color) {
  if (!CompareGXColors(sGXState.x58_kColors[id], color)) {
    CopyGXColor(sGXState.x58_kColors[id], color);
    GXSetTevKColor(id, color);
  }
}

void CGX::SetTevColorIn(GXTevStageID stageId, GXTevColorArg a, GXTevColorArg b, GXTevColorArg c, GXTevColorArg d) {
  u32 flags = MaskAndShiftLeft(a, 0x1F, 0) | MaskAndShiftLeft(b, 0x1F, 5) | MaskAndShiftLeft(c, 0x1F, 10) | MaskAndShiftLeft(d, 0x1F, 15);
  STevState& state = sGXState.x68_tevStates[stageId];
  if (flags != state.x0_colorInArgs) {
    state.x0_colorInArgs = flags;
    GXSetTevColorIn(stageId, a, b, c, d);
  }
}

void CGX::SetTevAlphaIn(GXTevStageID stageId, GXTevAlphaArg a, GXTevAlphaArg b, GXTevAlphaArg c, GXTevAlphaArg d) {
  u32 flags = MaskAndShiftLeft(a, 0x1F, 0) | MaskAndShiftLeft(b, 0x1F, 5) | MaskAndShiftLeft(c, 0x1F, 10) | MaskAndShiftLeft(d, 0x1F, 15);
  STevState& state = sGXState.x68_tevStates[stageId];
  if (flags != state.x4_alphaInArgs) {
    state.x4_alphaInArgs = flags;
    GXSetTevAlphaIn(stageId, a, b, c, d);
  }
}

void CGX::SetTevColorOp(GXTevStageID stageId, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp, GXTevRegID outReg) {
  u32 flags = MaskAndShiftLeft(op, 0xF, 0) | MaskAndShiftLeft(bias, 3, 4) | MaskAndShiftLeft(scale, 3, 6) | MaskAndShiftLeft(clamp, 1, 8) |
              MaskAndShiftLeft(outReg, 3, 9);
  STevState& state = sGXState.x68_tevStates[stageId];
  if (flags != state.x8_colorOps) {
    state.x8_colorOps = flags;
    GXSetTevColorOp(stageId, op, bias, scale, clamp, outReg);
  }
}

void CGX::SetTevColorOp_Compressed(GXTevStageID stageId, u32 flags) {
  STevState& state = sGXState.x68_tevStates[stageId];
  if (flags != state.x8_colorOps) {
    state.x8_colorOps = flags;
    GXSetTevColorOp(stageId, static_cast< GXTevOp >(ShiftRightAndMask(flags, 0xF, 0)),
                    static_cast< GXTevBias >(ShiftRightAndMask(flags, 3, 4)), static_cast< GXTevScale >(ShiftRightAndMask(flags, 3, 6)),
                    static_cast< GXBool >(ShiftRightAndMask(flags, 1, 8)), static_cast< GXTevRegID >(ShiftRightAndMask(flags, 3, 9)));
  }
}

void CGX::SetTevAlphaOp(GXTevStageID stageId, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp, GXTevRegID outReg) {
  u32 flags = MaskAndShiftLeft(op, 0xF, 0) | MaskAndShiftLeft(bias, 3, 4) | MaskAndShiftLeft(scale, 3, 6) | MaskAndShiftLeft(clamp, 1, 8) |
              MaskAndShiftLeft(outReg, 3, 9);
  STevState& state = sGXState.x68_tevStates[stageId];
  if (flags != state.xc_alphaOps) {
    state.xc_alphaOps = flags;
    GXSetTevAlphaOp(stageId, op, bias, scale, clamp, outReg);
  }
}

void CGX::SetTevAlphaOp_Compressed(GXTevStageID stageId, u32 flags) {
  STevState& state = sGXState.x68_tevStates[stageId];
  if (flags != state.xc_alphaOps) {
    state.xc_alphaOps = flags;
    GXSetTevAlphaOp(stageId, static_cast< GXTevOp >(ShiftRightAndMask(flags, 0xF, 0)),
                    static_cast< GXTevBias >(ShiftRightAndMask(flags, 3, 4)), static_cast< GXTevScale >(ShiftRightAndMask(flags, 3, 6)),
                    static_cast< GXBool >(ShiftRightAndMask(flags, 1, 8)), static_cast< GXTevRegID >(ShiftRightAndMask(flags, 3, 9)));
  }
}

void CGX::SetTevKColorSel(GXTevStageID stageId, GXTevKColorSel sel) {
  STevState& state = sGXState.x68_tevStates[stageId];
  if (sel != state.x18_kColorSel) {
    state.x18_kColorSel = sel;
    GXSetTevKColorSel(stageId, sel);
  }
}

void CGX::SetTevKAlphaSel(GXTevStageID stageId, GXTevKAlphaSel sel) {
  STevState& state = sGXState.x68_tevStates[stageId];
  if (sel != state.x19_kAlphaSel) {
    state.x19_kAlphaSel = sel;
    GXSetTevKAlphaSel(stageId, sel);
  }
}

void CGX::SetTevOrder(GXTevStageID stageId, GXTexCoordID texCoord, GXTexMapID texMap, GXChannelID color) {
  STevState& state = sGXState.x68_tevStates[stageId];
  u32 flags = MaskAndShiftLeft(texCoord, 0xFF, 0) | MaskAndShiftLeft(texMap, 0xFF, 8) | MaskAndShiftLeft(color, 0xFF, 16);
  if (state.x14_tevOrderFlags != flags) {
    state.x14_tevOrderFlags = flags;
    GXSetTevOrder(stageId, texCoord, texMap, color);
  }
}

void CGX::SetBlendMode(GXBlendMode mode, GXBlendFactor srcFac, GXBlendFactor dstFac, GXLogicOp op) {
  u16 flags = MaskAndShiftLeft(mode, 3, 0) | MaskAndShiftLeft(srcFac, 7, 2) | MaskAndShiftLeft(dstFac, 7, 5) | MaskAndShiftLeft(op, 0xF, 8);
  if (flags != sGXState.x56_blendMode) {
    update_fog(flags);
    sGXState.x56_blendMode = flags;
    GXSetBlendMode(mode, srcFac, dstFac, op);
  }
}

void CGX::SetZMode(bool compareEnable, GXCompare func, bool updateEnable) {
  // ??
  u8 flags = compareEnable | MaskAndShiftLeft(updateEnable, 0xFF, 1) | (func & 0xFF) << 2;
  if (flags != sGXState.x52_zmode) {
    sGXState.x52_zmode = flags;
    GXSetZMode(compareEnable, func, updateEnable);
  }
}

void CGX::SetAlphaCompare(GXCompare comp0, u8 ref0, GXAlphaOp op, GXCompare comp1, u8 ref1) {
  u32 flags = MaskAndShiftLeft(comp0, 7, 0) | MaskAndShiftLeft(ref0, 0xFF, 3) | MaskAndShiftLeft(op, 7, 11) |
              MaskAndShiftLeft(comp1, 7, 14) | MaskAndShiftLeft(ref1, 0xFF, 17);
  if (sGXState.x248_alphaCompare != flags) {
    sGXState.x248_alphaCompare = flags;
    GXSetAlphaCompare(comp0, ref0, op, comp1, ref1);
    GXSetZCompLoc(comp0 == GX_ALWAYS);
  }
}

void CGX::SetTevIndirect(GXTevStageID stageId, GXIndTexStageID indStage, GXIndTexFormat fmt, GXIndTexBiasSel biasSel, GXIndTexMtxID mtxSel,
                         GXIndTexWrap wrapS, GXIndTexWrap wrapT, GXBool addPrev, GXBool indLod, GXIndTexAlphaSel alphaSel) {
  STevState& state = sGXState.x68_tevStates[stageId];
  u32 flags = MaskAndShiftLeft(indStage, 3, 0) | MaskAndShiftLeft(fmt, 3, 2) | MaskAndShiftLeft(biasSel, 7, 4) |
              MaskAndShiftLeft(mtxSel, 15, 7) | MaskAndShiftLeft(wrapS, 7, 11) | MaskAndShiftLeft(wrapT, 7, 14) |
              MaskAndShiftLeft(addPrev, 1, 17) | MaskAndShiftLeft(indLod, 1, 18) | MaskAndShiftLeft(alphaSel, 3, 19);
  if (state.x10_indFlags != flags) {
    state.x10_indFlags = flags;
    GXSetTevIndirect(stageId, indStage, fmt, biasSel, mtxSel, wrapS, wrapT, addPrev, indLod, alphaSel);
  }
}

void CGX::SetTevDirect(GXTevStageID stageId) {
  STevState& state = sGXState.x68_tevStates[stageId];
  if (state.x10_indFlags != 0) {
    state.x10_indFlags = 0;
    GXSetTevDirect(stageId);
  }
}

void CGX::SetTexCoordGen(GXTexCoordID dstCoord, GXTexGenType fn, GXTexGenSrc src, GXTexMtx mtx, GXBool normalize, GXPTTexMtx postMtx) {
  STexState& state = sGXState.x228_texStates[dstCoord];
  u32 vm = (mtx - GX_TEXMTX0) / 3;
  u32 vp = postMtx - GX_PTTEXMTX0;
#ifdef NONMATCHING
  // Similarly to GXTexMtx, this should also be divided by 3
  vp /= 3;
#endif
  u32 flags = MaskAndShiftLeft(fn, 0xF, 0) | MaskAndShiftLeft(src, 0x1F, 4) | MaskAndShiftLeft(vm, 0x1F, 9) |
              MaskAndShiftLeft(normalize, 1, 14) | MaskAndShiftLeft(vp, 0x3F, 15);
  if (state.x0_coordGen != flags) {
    state.x0_coordGen = flags;
    GXSetTexCoordGen2(dstCoord, fn, src, mtx, normalize, postMtx);
  }
}

void CGX::SetNumIndStages(u8 num) {
  if (sGXState.x51_numIndStages != num) {
    sGXState.x51_numIndStages = num;
    GXSetNumIndStages(num);
  }
}

void CGX::SetArray(GXAttr attr, const void* data, u8 stride) {
  u32 idx = attr - GX_VA_POS;
  if (data == nullptr || sGXState.x0_arrayPtrs[idx] == data) {
    return;
  }
  sGXState.x0_arrayPtrs[idx] = data;
  GXSetArray(attr, data, stride);
}

void CGX::CallDisplayList(const void* ptr, size_t size) {
  if (sGXState.x4c_flags != 0) {
    FlushState();
  }
  GXCallDisplayList(ptr, size);
}

void CGX::Begin(GXPrimitive prim, GXVtxFmt fmt, u16 numVtx) {
  if (sGXState.x4c_flags != 0) {
    FlushState();
  }
  GXBegin(prim, fmt, numVtx);
}

void CGX::End() {}

void CGX::SetFog(GXFogType type, f32 startZ, f32 endZ, f32 nearZ, f32 farZ, const GXColor& color) {
  sGXState.x53_fogType = type;
  sGXState.x24c_fogParams.x0_fogStartZ = startZ;
  sGXState.x24c_fogParams.x4_fogEndZ = endZ;
  sGXState.x24c_fogParams.x8_fogNearZ = nearZ;
  sGXState.x24c_fogParams.xc_fogFarZ = farZ;
  CopyGXColor(sGXState.x24c_fogParams.x10_fogColor, color);
  GXSetFog(static_cast< GXFogType >(sGXState.x53_fogType), sGXState.x24c_fogParams.x0_fogStartZ, sGXState.x24c_fogParams.x4_fogEndZ,
           sGXState.x24c_fogParams.x8_fogNearZ, sGXState.x24c_fogParams.xc_fogFarZ,
           (sGXState.x56_blendMode & 0xE0) == 0x20 ? GXColor() : sGXState.x24c_fogParams.x10_fogColor);
}

void CGX::SetLineWidth(u8 width, GXTexOffset offset) {
  u16 flags = width | offset << 8;
  if (flags != sGXState.x54_lineWidthAndOffset) {
    sGXState.x54_lineWidthAndOffset = flags;
    GXSetLineWidth(width, offset);
  }
}

CGX::STevState::STevState()
: x0_colorInArgs(0)
, x4_alphaInArgs(0)
, x8_colorOps(0)
, xc_alphaOps(0)
, x10_indFlags(0)
, x14_tevOrderFlags(UINT_MAX)
, x18_kColorSel(UCHAR_MAX)
, x19_kAlphaSel(UCHAR_MAX) {}

CGX::STexState::STexState() : x0_coordGen(0) {}

CGX::SGXState::SGXState()
: x48_descList(0)
, x4d_prevNumChans(2)
, x4e_numChans(0)
, x4f_numTexGens(UCHAR_MAX)
, x50_numTevStages(UCHAR_MAX)
, x51_numIndStages(UCHAR_MAX)
, x52_zmode(UCHAR_MAX)
, x53_fogType(0)
, x54_lineWidthAndOffset(USHRT_MAX)
, x56_blendMode(USHRT_MAX)
, x248_alphaCompare(UINT_MAX) {
  const GXColor sGXClear = {0, 0, 0, 0};
  const GXColor sGXWhite = {255, 255, 255, 255};
  for (s32 i = 0; i < 2; ++i) {
    x30_prevChanCtrls[i] = USHRT_MAX;
    x34_chanCtrls[i] = USHRT_MAX;
    x38_chanAmbColors[i] = sGXClear;
    x40_chanMatColors[i] = sGXWhite;
  }
  for (s32 i = 0; i < 4; ++i) {
    x58_kColors[i] = sGXClear;
  }
  SetChanCtrl(Channel0, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
  SetChanCtrl(Channel1, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE, GX_AF_NONE);
}

void CGX::ResetGXStates() {
  sGXState.x48_descList = 0;
  GXClearVtxDesc();
  for (s32 i = 0; i < 12; i++) {
    sGXState.x0_arrayPtrs[i] = reinterpret_cast< const void* >(1);
  }
  for (s32 i = 0; i < 8; i++) {
    CTexture::InvalidateTexmap(static_cast< GXTexMapID >(i));
  }
  for (s32 i = 0; i < 4; i++) {
    GXSetTevKColor(static_cast< GXTevKColorID >(i), sGXState.x58_kColors[i]);
  }
  GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_RED);
  GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_GREEN);
  GXSetTevSwapModeTable(GX_TEV_SWAP3, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_BLUE);
  SetAlphaCompare(GX_ALWAYS, 0, GX_AOP_AND, GX_ALWAYS, 0);
  GXSetCurrentMtx(GX_PNMTX0);
  SetNumIndStages(0);
  for (s32 i = 0; i < 4; i++) {
    GXSetIndTexCoordScale(static_cast< GXIndTexStageID >(i), GX_ITS_1, GX_ITS_1);
  }
  for (s32 i = 0; i < 16; i++) {
    SetTevDirect(static_cast< GXTevStageID >(i));
  }
  for (s32 i = 0; i < 8; i++) {
    GXSetTexCoordScaleManually(static_cast< GXTexCoordID >(i), false, 0, 0);
  }
  GXSetZTexture(GX_ZT_DISABLE, GX_TF_Z8, 0);
}

void CGX::ResetGXStatesFull() {
  new (&sGXState) SGXState();
  CGX::ResetGXStates();
}

void CGX::FlushState() {
  if (sGXState.x4c_numChansDirty) {
    GXSetNumChans(sGXState.x4e_numChans);
    sGXState.x4d_prevNumChans = sGXState.x4e_numChans;
  }
  if (sGXState.x4c_flags & 2) {
    u16 flags = sGXState.x34_chanCtrls[0];
    GXBool enable = ShiftRightAndMask(flags, 1, 0);
    GXColorSrc ambSrc = static_cast< GXColorSrc >(ShiftRightAndMask(flags, 1, 1));
    GXColorSrc matSrc = static_cast< GXColorSrc >(ShiftRightAndMask(flags, 1, 2));
    u32 lightMask = ShiftRightAndMask(flags, 0xFF, 3);
    GXDiffuseFn diffFn = static_cast< GXDiffuseFn >(ShiftRightAndMask(flags, 3, 11));
    GXAttnFn attnFn = static_cast< GXAttnFn >(ShiftRightAndMask(flags, 3, 13));
    GXSetChanCtrl(GX_COLOR0, enable, ambSrc, matSrc, lightMask, diffFn, attnFn);
    sGXState.x30_prevChanCtrls[0] = sGXState.x34_chanCtrls[0];
  }
  if (sGXState.x4c_flags & 4) {
    u16 flags = sGXState.x34_chanCtrls[1];
    GXBool enable = ShiftRightAndMask(flags, 1, 0);
    GXColorSrc ambSrc = static_cast< GXColorSrc >(ShiftRightAndMask(flags, 1, 1));
    GXColorSrc matSrc = static_cast< GXColorSrc >(ShiftRightAndMask(flags, 1, 2));
    u32 lightMask = ShiftRightAndMask(flags, 0xFF, 3);
    GXDiffuseFn diffFn = static_cast< GXDiffuseFn >(ShiftRightAndMask(flags, 3, 11));
    GXAttnFn attnFn = static_cast< GXAttnFn >(ShiftRightAndMask(flags, 3, 13));
    GXSetChanCtrl(GX_COLOR1, enable, ambSrc, matSrc, lightMask, diffFn, attnFn);
    sGXState.x30_prevChanCtrls[1] = sGXState.x34_chanCtrls[1];
  }
  sGXState.x4c_flags = 0;
}

void CGX::SetIndTexMtxSTPointFive(GXIndTexMtxID id, s8 scaleExp) {
  static const f32 indMtx[2][3] = {
      {0.5f, 0.f, 0.f},
      {0.f, 0.5f, 0.f},
  };
  GXSetIndTexMtx(id, const_cast< f32(*)[3] >(indMtx), scaleExp);
}

void CGX::SetVtxDescv_Compressed(u32 flags) {
  if (flags == sGXState.x48_descList) {
    return;
  }
  GXVtxDescList* list = sVtxDescList;
  for (u32 idx = 0; idx < 11; ++idx) {
    u32 shift = idx * 2;
    if ((flags & 3 << shift) == (sGXState.x48_descList & 3 << shift)) {
      continue;
    }
    list->attr = static_cast< GXAttr >(GX_VA_POS + idx);
    list->type = static_cast< GXAttrType >(flags >> shift & 3);
    ++list;
  }
  list->attr = GX_VA_NULL;
  list->type = GX_NONE;
  GXSetVtxDescv(sVtxDescList);
  sGXState.x48_descList = flags;
}

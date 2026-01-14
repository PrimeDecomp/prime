#ifndef _CGX
#define _CGX

#include "types.h"

#include <stddef.h>

#include <dolphin/gx.h>
#include <dolphin/mtx.h>

class CGX {
public:
  struct STevState {
    uint x0_colorInArgs;
    uint x4_alphaInArgs;
    uint x8_colorOps;
    uint xc_alphaOps;
    uint x10_indFlags;
    uint x14_tevOrderFlags;
    uchar x18_kColorSel;
    uchar x19_kAlphaSel;

    STevState();
  };

  struct STexState {
    uint x0_coordGen;

    STexState();
  };

  struct SFogParams {
    float x0_fogStartZ;
    float x4_fogEndZ;
    float x8_fogNearZ;
    float xc_fogFarZ;
    GXColor x10_fogColor;

    SFogParams() : x0_fogStartZ(0.f), x4_fogEndZ(1.f), x8_fogNearZ(0.1f), xc_fogFarZ(1.f) {
      x10_fogColor.a = 0;
      x10_fogColor.b = 0;
      x10_fogColor.g = 0;
      x10_fogColor.r = 0;
    }
  };

  struct SGXState {
    const void* x0_arrayPtrs[12];
    ushort x30_prevChanCtrls[2];
    ushort x34_chanCtrls[2];
    GXColor x38_chanAmbColors[2];
    GXColor x40_chanMatColors[2];
    uint x48_descList;
    union {
      uchar x4c_chanFlags;
      struct {
        uchar unused : 5;
        uchar chansDirty : 2;
        uchar numDirty : 1;
      } x4c_flags;
    };
    uchar x4d_prevNumChans;
    uchar x4e_numChans;
    uchar x4f_numTexGens;
    uchar x50_numTevStages;
    uchar x51_numIndStages;
    uchar x52_zmode;
    uchar x53_fogType;
    ushort x54_lineWidthAndOffset;
    ushort x56_blendMode;
    GXColor x58_kColors[4];
    STevState x68_tevStates[16];
    STexState x228_texStates[8];
    uint x248_alphaCompare;
    SFogParams x24c_fogParams;

    SGXState();
  };

  enum EChannelId {
    Channel0, // GX_COLOR0
    Channel1, // GX_COLOR1
  };

  static void SetNumChans(uchar num);
  static void SetNumChans_Inline(const uchar num) {
    sGXState.x4e_numChans = num;
    sGXState.x4c_flags.numDirty = sGXState.x4e_numChans != sGXState.x4d_prevNumChans;
  }
  static void SetNumTexGens(uchar num);
  static void SetNumTexGens_Inline(const uchar num) {
    if (num == sGXState.x4f_numTexGens) {
      return;
    }
    sGXState.x4f_numTexGens = num;
    GXSetNumTexGens(num);
  }
  static void SetNumTevStages(uchar num);
  static void SetNumIndStages(uchar num);
  static void SetNumIndStages_Inline(uchar num) {
    if (sGXState.x51_numIndStages != num) {
      sGXState.x51_numIndStages = num;
      GXSetNumIndStages(num);
    }
  }
  static void SetChanAmbColor(EChannelId channel, const GXColor& color);
  static void SetChanMatColor(EChannelId channel, const GXColor& color);
  static void SetChanCtrl(EChannelId channel, GXBool enable, GXColorSrc ambSrc, GXColorSrc matSrc,
                          GXLightID lights, GXDiffuseFn diffFn, GXAttnFn attnFn);
  static void SetTevKColor(GXTevKColorID id, const GXColor& color);
  static void SetTevColorIn(GXTevStageID stageId, GXTevColorArg a, GXTevColorArg b, GXTevColorArg c,
                            GXTevColorArg d);
  static void SetTevColorIn_Inline(const GXTevStageID stageId, const GXTevColorArg a,
                                   const GXTevColorArg b, const GXTevColorArg c,
                                   const GXTevColorArg d) {
    const uint flags = MaskAndShiftLeft(a, 0x1F, 0) | MaskAndShiftLeft(b, 0x1F, 5) |
                       MaskAndShiftLeft(c, 0x1F, 10) | MaskAndShiftLeft(d, 0x1F, 15);
    STevState& state = sGXState.x68_tevStates[stageId];
    if (flags != state.x0_colorInArgs) {
      state.x0_colorInArgs = flags;
      GXSetTevColorIn(stageId, a, b, c, d);
    }
  }
  static void SetTevAlphaIn(GXTevStageID stageId, GXTevAlphaArg a, GXTevAlphaArg b, GXTevAlphaArg c,
                            GXTevAlphaArg d);
  static void SetTevColorOp(GXTevStageID stageId, GXTevOp op, GXTevBias bias, GXTevScale scale,
                            GXBool clamp, GXTevRegID outReg);
  static void SetTevColorOp_Inline(const GXTevStageID stageId, const GXTevOp op,
                                   const GXTevBias bias, const GXTevScale scale, const GXBool clamp,
                                   const GXTevRegID outReg) {
    const uint flags = MaskAndShiftLeft(op, 0xF, 0) | MaskAndShiftLeft(bias, 3, 4) |
                       MaskAndShiftLeft(scale, 3, 6) | MaskAndShiftLeft(clamp, 1, 8) |
                       MaskAndShiftLeft(outReg, 3, 9);
    STevState& state = sGXState.x68_tevStates[stageId];
    if (flags != state.x8_colorOps) {
      state.x8_colorOps = flags;
      GXSetTevColorOp(stageId, op, bias, scale, clamp, outReg);
    }
  }
  static void SetTevColorOp_Compressed(GXTevStageID stageId, uint flags);
  static void SetTevAlphaOp(GXTevStageID stageId, GXTevOp op, GXTevBias bias, GXTevScale scale,
                            GXBool clamp, GXTevRegID outReg);
  static void SetTevAlphaOp_Compressed(GXTevStageID stageId, uint flags);
  static void SetTevKColorSel(GXTevStageID stageId, GXTevKColorSel sel);
  static void SetTevKAlphaSel(GXTevStageID stageId, GXTevKAlphaSel sel);
  static void SetTevOrder(GXTevStageID stageId, GXTexCoordID texCoord, GXTexMapID texMap,
                          GXChannelID color);
  static void SetBlendMode(GXBlendMode mode, GXBlendFactor srcFac, GXBlendFactor dstFac,
                           GXLogicOp op);
  static void SetBlendMode_Inline(const GXBlendMode mode, const GXBlendFactor srcFac,
                                  const GXBlendFactor dstFac, const GXLogicOp op) {
    const uint flags = MaskAndShiftLeft(mode, 3, 0) | MaskAndShiftLeft(srcFac, 7, 2) |
                       MaskAndShiftLeft(dstFac, 7, 5) | MaskAndShiftLeft(op, 0xF, 8);
    if (flags != sGXState.x56_blendMode) {
      update_fog(flags);
      sGXState.x56_blendMode = flags;
      GXSetBlendMode(mode, srcFac, dstFac, op);
    }
  }
  static void SetZMode(GXBool compareEnable, GXCompare func, GXBool updateEnable);
  static void SetAlphaCompare(GXCompare comp0, uchar ref0, GXAlphaOp op, GXCompare comp1,
                              uchar ref1);
  static void SetTevIndirect(GXTevStageID stageId, GXIndTexStageID indStage, GXIndTexFormat fmt,
                             GXIndTexBiasSel biasSel, GXIndTexMtxID mtxSel, GXIndTexWrap wrapS,
                             GXIndTexWrap wrapT, GXBool addPrev, GXBool indLod,
                             GXIndTexAlphaSel alphaSel);
  static void SetTevDirect(GXTevStageID stageId);
  static void SetTevDirect_Inline(const GXTevStageID stageId) {
    STevState& state = sGXState.x68_tevStates[stageId];
    if (state.x10_indFlags != 0) {
      state.x10_indFlags = 0;
      GXSetTevDirect(stageId);
    }
  }
  static void SetTexCoordGen(GXTexCoordID dstCoord, GXTexGenType fn, GXTexGenSrc src, GXTexMtx mtx,
                             GXBool normalize, GXPTTexMtx postMtx);
  static void SetArray(GXAttr attr, const void* data, uchar stride);
  static void SetArray_Inline(GXAttr attr, const void* data, uchar stride) {
    uint idx = attr - GX_VA_POS;
    if (data == nullptr || sGXState.x0_arrayPtrs[idx] == data) {
      return;
    }
    sGXState.x0_arrayPtrs[idx] = data;
    GXSetArray(attr, data, stride);
  }
  static void SetFog(GXFogType type, float startZ, float endZ, float nearZ, float farZ,
                     const GXColor& color);
  static void SetLineWidth(uchar width, GXTexOffset offset);
  static void SetIndTexMtxSTPointFive(GXIndTexMtxID id, s8 scaleExp);
  static void SetVtxDescv_Compressed(uint flags);
  static void SetVtxDesc(GXAttr attr, GXAttrType type); // name?
  static void ResetVtxDescv();                          // name?
  static void SetVtxDescv(const GXVtxDescList* list);
  static void SetStandardDirectTev_Compressed(GXTevStageID stageId, uint colorArgs, uint alphaArgs,
                                              uint colorOps, uint alphaOps);
  static void SetStandardTevColorAlphaOp(GXTevStageID stageId);

  static void CallDisplayList(const void* ptr, size_t size);
  static void CallDisplayList_Inline(const void* ptr, const size_t size) {
    if (sGXState.x4c_chanFlags != 0) {
      FlushState();
    }
    GXCallDisplayList(ptr, size);
  }
  static void Begin(GXPrimitive prim, GXVtxFmt fmt, ushort numVtx);
  static void End();
  static void ResetGXStates();
  static void ResetGXStatesFull(); // name?

  static inline void LoadTexMtxImm(const float mtx[][4], unsigned long id, GXTexMtxType type) {
    GXLoadTexMtxImm(const_cast< MtxPtr >(mtx), id, type);
  }

  static GXColor GetChanAmbColor(EChannelId channel);
  static void GetFog(GXFogType* fogType, float* fogStartZ, float* fogEndZ, float* fogNearZ,
                     float* fogFarZ, GXColor* fogColor);

  static inline bool CompareGXColors(const GXColor& lhs, const GXColor& rhs) {
    return *reinterpret_cast< const uint* >(&lhs) == *reinterpret_cast< const uint* >(&rhs);
  }
  static inline void CopyGXColor(GXColor& dst, const GXColor& src) {
    *reinterpret_cast< uint* >(&dst) = *reinterpret_cast< const uint* >(&src);
  }
  static inline uint MaskAndShiftLeft(uint v, uint m, uint s) { return (v & m) << s; }
  static inline uint ShiftRightAndMask(uint v, uint m, uint s) { return (v >> s) & m; }

private:
  static void FlushState();
  static void update_fog(uint flags);
  static void apply_fog() {
    static const GXColor black = {0, 0, 0, 0};
    GXSetFog(static_cast< GXFogType >(sGXState.x53_fogType), sGXState.x24c_fogParams.x0_fogStartZ,
             sGXState.x24c_fogParams.x4_fogEndZ, sGXState.x24c_fogParams.x8_fogNearZ,
             sGXState.x24c_fogParams.xc_fogFarZ,
             (sGXState.x56_blendMode & (7 << 5)) == (GX_BL_ONE << 5)
                 ? black
                 : sGXState.x24c_fogParams.x10_fogColor);
  }

  static SGXState sGXState;
};

#endif // _CGX

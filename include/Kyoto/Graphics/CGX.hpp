#ifndef _CGX_HPP
#define _CGX_HPP

#include "types.h"

#include <stddef.h>

#include "dolphin/gx.h"

class CGX {
public:
  struct STevState {
    u32 x0_colorInArgs;
    u32 x4_alphaInArgs;
    u32 x8_colorOps;
    u32 xc_alphaOps;
    u32 x10_indFlags;
    u32 x14_tevOrderFlags;
    u8 x18_kColorSel;
    u8 x19_kAlphaSel;

    STevState();
  };

  struct STexState {
    u32 x0_coordGen;

    STexState();
  };

  struct SFogParams {
    f32 x0_fogStartZ;
    f32 x4_fogEndZ;
    f32 x8_fogNearZ;
    f32 xc_fogFarZ;
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
    u16 x30_prevChanCtrls[2];
    u16 x34_chanCtrls[2];
    GXColor x38_chanAmbColors[2];
    GXColor x40_chanMatColors[2];
    u32 x48_descList;
    union {
      u8 x4c_chanFlags;
      struct {
        u8 unused : 5;
        u8 chansDirty : 2;
        u8 numDirty : 1;
      } x4c_flags;
    };
    u8 x4d_prevNumChans;
    u8 x4e_numChans;
    u8 x4f_numTexGens;
    u8 x50_numTevStages;
    u8 x51_numIndStages;
    u8 x52_zmode;
    u8 x53_fogType;
    u16 x54_lineWidthAndOffset;
    u16 x56_blendMode;
    GXColor x58_kColors[4];
    STevState x68_tevStates[16];
    STexState x228_texStates[8];
    u32 x248_alphaCompare;
    SFogParams x24c_fogParams;

    SGXState();
  };

  enum EChannelId {
    Channel0, // GX_COLOR0
    Channel1, // GX_COLOR1
  };

  static void SetNumChans(u8 num);
  static void SetNumTexGens(u8 num);
  static void SetNumTevStages(u8 num);
  static void SetNumIndStages(u8 num);
  static void SetChanAmbColor(EChannelId channel, const GXColor& color);
  static void SetChanMatColor(EChannelId channel, const GXColor& color);
  static void SetChanCtrl(EChannelId channel, GXBool enable, GXColorSrc ambSrc, GXColorSrc matSrc, GXLightID lights, GXDiffuseFn diffFn,
                          GXAttnFn attnFn);
  static void SetTevKColor(GXTevKColorID id, const GXColor& color);
  static void SetTevColorIn(GXTevStageID stageId, GXTevColorArg a, GXTevColorArg b, GXTevColorArg c, GXTevColorArg d);
  static void SetTevAlphaIn(GXTevStageID stageId, GXTevAlphaArg a, GXTevAlphaArg b, GXTevAlphaArg c, GXTevAlphaArg d);
  static void SetTevColorOp(GXTevStageID stageId, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp, GXTevRegID outReg);
  static void SetTevColorOp_Compressed(GXTevStageID stageId, u32 flags);
  static void SetTevAlphaOp(GXTevStageID stageId, GXTevOp op, GXTevBias bias, GXTevScale scale, GXBool clamp, GXTevRegID outReg);
  static void SetTevAlphaOp_Compressed(GXTevStageID stageId, u32 flags);
  static void SetTevKColorSel(GXTevStageID stageId, GXTevKColorSel sel);
  static void SetTevKAlphaSel(GXTevStageID stageId, GXTevKAlphaSel sel);
  static void SetTevOrder(GXTevStageID stageId, GXTexCoordID texCoord, GXTexMapID texMap, GXChannelID color);
  static void SetBlendMode(GXBlendMode mode, GXBlendFactor srcFac, GXBlendFactor dstFac, GXLogicOp op);
  static void SetZMode(bool compareEnable, GXCompare func, bool updateEnable);
  static void SetAlphaCompare(GXCompare comp0, u8 ref0, GXAlphaOp op, GXCompare comp1, u8 ref1);
  static void SetTevIndirect(GXTevStageID stageId, GXIndTexStageID indStage, GXIndTexFormat fmt, GXIndTexBiasSel biasSel,
                             GXIndTexMtxID mtxSel, GXIndTexWrap wrapS, GXIndTexWrap wrapT, GXBool addPrev, GXBool indLod,
                             GXIndTexAlphaSel alphaSel);
  static void SetTevDirect(GXTevStageID stageId);
  static void SetTexCoordGen(GXTexCoordID dstCoord, GXTexGenType fn, GXTexGenSrc src, GXTexMtx mtx, GXBool normalize, GXPTTexMtx postMtx);
  static void SetArray(GXAttr attr, const void* data, u8 stride);
  static void SetFog(GXFogType type, f32 startZ, f32 endZ, f32 nearZ, f32 farZ, const GXColor& color);
  static void SetLineWidth(u8 width, GXTexOffset offset);
  static void SetIndTexMtxSTPointFive(GXIndTexMtxID id, s8 scaleExp);
  static void SetVtxDescv_Compressed(u32 flags);
  static void SetVtxDesc(GXAttr attr, GXAttrType type); // name?
  static void ResetVtxDescv();                          // name?
  static void SetVtxDescv(const GXVtxDescList* list);
  static void SetStandardDirectTev_Compressed(GXTevStageID stageId, u32 colorArgs, u32 alphaArgs, u32 colorOps, u32 alphaOps);
  static void SetStandardTevColorAlphaOp(GXTevStageID stageId);

  static void CallDisplayList(const void* ptr, size_t size);
  static void Begin(GXPrimitive prim, GXVtxFmt fmt, u16 numVtx);
  static void End();
  static void ResetGXStates();
  static void ResetGXStatesFull(); // name?

  static GXColor GetChanAmbColor(EChannelId channel);
  static void GetFog(GXFogType* fogType, f32* fogStartZ, f32* fogEndZ, f32* fogNearZ, f32* fogFarZ, GXColor* fogColor);

  static inline bool CompareGXColors(const GXColor& lhs, const GXColor& rhs) {
    return *reinterpret_cast< const u32* >(&lhs) == *reinterpret_cast< const u32* >(&rhs);
  }
  static inline void CopyGXColor(GXColor& dst, const GXColor& src) {
    *reinterpret_cast< u32* >(&dst) = *reinterpret_cast< const u32* >(&src);
  }
  static inline u32 MaskAndShiftLeft(u32 v, u32 m, u32 s) { return (v & m) << s; }
  static inline u32 ShiftRightAndMask(u32 v, u32 m, u32 s) { return (v >> s) & m; }

private:
  static void FlushState();
  static void update_fog(u32 flags);
  static void apply_fog() {
    static const GXColor black = {0, 0, 0, 0};
    GXSetFog(static_cast< GXFogType >(sGXState.x53_fogType), sGXState.x24c_fogParams.x0_fogStartZ, sGXState.x24c_fogParams.x4_fogEndZ,
             sGXState.x24c_fogParams.x8_fogNearZ, sGXState.x24c_fogParams.xc_fogFarZ,
             (sGXState.x56_blendMode & (7 << 5)) == (GX_BL_ONE << 5) ? black : sGXState.x24c_fogParams.x10_fogColor);
  }

  static SGXState sGXState;
};

#endif
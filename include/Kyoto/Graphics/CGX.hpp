#ifndef _CGX_HPP
#define _CGX_HPP

#include "types.h"

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

    SFogParams(); /* {
       x0_fogStartZ = 0.f;
       x4_fogEndZ = 1.f;
       x8_fogNearZ = 0.1f;
       xc_fogFarZ = 1.f;
     }*/
  };

  struct SGXState {
    void* x0_arrayPtrs[12];
    u16 x30_prevChanCtrls[2];
    u16 x34_chanCtrls[2];
    GXColor x38_chanAmbColors[2];
    GXColor x40_chanMatColors[2];
    u32 x48_descList;
    u8 x4c_ : 5;
    u8 x4c_dirtyChanCtrl : 2;
    u8 x4c_numChansDirty : 1;
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

  static GXColor GetChanAmbColor(EChannelId channel);

  static inline bool CompareGXColors(const GXColor& lhs, const GXColor& rhs) {
    return *reinterpret_cast< const u32* >(&lhs) == *reinterpret_cast< const u32* >(&rhs);
  }
  static inline void CopyGXColor(GXColor& dst, const GXColor& src) {
    *reinterpret_cast< u32* >(&dst) = *reinterpret_cast< const u32* >(&src);
  }
  static inline u32 MaskAndShiftLeft(u32 a, u32 b, u32 s) { return (a & b) << s; }

private:
  static SGXState sGXState;
};

#endif
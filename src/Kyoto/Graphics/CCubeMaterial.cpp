#include "Kyoto/Graphics/CCubeMaterial.hpp"

#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Math/CMath.hpp"

#include <dolphin/mtx.h>

inline void CGX::SetAlphaCompare(GXCompare comp0, u8 ref0, GXAlphaOp op, GXCompare comp1, u8 ref1) {
  uint flags = MaskAndShiftLeft(comp0, 7, 0) | MaskAndShiftLeft(ref0, 0xFF, 3) |
               MaskAndShiftLeft(op, 7, 11) | MaskAndShiftLeft(comp1, 7, 14) |
               MaskAndShiftLeft(ref1, 0xFF, 17);
  if (sGXState.x248_alphaCompare != flags) {
    sGXState.x248_alphaCompare = flags;
    GXSetAlphaCompare(comp0, ref0, op, comp1, ref1);
    GXSetZCompLoc(comp0 == GX_ALWAYS);
  }
}
inline void CGX::SetBlendMode(GXBlendMode mode, GXBlendFactor srcFac, GXBlendFactor dstFac,
                              GXLogicOp op) {
  uint flags = MaskAndShiftLeft(mode, 3, 0) | MaskAndShiftLeft(srcFac, 7, 2) |
               MaskAndShiftLeft(dstFac, 7, 5) | MaskAndShiftLeft(op, 0xF, 8);
  if (flags != sGXState.x56_blendMode) {
    update_fog(flags);
    sGXState.x56_blendMode = flags;
    GXSetBlendMode(mode, srcFac, dstFac, op);
  }
}
inline void CGX::SetTevOrder(GXTevStageID stageId, GXTexCoordID texCoord, GXTexMapID texMap,
                             GXChannelID color) {
  STevState& state = sGXState.x68_tevStates[stageId];
  uint flags = MaskAndShiftLeft(texCoord, 0xFF, 0) | MaskAndShiftLeft(texMap, 0xFF, 8) |
               MaskAndShiftLeft(color, 0xFF, 16);
  if (state.x14_tevOrderFlags != flags) {
    state.x14_tevOrderFlags = flags;
    GXSetTevOrder(stageId, texCoord, texMap, color);
  }
}
inline void CGX::SetTevKColorSel(GXTevStageID stageId, GXTevKColorSel sel) {
  STevState& state = sGXState.x68_tevStates[stageId];
  if (sel != state.x18_kColorSel) {
    state.x18_kColorSel = sel;
    GXSetTevKColorSel(stageId, sel);
  }
}
inline void CGX::SetTevKAlphaSel(GXTevStageID stageId, GXTevKAlphaSel sel) {
  STevState& state = sGXState.x68_tevStates[stageId];
  if (sel != state.x19_kAlphaSel) {
    state.x19_kAlphaSel = sel;
    GXSetTevKAlphaSel(stageId, sel);
  }
}

#include "Kyoto/Math/CTransform4f.hpp"

CVector3f sPlayerPosition;
CVector3f CCubeMaterial::sViewingFrom;
static CTransform4f sTextureProjectionTransform = CTransform4f::Identity();

void CCubeMaterial::SetupBlendMode(uint blendFactors, const CModelFlags& flags, bool alphaTest) {
  GXBlendFactor newSrcFactor = static_cast< GXBlendFactor >(blendFactors & 0xFFFF);
  GXBlendFactor newDstFactor = static_cast< GXBlendFactor >(blendFactors >> 0x10);
  CModelFlags::ETrans blendMode = flags.GetTrans();
  if (alphaTest) {
    CGX::SetAlphaCompare(GX_GEQUAL, 64, GX_AOP_OR, GX_NEVER, 0);
    newSrcFactor = GX_BL_ONE;
    newDstFactor = GX_BL_ZERO;
  } else {
    CGX::SetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
  }
  // TODO: how to check
  if (blendMode > 4 && newSrcFactor == GX_BL_ONE) {
    newSrcFactor = GX_BL_SRCALPHA;
    if (newDstFactor == GX_BL_ZERO) {
      newDstFactor = blendMode > 6 ? GX_BL_ONE : GX_BL_INVSRCALPHA;
    }
  }
  CGX::SetBlendMode(GX_BM_BLEND, newSrcFactor, newDstFactor, GX_LO_CLEAR);
}

void HandleTev(int tevCur, const uint* materialDataCur, const uint* texMapTexCoordFlags,
               bool shadowMapsEnabled) {
  const GXTevStageID stage = static_cast< GXTevStageID >(tevCur);
  const uint colorArgs = shadowMapsEnabled ? 0x7a04f : SBig(materialDataCur[0]);
  const uint alphaArgs = SBig(materialDataCur[1]);
  const uint colorOps = SBig(materialDataCur[2]);
  const uint alphaOps = SBig(materialDataCur[3]);

  CGX::SetStandardDirectTev_Compressed(stage, colorArgs, alphaArgs, colorOps, alphaOps);

  uint tmtcFlags = SBig(*texMapTexCoordFlags);
  uint matFlags = SBig(materialDataCur[4]);
  CGX::SetTevOrder(stage, static_cast< GXTexCoordID >(tmtcFlags & 0xFF),
                   static_cast< GXTexMapID >(tmtcFlags >> 8 & 0xFF),
                   static_cast< GXChannelID >(matFlags & 0xFF));
  CGX::SetTevKColorSel(stage, static_cast< GXTevKColorSel >(matFlags >> 0x8 & 0xFF));
  CGX::SetTevKAlphaSel(stage, static_cast< GXTevKAlphaSel >(matFlags >> 0x10 & 0xFF));
}

uint HandleAnimatedUV(const uint* uvAnim, GXTexMtx texMtx, GXPTTexMtx ptTexMtx) {
  static const Mtx postMtx = {
      {0.5f, 0.0f, 0.0f, 0.5f},
      {0.0f, 0.0f, 0.5f, 0.5f},
      {0.0f, 0.0f, 0.0f, 1.0f},
  };
  static Mtx translateMtx = {
      {0.5f, 0.0f, 0.0f, 0.5f},
      {0.0f, 0.0f, 0.5f, 0.5f},
      {0.0f, 0.0f, 0.0f, 1.0f},
  };
  uint type = SBig(*uvAnim);
  const f32* params = reinterpret_cast< const f32* >(uvAnim + 1);
  switch (type) {
  case 0: {
    CTransform4f xf = CGraphics::GetViewMatrix().GetQuickInverse().MultiplyIgnoreTranslation(
        CGraphics::GetModelMatrix());
    xf.SetTranslation(CVector3f::Zero());
    CGX::LoadTexMtxImm(xf.GetCStyleMatrix(), texMtx, GX_MTX3x4);
    CGX::LoadTexMtxImm(postMtx, ptTexMtx, GX_MTX3x4);
    return 1;
  }
  case 1: {
    CTransform4f xf = CGraphics::GetViewMatrix().GetQuickInverse() * CGraphics::GetModelMatrix();
    CGX::LoadTexMtxImm(xf.GetCStyleMatrix(), texMtx, GX_MTX3x4);
    CGX::LoadTexMtxImm(postMtx, ptTexMtx, GX_MTX3x4);
    return 1;
  }
  case 2: {
    const f32 f1 = SBig(params[0]);
    const f32 f2 = SBig(params[1]);
    const f32 f3 = SBig(params[2]);
    const f32 f4 = SBig(params[3]);
    const f32 seconds = CGraphics::GetSecondsMod900();
    translateMtx[0][3] = f1 + seconds * f3;
    translateMtx[1][3] = f2 + seconds * f4;
    CGX::LoadTexMtxImm(translateMtx, texMtx, GX_MTX3x4);
    return 5;
  }
  case 3: {
    const f32 f1 = SBig(params[0]);
    const f32 f2 = SBig(params[1]);
    const f32 seconds = CGraphics::GetSecondsMod900();
    const f32 angle = f1 + seconds * f2;
    const f32 asin = CMath::FastSinR(angle);
    const f32 acos = CMath::FastCosR(angle);
    Mtx mtx = {
        {acos, -asin, 0.f, (1.f - (acos - asin)) * 0.5f},
        {asin, acos, 0.f, (1.f - (asin + acos)) * 0.5f},
        {0.f, 0.f, 1.f, 0.f},
    };
    CGX::LoadTexMtxImm(mtx, texMtx, GX_MTX3x4);
    return 3;
  }
  case 4:
  case 5: {
    const f32 f1 = SBig(params[0]);
    const f32 f2 = SBig(params[1]);
    const f32 f3 = SBig(params[2]);
    const f32 f4 = SBig(params[3]);
    const f32 value = (f4 + CGraphics::GetSecondsMod900()) * f1 * f3;
    const f32 fmod = CMath::FastFmod(value, 1.f);
    const f32 fs = CCast::FtoS(fmod * f2);
    const f32 v2 = fs * f3;
    if (type == 4) {
      translateMtx[0][3] = v2;
      translateMtx[1][3] = 0.f;
    } else {
      translateMtx[0][3] = 0.f;
      translateMtx[1][3] = v2;
    }
    CGX::LoadTexMtxImm(translateMtx, texMtx, GX_MTX3x4);
    return 5;
  }
  case 6: {
    static const Mtx sTexMtx = {
        {0.f, 0.f, 0.f, 0.f},
        {0.f, 0.f, 0.f, 0.f},
        {0.f, 0.f, 0.f, 0.f},
    };
    static const Mtx sPtMtx = {
        {0.5f, 0.f, 0.f, 0.f},
        {0.f, 0.f, 0.5f, 0.f},
        {0.f, 0.f, 0.f, 1.f},
    };
    const CTransform4f& mm = CGraphics::GetModelMatrix();
    Mtx tmpTexMtx;
    Mtx tmpPtMtx;
    __memcpy(&tmpTexMtx, &sTexMtx, sizeof(Mtx));
    const CVector3f& dx = mm.GetRow(kDX);
    tmpTexMtx[0][0] = mm.Get00();
    tmpTexMtx[0][1] = mm.Get01();
    tmpTexMtx[0][2] = mm.Get02();
    tmpTexMtx[1][0] = mm.Get10();
    tmpTexMtx[1][1] = mm.Get11();
    tmpTexMtx[1][2] = mm.Get12();
    tmpTexMtx[2][0] = mm.Get20();
    tmpTexMtx[2][1] = mm.Get21();
    tmpTexMtx[2][2] = mm.Get22();
    __memcpy(&tmpPtMtx, &sPtMtx, sizeof(Mtx));
    tmpPtMtx[0][3] = mm.Get03() * 0.05f;
    tmpPtMtx[1][3] = mm.Get13() * 0.05f;
    CGX::LoadTexMtxImm(tmpTexMtx, texMtx, GX_MTX3x4);
    CGX::LoadTexMtxImm(tmpPtMtx, ptTexMtx, GX_MTX3x4);
    return 1;
  }
  case 7: {
    static const Mtx sPtMtx = {
        {0.f, 0.f, 0.f, 0.f},
        {0.f, 0.f, 0.f, 0.f},
        {0.f, 0.f, 0.f, 1.f},
    };
    const CTransform4f& vm = CGraphics::GetViewMatrix();
    CTransform4f xf = CGraphics::GetViewMatrix().GetQuickInverse().MultiplyIgnoreTranslation(
        CGraphics::GetModelMatrix());
    f32 v = SBig(params[0]) / 2.f;
    f32 v03 = 0.025f * (vm.Get03() + vm.Get13()) * SBig(params[1]);
    f32 v13 = 0.05f * vm.Get23() * SBig(params[1]);
    f32 v03f = CMath::FastFmod(v03, 1.f);
    f32 v13f = CMath::FastFmod(v13, 1.f);
    xf.SetTranslation(CVector3f::Zero());
    Mtx tmpPtMtx;
    __memcpy(&tmpPtMtx, &sPtMtx, sizeof(Mtx));
    tmpPtMtx[0][0] = v;
    tmpPtMtx[0][3] = v03f;
    tmpPtMtx[1][2] = v;
    tmpPtMtx[1][3] = v13f;
    CGX::LoadTexMtxImm(xf.GetCStyleMatrix(), texMtx, GX_MTX3x4);
    CGX::LoadTexMtxImm(tmpPtMtx, ptTexMtx, GX_MTX3x4);
    return 3;
  }
  default:
    return 0;
  }
}

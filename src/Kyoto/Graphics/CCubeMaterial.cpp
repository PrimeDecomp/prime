#include "Kyoto/Graphics/CCubeMaterial.hpp"

#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/Graphics/CCubeModel.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGX_Impl.hpp" // IWYU pragma: keep
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/Math/CMath.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include <dolphin/mtx.h>

#ifndef __MWERKS__
void __memcpy(void*, const void*, int);
#endif

#include "Kyoto/Math/CTransform4f.hpp"

CVector3f sPlayerPosition = CVector3f::Zero();
CVector3f CCubeMaterial::sViewingFrom = CVector3f::Zero();
static uint sLastMaterialUnique = static_cast< uint >(~0);
static int sMaterialCachedState = 0;
static const CCubeModel* sLastModelCached = NULL;
static const CCubeModel* sRenderingModel = NULL;
static const uchar* sLastMaterialCached = NULL;
static CTexture* spShadowTexture = NULL;
static CTransform4f sTextureProjectionTransform = CTransform4f::Identity();
static float sReflectionAlpha = 0.f;
static float sLastTime = 0.f;
static float sThrobX = 1.f;
static float sThrobY = 1.f;
static int sReflectionStage = -1;
static bool sbRenderModelBlack = false;
static bool lbl_805A9559 = false;
static bool sbRenderModelShadow = false;
static uchar sChannel0DisableLightMask = 0;
static uchar sChannel1EnableLightMask = 0;
static const GXColor sGXBlack = {0, 0, 0, 0};
static const GXColor sGXWhite = {0xFF, 0xFF, 0xFF, 0xFF};

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
  if (blendMode > CModelFlags::kT_Four && newSrcFactor == GX_BL_ONE) {
    newSrcFactor = GX_BL_SRCALPHA;
    if (newDstFactor == GX_BL_ZERO) {
      newDstFactor = blendMode > 6 ? GX_BL_ONE : GX_BL_INVSRCALPHA;
    }
  }
  CGX::SetBlendMode(GX_BM_BLEND, newSrcFactor, newDstFactor, GX_LO_CLEAR);
}

static void HandleDepth(uint modelFlags, uint matFlags) {
  GXCompare func = GX_NEVER;
  if ((modelFlags & CModelFlags::kF_DepthCompare) == 0) {
    func = GX_ALWAYS;
  } else if ((modelFlags & CModelFlags::kF_DepthGreater) != 0) {
    if ((modelFlags & CModelFlags::kF_DepthNonInclusive) != 0) {
      func = GX_GREATER;
    } else {
      func = GX_GEQUAL;
    }
  } else if ((modelFlags & CModelFlags::kF_DepthNonInclusive) != 0) {
    func = GX_LESS;
  } else {
    func = GX_LEQUAL;
  }
  CGX::SetZMode(true, func,
                (modelFlags & CModelFlags::kF_DepthUpdate) == CModelFlags::kF_DepthUpdate &&
                    (matFlags & kStateFlag_DepthWrite) != 0);
}

static uint HandleColorChannels(uint chanCount, uint firstChan) {
  if (sbRenderModelShadow) {
    if (chanCount != 0) {
      CGX::SetChanAmbColor(CGX::Channel1, sGXBlack);
      CGX::SetChanMatColor(CGX::Channel1, sGXWhite);
      CGX::SetChanCtrl(CGX::Channel1, true, GX_SRC_REG, GX_SRC_REG,
                       static_cast< GXLightID >(sChannel1EnableLightMask), GX_DF_CLAMP, GX_AF_SPOT);

      const int chan0Lights = CGraphics::GetLightMask() & ~sChannel0DisableLightMask;
      CGX::SetChanCtrl_Compressed(CGX::Channel0, chan0Lights, firstChan);
      if (chan0Lights != 0) {
        CGX::SetChanMatColor(CGX::Channel0, sGXWhite);
      } else {
        CGX::SetChanMatColor(CGX::Channel0, CGX::GetChanAmbColor(CGX::Channel0));
      }
    }
    return 2;
  }

  if (chanCount == 2) {
    CGX::SetChanAmbColor(CGX::Channel1, sGXBlack);
    CGX::SetChanMatColor(CGX::Channel1, sGXWhite);
  } else {
    CGX::SetChanCtrl(CGX::Channel1, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                     GX_AF_NONE);
  }

  if (chanCount >= 1) {
    const int lightMask = CGraphics::GetLightMask();
    CGX::SetChanCtrl_Compressed(CGX::Channel0, lightMask, firstChan);
    if (lightMask != 0) {
      CGX::SetChanMatColor(CGX::Channel0, sGXWhite);
    } else {
      CGX::SetChanMatColor(CGX::Channel0, CGX::GetChanAmbColor(CGX::Channel0));
    }
  } else {
    CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_REG, GX_LIGHT_NULL, GX_DF_NONE,
                     GX_AF_NONE);
  }

  return chanCount;
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

uint HandleAnimatedUV(const uint* uvAnim, GXTexMtx texMtx, GXPTTexMtx ptTexMtx);
static void HandleTransparency(uint& finalTevCount, uint& finalKColorCount,
                               const CModelFlags& modelFlags, uint blendFactors, uint& finalCCFlags,
                               uint& finalACFlags);
static void DoPassthru(uint finalTevCount);
static void DoModelShadow(uint texCount, uint tcgCount);

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
  const float* params = reinterpret_cast< const float* >(uvAnim + 1);
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
    const float f1 = SBig(params[0]);
    const float f2 = SBig(params[1]);
    const float f3 = SBig(params[2]);
    const float f4 = SBig(params[3]);
    const float seconds = CGraphics::GetSecondsMod900();
    translateMtx[0][3] = f1 + seconds * f3;
    translateMtx[1][3] = f2 + seconds * f4;
    CGX::LoadTexMtxImm(translateMtx, texMtx, GX_MTX3x4);
    return 5;
  }
  case 3: {
    const float f1 = SBig(params[0]);
    const float f2 = SBig(params[1]);
    const float seconds = CGraphics::GetSecondsMod900();
    const float angle = f1 + seconds * f2;
    const float asin = CMath::FastSinR(angle);
    const float acos = CMath::FastCosR(angle);
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
    const float f1 = SBig(params[0]);
    const float f2 = SBig(params[1]);
    const float f3 = SBig(params[2]);
    const float f4 = SBig(params[3]);
    const float value = (f4 + CGraphics::GetSecondsMod900()) * f1 * f3;
    const float fmod = CMath::FastFmod(value, 1.f);
    const float fs = CCast::FtoS(fmod * f2);
    const float v2 = fs * f3;
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
    float v = SBig(params[0]) / 2.f;
    float v03 = 0.025f * (vm.Get03() + vm.Get13()) * SBig(params[1]);
    float v13 = 0.05f * vm.Get23() * SBig(params[1]);
    float v03f = CMath::FastFmod(v03, 1.f);
    float v13f = CMath::FastFmod(v13, 1.f);
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

void CCubeMaterial::SetCurrent(const CModelFlags& flags, const CCubeSurface& surface,
                               const CCubeModel& model) const {
  if (sLastMaterialCached == x0_data) {
    if (sMaterialCachedState == 1) {
      if (sLastModelCached == sRenderingModel) {
        return;
      }
    } else if (sMaterialCachedState != 2) {
      return;
    }
  }

  if (sbRenderModelBlack) {
    SetCurrentBlack();
    return;
  }

  sRenderingModel = &model;
  sLastMaterialCached = static_cast< const uchar* >(x0_data);

  uint numIndStages = 0;
  const uint* materialDataCur = reinterpret_cast< const uint* >(x0_data);
  const uint matFlags = SBig(*materialDataCur++);
  const bool reflection =
      (matFlags & (kStateFlag_Reflection | kStateFlag_ReflectionSurfaceEye)) != 0;
  if (reflection) {
    if ((matFlags & kStateFlag_ReflectionSurfaceEye) != 0) {
      EnsureViewDepStateCached(&surface);
    } else {
      EnsureViewDepStateCached(NULL);
    }
  }

  uint texCount = SBig(*materialDataCur++);
  if ((flags.GetOtherFlags() & CModelFlags::kF_NoTextureLock) == CModelFlags::kF_NoTextureLock) {
    materialDataCur += texCount;
  } else {
    for (uint i = 0; i < texCount; ++i) {
      const uint texIdx = SBig(*materialDataCur++);
      model.GetTextures()[texIdx].GetObject()->Load(static_cast< GXTexMapID >(i),
                                                    CTexture::kCM_Repeat);
    }
  }

  const uint groupIdx = SBig(materialDataCur[1]);
  if (sLastMaterialUnique != static_cast< uint >(~0) && sLastMaterialUnique == groupIdx &&
      sMaterialCachedState == 0) {
    return;
  }
  sLastMaterialUnique = groupIdx;

  CGX::SetVtxDescv_Compressed(SBig(materialDataCur[0]));
  materialDataCur += 2;

  const bool packedLightmaps = (matFlags & kStateFlag_LightmapUvArray) != 0;
  if (packedLightmaps != CCubeModel::IsUsingPackedLightmaps()) {
    model.SetUsingPackedLightmaps(packedLightmaps);
  }

  uint finalKColorCount = 0;
  if ((matFlags & kStateFlag_KonstValues) != 0) {
    const uint konstCount = SBig(*materialDataCur++);
    finalKColorCount = konstCount;
    for (uint i = 0; i < konstCount; ++i) {
      CGX::SetTevKColor(static_cast< GXTevKColorID >(i), CColor::ToGX(SBig(*materialDataCur++)));
    }
  }

  const uint blendFactors = SBig(*materialDataCur++);
  if (CCubeRenderer::That()->GetInAreaDraw()) {
    CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ONE, GX_LO_CLEAR);
  } else {
    SetupBlendMode(blendFactors, flags, (matFlags & kStateFlag_AlphaTest) != 0);
  }

  GXTexMapID indTexSlot = GX_TEXMAP_NULL;
  if ((matFlags & kStateFlag_ReflectionIndirectTexture) != 0) {
    indTexSlot = static_cast< GXTexMapID >(SBig(*materialDataCur++));
  }

  HandleDepth(flags.GetOtherFlags(), matFlags);

  const uint chanCount = SBig(*materialDataCur++);
  const uint firstChan = SBig(*materialDataCur);
  materialDataCur += chanCount + 1;
  const uint finalNumColorChans = HandleColorChannels(chanCount, firstChan);

  uint firstTev = 0;
  if (sbRenderModelShadow) {
    firstTev = 2;
  }

  const uint matTevCount = SBig(*materialDataCur++);
  uint finalTevCount = 0;
  const uint* texMapTexCoordFlags = materialDataCur + matTevCount * 5;
  const uint* tcgs = texMapTexCoordFlags + matTevCount;
  bool usesTevReg2 = false;
  uint finalCCFlags = 0;
  uint finalACFlags = 0;

  if (CCubeRenderer::That()->GetThermal()) {
    finalTevCount = firstTev + 1;
    finalCCFlags = SBig(materialDataCur[2]);
    if (static_cast< GXTevRegID >(finalCCFlags >> 9 & 3) == GX_TEVREG0) {
      materialDataCur += 5;
      texMapTexCoordFlags += 1;
      finalCCFlags = SBig(materialDataCur[2]);
      GXSetTevColor(GX_TEVREG0, CColor::ToGX(0xc0c0c0c0));
    }
    finalACFlags = SBig(materialDataCur[3]);
    HandleTev(firstTev, materialDataCur, texMapTexCoordFlags, sbRenderModelShadow);
  } else {
    finalTevCount = firstTev + matTevCount;
    for (uint i = firstTev; i < finalTevCount; ++i) {
      HandleTev(i, materialDataCur, texMapTexCoordFlags, sbRenderModelShadow && i == firstTev);
      finalCCFlags = SBig(materialDataCur[2]);
      finalACFlags = SBig(materialDataCur[3]);
      if (static_cast< GXTevRegID >(finalCCFlags >> 9 & 3) == GX_TEVREG2) {
        usesTevReg2 = true;
      }
      materialDataCur += 5;
      texMapTexCoordFlags += 1;
    }
  }

  uint tcgCount = 0;
  if (CCubeRenderer::That()->GetThermal()) {
    const uint fullTcgCount = SBig(*tcgs++);
    tcgCount = fullTcgCount;
    if (tcgCount > 2) {
      tcgCount = 2;
    }
    for (uint i = 0; i < tcgCount; ++i) {
      CGX::SetTexCoordGen_Compressed(static_cast< GXTexCoordID >(i), SBig(tcgs[i]));
    }
    tcgs += fullTcgCount;
  } else {
    tcgCount = SBig(*tcgs++);
    for (uint i = 0; i < tcgCount; ++i) {
      CGX::SetTexCoordGen_Compressed(static_cast< GXTexCoordID >(i), SBig(tcgs[i]));
    }
    tcgs += tcgCount;
  }

  const uint* uvAnim = tcgs;
  const uint animCount = SBig(uvAnim[1]);
  uvAnim += 2;
  GXTexMtx texMtx = GX_TEXMTX0;
  GXPTTexMtx ptTexMtx = GX_PTTEXMTX0;
  for (uint i = 0; i < animCount; ++i) {
    const uint size = HandleAnimatedUV(uvAnim, texMtx, ptTexMtx);
    if (size == 0) {
      break;
    }
    uvAnim += size;
    texMtx = static_cast< GXTexMtx >(texMtx + 3);
    ptTexMtx = static_cast< GXPTTexMtx >(ptTexMtx + 3);
  }

  if (flags.GetBlendMode() != 0) {
    HandleTransparency(finalTevCount, finalKColorCount, flags, blendFactors, finalCCFlags,
                       finalACFlags);
  }

  if (reflection) {
    if (sReflectionAlpha > 0.f) {
      uint addedTevs = 0;
      if (indTexSlot != GX_TEXMAP_NULL) {
        addedTevs = HandleReflection(usesTevReg2, indTexSlot, 0, finalTevCount, texCount, tcgCount,
                                     finalKColorCount, finalCCFlags, finalACFlags);
        numIndStages = 1;
        tcgCount += 2;
      } else {
        addedTevs = HandleReflection(usesTevReg2, GX_TEXMAP_NULL, 0, finalTevCount, texCount,
                                     tcgCount, finalKColorCount, finalCCFlags, finalACFlags);
        tcgCount += 1;
      }
      texCount += 1;
      finalTevCount += addedTevs;
      finalKColorCount += 1;
    } else if ((finalCCFlags >> 9 & 3) != 0) {
      DoPassthru(finalTevCount);
      finalTevCount += 1;
    }
  }

  if (sbRenderModelShadow) {
    DoModelShadow(texCount, tcgCount);
    tcgCount += 1;
  }

  CGX::SetNumIndStages(numIndStages);
  CGX::SetNumTevStages(finalTevCount);
  CGX::SetNumTexGens(tcgCount);
  CGX::SetNumChans(finalNumColorChans);
}

void CCubeMaterial::SetCurrentBlack() const {
  const uint* data = reinterpret_cast< const uint* >(x0_data);
  const uint texCount = data[1];
  const uint flags = data[0];
  const uint vertexDesc = data[texCount + 2];

  if ((flags & (kStateFlag_DepthSorting | kStateFlag_AlphaTest)) != 0) {
    CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ZERO, GX_BL_ONE, GX_LO_CLEAR);
  } else {
    CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ZERO, GX_LO_CLEAR);
  }

  CGX::SetVtxDescv_Compressed(vertexDesc);

  GXTevColorArg colorArg = GX_CC_ZERO;
  if (lbl_805A9559) {
    colorArg = GX_CC_ONE;
  }
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, colorArg);

  GXTevAlphaArg alphaArg = GX_CA_ZERO;
  if (lbl_805A9559) {
    alphaArg = GX_CA_KONST;
  }
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, alphaArg);

  CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_1);
  CGX::SetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_POS, GX_IDENTITY, GX_FALSE, GX_PTIDENTITY);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  CGX::SetNumTevStages(1);
  CGX::SetNumChans(0);
  CGX::SetNumTexGens(1);
  CGX::SetNumIndStages(0);
}

void CCubeMaterial::EnsureTevsDirect() {
  if (sReflectionStage == -1) {
    return;
  }

  CGX::SetNumIndStages(0);
  CGX::SetTevDirect(static_cast< GXTevStageID >(sReflectionStage));
  sReflectionStage = -1;
}

uint CCubeMaterial::HandleReflection(bool usesTevReg2, GXTexMapID indTexSlot, int indMtxScaleExp,
                                     uint finalTevCount, uint texCount, uint tcgCount,
                                     uint finalKColorCount, uint& finalCCFlags,
                                     uint& finalACFlags) {
  uint out = 0;
  GXTevColorArg colorArg;
  if (usesTevReg2) {
    colorArg = GX_CC_C2;
    CGX::SetTevColorIn(static_cast< GXTevStageID >(finalTevCount), GX_CC_ZERO, GX_CC_C2,
                       GX_CC_KONST, GX_CC_ZERO);
    CGX::SetTevAlphaIn(static_cast< GXTevStageID >(finalTevCount), GX_CA_ZERO, GX_CA_ZERO,
                       GX_CA_ZERO, GX_CA_A2);
    CGX::SetTevColorOp(static_cast< GXTevStageID >(finalTevCount), GX_TEV_ADD, GX_TB_ZERO,
                       GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
    CGX::SetTevAlphaOp(static_cast< GXTevStageID >(finalTevCount), GX_TEV_ADD, GX_TB_ZERO,
                       GX_CS_SCALE_1, GX_TRUE, GX_TEVREG2);
    CGX::SetTevOrder(static_cast< GXTevStageID >(finalTevCount), GX_TEXCOORD_NULL, GX_TEXMAP_NULL,
                     GX_COLOR_ZERO);
    out = 1;
  } else {
    colorArg = GX_CC_KONST;
  }

  CColor reflectionColor;
  reflectionColor.Set(sReflectionAlpha, sReflectionAlpha, sReflectionAlpha, sReflectionAlpha);
  CGX::SetTevKColor(static_cast< GXTevKColorID >(finalKColorCount), reflectionColor.GetGXColor());
  CGX::SetTevKColorSel(static_cast< GXTevStageID >(finalTevCount),
                       static_cast< GXTevKColorSel >(finalKColorCount + GX_TEV_KCSEL_K0));

  finalTevCount += out;

  CCubeRenderer::That()->GetRealReflection()->Load(static_cast< GXTexMapID >(texCount),
                                                   CTexture::kCM_Clamp);

  GXTexCoordID texCoord;
  if (indTexSlot != GX_TEXMAP_NULL) {
    texCoord = static_cast< GXTexCoordID >(tcgCount + 1);
    GXSetIndTexOrder(GX_INDTEXSTAGE0, static_cast< GXTexCoordID >(tcgCount), indTexSlot);
    CGX::SetTexCoordGen(static_cast< GXTexCoordID >(tcgCount), GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX6,
                        GX_TRUE, GX_PTTEXMTX6);
    CGX::SetTevIndWarp(static_cast< GXTevStageID >(finalTevCount), GX_INDTEXSTAGE0, 1, 0, GX_ITM_0);
    CGX::SetIndTexMtxSTPointFive(GX_ITM_0, static_cast< s8 >(indMtxScaleExp));
    if (sReflectionStage > static_cast< int >(finalTevCount)) {
      CGX::SetTevDirect(static_cast< GXTevStageID >(sReflectionStage));
    }
    sReflectionStage = finalTevCount;
  } else {
    texCoord = static_cast< GXTexCoordID >(tcgCount);
  }

  CGX::SetTexCoordGen(texCoord, GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX7, GX_FALSE, GX_PTIDENTITY);

  CGX::SetTevColorIn(static_cast< GXTevStageID >(finalTevCount), GX_CC_ZERO, colorArg, GX_CC_TEXC,
                     GX_CC_CPREV);
  CGX::SetTevAlphaIn(static_cast< GXTevStageID >(finalTevCount), GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                     GX_CA_APREV);
  CGX::SetStandardTevColorAlphaOp(static_cast< GXTevStageID >(finalTevCount));

  finalACFlags = 0;
  finalCCFlags = 0;
  CGX::SetTevOrder(static_cast< GXTevStageID >(finalTevCount), texCoord,
                   static_cast< GXTexMapID >(texCount), GX_COLOR_NULL);
  return out + 1;
}

static void DoPassthru(uint finalTevCount) {
  register uint stage = finalTevCount;
  CGX::SetTevColorIn(static_cast< GXTevStageID >(stage), GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO,
                     GX_CC_CPREV);
  CGX::SetTevAlphaIn(static_cast< GXTevStageID >(stage), GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                     GX_CA_APREV);
  CGX::SetTevOrder(static_cast< GXTevStageID >(stage), GX_TEXCOORD_NULL, GX_TEXMAP_NULL,
                   GX_COLOR_NULL);
  CGX::SetTevDirect(static_cast< GXTevStageID >(stage));
  CGX::SetStandardTevColorAlphaOp(static_cast< GXTevStageID >(stage));
}

static void HandleTransparency(uint& finalTevCount, uint& finalKColorCount,
                               const CModelFlags& modelFlags, uint blendFactors, uint& finalCCFlags,
                               uint& finalACFlags) {
  const char blendMode = *reinterpret_cast< const char* >(&modelFlags);
  const GXColor& color =
      *reinterpret_cast< const GXColor* >(reinterpret_cast< const uchar* >(&modelFlags) + 4);

  if (blendMode == 2) {
    if (static_cast< ushort >(blendFactors >> 16) == 1) {
      return;
    }
  }

  if (blendMode == 3) {
    const uint stage = finalTevCount;
    const uint stage2 = stage + 1;
    CGX::SetTevColorIn(static_cast< GXTevStageID >(stage), GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO,
                       GX_CC_KONST);
    CGX::SetTevAlphaIn(static_cast< GXTevStageID >(stage), GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                       GX_CA_APREV);
    CGX::SetTevColorOp(static_cast< GXTevStageID >(stage), GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1,
                       GX_TRUE, GX_TEVREG0);
    CGX::SetTevKColorSel(static_cast< GXTevStageID >(stage),
                         static_cast< GXTevKColorSel >(finalKColorCount + GX_TEV_KCSEL_K0_A));
    CGX::SetTevAlphaOp(static_cast< GXTevStageID >(stage), GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1,
                       GX_TRUE, GX_TEVPREV);
    CGX::SetTevOrder(static_cast< GXTevStageID >(stage), GX_TEXCOORD_NULL, GX_TEXMAP_NULL,
                     GX_COLOR_NULL);
    CGX::SetTevDirect(static_cast< GXTevStageID >(stage));

    CGX::SetTevColorIn(static_cast< GXTevStageID >(stage2), GX_CC_CPREV, GX_CC_C0, GX_CC_KONST,
                       GX_CC_ZERO);
    CGX::SetTevAlphaIn(static_cast< GXTevStageID >(stage2), GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO,
                       GX_CA_APREV);
    CGX::SetTevKColorSel(static_cast< GXTevStageID >(stage2),
                         static_cast< GXTevKColorSel >(finalKColorCount + GX_TEV_KCSEL_K0));
    CGX::SetStandardTevColorAlphaOp(static_cast< GXTevStageID >(stage2));
    CGX::SetTevDirect(static_cast< GXTevStageID >(stage2));
    CGX::SetTevOrder(static_cast< GXTevStageID >(stage2), GX_TEXCOORD_NULL, GX_TEXMAP_NULL,
                     GX_COLOR_NULL);
    CGX::SetTevKColor(static_cast< GXTevKColorID >(finalKColorCount), color);

    finalKColorCount += 1;
    finalTevCount += 2;
  } else {
    uint alphaArgs = 0x380c7;
    if (blendMode == 8) {
      alphaArgs = 0x31ce7;
    }

    uint colorArgs = 0x81cf;
    if (blendMode == 2) {
      colorArgs = 0x7018f;
    }

    const uint stage = finalTevCount;
    CGX::SetTevColorIn_Compressed(static_cast< GXTevStageID >(stage), colorArgs);
    CGX::SetTevAlphaIn_Compressed(static_cast< GXTevStageID >(stage), alphaArgs);
    CGX::SetStandardTevColorAlphaOp(static_cast< GXTevStageID >(stage));

    finalCCFlags = 0x100;
    finalACFlags = 0x100;

    CGX::SetTevDirect(static_cast< GXTevStageID >(stage));
    CGX::SetTevOrder(static_cast< GXTevStageID >(stage), GX_TEXCOORD_NULL, GX_TEXMAP_NULL,
                     GX_COLOR_NULL);
    CGX::SetTevKColor(static_cast< GXTevKColorID >(finalKColorCount), color);
    CGX::SetTevKColorSel(static_cast< GXTevStageID >(stage),
                         static_cast< GXTevKColorSel >(finalKColorCount + GX_TEV_KCSEL_K0));
    CGX::SetTevKAlphaSel(static_cast< GXTevStageID >(stage),
                         static_cast< GXTevKAlphaSel >(finalKColorCount + GX_TEV_KASEL_K0_A));

    finalTevCount += 1;
    finalKColorCount += 1;
  }
}

static void DoModelShadow(uint texCount, uint tcgCount) {
  static const Mtx identity2D = {
      {0.f, 0.f, 0.f, 0.f},
      {0.f, 0.f, 0.f, 0.f},
      {0.f, 0.f, 0.f, 1.f},
  };

  spShadowTexture->Load(static_cast< GXTexMapID >(texCount), CTexture::kCM_Repeat);

  Mtx mtx;
  __memcpy(&mtx, &identity2D, sizeof(Mtx));
  mtx[0][0] = sTextureProjectionTransform.Get00();
  mtx[0][1] = sTextureProjectionTransform.Get01();
  mtx[0][2] = sTextureProjectionTransform.Get02();
  mtx[0][3] = sTextureProjectionTransform.Get03();
  mtx[1][0] = sTextureProjectionTransform.Get20();
  mtx[1][1] = sTextureProjectionTransform.Get21();
  mtx[1][2] = sTextureProjectionTransform.Get22();
  mtx[1][3] = sTextureProjectionTransform.Get23();
  CGX::LoadTexMtxImm(mtx, GX_TEXMTX5, GX_MTX3x4);

  CGX::SetTexCoordGen(static_cast< GXTexCoordID >(tcgCount), GX_TG_MTX3x4, GX_TG_POS, GX_TEXMTX5,
                      GX_FALSE, GX_PTIDENTITY);

  CGX::SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
  CGX::SetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_RASC, GX_CC_TEXC, GX_CC_ZERO);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_RASA);
  CGX::SetTevOrder(GX_TEVSTAGE0, static_cast< GXTexCoordID >(tcgCount),
                   static_cast< GXTexMapID >(texCount), GX_COLOR1A1);

  CGX::SetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
  CGX::SetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVREG0);
  CGX::SetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_RASC, GX_CC_ONE, GX_CC_C0);
  CGX::SetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_RASA, GX_CA_KONST, GX_CA_A0);
  CGX::SetTevKAlphaSel(GX_TEVSTAGE1, GX_TEV_KASEL_1);
  CGX::SetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR0A0);
}

void CGX::SetTevIndWarp(GXTevStageID stageId, GXIndTexStageID indStage, uchar signedOffset,
                        uchar replaceMode, GXIndTexMtxID mtxSel) {
  GXIndTexWrap wrap = signedOffset != 0 ? GX_ITW_0 : GX_ITW_OFF;
  GXIndTexBiasSel biasSel = replaceMode != 0 ? GX_ITB_STU : GX_ITB_NONE;
  SetTevIndirect(stageId, indStage, GX_ITF_8, biasSel, mtxSel, wrap, wrap, GX_FALSE, GX_FALSE,
                 GX_ITBA_OFF);
}

void CCubeMaterial::EnsureViewDepStateCached(const CCubeSurface* surface) {
  static const float gkEpsilon32 = FLT_EPSILON;
  static const Mtx texMtx1 = {
      {0.5f, 0.f, 0.f, 0.5f},
      {0.f, 0.f, 0.5f, 0.5f},
      {0.f, 0.f, 0.f, 1.f},
  };
  static const Mtx texMtx2 = {
      {0.f, 0.f, 0.f, 0.f},
      {0.f, 0.f, 0.f, 0.f},
      {0.f, 0.f, 0.f, 1.f},
  };

  if ((surface == NULL && sLastModelCached == sRenderingModel) || sRenderingModel == NULL) {
    return;
  }

  const CTransform4f& modelMtx = CGraphics::GetModelMatrix();
  CVector3f playerDelta(sPlayerPosition.GetX() - modelMtx.Get03(),
                        sPlayerPosition.GetY() - modelMtx.Get13(),
                        sPlayerPosition.GetZ() - modelMtx.Get23());
  CVector3f playerPos = modelMtx.TransposeRotate(playerDelta);
  CVector3f modelPoint = CVector3f::Zero();
  CVector3f playerPoint = playerPos;
  float radius = 0.f;

  sLastModelCached = sRenderingModel;

  if (surface != NULL) {
    sMaterialCachedState = 2;

    const CCubeSurface::SSurfaceData* surfData = surface->x0_data;
    const CVector3f& normal = surfData->mNormal;
    const CVector3f& center = surfData->mCenter;
    const float planeD = CVector3f::Dot(center, normal);
    const float height = CVector3f::Dot(normal, playerPos) - planeD;
    modelPoint = playerPos - height * normal;
  } else {
    sMaterialCachedState = 1;

    const CAABox& bounds = sRenderingModel->GetBoundingBox();
    modelPoint = bounds.GetCenterPoint();
    modelPoint.SetZ(playerPos.GetZ());
    radius = 0.5f * (bounds.GetWidth() + bounds.GetHeight());
  }

  CCubeRenderer* renderer = CCubeRenderer::That();
  if (renderer->GetReflectionFlag()) {
    const float oldX = sViewingFrom.GetX() - sPlayerPosition.GetX();
    const float oldY = sViewingFrom.GetY() - sPlayerPosition.GetY();
    const float oldZ = sViewingFrom.GetZ() - sPlayerPosition.GetZ();
    const float newX = modelPoint.GetX() - sPlayerPosition.GetX();
    const float newY = modelPoint.GetY() - sPlayerPosition.GetY();
    const float newZ = modelPoint.GetZ() - sPlayerPosition.GetZ();
    if (newX * newX + newY * newY + newZ * newZ < oldX * oldX + oldY * oldY + oldZ * oldZ) {
      sViewingFrom = modelPoint;
    }
  } else {
    sViewingFrom = modelPoint;
    renderer->SetReflectionFlag();
  }

  const CVector3f distVec(modelPoint.GetX() - playerPoint.GetX(),
                          modelPoint.GetY() - playerPoint.GetY(),
                          modelPoint.GetZ() - playerPoint.GetZ());
  const float dist = distVec.Magnitude();
  const float reflDist = CMath::Max(gkEpsilon32, dist - 0.5f * radius);

  if (reflDist >= 5.f) {
    sReflectionAlpha = 0.f;
    return;
  }

  sReflectionAlpha = (5.f - reflDist) / 5.f;

  CTransform4f tmpXf = CGraphics::GetViewMatrix().GetQuickInverse() * CGraphics::GetModelMatrix();
  CTransform4f xf(tmpXf);
  CGX::LoadTexMtxImm(xf.GetCStyleMatrix(), GX_TEXMTX6, GX_MTX3x4);
  CGX::LoadTexMtxImm(texMtx1, GX_PTTEXMTX6, GX_MTX3x4);

  const float invDist = 1.f / reflDist;
  CVector3f right(-(modelPoint.GetY() - playerPoint.GetY()) * invDist,
                  (modelPoint.GetX() - playerPoint.GetX()) * invDist, 0.f);
  float xScale = 0.32258067f;
  float yScale = 0.32258067f;
  if (right.CanBeNormalized()) {
    right.Normalize();
  } else {
    right = CVector3f::Right();
  }

  const float scale = 0.02f * reflDist + 1.f;
  xScale *= scale * sThrobX;
  yScale *= scale * sThrobY;

  Mtx texMtx;
  __memcpy(&texMtx, &texMtx2, sizeof(Mtx));
  texMtx[0][0] = xScale * right.GetX();
  texMtx[0][1] = xScale * right.GetY();
  texMtx[0][3] =
      1.f - xScale * (modelPoint.GetX() * right.GetX() + modelPoint.GetY() * right.GetY() +
                      modelPoint.GetZ() * right.GetZ());
  texMtx[1][2] = yScale;
  texMtx[1][3] = -playerPoint.GetZ() * yScale;
  CGX::LoadTexMtxImm(texMtx, GX_TEXMTX7, GX_MTX3x4);
}

void CCubeMaterial::KillCachedViewDepState() { sLastModelCached = NULL; }

void CCubeMaterial::ResetCachedMaterials() {
  KillCachedViewDepState();
  sRenderingModel = NULL;
  sLastMaterialCached = NULL;
  sLastMaterialUnique = static_cast< uint >(~0);
}

void CCubeModel::SetNewPlayerPositionAndTime(const CVector3f& pos, const CStopwatch&) {
  sPlayerPosition = pos;
  CCubeMaterial::KillCachedViewDepState();

  s64 micros = CStopwatch::GetGlobalMicros() / 1000;

  const float periodScaleA = 100000.f;
  const float periodScaleB = 4.1887903f;
  const float time = static_cast< float >(static_cast< uint >(
                         micros % static_cast< uint >(periodScaleA * periodScaleB))) /
                     1000.f;
  sLastTime = time;

  sThrobX = 1. / (1. - 0.05f * sin(time * 1.5f + 0.f));
  sThrobY = 1. / (1. - 0.015f * sin(sLastTime * 1.5f + 1.f));
}

void CCubeModel::SetRenderModelBlack(bool v) {
  sbRenderModelBlack = v;
  lbl_805A9559 = false;
}

void CCubeModel::EnableShadowMaps(const CTexture* shadowTex, const CTransform4f& textureProjXf,
                                  unsigned char chan0DisableMask,
                                  unsigned char chan1EnableLightMask) {
  sbRenderModelShadow = true;
  spShadowTexture = const_cast< CTexture* >(shadowTex);
  sTextureProjectionTransform = textureProjXf;
  sChannel0DisableLightMask = chan0DisableMask;
  sChannel1EnableLightMask = chan1EnableLightMask;
}

void CCubeModel::DisableShadowMaps() { sbRenderModelShadow = false; }

uint CCubeMaterial::GetCompressedBlend() const {
  const uint* ptr = reinterpret_cast< const uint* >(x0_data);
  const uint flags = ptr[0];
  const uint texCount = ptr[1];
  const uint* blend = ptr + texCount + 4;
  if ((flags & kStateFlag_KonstValues) != 0) {
    blend += *blend + 1;
  }
  return *blend;
}

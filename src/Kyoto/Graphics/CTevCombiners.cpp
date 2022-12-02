#include "Kyoto/Graphics/CTevCombiners.hpp"

#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

#define TEV_MAX_PASSES 2

int CTevCombiners::sUniquePass = 0;
const CTevCombiners::AlphaVar CTevCombiners::skAlphaOne(CTevCombiners::kAS_Konst);
const CTevCombiners::ColorVar CTevCombiners::skColorOne(CTevCombiners::kCS_One);

const CTevCombiners::CTevPass CTevCombiners::kEnvPassthru(
    CTevCombiners::ColorPass(CTevCombiners::ColorVar(kCS_Zero), CTevCombiners::ColorVar(kCS_Zero),
                             CTevCombiners::ColorVar(kCS_Zero),
                             CTevCombiners::ColorVar(kCS_RasterColor)),
    CTevCombiners::AlphaPass(CTevCombiners::AlphaVar(kAS_Zero), CTevCombiners::AlphaVar(kAS_Zero),
                             CTevCombiners::AlphaVar(kAS_Zero),
                             CTevCombiners::AlphaVar(kAS_RasterAlpha)));

bool CTevCombiners::sValidPasses[2] = {false, false};
uint CTevCombiners::sNumEnabledPasses = -1;

CTevCombiners::AlphaVar::AlphaVar(EAlphaSrc src) : x0_src(src) {}
CTevCombiners::ColorVar::ColorVar(EColorSrc src) : x0_src(src) {}

void CTevCombiners::RecomputePasses() {
  uchar tmp = (uchar)((sValidPasses[TEV_MAX_PASSES - 1] != 0));
  tmp++;
  sNumEnabledPasses = tmp;
  CGX::SetNumTevStages(tmp);
}

void CTevCombiners::Init() {
  for (int i = 0; i < TEV_MAX_PASSES; ++i) {
    sValidPasses[i] = true;
  }

  sNumEnabledPasses = TEV_MAX_PASSES;
  for (int i = 0; i < TEV_MAX_PASSES; ++i) {
    DeletePass(static_cast< ERglTevStage >(i));
  }

  for (int i = 0; i < TEV_MAX_PASSES; ++i) {
    sValidPasses[i] = false;
  }
  RecomputePasses();
}

void CTevCombiners::DeletePass(int stage) {
  SetPassCombiners(stage, kEnvPassthru);
  sValidPasses[static_cast< size_t >(stage)] = false;
  RecomputePasses();
}

void CTevCombiners::SetupPass(int stage, const CTevPass& pass) {
  if (&pass == &kEnvPassthru) {
    DeletePass(stage);
    return;
  }
  if (SetPassCombiners(stage, pass)) {
    sValidPasses[static_cast< size_t >(stage)] = true;
    RecomputePasses();
  }
}

bool CTevCombiners::SetPassCombiners(int stage, const CTevPass& pass) {
  pass.Execute(stage);
  return true;
}

void CTevCombiners::CTevPass::Execute(int stage) const {
  const GXTevStageID stageId = (GXTevStageID)(stage);
  CGX::SetTevColorIn(stageId, (GXTevColorArg)x4_colorPass.GetA().GetSource(),
                     (GXTevColorArg)x4_colorPass.GetB().GetSource(),
                     (GXTevColorArg)x4_colorPass.GetC().GetSource(),
                     (GXTevColorArg)x4_colorPass.GetD().GetSource());
  CGX::SetTevAlphaIn(stageId, (GXTevAlphaArg)x14_alphaPass.GetA().GetSource(),
                     (GXTevAlphaArg)x14_alphaPass.GetB().GetSource(),
                     (GXTevAlphaArg)x14_alphaPass.GetC().GetSource(),
                     (GXTevAlphaArg)x14_alphaPass.GetD().GetSource());
  CGX::SetTevColorOp(stageId, (GXTevOp)x24_colorOp.GetOp(), (GXTevBias)x24_colorOp.GetBias(),
                     (GXTevScale)x24_colorOp.GetScale(), x24_colorOp.GetClamp(),
                     (GXTevRegID)x24_colorOp.GetOutput());
  CGX::SetTevAlphaOp(stageId, (GXTevOp)x38_alphaOp.GetOp(), (GXTevBias)x38_alphaOp.GetBias(),
                     (GXTevScale)x38_alphaOp.GetScale(), x38_alphaOp.GetClamp(),
                     (GXTevRegID)x38_alphaOp.GetOutput());
  CGX::SetTevKColorSel(stageId, GX_TEV_KCSEL_8_8);
  CGX::SetTevKAlphaSel(stageId, GX_TEV_KASEL_8_8);
}

void CTevCombiners::ResetStates() {
  for (int i = 0; i < TEV_MAX_PASSES; ++i) {
    sValidPasses[i] = false;
  }

  kEnvPassthru.Execute(kTS_Stage0);
  sNumEnabledPasses = 1;
  CGX::SetNumTevStages(1);
}

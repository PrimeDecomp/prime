#include "GuiSys/CAuiEnergyBarT01.hpp"
#include "GuiSys/CGuiSys.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CTevCombiners.hpp"
#include "Kyoto/Graphics/CTexture.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "dolphin/gx/GXEnum.h"
#include "dolphin/types.h"
#include "rstl/math.hpp"
#include "rstl/pair.hpp"

CGuiWidget* CAuiEnergyBarT01::Create(CGuiFrame* frame, CInputStream& in, IObjectStore* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  CAssetId tex = in.Get< CAssetId >();

  CAuiEnergyBarT01* ret = rs_new CAuiEnergyBarT01(parms, sp, tex);
  ret->ParseBaseInfo(frame, in, parms);
  return ret;
}

CAuiEnergyBarT01::CAuiEnergyBarT01(const CGuiWidgetParms& parms, IObjectStore* sp,
                                   CAssetId textureId)
: CGuiWidget(parms)
, mTextureId(textureId)
, mEmptyColor(CColor::White())
, mFilledColor(CColor::White())
, mShadowColor(CColor::White())
, mCoordFunc(nullptr)
, mTesselation(1.f)
, mMaxEnergy(0.f)
, mFilledSpeed(1000.f)
, mShadowSpeed(1000.f)
, mShadowDrainDelay(0.f)
, mAlwaysResetDelayTimer(false)
, mWrapping(false)
, mSetEnergy(0.f)
, mFilledEnergy(0.f)
, mShadowEnergy(0.f)
, mShadowDrainDelayTimer(0.f) {
  if (CGuiSys::GetGlobalGuiSys()->GetUsageMode() != CGuiSys::kUM_Two) {
    mTexture = sp->GetObj(SObjectTag('TXTR', mTextureId));
    mTexture->Lock();
  }
}

CAuiEnergyBarT01::~CAuiEnergyBarT01() {}

void CAuiEnergyBarT01::SetMaxEnergy(const float maxEnergy) {
  mMaxEnergy = maxEnergy;
  mSetEnergy = rstl::min_val(mSetEnergy, mMaxEnergy);
  mFilledEnergy = rstl::min_val(mFilledEnergy, mMaxEnergy);
  mShadowEnergy = rstl::min_val(mShadowEnergy, mMaxEnergy);
}

void CAuiEnergyBarT01::SetCurrEnergy(const float energy, const ESetMode mode) {
  float e = CMath::Clamp(0.f, energy, mMaxEnergy);

  if (e == mSetEnergy) {
    return;
  }

  if (mAlwaysResetDelayTimer || mFilledEnergy == mShadowEnergy) {
    mShadowDrainDelayTimer = mShadowDrainDelay;
  }

  mWrapping = mode == kSM_Wrapped;
  mSetEnergy = e;
  if (mode == kSM_Instant) {
    mFilledEnergy = mSetEnergy;
  }
}

void CAuiEnergyBarT01::Update(const float dt) {

  if (mShadowDrainDelayTimer > 0.f) {
    mShadowDrainDelayTimer = rstl::max_val(mShadowDrainDelayTimer - dt, 0.f);
  }

  if (mFilledEnergy < mSetEnergy) {
    if (mWrapping) {
      mFilledEnergy -= dt * mFilledSpeed;
      if (mFilledEnergy < 0.f) {
        mFilledEnergy = rstl::max_val(mSetEnergy, mFilledEnergy + mMaxEnergy);
        mWrapping = false;
        mShadowEnergy = mMaxEnergy;
      }
    } else {
      mFilledEnergy = rstl::min_val(mSetEnergy, mFilledEnergy + dt * mFilledSpeed);
    }
  } else if (mFilledEnergy > mSetEnergy) {
    if (mWrapping) {
      mFilledEnergy += dt * mFilledSpeed;
      if (mFilledEnergy > mMaxEnergy) {
        mFilledEnergy = rstl::min_val(mSetEnergy, mFilledEnergy - mMaxEnergy);
        mWrapping = false;
        mShadowEnergy = mFilledEnergy;
      }
    } else {
      mFilledEnergy = rstl::max_val(mSetEnergy, mFilledEnergy - dt * mFilledSpeed);
    }
  }

  if (mShadowEnergy < mFilledEnergy) {
    mShadowEnergy = mFilledEnergy;
  } else if (mShadowEnergy > mFilledEnergy && mShadowDrainDelayTimer == 0.f) {
    mShadowEnergy = rstl::max_val(mFilledEnergy, mShadowEnergy - dt * mShadowSpeed);
  }

  if (mTexture) {
    mTexture->TryCache();
  }
  CGuiWidget::Update(dt);
}

rstl::pair< CVector3f, CVector3f > CAuiEnergyBarT01::DownloadBarCoordFunc(float t) {
  const float x = 12.5f * t - 6.25f;

  return rstl::pair< CVector3f, CVector3f >(CVector3f(x, 0.f, -0.2f), CVector3f(x, 0.f, 0.2f));
}

void CAuiEnergyBarT01::Draw(const CGuiWidgetDrawParms& parms) const {
  CGraphics::SetModelMatrix(GetWorldTransform());
  if (!mTexture) {
    return;
  }
  if (!mTexture->IsLoaded() || !mCoordFunc) {
    return;
  };
  if (!mTexture->GetObject()) {
    return;
  }
  CTexture* tex = mTexture->GetObject();
  CGraphics::SetDepthWriteMode(true, kE_LEqual, false);

  CGraphics::SetAmbientColor(CColor::White());
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);

  const float dVar9 = mMaxEnergy > 0.f ? mFilledEnergy / mMaxEnergy : 0.f;
  const float dVar8 = mMaxEnergy > 0.f ? mShadowEnergy / mMaxEnergy : 0.f;
  const CColor& color = GetColor2();
  CColor filledColor = CColor::Modulate(color, mFilledColor.WithAlphaModulatedBy(parms.GetAlpha()));
  CColor shadowColor = CColor::Modulate(color, mShadowColor.WithAlphaModulatedBy(parms.GetAlpha()));
  CColor emptyColor = CColor::Modulate(color, mEmptyColor.WithAlphaModulatedBy(parms.GetAlpha()));

  for (int i = 0; i < 3; ++i) {
    float dVar6 = i == 0 ? 0.f : i == 1 ? dVar9 : dVar8;
    const float dVar7 = i == 0 ? dVar9 : i == 1 ? dVar8 : 1.f;
    const CColor& useColor = i == 0 ? filledColor : i == 1 ? shadowColor : emptyColor;

    if (dVar6 == dVar7) {
      continue;
    }

    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvModulate);
    CGraphics::SetTevOp(kTS_Stage1, CGraphics::kEnvPassthru);
    tex->Load(GX_TEXMAP0, CTexture::kCM_Repeat);
    CGraphics::StreamBegin(kP_TriangleStrip);
    CGraphics::StreamColor(useColor);
    rstl::pair< CVector3f, CVector3f > coord = mCoordFunc(dVar6);
    while (dVar6 < dVar7) {
      CGraphics::StreamTexcoord(dVar6, 0.f);
      CGraphics::StreamVertex(coord.first);
      CGraphics::StreamTexcoord(dVar6, 1.f);
      CGraphics::StreamVertex(coord.second);
      dVar6 += mTesselation;

      if (dVar6 >= dVar7) {
        coord = mCoordFunc(dVar7);
        CGraphics::StreamTexcoord(dVar7, 0.f);
        CGraphics::StreamVertex(coord.first);
        CGraphics::StreamTexcoord(dVar7, 1.f);
        CGraphics::StreamVertex(coord.second);
      } else {
        coord = mCoordFunc(dVar6);
      }
    }
    CGraphics::StreamEnd();
  }
  CGraphics::SetDepthWriteMode(true, kE_LEqual, true);
}

float CAuiEnergyBarT01::GetActualFraction() const {

  return mMaxEnergy == 0.f ? 0.f : mSetEnergy / mMaxEnergy;
}

FourCC CAuiEnergyBarT01::GetWidgetTypeID() const { return 'ENRG'; }
static const char* hack_string() { return "TextureId"; }

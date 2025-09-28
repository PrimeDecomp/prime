#include "GuiSys/CAuiEnergyBarT01.hpp"
#include "GuiSys/CGuiSys.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "rstl/math.hpp"
#include "rstl/pair.hpp"

static const char* UnusedString = "TextureId";
CAuiEnergyBarT01* CAuiEnergyBarT01::Create(CGuiFrame* frame, CInputStream& in, IObjectStore* sp) {
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

  if (!mTexture->IsLoaded() || mCoordFunc == nullptr) {
    return;
  }
  CTexture* tex = mTexture->GetObject();
  if (!tex) {
    return;
  }

  CGraphics::SetDepthWriteMode(true, kE_LEqual, false);

  CGraphics::SetAmbientColor(CColor::White());
  CGraphics::SetBlendMode(kBM_Blend, kBF_SrcAlpha, kBF_One, kLO_Clear);

  CGraphics::SetDepthWriteMode(true, kE_LEqual, true);
}

float CAuiEnergyBarT01::GetActualFraction() const {

  return mMaxEnergy == 0.f ? 0.f : mSetEnergy / mMaxEnergy;
}

FourCC CAuiEnergyBarT01::GetWidgetTypeID() const { return 'ENRG'; }

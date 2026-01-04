#include "MetroidPrime/Player/CScanDisplay.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/Input/CFinalInput.hpp"
#include "MetroidPrime/Factories/CScannableObjectInfo.hpp"
#include "MetroidPrime/Tweaks/CTweakGui.hpp"

#include <Kyoto/CSimplePool.hpp>

#include <Kyoto/Graphics/CGraphics.hpp>

#include <MetaRender/CCubeRenderer.hpp>

#include <GuiSys/CGuiTextPane.hpp>

#include <rstl/math.hpp>

void CScanDisplay::SetScanMessageTypeEffect(CGuiTextPane* pane, bool type) {
  if (type) {
    pane->TextSupport().SetTypeWriteEffectOptions(true, 0.1f, 60.f);
  } else {
    pane->TextSupport().SetTypeWriteEffectOptions(false, 0.f, 0.f);
  }
}

CScanDisplay::CDataDot::CDataDot()
: mState(kDS_Hidden)
, mStartPos(CVector2f::Zero())
, mCurPos(mStartPos)
, mDestPos(mStartPos)
, mTransitionDuration(0.f)
, mRemainingTime(0.f)
, mAlpha(0.f)
, mDesiredAlpha(0.f) {}

void CScanDisplay::CDataDot::Draw(CColor color, float radius) const {
  if (mAlpha == 0.f || mState == kDS_Hidden) {
    return;
  }

  gpRender->SetModelMatrix(CTransform4f::Translate(mCurPos.GetX(), 0.f, mCurPos.GetY()));
  CGraphics::StreamBegin(kP_TriangleStrip);
  CGraphics::StreamColor(color.WithAlphaModulatedBy(mAlpha));
  CGraphics::StreamTexcoord(0.f, 1.f);
  CGraphics::StreamVertex(CVector3f(-radius, 0.f, radius));
  CGraphics::StreamTexcoord(0.f, 0.f);
  CGraphics::StreamVertex(CVector3f(-radius, 0.f, -radius));
  CGraphics::StreamTexcoord(1.f, 1.f);
  CGraphics::StreamVertex(CVector3f(radius, 0.f, radius));
  CGraphics::StreamTexcoord(1.f, 0.f);
  CGraphics::StreamVertex(CVector3f(radius, 0.f, -radius));
  CGraphics::StreamEnd();
}

void CScanDisplay::CDataDot::StartTransitionTo(const CVector2f& target, float duration) {
  mRemainingTime = duration;
  mTransitionDuration = duration;
  mStartPos = mCurPos;
  mDestPos = target;
}

void CScanDisplay::CDataDot::Update(float dt) {
  if (mRemainingTime > 0.f) {
    mRemainingTime = rstl::max_val(0.f, mRemainingTime - dt);
    mCurPos =
        CVector2f::Lerp(mDestPos, mStartPos,
                        mTransitionDuration > 0.f ? mRemainingTime / mTransitionDuration : 0.f);
  }

  if (mAlpha < mDesiredAlpha) {
    mAlpha = rstl::min_val(mDesiredAlpha, mAlpha + 2.f * dt);
  } else if (mAlpha > mDesiredAlpha) {
    mAlpha = rstl::max_val(mDesiredAlpha, mAlpha - 2.f * dt);
  }
}

void CScanDisplay::CDataDot::SetDestPosition(const CVector2f& dest) {
  if (mRemainingTime > 0.f) {
    mDestPos = dest;
    return;
  }

  mCurPos = dest;
}

CScanDisplay::CScanDisplay(const CGuiFrame* selHud)
: mDataDotTexture(gpSimplePool->GetObj("TXTR_DataDot"))
, mState(kSS_Inactive)
, mObject(kInvalidUniqueId)
, mSelHud(selHud)
, mMessage(nullptr)
, mScrollMessage(nullptr)
, mTextGroup(nullptr)
, mXMark(nullptr)
, mAButton(nullptr)
, mDash(nullptr)
, mDataDots(CDataDot())
, mPaneStates(SBucketPane())
, mXAlpha(0.f)
, mBodyAlpha(0.f)
, mPageCounter(0)
, mAPulse(1.f)
, mScanComplete(false) {}

extern "C" void fn_80174514() {}

void CScanDisplay::StartScan(TUniqueId uid, const CScannableObjectInfo& info, CGuiTextPane* message,
                             CGuiTextPane* scrollMessage, CGuiWidget* textGroup, CGuiModel* xMark,
                             CGuiModel* aButton, CGuiModel* dash, float scanTime) {
  mScanComplete = scanTime >= info.GetTotalDownloadTime();
  mObject = uid;
  mScannableInfo = info;
  mState = kSS_Downloading;
  mPageCounter = 0;
  mXAlpha = 0.f;
  mMessage = message;
  mScrollMessage = scrollMessage;
  mTextGroup = textGroup;
  mXMark = xMark;
  mAButton = aButton;
  mDash = dash;

  mTextGroup->SetVisibility(true, kTM_Children);
  mTextGroup->SetColor(CColor::White().WithAlphaOf(0.f));
}

void CScanDisplay::StopScan() {
  switch (mState) {
  case CScanDisplay::kSS_Inactive:
  case CScanDisplay::kSS_5:
    break;
  case CScanDisplay::kSS_Downloading:
  case CScanDisplay::kSS_DownloadComplete:
  case CScanDisplay::kSS_ViewingScan:
    mState = kSS_Done;
    for (int i = 0; i < mDataDots.capacity(); ++i) {
      mDataDots[i].SetDesiredAlpha(0.f);
    }
    break;
  default:
    break;
  }
}

// these look like part of a constructor/destructor chain
extern "C" void fn_80174004() {}
extern "C" void fn_80173FDC() {}
extern "C" void fn_80173F08() {}
extern "C" void fn_80173EA4() {}
extern "C" void fn_80173E5C() {}
extern "C" void fn_80173D98() {}

void CScanDisplay::Update(float a, float b) {}

void CScanDisplay::ProcessInput(const CFinalInput& input) {}

void CScanDisplay::Draw() const {}

inline const CScannableObjectInfo::SBucket&
find_bucket_that_uses_pane(const CScannableObjectInfo& info, const int bucket) {
  return info.GetBucket(bucket);
}
float CScanDisplay::GetDownloadStartTime(const int bucket) {
  if (!mScannableInfo) {
    return 0.f;
  }
  const CScannableObjectInfo::SBucket& b = find_bucket_that_uses_pane(*mScannableInfo, bucket);
  float appearance = b.GetAppearanceRange();
  float ret = 0.f;
  for (int i = 0; i < 4; ++i) {
    const float tmp = find_bucket_that_uses_pane(*mScannableInfo, i).GetAppearanceRange();
    appearance = appearance;
    if (tmp < appearance) {
      ret = rstl::max_val(ret, tmp);
    }
  }

  ret += gpTweakGui->GetScanAppearanceDuration();
  return ret;
}

float CScanDisplay::GetDownloadFraction(const int bucket, float time) {
  if (!mScannableInfo) {
    return 0.f;
  }

  float appearance = mScannableInfo->GetBucket(bucket).GetAppearanceRange();
  float startTime = GetDownloadStartTime(bucket);

  if (startTime == appearance) {
    return 1.f;
  }

  return CMath::Clamp(0.f, (time - startTime) / (appearance - startTime), 1.f);
}

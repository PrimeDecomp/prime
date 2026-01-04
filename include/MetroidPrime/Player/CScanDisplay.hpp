#ifndef _CSCANDISPLAY
#define _CSCANDISPLAY

#include "MetroidPrime/Factories/CScannableObjectInfo.hpp"

#include "MetroidPrime/TGameTypes.hpp"

#include <Kyoto/Graphics/CColor.hpp>
#include <Kyoto/TToken.hpp>
#include <Kyoto/Text/CStringTable.hpp>

#include <rstl/optional_object.hpp>
#include <rstl/reserved_vector.hpp>

class CTexture;
class CGuiTextPane;
class CScannableObjectInfo;
class CGuiFrame;
class CGuiWidget;
class CGuiModel;
class CAuiImagePane;
class CFinalInput;
class CScanDisplay {
public:
  enum EScanState {
    kSS_Inactive,
    kSS_Downloading,
    kSS_DownloadComplete,
    kSS_ViewingScan,
    kSS_Done,
    kSS_5,
  };

  static void SetScanMessageTypeEffect(CGuiTextPane* pane, bool type);
  class CDataDot {
  public:
    enum EDotState {
      kDS_Hidden,
      kDS_Seek,
      kDS_Hold,
      kDS_RevealPane,
      kDS_Done,
    };

  public:
    CDataDot();

    void Draw(CColor color, float radius) const;
    void StartTransitionTo(const CVector2f& target, float duration);
    void Update(float dt);
    void SetDestPosition(const CVector2f& dest);
    void SetDesiredAlpha(const float alpha) { mDesiredAlpha = 0.f; }

  private:
    EDotState mState;
    CVector2f mStartPos;
    CVector2f mCurPos;
    CVector2f mDestPos;
    float mTransitionDuration;
    float mRemainingTime;
    float mAlpha;
    float mDesiredAlpha;
  };

  struct SBucketPane {
    SBucketPane() : mAlpha(0.f), mImagePane(nullptr) {}

    float mAlpha;
    CAuiImagePane* mImagePane;
  };

  CScanDisplay(const CGuiFrame* selHud);

  void StartScan(TUniqueId uid, const CScannableObjectInfo& info, CGuiTextPane* message,
                 CGuiTextPane* scrollMessage, CGuiWidget* textGroup, CGuiModel* xMark,
                 CGuiModel* aButton, CGuiModel* dash, float scanTime);
  void StopScan();
  void Update(float a, float b);
  void ProcessInput(const CFinalInput& input);
  void Draw() const;

  float GetDownloadStartTime(const int bucket);
  float GetDownloadFraction(const int bucket, const float time);

private:
  TCachedToken< CTexture > mDataDotTexture;
  EScanState mState;
  TUniqueId mObject;
  rstl::optional_object< CScannableObjectInfo > mScannableInfo;
  const CGuiFrame* mSelHud;
  CGuiWidget* mTextGroup;
  CGuiTextPane* mMessage;
  CGuiTextPane* mScrollMessage;
  CGuiModel* mXMark;
  CGuiModel* mAButton;
  CGuiModel* mDash;
  rstl::reserved_vector< CDataDot, 4 > mDataDots;
  rstl::reserved_vector< SBucketPane, 4 > mPaneStates;
  rstl::optional_object< TCachedToken< CStringTable > > mScanString;
  float mXAlpha;
  float mBodyAlpha;
  int mPageCounter;
  float mAPulse;
  bool mScanComplete;
};

#endif // _CSCANDISPLAY

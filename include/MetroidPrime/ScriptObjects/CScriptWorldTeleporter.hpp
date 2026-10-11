#ifndef _CSCRIPTWORLDTELEPORTER
#define _CSCRIPTWORLDTELEPORTER

#include "MetroidPrime/CEntity.hpp"

#include "MetroidPrime/CAnimationParameters.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "GameVersions.h"

class CScriptWorldTeleporter : public CEntity {
public:
  CScriptWorldTeleporter(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const bool active, const CAssetId worldId, const CAssetId areaId);
  CScriptWorldTeleporter(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const bool active, const CAssetId worldId, const CAssetId areaId,
                         const CAssetId playerAncs, const uint charIdx, const uint defaultAnim,
                         const CVector3f& playerScale, const CAssetId platformModel,
                         const CVector3f& platformScale, const CAssetId backgroundModel,
                         const CVector3f& backgroundScale, const bool upElevator,
                         const ushort soundId, const uchar volume, const uchar panning);
#if VERSION >= VERSION_GM8P_00
  CScriptWorldTeleporter(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const bool active, const CAssetId worldId, const CAssetId areaId,
                         const ushort soundId, const uchar volume, const uchar panning,
                         const CAssetId fontId, CAssetId stringId, const bool fadeWhite,
                         const float charFadeIn, const float charsPerSecond, const float showDelay,
                         const rstl::string& audioFile, const bool showSecondaryText,
                         const float textEndDelay, const float secondaryTextStartTime,
                         const float secondaryTextFadeDuration);
#else
  CScriptWorldTeleporter(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const bool active, const CAssetId worldId, const CAssetId areaId,
                         const ushort soundId, const uchar volume, const uchar panning,
                         const CAssetId fontId, const CAssetId stringId, const bool fadeWhite,
                         const float charFadeIn, const float charsPerSecond, const float showDelay);
#endif
  ~CScriptWorldTeleporter();

  DECLARE_ACCEPT;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void StartTransition(CStateManager&);

  bool GetFadeWhite() const { return mFadeWhite; }

private:
  enum ETeleporterType { kTT_NoTransition, kTT_Elevator, kTT_Text };

  CAssetId mWorldId;
  CAssetId mAreaId;
  ETeleporterType mType;  // = ETeleporterType::NoTransition;
  bool mUpElevator : 1;   // = false;
  bool mInTransition : 1; // = false;
  bool x40_26_ : 1;
  bool mFadeWhite : 1; // = false;
#if VERSION >= VERSION_GM8P_00
  bool mShowSecondaryText : 1;
#endif
  float mCharFadeIn;     // = 0.1f;
  float mCharsPerSecond; // = 8.0f;
  float mShowDelay;      // = 0.0f;
#if VERSION >= VERSION_GM8P_00
  float mTextEndDelay;
  float mSecondaryTextStartTime;
  float mSecondaryTextFadeDuration;
#endif
  CAnimationParameters mPlayerAnim;
  CVector3f mPlayerScale;
  CAssetId mPlatformModel;
  CVector3f mPlatformScale;
  CAssetId mBackgroundModel;
  CVector3f mBackgroundScale;
  ushort mSoundId; // = -1;
  uchar mVolume;   // = 0;
  uchar mPanning;  // = 0;
  CAssetId mFontId;
  CAssetId mStringId;
#if VERSION >= VERSION_GM8P_00
  rstl::string mAudioFile;
#endif
};

#endif // _CSCRIPTWORLDTELEPORTER

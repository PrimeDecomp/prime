#ifndef _CSCRIPTCOLORMODULATE
#define _CSCRIPTCOLORMODULATE

#include "types.h"

#include "MetroidPrime/CEntity.hpp"

#include <Kyoto/Graphics/CModelFlags.hpp>

class CScriptColorModulate : public CEntity {
public:
  enum EBlendMode {
    kBM_Alpha,
    kBM_Additive,
    kBM_Additive2,
    kBM_Opaque,
    kBM_OpaqueAdd,
  };

  enum EFadeState {
    kFS_AtoB,
    kFS_BtoA,
  };

  CScriptColorModulate(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                       const CColor& colorA, const CColor& colorB, const EBlendMode blendMode,
                       const float timeA2B, const float timeB2A, const bool doReverse,
                       const bool resetTargetWhenDone, const bool depthCompare,
                       const bool depthUpdate, const bool depthBackwards, const bool active);

  static TUniqueId FadeOutHelper(CStateManager& mgr, const TUniqueId obj, const float fadetime);
  static TUniqueId FadeInHelper(CStateManager& mgr, const TUniqueId obj, const float fadetime);
  void SetTargetFlags(CStateManager& mgr, const CModelFlags& flags);
  void End(CStateManager& mgr);
  CModelFlags CalculateFlags(const CColor& col) const;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void Accept(IVisitor& visitor) override;
  void SetParent(const TUniqueId& parent) { mParent = parent; }
  void SetDoReverse(const bool doReverse) { mDoReverse = doReverse; }
  void SetResetTargetWhenDone(const bool resetTargetWhenDone) {
    mResetTargetWhenDone = resetTargetWhenDone;
  }
  void SetDepthCompare(const bool depthCompare) { mDepthCompare = depthCompare; }
  void SetDepthUpdate(const bool depthUpdate) { mDepthUpdate = depthUpdate; }
  void SetDepthBackwards(const bool depthBackwards) { mDepthBackwards = depthBackwards; }
  void SetReversing(const bool reversing) { mReversing = reversing; }
  void SetEnabled(const bool enable) { mEnable = enable; }
  void SetDieOnEnd(const bool die) { mDieOnEnd = die; }
  void SetIsFadeOutHelper(const bool fade) { mIsFadeOutHelper = fade; }

private:
  TUniqueId mParent;
  EFadeState mFadeState;
  float mCurTime;
  CColor mColorA;
  CColor mColorB;
  EBlendMode mBlendMode;
  float mTimeA2B;
  float mTimeB2A;
  bool mDoReverse : 1;
  bool mResetTargetWhenDone : 1;
  bool mDepthCompare : 1;
  bool mDepthUpdate : 1;
  bool mDepthBackwards : 1;
  bool mReversing : 1;
  bool mEnable : 1;
  bool mDieOnEnd : 1;
  bool mIsFadeOutHelper : 1;
};

#endif // _CSCRIPTCOLORMODULATE
